if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 1-6 Valle de Crestanevada
#displayname 1-6 Valle de Crestanevada << !SoD
#displayname 1-7 Valle de Crestanevada << SoD
#next 6-11 Dun Morogh << !Hunter
#next 6-11 Dun Morogh (Cazador);6-11 Dun Morogh << Hunter
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas
step << Mage
    #completewith next
    +Ten en cuenta que has seleccionado la guía de Mago para un solo objetivo. El daño a un solo objetivo es mucho más seguro que el de Mago a AoE, pero MUCHO más lento
step << !Gnome Mage
    #season 2
    #completewith next
    +En Season of Discovery, NO deberías empezar fuera de la zona de inicio de tu raza como Mago, ya que no podrás obtener tu primera runa aquí (|T133816:0|t[Grabar guantes - Lanza de hielo])
step << !Warlock
    #season 2 << Warrior
    #optional
    #completewith WolfMeat
	.destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
--XX Everyone except Warlocks, Era warriors drop HS
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .accept 179 >> Acepta la misión Los enanos modistos
    .target Sten Stoutarm
step << Warlock
#sticky
#label wlrune1
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r del suelo. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Tormento]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
#requires wlrune1
#sticky
    #season 2
    .train 403919 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Tormento]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Poseer]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
--XX Era Level 1 Warrior/Warlock training, Era Warlock imp accept start
step << Warrior/Warlock
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Mata y despoja |cRXP_ENEMY_Lobos jóvenes pulgosos|r hasta que tengas 10 cobres o más de basura para vender|r
    >>|cRXP_WARN_Desequipa tu|r |T132665:0|t[Toga de acólito]|cRXP_WARN_,|r |T135005:0|t[Camisa de acólito]|cRXP_WARN_,|r |T134581:0|t[Pantalones de acólito]|cRXP_WARN_, y|r |T132535:0|t[Zapatos de acólito] |cRXP_WARN_para que puedas venderlos por 4 cobres|r << Warlock
    >>|cRXP_WARN_Desequipa tu|r |T135009:0|t[Camisa de recluta]|cRXP_WARN_,|r |T134582:0|t[Pantalones de recluta]|cRXP_WARN_, y|r |T132540:0|t[Botas de recluta] |cRXP_WARN_para que puedas venderlos por 3 cobres|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Warrior/Warlock
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .vendor >> Vende la Basura
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r en el interior
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r dentro
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .accept 1599 >> Acepta la misión Novato
    .target Alamar Grimm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Usa tu Piedra de hogar para ir a Valle de Crestanevada
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
--XX Era Warriors, Era Softcore Warlocks drop HS
step << Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >> Sal de Yunquemar
    .subzoneskip 77,1
--XX Era Level 1 Warrior/Warlock training, warlock imp accept end
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >> Mata enemigos hasta subir al nivel 2
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock
    #season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r extra si no tienes suficiente dinero|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Mage
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r extra si no tienes suficiente dinero|r
    >>|cRXP_WARN_Asegúrate de guardar 10 cobres para después|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura << Hunter
    >>|cRXP_BUY_Compra 600|r |T132384:0|t[Perdigones ligeros] |cRXP_BUY_a este vendedor|r << Hunter
    .vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179 >> Entrega la misión Los enanos modistos
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3106 >> Acepta la misión Runa simple << Dwarf Warrior
    .accept 3107 >> Acepta la misión Runa consagrada << Dwarf Paladin
    .accept 3108 >> Acepta la misión Runa con grabados << Dwarf Hunter
    .accept 3109 >> Acepta la misión Runa codificada << Dwarf Rogue
    .accept 3110 >> Acepta la misión Runa sacralizada << Dwarf Priest
    .accept 3112 >> Acepta la misión Memorándum simple << Gnome Warrior
    .accept 3113 >> Acepta la misión Memorándum encriptado << Gnome Rogue
    .accept 3114 >> Acepta la misión Memorándum glífico << Gnome Mage
    .accept 3115 >> Acepta la misión Memorándum corrupto << Gnome Warlock
    .target Sten Stoutarm
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acepta la misión Una nueva amenaza
    .target Balir Frosthammer
--XX SoD level 2 Training/Rune quest accept start (-Paladin, they don't need to yet)
step << Priest/Mage/Warlock
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r del suelo. Despójalo para obtener el |T136222:0|t|cRXP_LOOT_[Recuerdo de un acólito atribulado]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Mage
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r del suelo. Despójalo para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r
    >>|cRXP_WARN_NOTA: No podrás aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_aquí porque solo puedes obtener un|r |T133736:0|t[Manual de comprensiónr] |cRXP_WARN_en la zona de inicio de tu raza|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << !Paladin !Hunter
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Entra en Yunquemar << Rogue/Warlock/Mage
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar << !Rogue !Warlock !Mage
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .accept 1599 >> Acepta la misión Novato
    .turnin 3115 >> Entrega la misión Memorándum corrupto << Gnome
    .accept 77666 >> Acepta la misión Poder robado << Gnome
    .turnin 77666 >> Entrega la misión Poder robado << Gnome
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r en el interior
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .accept 77655 >> Acepta la misión La runa perdida << Dwarf
    .accept 77656 >> Acepta la misión La runa perdida << Gnome
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .trainer >> Aprende tus hechizos de clase
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r dentro
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .accept 77658 >> Acepta la misión Robo por triplicado << Dwarf
    .accept 77659 >> Acepta la misión Robo por triplicado << Gnome
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Solm Hargrin
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r dentro
    >>|cRXP_WARN_Aprende|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_ya que lo necesitarás para una misión de clase pronto|r << Dwarf
    .turnin 3110 >> Entrega la misión Runa sacralizada << Dwarf
    .accept 5626 >> Acepta la misión Al servicio de la Luz << Dwarf
    .accept 77661 >> Acepta la misión Meditaciones sobre la Luz << Dwarf
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .target Branstock Khalder
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Selecciona el |cRXP_FRIENDLY_Altar de la Luz|r dentro para recibir el|r |cRXP_WARN_buff|r |T135934:0|t[Meditación sobre la Luz]
    >>|cRXP_WARN_Si esto no funciona, escribe /kneel con el |cRXP_FRIENDLY_Altar de la Luz|r seleccionado como objetivo|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >> |cRXP_WARN_Usa el|r |T136222:0|t|cRXP_LOOT_[Recuerdo de un acólito atribulado]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Penitencia]
    .aura -410935
    .use 205951
step << Dwarf Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r dentro
    .turnin 77661 >> Entrega la misión Meditaciones sobre la Luz
    .target Branstock Khalder
    .isQuestComplete 77661
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock/Dwarf Priest
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] con|r |T133816:0|t[Grabar guantes - Poseer] << Warlock
    .engrave 10 >>Graba tus|cRXP_WARN_ |T132961:0|t[Guantes de paño andrajoso] |rcon|r |T133816:0|t[Grabar guantes - Penitencia] << Priest
    .train 402862,3 << Priest
    .train 403919,3 << Warlock

step << Warlock
    #season 0,1
    #requires FrostmaneC1
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r, |cRXP_ENEMY_Troggs Comepiedras fornidos|r, |cRXP_ENEMY_Lobos jóvenes pulgosos|r, y |cRXP_ENEMY_Lobos grises pulgosos|r por el camino
    >>|cRXP_WARN_Trata de evitar a las|r |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .mob +Burly Rockjaw Trogg
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >> Entra en la Cueva Peloescarcha
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Viaja hacia los |cRXP_ENEMY_Novicios Peloescarcha|r del interior
step << Warlock
    #season 0,1
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Mata a los |cRXP_ENEMY_Novicios Peloescarcha|r dentro. Despójalos para obtener los |cRXP_LOOT_Talismanes de plumas|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >> Usa tu Piedra de hogar para ir a Valle de Crestanevada
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .turnin 1599 >> Entrega la misión Novato
    .turnin -3115 >> Entrega la misión Memorándum corrupto
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
#season 0,1
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 183 >> Acepta la misión Cazador de jabalíes
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .target Talin Keeneye
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .target Talin Keeneye
step
#season 0,1
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Mata |cRXP_ENEMY_Jabalies del risco pequeño|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
#season 0,1
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 183 >> Entrega la misión Cazador de jabalíes
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Mata enemigos hasta alcanzar 1130+/1400xp
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >> Mata enemigos hasta alcanzar 995+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 182 >> Acepta la misión La cueva de los trols
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Mata enemigos hasta subir al nivel 4
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 5 minutos para la misión. NO te vayas AFK ni te desconectes durante los próximos 5 minutos|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >> Entra en la cueva de trols
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Mata |cRXP_ENEMY_Novicios Peloescarcha|r dentro de la cueva de trols. Despójalos para obtener sus |cRXP_LOOT_Talismanes de plumas|r
    >>|cRXP_WARN_Estás a contrarreloj. NO te vayas AFK ni te desconectes|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 2
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Yunquemar
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Tienes 5 minutos para volver a Yunquemar antes de que la|r |T132791:0|t[Infusión de albaza hirviendo de Durnan] |cRXP_WARN_expire|r
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r en el interior
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> Vende la Basura
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entrega la misión Runa con grabados << Dwarf
    .train 1978 >>Aprende |T132204:0|t[Picadura de serpiente]
step << Hunter
    #season 2
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entrega la misión Runa con grabados << Dwarf
    .accept 77660 >> Acepta la misión Un paseo por las cuevas << Dwarf
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
step << Paladin
    #season 0,1
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r en el interior
    .turnin 3107 >> Entrega la misión Runa consagrada << Dwarf
    .train 19740 >> Aprende |T135906:0|t[Bendición de poderío]
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .target Bromos Grummner
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r en el interior
    .turnin 3107 >> Entrega la misión Runa consagrada << Dwarf
    .accept 77657 >> Acepta la misión Reliquias de la Luz << Dwarf
    .train 19740 >> Aprende |T135906:0|t[Bendición de poderío]
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .target Bromos Grummner
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .turnin 3115 >> Entrega la misión Memorándum corrupto
    .train 172 >>Aprende |T136118:0|t[Corrupción]
    .target Alamar Grimm
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .train 172 >>Aprende |T136118:0|t[Corrupción]
    .turnin 1599 >> Entrega la misión Novato
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
step << Warlock
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Warrior/Paladin
    #season 2
    #completewith Observations
    #label Victory1 << Warrior
    #label Libram1 << Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .waypoint 1426,22.836,79.962,45,0
    .waypoint 1426,22.684,78.888,45,0
    .waypoint 1426,21.029,76.459,45,0
    .waypoint 1426,20.671,75.838,45,0
    .waypoint 1426,25.861,78.197,45,0
    .waypoint 1426,26.382,78.409,45,0
    .waypoint 1426,26.031,79.854,45,0
    .waypoint 1426,23.716,80.257,45,0
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r. Despójalas para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Ataque de la victoria]|r << Warrior
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r. Despójalas para obtener el |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r << Paladin
    .collect 204806,1 << Warrior --Rune of Victory Rush (1)
    .collect 205420,1 << Paladin -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 403470,1 << Warrior
    .train 410002,1 << Paladin
step << Warrior
    #season 2
    #completewith Observations
    #label Victory2
    #requires Victory1
    .train 403470 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Ataque de la victoria]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Ataque de la victoria]
    .use 204806
    .itemcount 204806,1
step << Warrior
    #season 2
    #completewith Observations
    #label Victory3
    #requires Victory2
    .equip 10 >>|cRXP_WARN_Equipa un par de|r |T132938:0|t|cRXP_LOOT_[Guantes]|r |cRXP_WARN_si tienes un par o si despojas un par|r
    .train 403470,3
step << Warrior
    #season 2
    #completewith Observations
    #requires Victory3
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132938:0|t|cRXP_LOOT_[Guantes]|r con|r |T133816:0|t[Grabar guantes - Ataque de la victoria]
    .train 403470,3
step << Paladin
    #season 2
    #completewith Observations
    #label Libram2
    #requires Libram1
    .equip 18,205420 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--  .itemStat 18,QUALITY,<2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram3
    #requires Libram2
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,29.303,77.337,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,24.193,77.305,55,0
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135959:0|t[Sentencia] |cRXP_WARN_10 veces para obtener el|r |cRXP_WARN_buff|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpe de cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram5
    #requires Libram4
    .equip 10 >>|cRXP_WARN_Equipa un par de|r |T132938:0|t|cRXP_LOOT_[Guantes]|r |cRXP_WARN_si tienes un par o si despojas un par|r
    .train 410002,3
step << Paladin
    #season 2
    #completewith Observations
    #requires Libram5
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132938:0|t|cRXP_LOOT_[Guantes]|r con|r |T133816:0|t[Grabar guantes - Golpe de cruzado]
    .train 410002,3
step
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Warrior/Paladin
    #season 2
    #optional
    #requires Victory2 << Warrior
    #requires Libram4 << Paladin
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 182 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 5 minutos para la misión. NO te vayas AFK ni te desconectes durante los próximos 5 minutos|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_Tienes 5 minutos para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r y regresar a Yunquemar antes de que la|r |T132791:0|t[Infusión de albaza hirviendo de Durnan] |cRXP_WARN_expire|r
    >>|cRXP_WARN_Si fallas la misión, no te preocupes, porque puedes obtenerla de nuevo más tarde|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Entra en la Cueva Peloescarcha
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Viaja hacia |cRXP_ENEMY_Grik'nir el Frío|r en el interior
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Mata a |cRXP_ENEMY_Grik'nir el Frío|r dentro. Despójalo para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue/Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>Abre el |cRXP_PICK_Alijo de botín Peloescarcha|r del suelo en el interior. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r << Rogue
    >>Abre el |cRXP_PICK_Alijo de botín Peloescarcha|r del suelo en el interior. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Quimera]|r << Hunter
    .collect 204795,1 << Rogue --Rune of Shadowstrike (1)
    .collect 206168,1 << Hunter -- Rune of the Chimera (1)
    .train 400105,1 << Rogue
    .train 410121,1 << Hunter
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << Hunter
    #season 2
    .train 410121 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Quimera]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo de quimera]
    .use 206168
    .itemcount 206168,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equipa un par de|r |T132952:0|t|cRXP_LOOT_[Guantes]|r |cRXP_WARN_si tienes un par o si despojas un par|r
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #label Chimera1
    .equip 10 >>|cRXP_WARN_Equipa un par de|r |T132952:0|t|cRXP_LOOT_[Guantes]|r |cRXP_WARN_si tienes un par o si despojas un par|r
    .train 410121,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132952:0|t|cRXP_LOOT_[Guantes]|r con|r |T133816:0|t[Grabar guantes - Golpesombra]
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #requires Chimera1
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132952:0|t|cRXP_LOOT_[Guantes]|r con|r |T133816:0|t[Grabar guantes - Disparo de quimera]
    .train 410121,1
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Sal de la Cueva Peloescarcha
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    >>|cRXP_WARN_Si fallaste la misión, omite este paso|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> Vende la Basura
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .accept 3365 >> Acepta la misión Devuelve la taza
    .vendor >> Vende la Basura
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandona la misión Entrega una infusión de albaza hirviendo. La volverás a aceptar de nuevo
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equipa un par de|r |T132952:0|t|cRXP_LOOT_[Guantes]|r |cRXP_WARN_si tienes un par o si despojas un par|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132952:0|t|cRXP_LOOT_[Guantes]|r con|r |T133816:0|t[Grabar guantes - Golpesombra]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r y |cRXP_FRIENDLY_Grelin Barbablanca|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .accept 77667 >> Acepta la misión Investigación sobre hechizos << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 77667 >> Entrega la misión Investigación sobre hechizos
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] con|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,3
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .trainer >>Aprende tus hechizos de clase
    .target Solm Hargrin
step << Rogue
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >> Entrega la misión Robo por triplicado << Dwarf
    .turnin 77659 >> Entrega la misión Robo por triplicado << Gnome
    .train 921 >>Aprende |T133644:0|t[Robar]
    .trainer >>Aprende tus hechizos de clase
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    >>|cRXP_WARN_Aprende|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_y|r |T135929:0|t[Sanación inferior] (Rango 2) |cRXP_WARN_porque los necesitarás para una misión de clase pronto|r << Dwarf
    .turnin 3110 >> Entrega la misión Runa sacralizada << Dwarf
    .accept 5626 >> Acepta la misión Al servicio de la Luz << Dwarf
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior] (Rango 2) << Dwarf
    .trainer >> Aprende tus hechizos de clase
    .target Branstock Khalder
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    >>|cRXP_WARN_Aprende|r |T135929:0|t[Sanación inferior] (Rango 2) |cRXP_WARN_porque lo necesitarás para una misión de clase pronto|r << Dwarf
    .accept 5626 >> Acepta la misión Al servicio de la Luz << Dwarf
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior] (Rango 2) << Dwarf
    .trainer >> Aprende tus hechizos de clase
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Entrega la misión La runa perdida << Dwarf
    .turnin 77656 >> Entrega la misión La runa perdida << Gnome
    .trainer >> Aprende tus hechizos de clase
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .accept 77667 >> Acepta la misión Investigación sobre hechizos << Gnome
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 77667 >> Entrega la misión Investigación sobre hechizos
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] con|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Solm Hargrin
step << Rogue
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >> Entrega la misión Robo por triplicado << Dwarf
    .turnin 77659 >> Entrega la misión Robo por triplicado << Gnome
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    >>|cRXP_WARN_Aprende|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_y|r |T135929:0|t[Sanación inferior] (Rango 2) |cRXP_WARN_porque los necesitarás para una misión de clase pronto|r << Dwarf
    .turnin 3110 >> Entrega la misión Runa sacralizada << Dwarf
    .accept 5626 >> Acepta la misión Al servicio de la Luz << Dwarf
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior] (Rango 2) << Dwarf
    .trainer >> Aprende tus hechizos de clase
    .target Branstock Khalder
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Entrega la misión La runa perdida << Dwarf
    .turnin 77656 >> Entrega la misión La runa perdida << Gnome
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
step << Priest/Mage
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 5|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
    .xp >8,1
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .target Nori Pridedrift
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >> Entrega la misión Reliquias de la Luz
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >> Entrega la misión Un paseo por las cuevas
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >> Abandona la misión Reliquias de la Luz ya que ya tienes un par de |T132938:0|t[Guantes] equipados << Paladin
    .abandon 77660 >> Abandona la misión Un paseo por las cuevas ya que ya tienes un par de |T132952:0|t[Guantes] equipados << Hunter
step
    #label Observations
    >>Habla con el |cRXP_FRIENDLY_Montaraz Thalos|r y |cRXP_FRIENDLY_Manit Piñomuelle|r
    .turnin 282 >> Entrega la misión Las observaciones de Senir
    .accept 420 >> Acepta la misión Las observaciones de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acepta la misión Suministros para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Atraviesa el Desfiladero de Crestanevada
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#xprate >1.49 << Hunter
#era/som--h
#classic
#tbc
#season 0,1
#version 1
<< Alliance --!Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh
#displayname 6-12 Dun Morogh << sod !Warlock
#next 11-12 Elwynn (Enano/Gnomo);11-12 Misión del Abisario;12-14 Loch Modan (Enano/Gnomo);11-13 Loch Modan (Cazador)
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que obtienes para la misión Los suministros del reactor a vapor y luego para subir de nivel tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.49
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Viaja a Kharanos. Grindea hasta 2145+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << Priest
    .xp 5+2415 >> Viaja a Kharanos. Grindea hasta 2415+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #xprate 1.49-1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1817 >> Viaja a Kharanos. Grindea hasta 1817+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << Priest
    .xp 5+2222 >> Viaja a Kharanos. Grindea hasta 2222+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << !Priest
    .subzoneskip 131
step
    #xprate >1.59
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+1490 >> Viaja a Kharanos. Grindea hasta 1490+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << Priest
    .xp 5+2030 >> Viaja a Kharanos. Grindea hasta 2030+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << !Priest
    .subzoneskip 131
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >> Viaja a Kharanos
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>|cRXP_WARN_Asegúrate de que tu subzona NO es el Desfiladero de Crestanevada|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .target Senir Whitebeard
step << !Priest
    #xprate <1.5
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >> Mata enemigos hasta alcanzar 2690+/2800xp
step << !Priest
    #xprate 1.49-1.59
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2635 >> Mata enemigos hasta alcanzar 2635+/2800xp
step << !Priest
    #xprate >1.99
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2580 >> Mata enemigos hasta alcanzar 2580+/2800xp
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    .vendor 6328 >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo después|r
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .turnin 2160,1 >> Entrega la misión Suministros para Tannok << Warrior/Rogue
    .turnin 2160,2 >> Entrega la misión Suministros para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Elimina el |T135426:0|t[Cuchillo arrojadizo pequeño] de tus bolsas, ya que ya no los necesitas
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .trainer >> Aprende tus hechizos de clase
    .target Hogral Bakkan
step << Mage
    #xprate <1.59
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Magis Sparkmantle
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .accept 5625 >> Acepta la misión Las prendas de la Luz
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Lanza |T135929:0|t[Sanación inferior] (Rango 2) y luego |T135987:0|t[Palabra de poder: entereza] a |cRXP_FRIENDLY_Montaraz Dolf|r fuera
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    #xprate <1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .turnin 5625 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step << Priest
    #xprate >1.59
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .turnin 5625 >> Entrega la misión Las prendas de la Luz
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .vendor >> |cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como te puedas permitir|r << Priest/Mage/Warlock
    .target Innkeeper Belm
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra el|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tognus Fuegosílex|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Sube al tejado de la Posada de Kharanos, luego salta sobre el enorme barril. Sigue la flecha|r
    >>Abre el |cRXP_PICK_Arcón oxidado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T236280:0|t[Matanza desde las Sombras]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #xprate <1.5
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r y el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >> Acepta la misión El Cubil Pardo
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step << Warrior/Paladin/Rogue
    #xprate 1.49-1.59
    #label StartStocking
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r y el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .goto Dun Morogh,49.426,48.410
    .target +Pilot Bellowfiz
    .accept 313 >> Acepta la misión El Cubil Pardo
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step
    #xprate >1.49 << !Warrior !Paladin !Rogue
    #xprate >1.59 << Warrior/Paladin/Rogue
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r y |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r y |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith BearFur
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith BearFur
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje de oso grueso|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Mata |cRXP_ENEMY_Jabalíes|r. Despójalos para obtener |T134026:0|t[Carne de cerdo de Dun Morogh]
    .collect 208192,1
    .mob Crag Boar
    .mob Elder Crag Boar
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje de oso grueso|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith EvershineEnd
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a este vendedor|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate >1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra el|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >> Mata enemigos hasta subir al nivel 6
step << Hunter
    #optional
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .train 3044 >> Aprende |T132218:0|t[Disparo Arcano]
    .train 1130 >> Aprende |T132212:0|t[Marca del cazador]
    .target Grif Wildheart
    .money <0.02
step << Hunter
    #season 0,1
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .train 3044 >> Aprende |T132218:0|t[Disparo Arcano]
    .target Grif Wildheart
    .money <0.01
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .train 1130 >> Aprende |T132212:0|t[Marca del cazador]
    >>|cRXP_WARN_Si no tienes suficiente dinero, farmea enemigos alrededor de Kharanos. Necesitarás este hechizo pronto|r
    .target Grif Wildheart
step << Warrior/Rogue/Priest/Mage/Warlock
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step << Warrior/Rogue
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale todo el|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_que puedas permitirte|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como puedas permitirte|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #season 0,1 << Warrior
    #xprate <1.49 << !Warrior !Paladin !Rogue
    #xprate <1.59 << Warrior/Paladin/Rogue
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Viaja a El Cubil Pardo
    .isOnQuest 313
step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Viaja a El Cubil Pardo
    .isOnQuest 313
step << Warrior
    #season 2
    #sticky
    #label WendigoPaw
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .waypoint 1426,41.918,54.053,40,0
    .waypoint 1426,42.177,53.274,40,0
    .waypoint 1426,41.100,48.927,40,0
    >>Mata |cRXP_ENEMY_Wendigos|r. Despójalos para obtener una |cRXP_LOOT_Pata de wendigo cortada|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 403475,1
step
    #xprate <1.49 << !Warrior !Paladin !Rogue
    #xprate <1.59 << Warrior/Paladin/Rogue
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    >>|cRXP_WARN_Recuerda estar atento a los|r |T134566:0|t[Filones de cobre] |cRXP_WARN_que dan|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_para poder fabricar|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Recuerda estar atento a los|r |T134566:0|t[Filones de cobre] |cRXP_WARN_que dan|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_para poder fabricar|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>Abre el |cRXP_PICK_Cajón de munición|r. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Viaja hacia |cRXP_FRIENDLY_Hegnar Estruendo|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    >>|cRXP_BUY_Compra un|r |T135611:0|t[Trabuco ornamentado]|cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .target Hegnar Rumbleshot
step
    #xprate >1.59 << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >> Mata enemigos hasta subir al nivel 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #loop
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
    #xprate <1.59
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a este vendedor|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #xprate <1.59
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior/Paladin/Rogue
    #xprate <1.49
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >> Mata enemigos hasta subir al nivel 7
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 8 >> Mata enemigos hasta subir al nivel 8
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .trainer >> Aprende tus hechizos de clase
    .target Hogral Bakkan
    .xp <8,1
step << Paladin
    #xprate <1.59
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
    .xp <8,1
step << Warrior
    #xprate <1.59
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
    .xp <8,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra el|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #xprate <1.59
    #completewith Tundra
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step << Warrior/Rogue
    #xprate <1.59
    #completewith Tundra
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 > |cRXP_BUY_Buy as much|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him as you can afford|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >> Viaja al Valle Escalofrío
step << Paladin/Warrior/Rogue
    #xprate <1.59
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Viaja hacia |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,35.237,56.815
    .subzone 801 >> Viaja al Valle Escalofrío
step
    #xprate >1.59 << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Viaja hacia |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter/Rogue
    #xprate >1.59 << Rogue
    #season 0,1 << Hunter
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step << Hunter
    #season 2
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Hunter
    #season 2
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Viaja a Las Birras
step << !Mage !Priest
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vende la basura
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r y |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 318 >> Entrega la misión La tajada
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Acepta la misión Rivales acérrimos
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #sticky
    #label ForceFavorRibNo
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #sticky
    #label ForceFavorRibYes
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
--XX Forcing this so people are a higher level for second wave of west quests (even on 2x)
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Lanza |T132212:0|t[Marca del cazador] en el |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo Crines de Acero|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .use 206155
    .train 410113,1
step << Hunter/Mage/Warrior
    #season 2
    #requires Marksmanship2 << Hunter
    #label Fyodi1
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Mata a |cRXP_ENEMY_Fyodi|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r << Hunter
    >>Mata a |cRXP_ENEMY_Fyodi|r. Despójalo para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r << Mage
    >>Mata a |cRXP_ENEMY_Fyodi|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r << Warrior
    >>|cRXP_WARN_Aunque |cRXP_ENEMY_Fyodi|r aparece como un élite, sus valores de salud, daño y armadura son los de un enemigo estándar|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, infligiendo 35-80 de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    >>|cRXP_WARN_NOTA: La|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_también puede caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_ |rVagash|cRXP_ENEMY_, |rSarnagarra|r, y |cRXP_ENEMY_Viejo Barbahielo|r << Hunter
    >>|cRXP_WARN_NOTA: Las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_también pueden caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Sarnagarra|r y |rViejo Barbahielo|cRXP_ENEMY_|r << Mage
    >>|cRXP_WARN_NOTA: La|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_también puede caer de todos los enemigos raros en Dun Morogh, así como de |cRXP_ENEMY_Vagash|r, |cRXP_ENEMY_Sarnagarra|r, y|r |cRXP_ENEMY_Viejo Barbahielo|r << Warrior
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .collect 203753,1 << Mage --Spell Notes: RING SEFF OSTROF (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder (1)
    .mob Fyodi
    .train 410123,1 << Hunter
    .train 401765,1 << Mage
    .train 403476,1 << Warrior
step << Hunter
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 410123 >> |cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo explosivo]
    .use 206169
    .itemcount 206169,1
step << Mage
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Dedos de Escarcha]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .itemcount 211779,1 --Comprehension Charm (1)
step << Warrior
    #season 2
    #sticky
    #requires Fyodi1
    #label FyodiEnd
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
    .itemcount 204809,1 --Rune of Furious Thunder (1)
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires FyodiEnd << Hunter/Mage/Warrior --Season 2
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
    .target Rejold Barleybrew
step
    #hardcore
    #completewith Distracting
    .goto Dun Morogh,47.377,52.523
    .subzone 131 >> Regresa a Kharanos
--XX if they don't somehow meet xp gate by Kharanos then wcyd
step
    #xprate <1.5
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>Mata enemigos hasta alcanzar 3735+/4500xp
    .isQuestAvailable 384
step
    #xprate 1.49-1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3355 >>Mata enemigos hasta alcanzar 3355+/4500xp
    .isQuestAvailable 384
step << Rogue/Hunter
    #xprate >1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 9+6110 >>Mata enemigos hasta alcanzar 6110+/7600xp
    .isQuestAvailable 384
step
    #xprate <1.5
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>Mata enemigos hasta alcanzar 4360+/4500xp
    .isQuestTurnedIn 384
step
    #xprate 1.49-1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4290 >>Mata enemigos hasta alcanzar 4290+/4500xp
    .isQuestTurnedIn 384
step << Rogue/Hunter
    #xprate >1.59
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 9+7320 >>Mata enemigos hasta alcanzar 7320+/7600xp
    .isQuestTurnedIn 384
step
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    >>|cRXP_WARN_Haz el deathskip Dun Morogh -> Los Humedales. Sigue la flecha de cerca|r
    >>|cRXP_WARN_NO saltes de ninguna altura todavía|r
    .zone Wetlands >>|cRXP_WARN_Sube la montaña, luego baja más allá del patrón dentado hasta que tu subzona cambie a Los Humedales|r
    .isQuestAvailable 983
step
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salta de la montaña hacia el norte o noroeste|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r de la Bahía de Baradin
    .isQuestAvailable 983
    .target Ángel de la Resurrección
step
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nada hacia la orilla en dirección al Puerto de Menethil
    .subzoneskip 150
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
    #softcore
	#completewith Distracting
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
    .subzoneskip 131
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarven Cebatruenos|r en el piso de abajo
    .turnin 308 >> Entrega la misión Distraer a Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Haz clic en la |cRXP_PICK_Barrica de Cerveza del Trueno sin vigilar|r
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step << Hunter
    #xprate <1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .target Grif Wildheart
step << Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .accept 6064 >>Acepta la misión Domesticar la bestia << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6064 >>Entrega la misión Domesticar la bestia
    .accept 6084 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6084 >>Entrega la misión Domesticar la bestia
    .accept 6085 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Dwarf Hunter
    #xprate >1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .accept 6086 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    .vendor 6328 >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Rogue
    #xprate >1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .accept 2218 >> Acepta la misión El camino hacia la salvación
    .target Hogral Bakkan
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .trainer >> Aprende tus hechizos de clase
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Thamner Pol
    .money <0.01
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.59
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale hasta 15|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si te lo puedes permitir|r << Warrior/Rogue
    .vendor 1247 >> |cRXP_BUY_Cómprale 5|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si te lo puedes permitir|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .accept 287 >> Acepta la misión Poblado Peloescarcha
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
    #xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .target Pilot Stonegear
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_Elige el|r |T135637:0|t[Cuchillo de acampada]|cRXP_WARN_. Guárdalo para después|r << Rogue
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz << !Rogue
    .turnin 320,3 >> Entrega la misión Regresa junto a Bramiz << Rogue
    .target Pilot Bellowfiz
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_Elige el|r |T135637:0|t[Cuchillo de acampada]
    .turnin 320,3 >> Entrega la misión Regresa junto a Bramiz
    .target Pilot Bellowfiz
step << Rogue
    #xprate >1.49
    #completewith ShimmerweedCollect
    +|cRXP_WARN_Equipa el|r |T135637:0|t[Cuchillo de acampada] |cRXP_WARN_en tu mano izquierda|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.2
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1426,47.861,41.827,30,0
    .goto 1426,51.373,39.595,30,0
    .goto 1426,52.013,36.589,30,0
    .goto 1455,18.428,82.995,60 >>Viaja hacia Forjaz
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #completewith next
    #label EnterIFRogue
    .goto 1455,18.428,82.995
    .zone Ironforge >>Entra en Forjaz
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    #requires EnterIFRogue
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Viaja hacia |cRXP_FRIENDLY_Hulfdan Barbanegra|r en el piso de abajo
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin 2218 >> Entrega la misión El camino hacia la salvación
    .accept 2238 >> Acepta la misión Un simple subterfugio
    .target Hulfdan Blackbeard
step
    #xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r en el interior
    .accept 412 >> Acepta la misión Operación Recombobulación
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Sube por la rampa hacia Monte Luz
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener sus |cRXP_LOOT_Cardaluz|r
    >>Abre las |cRXP_PICK_Cestas de Cardaluz|r en el suelo. Despójalas para obtener |cRXP_LOOT_Cardaluz|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Debes tener 2 buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205947
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI]|r
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI]|r
    .train 401768 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI]|r |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Trols Peloescarcha|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step << Warrior
    #season 2
    >>Mata |cRXP_ENEMY_Trols Peloescarcha|r. Despójalos para obtener su |cRXP_LOOT_Cabeza de trol cortada|r
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .train 403475,1
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Usa |T134026:0|t[Carne de cerdo de Dun Morogh] cerca del cadáver dentro de la cueva para invocar a |cRXP_ENEMY_Jorul|r
    >>Mata a |cRXP_ENEMY_Jorul|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Flanqueo]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Flanqueo]|r |cRXP_WARN_para aprender|r |T132175:0|t[Golpe lateral]
    .use 205979
    .itemcount 205979,1
step << !Mage !Warlock
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lanza|r |T136071:0|t[Polimorfia] |cRXP_WARN_en el|r |cRXP_ENEMY_Viejo Barbahielo|r << Mage
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en el|r |cRXP_ENEMY_Viejo Barbahielo|r << Warlock
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    #season 0,1 << Hunter/Rogue
    #xprate <1.59 << Hunter/Rogue
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_BUY_Compra hasta 10 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> Vende la basura
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r y |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 315 >> Entrega la misión La cerveza perfecta
    .accept 413 >> Acepta la misión Cerveza negra Brillante
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step << Rogue
    #season 2
    #completewith next
    >>|T133644:0|t[Roba] a los |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T134269:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Priest
    #season 2
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Dun Morogh,25.164,44.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onin MacHammar|r arriba en la plataforma de las máquinas voladoras
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 2238 >> Entrega la misión Un simple subterfugio
    .accept 2239 >> Acepta la misión El informe de Onin
    .target Onin MacHammar
step
    #xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener sus |cRXP_LOOT_Engranajes giromecánicos|r y |cRXP_LOOT_Piñones de estabilización|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t[Roba] a los |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T134269:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r dentro de la cueva
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Sube corriendo por el lateral de la entrada de la cueva. Salta abajo hacia el Poblado Peloescarcha
    .isOnQuest 287
step << Hunter
    #xprate 1.49-1.59
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .goto 1426,22.390,51.701,30,0
    .goto 1426,21.113,51.717,30,0
    .goto 1426,21.131,51.024,30,0
    .goto 1426,22.067,50.215,30,0
    .goto 1426,23.136,50.886,30,0
    .goto 1426,23.373,51.385,30,0
    .goto 1426,23.568,50.924,30,0
    .goto 1426,24.301,50.898,30,0
    .xp 9+4280 >> Mata enemigos hasta alcanzar 4280+/6500xp
step
    #hardcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Déjate caer en la pequeña habitación sin salida de la cueva si solo hay un |cRXP_ENEMY_Taumaturgo umbrío Peloescarcha|r allí|r
    >>|cRXP_WARN_Ten cuidado ya que el |cRXP_ENEMY_Gran patriarca Arctikus|r (raro) puede patrullar hacia este rincón. Espera a que venga y se vaya patrullando si está vivo, o lucha con cuidado hasta el fondo del rincón|r
    >>|cRXP_WARN_Alternativamente, baja a la repisa, luego camina un poco más hacia abajo en la repisa hasta que se complete|r
    >>|cRXP_WARN_Ten cuidado ya que el |cRXP_ENEMY_Desollador Peloescarcha|r puede matarte desde abajo si está en una mala posición cuando saltes a la repisa|r
    .link https://youtu.be/70PX093soq4?si=YcTdPoKW-EplWQAn&t=3019 >> Haz clic aquí para ver la referencia
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Cae hacia la pequeña sala sin salida de la cueva|r
    >>|cRXP_WARN_No te preocupes por morir para hacer esto, ya que estás a punto de hacer un deathskip de vuelta a Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #optional
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #hardcore
	#completewith next
	.hs >> Usa tu Piedra de hogar para ir a Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
    .target Senir Whitebeard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .accept 6064 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6064 >>Entrega la misión Domesticar la bestia
    .accept 6084 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6084 >>Entrega la misión Domesticar la bestia
    .accept 6085 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    #xprate 1.49-1.59
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .accept 6086 >>Acepta la misión Domesticar la bestia
    .target Grif Wildheart
step << Rogue
    #xprate <1.59
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .accept 2218 >> Acepta la misión El camino hacia la salvación
    .target Hogral Bakkan
    .xp <10,1
step << !Warrior !Rogue !Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Thamner Pol
step
    #xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r en el interior
    .turnin 412 >> Entrega la misión Operación Recombobulación
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Mata enemigos hasta tener 10 platas 30 cobres en objetos para vender|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Viaja a Forjaz
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r o |cRXP_FRIENDLY_Buliwyf Petramano|r
    .trainer >> Si estás en un grupo o tienes a alguien que te ayude a matar |cRXP_ENEMY_Vagash|r ahora, aprende Mazas de 2 manos de |cRXP_FRIENDLY_Buliwyf Petramano|r, si no aprende Armas arrojadizas de |cRXP_FRIENDLY_Bixi Tambaleapié|r. Si no estás seguro de cuál aprender, solo aprende Armas arrojadizas
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Camina sobre borde del suelo de metal sobre la flecha de la ruta marcada|r
    .zone Dun Morogh >>|cRXP_WARN_Coloca a tu personaje hasta que parezca que flota, luego haz un Logout Skip cerrando sesión y volviendo a entrar|r
    .zoneskip Ironforge,1
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mata a los |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mata a los |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_HAZ CLIC AQUÍ Si tienes dificultades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r << Warrior
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitéalo hacia el guardia al sur del rancho. Asegúrate de infligirle 51%+ de daño|r
    >>|cRXP_WARN_Mira el video de abajo antes de intentar matar a |cRXP_ENEMY_Vagash|r. Se puede completar en solitario con cualquier clase|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco grande|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco grande|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Viaja a la Cantera de Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Cómprale hasta 10|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Cómprale hasta 5|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r y el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Dwarf Paladin
    #xprate >1.49
    #sticky
    #label PalaCloth
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r. Despójalos para obtener sus |T132889:0|t[Paño de lino] << Dwarf Paladin
    >>|cRXP_WARN_Guarda el|r |T132889:0|t[Paño de lino] |cRXP_WARN_para una misión más tarde|r << Dwarf Paladin
    .collect 2589,10,1648,1 --Linen Cloth (10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r dentro o fuera de la mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Entra a la Mina de la Cantera Gol'Bolar
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Mata |cRXP_ENEMY_Cascahuesos Comepiedras|r dentro de la mina
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires PalaCloth << Paladin -->1.49 or higher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entrega la misión El servidor público
    .goto Dun Morogh,68.671,55.969
    .target +Foreman Stonebrow
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >> Mata enemigos hasta subir al nivel 10
    .mob Rockjaw Skullthumper
step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] con los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener |T134331:0|t[Nota de Ratanegra] y el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener la |T134331:0|t[Nota de Ratanegra]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Dun Morogh|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Warrior/Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .train 403475,1 << Warrior
    .train 398196,1 << Rogue
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Junni Pasoacero|r
    >>|cRXP_WARN_Después de entregar los tres objetos, recibirás la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para aprender|r |T135291:0|t[Devastar]
    .use 204703
    .skipgossip
    .target Junni Steelpass
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Dun Morogh|r] |cRXP_WARN_bajo el pequeño puente. Esto causará que un |cRXP_PICK_Tesoro enterrado|r aparezca|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>Abre el |cRXP_PICK_Tesoro enterrado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Habla con |cRXP_FRIENDLY_Rata negra|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco cicatríceo|r y |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco cicatríceo|r y |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Viaja hacia el |cRXP_FRIENDLY_Piloto Podomartillo|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r << Warrior
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Rayo furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: DASCAC HEDED SEOR]|r |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de artesano]|cRXP_WARN_. Guárdala para más tarde|r << Rogue
    .turnin 417 >> Entrega la misión Vengar al piloto << !Rogue
    .turnin 417,1 >> Entrega la misión Vengar al piloto << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de artesano]
    .turnin 417,1 >> Entrega la misión Vengar al piloto
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de artesano] |cRXP_WARN_en tu mano principal|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >> Viaja hacia el |cRXP_FRIENDLY_Montaraz Cebadiz|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Cebadiz|r
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Viaja a Loch Modan a través del Paso de la Puerta Sur
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
    .xp >14,1 << !Warrior !Dwarf/!Paladin
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entra en el Búnker. Ve al piso superior
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
    .xp >14,1 << !Warrior !Dwarf/!Paladin
--XX Skip if 14+ unless warr
step
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Viaja a Thelsamar
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    #completewith ThelsaHS << !Dwarf !Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r en el interior
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_BUY_Cómprale también una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si es necesario|r << !Rogue
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49 << Paladin
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r en el interior
    .home >> Establece tu Piedra de hogar en Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >> Sal de la Pensión La Cebada
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >> Acepta la misión Estudiantes de honor
    .target Brock Stoneseeker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    #optional
    #label BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_No te desvíes de tu camino para completar esto ahora. Volverás a Loch Modan pronto|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Viaja a la Estación de Algaz
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Entra en el Búnker. Ve al piso superior
step
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r dentro del búnker
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
    .dungeon DM << Human
step << Human
    #xprate <1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta << Mage/Warlock/Rogue
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #softcore
    #completewith flyIF
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
step
    #optional
    #label Thelsamar1
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r en el interior
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf Paladin
    #xprate 1.49-1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6885 >> Mata enemigos hasta alcanzar 6885+/8800xp
step << Dwarf Paladin
    #xprate >1.59
    #optional
    .goto 1432,26.186,49.030
    .xp 11+6225 >> Mata enemigos hasta alcanzar 6225+/8800xp
step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Entrega la misión Estudiantes de honor
    .accept 6391 >> Acepta la misión Vuela a Forjaz
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Gnome Rogue/Dwarf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Viaja hacia |cRXP_FRIENDLY_Hulfdan Barbanegra|r en el piso de abajo
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Viaja hacia |cRXP_FRIENDLY_Hulfdan Barbanegra|r en el piso de abajo
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin 2218 >> Entrega la misión El camino hacia la salvación
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin 2239 >> Entrega la misión El informe de Onin
    .target Hulfdan Blackbeard
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #label Cunning
    #completewith Ride
    +|cRXP_WARN_Equipa la|r |T135662:0|t[Hoja de astucia] |cRXP_WARN_en tu mano principal|r
    .use 7298
    .itemcount 7298,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #requires Cunning
    #completewith Ride
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de artesano] |cRXP_WARN_en tu mano izquierda|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #xprate <1.59
    #season 2
    .goto Ironforge,51.913,13.383
    >>Abre el |cRXP_PICK_Cofre Polvoriento|r fuera. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Al hacer esto aparecerán dos |cRXP_ENEMY_Atracadores despiadados|r de nivel 10 que te atacarán|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #xprate <1.59
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << Dwarf Rogue/Gnome Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,60.781,25.800,25,0
    .goto 1455,59.236,14.974,25,0
    .goto 1455,56.192,32.397,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Viaja hacia |cRXP_FRIENDLY_Golnir Dedorroca|r dentro del edificio
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto 1455,60.781,25.800,25,0
    .goto 1455,59.236,14.974,25,0
    .goto 1455,56.192,32.397,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Viaja hacia |cRXP_FRIENDLY_Golnir Dedorroca|r dentro del edificio
step << Dwarf/Gnome
    #xprate <1.59 << Rogue
    #season 0,1 << Rogue
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto Ironforge,51.521,26.311,10 >>Viaja hacia |cRXP_FRIENDLY_Golnir Dedorroca|r dentro del edificio
step
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Golnir Dedorroca|r en el interior
    .turnin 6391 >> Entrega la misión Vuela a Forjaz
    .accept 6388 >> Acepta la misión Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_NO vueles a ningún lado|r
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
    .target Gryth Thurden
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Viaja hacia el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
step
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .turnin 291 >> Entrega la misión Los informes
    .target Senator Barin Redstone
step
    #xprate <1.5 << Dwarf Paladin
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_NO vueles a ningún lado|r
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>Viaja hacia |cRXP_FRIENDLY_Brandur Martiyerro|r
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .accept 2999 >>Acepta la misión Escrito sobre divinidad
    .target Brandur Ironhammer
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Viaja hacia |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 2999 >>Entrega la misión Escrito sobre divinidad
    .accept 1645 >>Acepta la misión Escrito sobre divinidad
    .turnin 1645 >>Entrega la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Usa el |T133739:0|t|cRXP_LOOT_[Escrito sobre divinidad]|r para iniciar la misión|r
    .accept 1646 >>Acepta la misión Escrito sobre divinidad
    .use 6916
step << Dwarf Paladin
    #xprate >1.49
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 1646 >>Entrega la misión Escrito sobre divinidad
    .accept 1647 >>Acepta la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrulla por el anillo exterior de Forjaz entre justo después de la Taberna Roca de Fuego y justo después de Centro del Viajero|r
    .turnin 1647 >>Entrega la misión Escrito sobre divinidad
    .accept 1648 >>Acepta la misión Escrito sobre divinidad
    .turnin 1648 >>Entrega la misión Escrito sobre divinidad
    .accept 1778 >>Acepta la misión Escrito sobre divinidad
    .unitscan John Turner
step << Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Compra 5|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Estos son necesarios para aprender runas|r
    .collect 211779,5
    .target Barim Jurgenstaad
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto y para subir tu nivel de|r |T133971:0|t[Cocina] |cRXP_BUY_con:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >> Ve hacia las escaleras debajo de |cRXP_FRIENDLY_Tiza Forjabatalla|r
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Viaja hacia |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    #xprate >1.49
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 1778 >>Entrega la misión Escrito sobre divinidad
    .accept 1779 >>Acepta la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muiredon Forjabatalla|r en el piso de arriba
    .turnin 1779 >>Entrega la misión Escrito sobre divinidad
    .accept 1783 >>Acepta la misión Escrito sobre divinidad
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r abajo
    .trainer >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith DRT
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima del pilar que está sobre |cRXP_FRIENDLY_Bink|r, luego camina ligeramente al este de ella hacia la posición de la flecha. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,35.743,74.853,30,0
    .goto 1455,39.105,78.213,30,0
    .goto 1455,49.422,81.849
    >>|cRXP_WARN_Camina sobre borde del suelo de metal sobre la flecha de la ruta marcada|r
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Coloca a tu personaje hasta que parezca que flota, luego haz un Logout Skip cerrando sesión y volviendo a entrar|r
    .zoneskip Ironforge,1
    .isQuestAvailable 418 --XX only if you havent turned it in yet
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ah
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de la cabeza del Grifo. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Ironforge,1
    .isQuestTurnedIn 418 --XX only if you have turned in (don't need to go toward AH)
step << skip --logout skip << !Hunter !Warrior --Hunter Class q, Warrior training Era SoD, Rune SoD
    #ssf
    #season 0,1 << Paladin --Rebuke Rune
    #xprate <1.5 << Dwarf Paladin --XX 1.5x+ logout skips from trainers
    #optional
    #completewith DRT
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de la cabeza del Grifo. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Ironforge,1
step << Paladin
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425621,1
step << Paladin
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Bruart|r para empezar un combate
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r
    >>|cRXP_WARN_Kitéalo arriba al balcón, déjate caer fuera de la taberna y lanza|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r
    >>|cRXP_WARN_Kitéalo arriba al balcón, déjate caer fuera de la taberna y lanza|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Bruart|r:|r
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r de nuevo para recibir la |T134419:0|t[Runa de Reprimenda]
    >>|cRXP_WARN_Si no te da la|r |T134419:0|t[Runa de Reprimenda]|cRXP_WARN_, es posible que necesites luchar contra |cRXP_ENEMY_Bruart|r de nuevo|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Reprimenda] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Reprimenda]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r con|r |T134596:0|t[Grabar pantalones - Reprimenda]
    >>|cRXP_WARN_Recuerda poner|r |T134919:0|t[Reprimenda] |cRXP_WARN_en tus barras de acciones|r
    .train 425621,3
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    >>Aprende Armas arrojadizas y Mazas de 2 manos si no lo hiciste antes
    .train 2567 >> Aprende el uso de Armas arrojadizas
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >> Aprende Mazas de 2 manos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizo cortante] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425447,1
step << Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Bruart|r para empezar un combate
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Kitéalo hacia el balcón, déjate caer afuera de la posada y usa|r |T133688:0|t[Vendas] |cRXP_WARN_si es necesario|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Kitéalo hacia el balcón, déjate caer afuera de la posada y usa|r |T133688:0|t[Vendas] |cRXP_WARN_si es necesario|r
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Bruart|r:|r
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r de nuevo para recibir la |T134419:0|t[Runa de Asalto frenético]
    >>|cRXP_WARN_Si no te da la|r |T134419:0|t[Runa de Asalto frenético]|cRXP_WARN_, es posible que tengas que luchar contra |cRXP_ENEMY_Bruart|r de nuevo|r
    >>|cRXP_WARN_NOTA: Esto puede ser difícil de hacer solo. Puede que necesites ayuda, de lo contrario puedes hacerlo de nuevo más tarde en la guía|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Asalto frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r |cRXP_WARN_con|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .train 425447,3
step << skip --logout skip << Paladin/Warrior
    #season 2
    #optional
    #completewith DRT
    .goto 1455,72.481,74.910
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de las Velas de la mesa. Haz un Logout Skip desconectando y volviendo a entrar|r
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>Viaja hacia |cRXP_FRIENDLY_Belia Tronagranito|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .turnin 6086 >> Entrega la misión Domesticar la bestia
    .target Belia Thundergranite
step << skip --logout skip << Hunter
    #optional
    #completewith DRT
    .goto 1455,70.408,85.520
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Súbete encima del cañón. Realiza un Logout Skip desconectando y volviendo a entrar|r
step
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    >>Usa la |T133942:0|t[Flauta cazarratas] en las |cRXP_FRIENDLY_Ratas del subterráneo|r en el Tranvía Subterráneo
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .timer 11,A por las ratas del tranvía subterráneo RP
    .accept 6662 >> Acepta la misión Mi hermano Niblis
    .target Monty
----
step
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
----
step
    #label TramEnd
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Ventormenta|r
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a la Ciudad de Ventormenta si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niblis|r en el andén central del Tranvía Subterráneo en el lado de Ventormenta
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step
    #optional
    #completewith Order
    .abandon 6662 >> Abandona la misión Mi hermano Niblis
step
    #optional
    #completewith Order
    .zone Stormwind City >> Entra en Ventormenta
    .isOnQuest 1338
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step
    #label Order
    .goto StormwindClassic,58.091,16.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Habla con el |cRXP_FRIENDLY_Hermano Romulus|r
    .target Brother Romulus
    --.skipgossip
    .train 410015,1
step << Paladin
    #season 2
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Baja las escaleras hacia el lado occidental de la Cripta de la Catedral
    .goto StormwindClassic,32.86,24.77,8 >>Viaja hacia la |cRXP_LOOT_Nota chamuscada|r en la cripta
    .train 410015,1
step << Paladin
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>Despoja la |cRXP_LOOT_Nota chamuscada|r junto a las velas
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .trainer >> Aprende tus hechizos de clase
    .turnin 5634 >> Entrega la misión Oración desesperada
    .target High Priestess Laurena
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .train 13908 >> Aprende Rezo desesperado
    .target High Priestess Laurena
step << Warrior
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Entra en la Taberna
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Entrega la misión Instrucción de guerrero
    .accept 1639 >> Acepta la misión Bartleby, el borracho
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Entrega la misión Bartleby, el borracho
    .accept 1640 >> Acepta la misión Vence a Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Derrota a |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Entrega la misión Vence a Bartleby
    .accept 1665 >> Acepta la misión La jarra de Bartleby
    .target Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Entrega la misión La jarra de Bartleby
    .target Harry Burlguard
step << Warlock
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende Espadas de 1 mano << Rogue/Mage
    .trainer >>Aprende el uso de Bastones << Priest/Hunter
    .trainer >>Aprende Espadas de 1 mano y Bastones << Warlock
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
step << Dwarf Paladin
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en Ventormenta
    .target Innkeeper Allison
]])

RXPGuides.RegisterGuide([[
#xprate >1.49
#classic
#tbc
#season 0,1
#version 1
<< Gnome Warlock
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 11-12 Misión del Abisario
#displayname 12-13 Misión del Abisario << SoD
#next 12-14 Loch Modan (Enano/Gnomo)

step
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step
    #optional
    #completewith next
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Sal de Ventormenta
step
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_puede aparecer en múltiples ubicaciones|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_a |cRXP_ENEMY_Hogger|r continuamente y usa tus "DoTs" normales para matarlo|r
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #softcore
    #optional
    #completewith next
    .deathskip >> Muere y reaparece en Villadorada
step
    .goto Elwynn Forest,42.108,65.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 176,3 >> Entrega la misión Se busca: Hogger
    .target Marshal Dughan
step << Warlock
    #optional
    #label BoarMeatElwynnCooking1
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Mata |cRXP_ENEMY_Jabalíes Pielroca|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatElwynnCooking1
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Mata |cRXP_ENEMY_Jabalíes Pielroca|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeatElwynnCooking1
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatElwynnCooking1
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,86,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step
    #xprate >1.49
    .goto Redridge Mountains,29.31,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
    >>|cRXP_WARN_Ten cuidado con los enemigos de alto nivel en el camino|r
    .accept 3741 >> Acepta la misión El collar de Hilary
    .target Shawn
    .xp <12,1
--XX Done now as you come RR only for p2 on >1.59x
step
    #xprate >1.49
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_Nada bajo el agua y comprueba los puntos de aparición. Hay 8 ubicaciones en total, con 2 apariciones activas a la vez|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    .complete 3741,1 --Hilary's Necklace (1)
    .isOnQuest 3741
step
    #xprate >1.49
    .goto Redridge Mountains,29.24,53.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hilary|r desde el lago hablando con ella mientras saltas
    >>|cRXP_WARN_Puedes hablar con ella mientras estés en el lago si saltas directamente debajo de ella mientras intentas hablar con ella|r
    .turnin 3741 >> Entrega la misión El collar de Hilary
    .target Hilary
    .isQuestComplete 3741
step
    #xprate >1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step
    #xprate <1.49
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_Ten cuidado con los enemigos de alto nivel en el camino|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto y para subir tu nivel de|r |T133971:0|t[Cocina] |cRXP_BUY_con:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollado y baja las escaleras
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1688 >> Entrega la misión Surena Caledon
    .accept 1689 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step
    #optional
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja al fondo de El Cordero Degollado|r
    .cast 7728 >> |cRXP_WARN_Usa|r la |T133292:0|t[Gargantilla de sangrita] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Abisario invocado|r
    .use 6928
step
    .goto StormwindClassic,25.154,77.406
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .use 6928
    .mob Summoned Voidwalker
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1689 >> Entrega la misión El vínculo
    .target Gakin the Darkbinder
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
<< Alliance !Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Enano/Gnomo)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Enano/Gnomo)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +Lanza |T136126:0|t[Transfusión de vida] repetidamente hasta tener <10% de salud mientras vas hacia |cRXP_FRIENDLY_Dungar Tragolargo|r
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>Lanza |T136126:0|t[Transfusión de vida] repetidamente hasta tener <10% de salud luego salta del borde (NO al agua) junto al maestro de vuelo y muere intencionalmente
    .deathskip >> Reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #optional
    #completewith next
    .subzone 87 >> Viaja a Villadorada
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .accept 62 >> Acepta la misión La Mina Abisal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Acepta la misión Las velas de los kóbolds
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Prioriza aprender|r |T132147:0|t[Doble empuñadura]
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
step << Warlock
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step << Paladin
    #season 2
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step << Warlock
    #completewith next
    >>|cRXP_WARN_La|r |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] |cRXP_WARN_es un objeto muy raro. Ignora este paso si no lo obtienes|r
    >>|cRXP_ENEMY_Bronco Mordeveloz|r |cRXP_WARN_es un enemigo raro, tiene un 100% de probabilidad de botín|r
    .use 1307 >>|cRXP_WARN_Usa la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] para comenzar la misión|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acepta la misión El Coleccionista
    .unitscan Gruff Swiftbite
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_puede aparecer en múltiples ubicaciones|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_a |cRXP_ENEMY_Hogger|r continuamente y usa tus "DoTs" normales para matarlo|r
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    >>|cRXP_WARN_La|r |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] |cRXP_WARN_es un objeto muy raro. Ignora este paso si no lo obtienes|r
    >>|cRXP_ENEMY_Bronco Mordeveloz|r |cRXP_WARN_es un enemigo raro, tiene un 100% de probabilidad de botín|r
    .use 1307 >>|cRXP_WARN_Usa la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] para comenzar la misión|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acepta la misión El Coleccionista
    .unitscan Gruff Swiftbite
step << Paladin
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_puede aparecer en múltiples ubicaciones|r
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Paladin
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Viaja hacia |cRXP_FRIENDLY_Ada Gelhardt|r en la isla
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Paladin
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Habla con |cRXP_FRIENDLY_Ada Gelhardt|r para comenzar una pelea
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step << Paladin
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Derrota a |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en ella|r
    >>|cRXP_WARN_Ten cuidado porque ella lanza|r |T136197:0|t[Choque de Sombras] |cRXP_WARN_(causa instantáneamente 45 de daño de sombra. Le cuesta 75 de maná. Deberías matarla lo suficientemente rápido como para que solo lo lance 3 veces)|r
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Habla con |cRXP_FRIENDLY_Ada Gelhardt|r de nuevo para recibir la |T134419:0|t[Runa de Martirio]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Paladin
    #season 2
    #sticky
    .destroy 205864 >> Elimina la |T134939:0|t[Nota chamuscada] de tu inventario, ya que ya no se necesita
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Martirio] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Sello de martirio]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Paladin
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_Graba tu|r |T134596:0|t|cRXP_LOOT_[Pechera]|r con|r |T133815:0|t[Grabar Pechera - Sello de martirio]
    >>|cRXP_WARN_Recuerda poner|r |T135961:0|t[Sello de martirio] |cRXP_WARN_en tus barras de acción. Es mejor que ambos|r |T132325:0|t[Sello de rectitud] |cRXP_WARN_y|r |T132347:0|t[Sello de orden] |cRXP_WARN_(hasta que obtengas|r |T133815:0|t[Grabar pechera - Tormenta divina]|cRXP_WARN_)|r
    .train 410015,3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r y |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> Acepta la misión El collar perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Los monstruos de nivel 5 pueden volverse grises durante esta misión. Aun así termínala porque necesitas completarla para desbloquear la siguiente|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Entra y explora la Mina Abisal|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Los monstruos de nivel 5 pueden volverse grises durante esta misión. Aun así termínala porque necesitas completarla para desbloquear la siguiente|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #softcore
    #completewith GoldshireTurnins
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >> Viaja a Villadorada
step
    #hardcore
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas la recompensa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_. Es un objeto increíblemente valioso hasta el nivel 60|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .target Remy "Two Times"
step << Paladin
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Acepta la misión La Mina Abisal
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 176,2 >> Entrega la misión Se busca: Hogger
    .isQuestComplete 176
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Acepta la misión La Mina Abisal
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 176,3 >> Entrega la misión Se busca: Hogger
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Acepta la misión La Mina Abisal
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
step
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Entrega la misión El Coleccionista
    .isOnQuest 123
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .accept 147 >> Acepta la misión La persecución
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas la recompensa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_. Es un objeto increíblemente valioso hasta el nivel 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
step
    #completewith next
    .goto Elwynn Forest,73.973,72.179,30 >> Viaja al este hacia el |cRXP_FRIENDLY_Guardia Thomas|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Entrega la misión Más preocupaciones
    .target Guard Thomas
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
step
    #era
    #completewith Prowlers
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
step
    #era
    #completewith Bundles
    >>Despoja el |cRXP_LOOT_Fardo de madera|r en el suelo. |cRXP_WARN_Se encuentran debajo de los árboles|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Múrlocs|r cercanos pueden atacarte cuando hagas clic en el|r |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_ENEMY_Batidores múrloc|r |cRXP_WARN_lanzarán|r |T135915:0|t[Beber poción menor] |cRXP_WARN_que les cura a sí mismos por 61-68|r
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Despoja el |cRXP_LOOT_Fardo de madera|r en el suelo. |cRXP_WARN_Se encuentran debajo de los árboles|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Acepta la misión Artículos rojos de lino
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
step
    #completewith Deed
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    .use 1972>>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    >>|cRXP_WARN_Las|r |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] |cRXP_WARN_es un botín muy raro. Ignora este paso si no lo obtienes|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>Mata a |cRXP_ENEMY_Morgan el Coleccionista|r. Despójalo para obtener el |cRXP_LOOT_El anillo del coleccionista|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_vendrá con ambos de sus|r |cRXP_ENEMY_Séquitos porcinos|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_también lanzará|r |T132368:0|t[Carga impetuosa] |cRXP_WARN_que inflige mucho daño|r
    .complete 88,1
    .mob Princess
step
    #era
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
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
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #era
    #softcore
    #sticky
    #completewith next
    .deathskip >>Muere y resucita en el Ángel de la Resurrección si tienes poca vida, de lo contrario solo corre de regreso y entrega la misión
    .target Ángel de la Resurrección
step
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .isQuestComplete 83
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acepta la misión Gnolls invasores
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_Ten cuidado con los enemigos de alto nivel en el camino|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elegimos el|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un video corto y de incalculable valor para aprender|r
    .target Morgan Pestle
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto y para subir tu nivel de|r |T133971:0|t[Cocina] |cRXP_BUY_con:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollado y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1688 >> Entrega la misión Surena Caledon
    .accept 1689 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja al fondo de El Cordero Degollado|r
    .cast 7728 >> |cRXP_WARN_Usa|r la |T133292:0|t[Gargantilla de sangrita] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Abisario invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +Empieza a lanzar |T136126:0|t[Transfusión de vida] de camino de vuelta hacia |cRXP_FRIENDLY_Gakin el Presotenebra|r ya que harás un deathskip pronto
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entrega la misión El vínculo
step << Warlock
    #softcore
    .deathskip >> Muere y resucita en el Ángel de la Resurrección usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .target Ángel de la Resurrección
step
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Sal de Ventormenta. Viaja a Villorada
step << Warlock
    #era
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 147 >> Entrega la misión La persecución
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 147 >> Entrega la misión La persecución
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Aprende tus hechizos de clase
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .target Priestess Josetta
    .trainer >> Aprende tus hechizos de clase
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .target Ma Stonefield
    .turnin 88 >> Entrega la misión ¡Princesa debe morir!
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    >>|cRXP_WARN_Omite la entrega por ahora si no tienes suficientes [Trozos de carne de jabalí]|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandona la misión Un pastel para Billy
step << Dwarf Paladin
    >>Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |T132889:0|t[Paño de lino]
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Viaja a Páramos de Poniente
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Acepta la misión Campos de la muerte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Muere y resucita en el Ángel de la Resurrección o corre a Colina del Centinela
    .target Ángel de la Resurrección
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .accept 12 >> Acepta la misión La Milicia Popular
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 12 >> Acepta la misión La Milicia Popular
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .fly Stormwind >> Vuela a Ventormenta << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> Usa tu Piedra de hogar para ir a Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
]])

RXPGuides.RegisterGuide([[
#era/som--h
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Enano/Gnomo)
#displayname 12-15 Loch Modan << SoD !Warlock
#displayname 13-15 Loch Modan << SoD Warlock
#next 13-15 Páramos de Poniente;14-16 Costa Oscura
#defaultfor Gnome/Dwarf


step << Rogue
    #xprate >1.49
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo, o compra algo más barato/mejor de la Casa de Subastas|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate >1.49
    #optional
    #label Scimitar1
    #completewith KeenT
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra] |cRXP_WARN_en tu mano principal|r
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #xprate >1.49
    #optional
    #requires Scimitar1
    #completewith KeenT
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra] |cRXP_WARN_en tu mano izquierda|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, puedes consultar la Casa de Subastas para ver si encuentras una opción mejor o más barata|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #label CutlassE
    #completewith KeenT
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje] |cRXP_WARN_en tu mano principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #requires CutlassE
    #completewith KeenT
    +|cRXP_WARN_Equipa la|r |T135346:0|t[Daga de artesano] |cRXP_WARN_en tu mano izquierda|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >> Entra en el edificio Mercadería cotidiana
step << Rogue
    #optional
    #label KeenT
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizo cortantes] |cRXP_BUY_a este vendedor|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a este vendedor|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate 1.49-1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step
    #xprate >1.59
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
    .dungeon !DM
step
    #season 0,1 << Paladin
    #xprate >1.49
    .hs >> Usa tu Piedra de hogar para ir a Loch Modan
    .cooldown item,6948,>180--wait for cd if <3min
    .zoneskip Loch Modan
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    #optional
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step
    #season 0,1 << Paladin
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,23.131,6.143,12 >>Viaja hacia |cRXP_FRIENDLY_Brandur Martiyerro|r
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .accept 2999 >>Acepta la misión Escrito sobre divinidad
    .target Brandur Ironhammer
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Viaja hacia |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 2999 >>Entrega la misión Escrito sobre divinidad
    .accept 1645 >>Acepta la misión Escrito sobre divinidad
    .turnin 1645 >>Entrega la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Usa el |T133739:0|t|cRXP_LOOT_[Escrito sobre divinidad]|r para iniciar la misión|r
    .accept 1646 >>Acepta la misión Escrito sobre divinidad
    .use 6916
step << Dwarf Paladin
    #xprate <1.5
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 1646 >>Entrega la misión Escrito sobre divinidad
    .accept 1647 >>Acepta la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrulla por el anillo exterior de Forjaz entre justo después de la Taberna Roca de Fuego y justo después de Centro del Viajero|r
    .turnin 1647 >>Entrega la misión Escrito sobre divinidad
    .accept 1648 >>Acepta la misión Escrito sobre divinidad
    .turnin 1648 >>Entrega la misión Escrito sobre divinidad
    .accept 1778 >>Acepta la misión Escrito sobre divinidad
    .unitscan John Turner
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >> Ve hacia las escaleras debajo de |cRXP_FRIENDLY_Tiza Forjabatalla|r
step << Dwarf Paladin
    #xprate <1.5
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Viaja hacia |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    #xprate <1.5
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 1778 >>Entrega la misión Escrito sobre divinidad
    .accept 1779 >>Acepta la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    #xprate <1.5
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muiredon Forjabatalla|r en el piso de arriba
    .turnin 1779 >>Entrega la misión Escrito sobre divinidad
    .accept 1783 >>Acepta la misión Escrito sobre divinidad
    .target Muiredon Battleforge
step << Paladin
    #xprate <1.5
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >> |cRXP_BUY_Cómprale|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
    .target Yanni Stoutheart
step << !Hunter
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .vendor 6734 >> |cRXP_BUY_Compra un poco de|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Cómprale algo de|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >> Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step
    #optional
    #label BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #xprate <1.59
    #completewith Gear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #xprate >1.59
    #completewith Gear
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    >>|cRXP_WARN_No te desvíes por esto ya que probablemente saltarás esta misión|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #label SilverMine
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r dentro de la mina. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r dentro de la mina. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Cómprale la|r |T133476:0|t[Maza con pinchos pesada] |cRXP_BUY_O la|r |T133053:0|t[Gran maza de maderaférrea] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_Si no puedes pagarlo, entonces obtén dinero de los cercanos |cRXP_ENEMY_Ratatúneles|r hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    >>|cRXP_WARN_Si no deseas hacer esto, omite este paso|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #ah
    #label Gear
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Cómprale la|r |T133476:0|t[Maza con pinchos pesada] |cRXP_BUY_O la|r |T133053:0|t[Gran maza de maderaférrea] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_Si no puedes pagarlo, entonces obtén dinero de los cercanos |cRXP_ENEMY_Ratatúneles|r hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    >>|cRXP_WARN_Si no quieres hacer esto o prefieres intentar comprar un arma más barata/mejor de la Casa de Subastas pronto, omite este paso|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equipa la|r |T133476:0|t[Maza con pinchos pesada]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Gran maza de maderaférrea]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    #xprate >1.59
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .itemcount 3110,8 --Tunnel Rat Ear (8)
step
    #xprate <1.59
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #label BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Entra en el Búnker
step
    #optional
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step
    #xprate <1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step
    #xprate >1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
    .isQuestComplete 416
step
    #xprate >1.59
    #optional
    #sticky
    #label RatAbandon
    .abandon 416 >> Abandona la misión Mata ratas
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step << !Dwarf/!Paladin --XX Dwarf palas need to do class q
    #season 0,1 << Warrior/Mage --SoD warriors and mages need to do rune (Quick Strike, Living Bomb)
    #optional
    #sticky
    #label DefenseAbandon
    .abandon 224 >> Abandona la misión En defensa de las tierras del rey
    .xp <14,1
step << !Dwarf/!Paladin
    #season 0,1 << Warrior/Mage
    #optional
    #sticky
    #label TroggAbandon
    .abandon 267 >> Abandona la misión La amenaza trogg
    .xp <14,1
step
    #label FlintTinder
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Dwarf/!Paladin
    #optional
    #requires DefenseAbandon
--XXREQ Placeholder invis step until multiple requires per step
step << !Dwarf/!Paladin
    #optional
    #requires TroggAbandon
--XXREQ Placeholder invis step until multiple requires per step
step
    #season 0,1 << Warrior/Mage
    .goto Loch Modan,26.67,56.94
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes de trogg de piedra|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    >>|cRXP_WARN_Esta es una zona de reaparición rápida. No deberías necesitar moverte de aquí|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step
    #season 0,1 << Warrior/Mage
    #xprate <1.5
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+9600 >> Mata enemigos hasta alcanzar 9600+/11400xp
step
    #season 0,1 << Warrior
    #xprate 1.49-1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+8700 >> Mata enemigos hasta alcanzar 8700+/11400xp
step
    #season 0,1 << Warrior
    #xprate >1.59
    #optional
    .goto Loch Modan,26.67,56.94
    .xp 13+7800 >> Mata enemigos hasta alcanzar 7800+/11400xp
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step
    #label TroggEnd
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
    .isQuestComplete 267 << !Dwarf/!Paladin
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
    .isQuestComplete 224 << !Dwarf/!Paladin
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Vuela a Forjaz
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1432,21.498,67.840,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,16.342,58.520,20,0
    .goto 1426,84.262,51.367
    .zone Dun Morogh >> Viaja a Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_Usa el|r |T133439:0|t[Símbolo de la vida] |cRXP_WARN_sobre |cRXP_FRIENDLY_Narm Faulk|r en el suelo|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Entrega la misión Escrito sobre divinidad
    .accept 1784 >>Acepta la misión Escrito sobre divinidad
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Mata |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener la |cRXP_LOOT_Misiva Hierro Negro|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy

----Start of <1.5x IF->Westfall Section----

step << Mage/Priest/Warlock
    #xprate <1.5
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harick Tamborroca|r abajo
    >>|cRXP_WARN_Compra una|r |T135468:0|t[Varita humeante] |cRXP_WARN_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    #xprate <1.5
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
step << Priest
    #xprate <1.5
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima del pilar que está sobre |cRXP_FRIENDLY_Bink|r, luego camina ligeramente al este de ella hacia la posición de la flecha. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
step << Dwarf Rogue/Gnome Rogue
    #xprate <1.5
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin 2218 >> Entrega la misión El camino hacia la salvación
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate <1.5
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Aprende tus hechizos de clase
    .target Fenthwick
step << Warlock
    #xprate <1.5
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
step << Warlock/Rogue
    #xprate <1.5
    #optional
    #label Jubahl
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
step << Warlock
    #xprate <1.5
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor 6382 >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)] |cRXP_BUY_y|r |T133738:0|t[Grimorio Sacrificio (Rango 1)] |cRXP_BUY_si puedes permitírtelo|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #xprate <1.5
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Camina sobre la cama, luego salta sobre la parte superior de la estantería. Realiza un Logout Skip desconectando y volviendo a entrar|r
step << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Viaja hacia |cRXP_FRIENDLY_Bilban Cálculo|r
step << Warrior
    #xprate <1.5
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << skip --logout skip << Warrior
    #xprate <1.5
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta a la parte superior del soporte de armas. Haz un Logout Skip desconectando y volviendo a entrar|r
-- step << skip --logout skip << Hunter
--  #xprate <1.5
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
--  .zoneskip Ironforge,1
step << !Paladin
    #xprate <1.5
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_WARN_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step << !Paladin
    #xprate <1.5
    #optional
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #label Deeprun
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Stormwind City
step << !Paladin
    #xprate <1.5
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook1
    #label WestfallTramCook2
    #completewith WestfallTramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook2
    #label WestfallTramCook3
    #completewith WestfallTramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Paladin
    #xprate <1.5
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a la Ciudad de Ventormenta si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia la Ciudad de Ventormenta
step << Dwarf Paladin
    #xprate <1.5
	#completewith PaladinTrainSW
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
step << Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Paladin
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    #xprate <1.5
    #label PaladinTrainSW
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acepta la misión Principios humildes
    .target Baros Alexston
step
    #xprate <1.5
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_WARN_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Paladin
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acepta la misión Principios humildes
    .target Baros Alexston
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo o compra algo mejor de la Casa de Subastas|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #sticky
    #label Wand1
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << !Paladin
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Paladin
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
    --XX on <1.5 Gnomes/dwarves dont go back to capital cities to train (can't buy groupers/strider meat some other time)
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Compra una|r |T135468:0|t[Varita humeante] |cRXP_WARN_a esta vendedora|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #xprate <1.5
    #ah
    #optional
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #xprate <1.5
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink

----End of <1.5x IF->Westfall Section----
----Start of >1.5x+ IF->Darkshore Section----

step << skip --logout skip << Dwarf Paladin
    #xprate >1.49
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Haz un Logout Skip en la mina para teletransportarte de vuelta a Forjaz
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> HAZ CLIC AQUÍ para referencia
step << Dwarf Rogue/Gnome Rogue
    #xprate 1.49-1.59
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin 2218 >> Entrega la misión El camino hacia la salvación
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Aprende tus hechizos de clase
    .target Fenthwick
step << Rogue
    #xprate >1.49
    #optional
    #requires Salvation
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
step << Warlock
    #xprate >1.49
    #optional
    #label Jubahl
    #completewith next
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
step << Warlock
    #xprate >1.49
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor 6382 >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)] |cRXP_BUY_y|r |T133738:0|t[Grimorio Sacrificio (Rango 1)] |cRXP_BUY_si puedes permitírtelo|r
    .target Jubahl Corpseseeker
step << Dwarf Paladin
    #xprate >1.49
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10 >> Viaja hacia |cRXP_FRIENDLY_Muiredon Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muiredon Forjabatalla|r en el piso de arriba
    .turnin 1784 >>Entrega la misión Escrito sobre divinidad
    .accept 1785 >>Acepta la misión Escrito sobre divinidad
    .target Muiredon Battleforge
step << Dwarf Paladin
    #xprate >1.49
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 1785 >>Entrega la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Paladin
    #xprate >1.49
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldruk Ceñomaldito|r
    .trainer >> Aprende tus hechizos de clase
    .target Beldruk Doombrow
step << skip --logout skip << Paladin
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #optional
    .goto 1455,25.254,10.981
    .zone Dun Morogh >>|cRXP_WARN_Salta a la parte superior del pilar encima de |cRXP_FRIENDLY_Toldren Acerhondo|r, coloca tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
step << Mage
    #xprate >1.49
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
step << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harick Tamborroca|r abajo
    >>|cRXP_WARN_Compra una|r |T135468:0|t[Varita humeante] |cRXP_WARN_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Warrior
    #xprate >1.49
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Viaja hacia |cRXP_FRIENDLY_Bilban Cálculo|r
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << Warrior
    #xprate >1.49
    #optional
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r
    .train 2567 >>Aprende el uso de Armas arrojadizas
    .target Bixi Wobblebonk
step << skip --logout skip << Warrior
    #xprate >1.49
    #optional
    #ssf
    #hardcore << !Human
    #completewith next
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Camina sobre borde del suelo de metal sobre la flecha de la ruta marcada|r
    .zone Dun Morogh >>|cRXP_WARN_Coloca a tu personaje hasta que parezca que flota, luego haz un Logout Skip cerrando sesión y volviendo a entrar|r
    .zoneskip Ironforge,1
step << Rogue
    #xprate >1.49
    #ah
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grenil Furiacerada|r en la planta de abajo
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si te lo puedes permitir o compra algo mejor de la Casa de Subastas|r
    .collect 2027,1 --Scimitar
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto 1455,35.969,65.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grenil Furiacerada|r en la planta de abajo
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2027,1 --Scimitar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << skip --logout skip << Rogue
    #xprate >1.49
    #ssf
    #hardcore << !Human
    #completewith LeaveIF
    .goto 1455,35.959,66.597
    .zone Dun Morogh >>|cRXP_WARN_Salta a la parte superior del soporte de armas. Haz un Logout Skip desconectando y volviendo a entrar|r
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #sticky
    #label Wand1
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step
    #xprate >1.49
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << skip --logout skip
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Salta a lo más alto del |cRXP_PICK_Buzón|r, luego realiza un Logout Skip desconectando y volviendo a entrar|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>17.49 << Mage/Priest/Warlock
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harick Tamborroca|r abajo
    >>|cRXP_WARN_Compra una|r |T135468:0|t[Varita humeante] |cRXP_WARN_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.44
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_Salta encima de la parte superior del perchero, luego realiza un Logout Skip desconectándote y volviendo a entrar|r
    .zoneskip Ironforge,1
step << skip --logout skip << Mage/Priest/Warlock
    #xprate >1.49
    #ssf
    #hardcore << !Human
    .goto 1455,23.197,16.959
    .zone Dun Morogh >>|cRXP_WARN_Salta encima de la parte superior del perchero, luego realiza un Logout Skip desconectándote y volviendo a entrar|r
    .zoneskip Ironforge,1
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Vuela a Los Humedales
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Sal de Forjaz
step
    #xprate >1.49
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Viaja al punto de atajo (skip) entre Dun Morogh -> Los Humedales
step
    #xprate >1.49
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
    >>|cRXP_WARN_¡Mira primero la guía en vídeo para obtener una referencia sobre cómo realizar el atajo (skip)!||r
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Crocoliscos de Los Humedales|r y a los |cRXP_ENEMY_Múrlocs|r al cruzar el agua|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .goto Wetlands,12.1,60.3,80 >> Viaja al Puerto de Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #xprate >1.49
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    >>|cRXP_WARN_Haz el deathskip Dun Morogh -> Los Humedales. Sigue la flecha de cerca|r
    >>|cRXP_WARN_NO saltes de ninguna altura todavía|r
    .goto 1415,44.910,52.030,15 >>|cRXP_WARN_Sube la montaña, luego baja más allá del patrón dentado hasta que tu subzona cambie a Mare Magnum|r
    .zoneskip Wetlands
    .subzoneskip 207 --The Great Sea
--XX neither of these zoneskips/subzoneskips want to work, so using waypoint obj instead
step << Human
    #xprate >1.49
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    #completewith next
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salta de la montaña hacia el norte o noroeste|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r de la Bahía de Baradin
    .isQuestAvailable 984
    .target Ángel de la Resurrección
step << Human
    #xprate >1.49
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nada hacia la orilla en dirección al Puerto de Menethil
    .subzoneskip 150
step
    #xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r en la planta baja del cuartel
    .vendor 1448 >> |cRXP_WARN_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Sal del Castillo de Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
    #xprate >1.49
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r fuera
    .fp Wetlands>> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
    #xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r dentro
    .vendor 1453 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Dewin Shimmerdawn
step
    #xprate >1.49
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle del barco de Auberdine
    .zoneskip Darkshore
step
    #xprate >1.49
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura

    ----End of >1.5x+ IF->Darkshore Section----

]])


RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Dun Morogh (Cazador)
#displayname 6-11 Dun Morogh
#next 11-13 Loch Modan (Cazador)
#defaultfor Dwarf Hunter



step
    #completewith ribs1
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Viaja a Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .target Senir Whitebeard
step
    #label ribs1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Entrega la misión Suministros para Tannok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Establece tu Piedra de hogar en Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .target Pilot Bellowfiz
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Acepta la misión El Cubil Pardo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Acepta la misión Municiones para Estruendo
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    #completewith BoarRibs2
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .train 3044 >> Aprende Disparo Arcano
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Abre el |cRXP_PICK_Cajón de munición|r. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    >>|cRXP_BUY_Compra y equipa un|r |T135611:0|t[Trabuco ornamentado]|cRXP_BUY_. Omite este paso si no te lo puedes permitir|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
    #xprate <1.5
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .xp 7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Entrega la misión La tajada
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
step
    #label BoarRibs2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Acepta la misión Rivales acérrimos
step
    #completewith next
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
    .goto Dun Morogh,28.7,43.7
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #xprate <1.5
    .goto Dun Morogh,46.726,53.826
    >>Termina de farmear las Costillas de Jabalí
    .complete 384,1
    .xp 8-1400 >>Mata enemigos hasta que te falten 1400 xp para el nivel 8.
step
    #xprate >1.49
    .goto Dun Morogh,46.726,53.826
    >>Termina de farmear las Costillas de Jabalí
    .complete 384,1
    .xp 8-2100 >>Mata enemigos hasta que te falten 2100 xp para el nivel 8.
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Corre hasta aquí y sigue la flecha de cerca en los siguientes pasos para hacer un deathskip a Los Humedales
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
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Sigue corriendo recto hacia el norte, salta hacia abajo y muere cuando entres en Los Humedales, luego resucita en el Puerto Menethil
    .target Ángel de la Resurrección
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Nada hacia la orilla
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
    #softcore
	#completewith next
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step
    #hardcore
    #completewith next
    .goto Dun Morogh,49.622,48.612,60 >> Viaja a Kharanos
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Entrega la misión El Cubil Pardo
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarven Cebatruenos|r en el piso de abajo
    .turnin 308 >> Entrega la misión Distraer a Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Haz clic en la |cRXP_PICK_Barrica de Cerveza del Trueno sin vigilar|r
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Acepta la misión Poblado Peloescarcha
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .train 5116>> Aprende Disparo de conmoción
    .target Grif Wildheart
step
#optional
    #completewith FinishShimmerweed
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step << Hunter
    #season 2
    #completewith next
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .train 410123,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitéalo hacia el guardia al sur del rancho. Asegúrate de infligirle 51%+ de daño|r
    >>|cRXP_WARN_Mira el video de abajo antes de intentar matar a |cRXP_ENEMY_Vagash|r. Se puede completar en solitario con cualquier clase|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Hunter
    #season 2
    .train 410123 >> |cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo explosivo]
    .use 206169
    .itemcount 206169,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    .goto Dun Morogh,69.084,56.330
    .target Foreman Stonebrow
    >>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 432 >> Acepta la misión ¡Malditos troggs!
step
#loop
    .goto Dun Morogh,67.5,59.4,40,0
    .goto Dun Morogh,70.2,57.6,40,0
    .goto Dun Morogh,67.5,59.4,0
    .goto Dun Morogh,70.2,57.6,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    .goto Dun Morogh,69.084,56.330
    .target Foreman Stonebrow
    >>Habla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >> Acepta la misión El piloto perdido
step
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    #hardcore
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step
    #softcore
    .goto Dun Morogh,47.11,55.01
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #xprate >1.49
    .xp 10
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .accept 6064 >>Acepta la misión Domesticar la bestia
step << Hunter
#xprate >1.49
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6064 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6084 >>Acepta la misión Domesticar la bestia
step << Hunter
#xprate >1.49
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6084 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6085 >>Acepta la misión Domesticar la bestia
step << Hunter
#xprate >1.49
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
#xprate >1.49
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6086 >>Acepta la misión Domesticar la bestia
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acepta la misión Operación Recombobulación
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Viaja a Monte Luz. Sigue la flecha y sube la montaña corriendo
step
    #label FinishShimmerweed
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener sus |cRXP_LOOT_Cardaluz|r
    >>|cRXP_LOOT_Cardaluz|r también se puede despojar de las |cRXP_PICK_Cesta de cardaluz|r en el suelo
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << Hunter
#optional
    #season 2
    #completewith next
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_Lanza|r |T132212:0|t[Marca del cazador] |cRXP_WARN_en el|r |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo Crines de Acero|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
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
    .goto Dun Morogh,28.7,43.7
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step << Hunter
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>|cRXP_WARN_Lanza|r |T132212:0|t[Marca del cazador] |cRXP_WARN_en el|r |cRXP_ENEMY_Arbusto susurrante|r
    >>Mata al |cRXP_ENEMY_Furtivo Crines de Acero|r que aparece. Despójalo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Puntería|r] |cRXP_WARN_para aprender|r |T132177:0|t[Maestro Tirador]
    .use 206155
    .train 410113,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Entrega la misión La cerveza perfecta
    .accept 413 >> Acepta la misión Cerveza negra Brillante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entra en el Poblado Peloescarcha
step
#sticky
#label explore
    >>|cRXP_WARN_Baja hasta esta ubicación para explorar el Poblado Peloescarcha. Si hay enemigos abajo, limpia los alrededores normalmente y NO bajes|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
#requires explore
#xprate <1.5
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener sus |cRXP_LOOT_Engranajes|r y |cRXP_LOOT_Piñones|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #xprate <1.5
    .xp 10-1470 >> Mata enemigos hasta que te falten 1450xp para el nivel 10
step
#requires explore
    #hardcore
    #completewith KharanosTurnins
    .goto Dun Morogh,46.7,53.7,200 >> Viaja a Kharanos. Mata enemigos por el camino
step
#requires explore
    #completewith next
    #softcore
    .deathskip >> Muere y resucita en Kharanos
step
#requires explore
    #label KharanosTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .target Razzle Sprysprocket
    .turnin 412 >> Entrega la misión Operación Recombobulación
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz
    .isOnQuest 320
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .accept 6064 >>Acepta la misión Domesticar la bestia
step << Hunter
#xprate <1.5
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6064 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6084 >>Acepta la misión Domesticar la bestia
step << Hunter
#xprate <1.5
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6084 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6085 >>Acepta la misión Domesticar la bestia
step << Hunter
#xprate <1.5
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
#xprate <1.5
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6086 >>Acepta la misión Domesticar la bestia
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Viaja a la Cantera de Gol'Bolar
step
    .goto Dun Morogh,68.671,55.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .accept 433 >> Acepta la misión El servidor público
    .target Senator Mehr Stonehallow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Mata |cRXP_ENEMY_Cascahuesos Comepiedras|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entrega la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Aprende Cocina de Ghilm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Cebadiz|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Cazador)
#displayname 11-13 Loch Modan << !SoD
#displayname 12-15 Loch Modan << SoD
#next 14-16 Costa Oscura
#defaultfor Dwarf

step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,20 >> Vuela a Loch Modan
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r en el búnker
    .target Captain Rugelfuss
    .accept 267 >> Acepta la misión La amenaza trogg
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin -414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .home >> Establece tu Piedra de hogar en Thelsamar
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >> Acepta la misión Estudiantes de honor
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Entrega la misión Estudiantes de honor
    .accept 6391 >> Acepta la misión Vuela a Forjaz
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Golnir Dedorroca|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Entrega la misión Vuela a Forjaz
    .accept 6388 >> Acepta la misión Gryth Thurden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Entrega la misión Los informes
    .isOnQuest 291
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .turnin 6086 >> Entrega la misión Domesticar la bestia
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >> Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrok Rayobestial|r
    >>|cRXP_BUY_Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135613:0|t[Bocarda de cazador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #completewith BraveSoul
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Viaja al norte a la Estación de Algaz
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r dentro del búnker
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
    .dungeon DM << Human
step << Human
    #xprate <1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r dentro del búnker
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r dentro del búnker
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    >>|cRXP_WARN_Podrás completar esta misión a un nivel más alto si deseas dejarla por ahora|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #label RatEar
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    >>|cRXP_ENEMY_Ratatúneles|r |cRXP_WARN_pueden aparecer por todo Loch Modan. Revisa tu Mapa del Mundo para localizar sus ubicaciones|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Entrega la misión La amenaza trogg
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> Viaja a la Excavación de Vetaferro
step
#xprate <1.5
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Vetaferro|r
    .accept 298 >> Acepta la misión Un informe sobre el avance de la excavación
    .target Prospector Ironband
step
#xprate <1.5
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Viaja a la Cabaña del Errante
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .accept 257 >> Acepta la misión La fanfarronada de un cazador
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step
#xprate <1.5
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Mata |cRXP_ENEMY_Águilas ratoneras montesas|r
    >>|cRXP_WARN_Debes completar la misión y regresar a |cRXP_FRIENDLY_Daryl el Jovenzuelo|r en menos de 15 minutos. Si fallas la misión, abandónala y vuelve a aceptarla|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl el Jovenzuelo|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Entrega la misión La fanfarronada de un cazador
    .target Daryl the Youngling
step
    #xprate <1.5
    .goto Loch Modan,82.496,63.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xandar Bonbarba|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
#xprate <1.5
    #hardcore
    .hs >> Usa tu Piedra de Hogar para ir a Thelsamar
step
#xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
#xprate <1.5
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jern Cornamenta|r
    .turnin 298 >> Entrega la misión Un informe sobre el avance de la excavación
    .accept 301 >> Acepta la misión Informe a Forjaz
    .target Jern Hornhelm
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Aprende |T133971:0|t[Cocina]
step
#xprate <1.5
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Pico Tormenta|r
    .turnin 301 >> Entrega la misión Informe a Forjaz
    .target Prospector Stormpike
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Entra en el Tranvía Subterráneo|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central
    .target Monty
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
step
    .use 17117 >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratase] |cRXP_WARN_en las|r |cRXP_ENEMY_Ratas del subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .timer 11,A por las ratas del tranvía subterráneo RP
    .accept 6662 >> Acepta la misión Mi hermano Niblis
step
    #completewith next
    .zone Stormwind City >> Toma el Tranvía hacia Ventormenta
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras esperas el Tranvía|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niblis|r cuando bajes del Tranvía
    >>|cRXP_FRIENDLY_Niblis|r |cRXP_WARN_está en el andén central|r
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    .target Nipsy
step
    .zone Stormwind City >> Entra en Ventormenta
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Aprende el uso de Bastones
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #softcore
    .hs >> Usa tu Piedra de hogar para ir a Loch Modan
step
    #softcore
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Viaja al norte a la Estación de Algaz
step
    #softcore
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #softcore
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum|r
    .fly Wetlands >> Vuela a Los Humedales
    .target Thorgrum Borrelson
step << skip --logout skip
    #hardcore
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Realiza un logout skip dentro del tranvía. Haz clic aquí para ver el vídeo de referencia|r
step
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Sal de Forjaz
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Viaja al punto de atajo (skip) entre Dun Morogh -> Los Humedales
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
    >>|cRXP_WARN_¡Mira primero la guía en vídeo para obtener una referencia sobre cómo realizar el atajo (skip)!||r
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Crocoliscos de Los Humedales|r y a los |cRXP_ENEMY_Múrlocs|r al cruzar el agua|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r
    .goto Wetlands,12.1,60.3,80 >> Viaja al Puerto de Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Samor Festivus|r arriba
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Samor Festivus|r no tiene ninguna|r
    .target Samor Festivus
step
    #hardcore
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle del barco de Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])
