if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name 1-6 Bosque Canción Eterna
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor BloodElf
#next 6-10 Bosque Canción Eterna


step << !BloodElf
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía destinada a Sangre Elf. No recomendamos hacer la zona 1-6 porque no hay misiones para no Sangre Elf. Deberías elegir tu zona de inicio|r
step
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erona|r
    .accept 8325 >> Acepta la misión Recuperar la Isla del Caminante del Sol
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>Mata |cRXP_ENEMY_Vermis de maná|r
    .complete 8325,1 --Kill Mana Wyrm (x8)
    .mob Mana Wyrm
step
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erona|r
    .turnin 8325 >> Entrega la misión Recuperar la Isla del Caminante del Sol
    .accept 8326 >> Acepta la misión Medidas extremas
    .accept 8328 >> Acepta la misión Instrucción de mago << Mage
    .accept 8563 >> Acepta la misión Entrenamiento de brujos << Warlock
    .accept 8564 >> Acepta la misión Instrucción de sacerdote << Priest
    .accept 9392 >> Acepta la misión Entrenamiento de pícaros << Rogue
	.accept 9393 >> Acepta la misión Instrucción de cazador << Hunter
    .accept 9676 >> Acepta la misión Instrucción de paladín << Paladin
    .target Magistrix Erona
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Rough Flechas] |cRXP_BUY_de ella hasta que tu|r |T134409:0|t[Quiver] |cRXP_BUY_esté lleno|r << Hunter
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << Warlock/Mage/Priest
    .vendor >>Vende la Basura
    .collect 159,10,8336,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (x10)
    .target Shara Sunwing
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia|r
    .turnin 8328 >> Entrega la misión Instrucción de mago
    .accept 10068 >> Acepta la misión Vigía del pozo Solanian
    .train 1459 >> Aprende tus hechizos de clase
    .target Julia Sunstriker
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8563 >> Entrega la misión Entrenamiento de brujos
    .accept 10073 >> Acepta la misión Vigía del pozo Solanian
    .accept 8344 >> Acepta la misión Ventanas al origen
    .trainer>> Train your class spells
    .target Summoner Teli'Larien
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arena|r
    .turnin 8564 >> Entrega la misión Instrucción de sacerdote
    .accept 10072 >> Acepta la misión Vigía del pozo Solanian
    .train 1243 >> Aprende tus hechizos de clase
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kariel|r
    .turnin 9392 >> Entrega la misión Entrenamiento de pícaros
    .accept 10071 >> Acepta la misión Vigía del pozo Solanian
    .target Pathstalker Kariel
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sallina|r
    .turnin 9393 >> Entrega la misión Instrucción de cazador
    .accept 10070 >> Acepta la misión Vigía del pozo Solanian
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jesthenis|r
    .turnin 9676 >> Entrega la misión Instrucción de paladín
    .accept 10069 >> Acepta la misión Vigía del pozo Solanian
    .target Jesthenis Sunstriker
step
    #completewith next
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Sube las escaleras
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solanian|r, |cRXP_FRIENDLY_Ithanas|r y |cRXP_FRIENDLY_Helion|r
    .turnin 10068 >> Entrega la misión Vigía del pozo Solanian << Mage
    .turnin 10069 >> Entrega la misión Vigía del pozo Solanian << Paladin
    .turnin 10070 >> Entrega la misión Vigía del pozo Solanian << Hunter
    .turnin 10071 >> Entrega la misión Vigía del pozo Solanian << Rogue
    .turnin 10072 >> Entrega la misión Vigía del pozo Solanian << Priest
    .turnin 10073 >> Entrega la misión Vigía del pozo Solanian << Warlock
    .accept 8330 >> Acepta la misión Las posesiones de Solanian
    .accept 8345 >> Acepta la misión Santuario de Dath'Remar
    .target +Well Watcher Solanian
    .goto Eversong Woods,38.76,19.36
    .accept 8336 >> Acepta la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .accept 8346 >> Acepta la misión Sed insaciable
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
step << Warlock
    #completewith next
    >>Cast |T135738:0|t[Mana Tap] and kill |cRXP_ENEMY_Vermis de maná|r and |cRXP_ENEMY_Feral Tenders|r. Loot them for their |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << Warlock
    #completewith next
    >>Mata a los |cRXP_ENEMY_Springpaw Lynxes|r y a los |cRXP_ENEMY_Springpaw Cubs|r. Despoja para obtener sus |cRXP_LOOT_Collars|r
    .complete 8326,1 --Lynx Collar (8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step << Warlock
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Sube por la rampa
step << Warlock
    #requires RunRamp
    #completewith next
    >>Cast |T135738:0|t[Mana Tap] and kill |cRXP_ENEMY_Arcane Wraiths|r and |cRXP_ENEMY_Tainted Arcane Wraiths|r. Loot |cRXP_ENEMY_Arcane Wraiths|r for their |cRXP_LOOT_Esencia|r and both for their |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .complete 8344,1 --Wraith Essence (4)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock
	#label ArcaneSliver
    #loop
    .goto Eversong Woods,31.57,29.31,0
    .goto Eversong Woods,31.57,29.31,30,0
    .goto Eversong Woods,31.25,27.07,30,0
    .goto Eversong Woods,30.90,27.66,30,0
    .goto Eversong Woods,30.55,26.98,30,0
    .goto Eversong Woods,31.10,26.83,30,0
    >>Kill a |cRXP_ENEMY_Tainted Arcane Wraith|r. Loot it for its |cRXP_LOOT_Esencia|r and |T132884:0|t[|cRXP_LOOT_Tainted Arcane Sliver|r].
    >>|cRXP_WARN_Usa el |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r] para iniciar la misión|r
    .complete 8344,2 --Tainted Wraith Essence (1)
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Acepta la misión Esquirla arcana mácula
    .mob Tainted Arcane Wraith
    .use 20483
step << Warlock
    #loop
    .goto Eversong Woods,30.45,29.10,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    >>Cast |T135738:0|t[Mana Tap] and kill |cRXP_ENEMY_Arcane Wraiths|r and |cRXP_ENEMY_Tainted Arcane Wraiths|r. Loot |cRXP_ENEMY_Arcane Wraiths|r for their |cRXP_LOOT_Esencia|r and both for their |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8344,1 --Wraith Essence (4)
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step << Warlock
    #xprate <1.5
    #loop
    .goto Eversong Woods,30.45,29.10,0
    .goto Eversong Woods,30.45,29.10,30,0
    .goto Eversong Woods,30.01,26.67,30,0
    .goto Eversong Woods,30.43,24.94,30,0
    .goto Eversong Woods,31.70,26.46,30,0
    .goto Eversong Woods,31.98,27.94,30,0
    .goto Eversong Woods,31.54,29.52,30,0
    .xp 3+200 >> Farmea hasta 200+/1400xp
step << Warlock
    #softcore
    #completewith FistfulTI
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Warlock
    #hardcore
    #completewith FistfulTI
    .goto Eversong Woods,37.18,18.94,50 >>Viaja a |cRXP_FRIENDLY_Helion|r y |cRXP_FRIENDLY_Ithanas|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helion|r e |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >> Entrega la misión Sed insaciable
    .turnin 8338 >> Entrega la misión Esquirla arcana mácula
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Entrega la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8346
step << Warlock
    #label FistfulTI
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helion|r e |cRXP_FRIENDLY_Ithanas|r
    .turnin 8338 >> Entrega la misión Esquirla arcana mácula
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Entrega la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step << Warlock
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r
    .vendor >>Vende la Basura
    .collect 159,10,8327,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8344 >> Entrega la misión Ventanas al origen
    .train 172 >> Aprende tus hechizos de clase
    .target Summoner Teli'Larien
    .xp <4,1
step << Warlock
    .goto Eversong Woods,38.93,21.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teli'Larien|r
    .turnin 8344 >> Entrega en Ventanas de Origen
    .target Summoner Teli'Larien
step << Warlock
	#completewith Measures
	.cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step << Warlock
    .goto Eversong Woods,38.86,21.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yasmine|r
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre] |cRXP_BUY_a esta vendedora|r
    .collect 16321,1,8327,1 --Grimoire of Blood Pact (1)
    .target Yasmine Teli'Larien
    .train 6307,1 --Blood Pact (Rank 1)
step
    #label Collars
    #loop
    .goto Eversong Woods,37.37,18.31,0
    .goto Eversong Woods,37.37,18.31,35,0
    .goto Eversong Woods,39.36,18.83,35,0
    .goto Eversong Woods,39.85,16.63,35,0
    .goto Eversong Woods,40.61,16.24,35,0
    .goto Eversong Woods,40.37,18.80,35,0
    .goto Eversong Woods,40.48,20.38,35,0
    .goto Eversong Woods,39.42,22.28,35,0
    .goto Eversong Woods,35.98,24.22,35,0
    >>Mata a los |cRXP_ENEMY_Springpaw Lynxes|r y a los |cRXP_ENEMY_Springpaw Cubs|r. Despoja los |cRXP_LOOT_Collars|r
    .complete 8326,1 --Collect Lynx Collar (x8)
    .mob Springpaw Lynx
    .mob Springpaw Cub
step
    #label Measures
    .goto Eversong Woods,38.2,20.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erona|r
    .turnin 8326 >> Entrega la misión Medidas extremas
    .accept 8327 >> Acepta la misión Informar a Lanthan Perilon
    .target Magistrix Erona
step << !Warlock
    #completewith Journal
    >>Cast |T135738:0|t[Mana Tap] and kill |cRXP_ENEMY_Vermis de maná|r and |cRXP_ENEMY_Feral Tenders|r. Loot them for their |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step << Warlock
    #completewith Journal
    >>|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en criaturas de tipo maná|r
    .complete 8346,1 << !Warlock --Mana Tap creature (x6)
    .mob Mana Wyrm
step
    #label Report
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanthan|r
    .turnin 8327 >> Entrega la misión Informar a Lanthan Perilon
    .accept 8334 >> Acepta la misión Agresividad
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Despoja el |cRXP_PICK_Diario|r del suelo
    .complete 8330,3 --Collect Solanian's Journal (x1)
step << !Warlock
    #completewith RedOrb
    >>Mata |cRXP_ENEMY_Tiernos|r y |cRXP_ENEMY_Tiernos ferales|r
    *|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en los|cRXP_ENEMY_ |rFeral Tenders|cRXP_ENEMY_. Despoja a los |rFeral Tenders|r para obtener los |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
step << Warlock
    #completewith RedOrb
    >>Mata |cRXP_ENEMY_Tiernos|r y |cRXP_ENEMY_Tiernos ferales|r
    *|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en los|r |cRXP_ENEMY_Feral Tenders|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
    .isOnQuest 8346
step << Warlock
    #optional
    #completewith RedOrb
    >>Mata |cRXP_ENEMY_Tiernos|r y |cRXP_ENEMY_Tiernos ferales|r << Warlock
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .isNotOnQuest 8346
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Loot the |cRXP_PICK_Orbe de visión|r on the platform
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step << !Warlock
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>Mata |cRXP_ENEMY_Tiernos|r y |cRXP_ENEMY_Tiernos ferales|r
    *|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en los|cRXP_ENEMY_ |rFeral Tenders|cRXP_ENEMY_. Despoja a los |rFeral Tenders|r para obtener los |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
step << Warlock
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>Mata |cRXP_ENEMY_Tiernos|r y |cRXP_ENEMY_Tiernos ferales|r
    *|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en los|r |cRXP_ENEMY_Feral Tenders|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8346,1 --Mana Tap creature (x6)
    .disablecheckbox
    .mob +Feral Tender
    .isOnQuest 8346
step << Warlock
    #optional
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    >>Mata |cRXP_ENEMY_Tiernos|r y |cRXP_ENEMY_Tiernos ferales|r << Warlock
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .isNotOnQuest 8346
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanthan|r
    .turnin 8334 >> Entrega la misión Agresividad
    .accept 8335 >> Acepta la misión Felendren el Desterrado
    .target Lanthan Perilon
step << !Warlock
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Cast |T135738:0|t[Mana Tap] and kill |cRXP_ENEMY_Vermis de maná|r. Loot them for their |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8346,1 << !Warlock --Mana Tap creature (x6)
    .disablecheckbox
    .mob Mana Wyrm
step << !Warlock !Rogue
    #xprate <1.5
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .xp 4-360 >> Mata enemigos hasta alcanzar 1740+/2100xp
step << !Warlock !Rogue
    #xprate >1.49
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    .xp 4-540 >> Grind to 1560+/2100xp (NOT TRANSLATED IN :esMX YET)
step << !Warlock !Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helion|r e |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >> Entrega la misión Sed insaciable
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >> Entrega la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8346
step << !Warlock !Rogue
    #label FistfulTI
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithanas|r
    .turnin 8336 >> Entrega la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step << Mage/Priest
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,38.66,20.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shara|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r
    .vendor >>Vende la Basura
    .collect 159,10,8336,1 --Collect Refreshing Spring Water (10)
    .target Shara Sunwing
step << Mage
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia|r
    .train 116 >> Aprende tus hechizos de clase
    .target Julia Sunstriker
step << Priest
    .goto Eversong Woods,39.42,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arena|r
    .train 589 >> Aprende tus hechizos de clase
    .target Matron Arena
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sallina|r
    .train 1978 >> Aprende tus hechizos de clase
    .target Ranger Sallina
step << Paladin
    .goto Eversong Woods,39.47,20.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jesthenis|r
    .train 20271 >> Aprende tus hechizos de clase
    .target Jesthenis Sunstriker
step
    #completewith RunRamp
    >>|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en criaturas de tipo maná|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Haz clic en el |cRXP_PICK_Santuario de Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>Loot the |cRXP_PICK_Pergamino|r on the ground
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Sube por la rampa
step
    #requires RunRamp
    #completewith Academy
    >>|cRXP_WARN_Lanza|r |T135738:0|t[Transfusión de maná] |cRXP_WARN_en criaturas de tipo maná|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Arcane Wraith
step << !Warlock
    #completewith Academy
    >>Mata a |cRXP_ENEMY_Ánima arcana mácula|r. Despoja la |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r].
    >>|cRXP_WARN_Usa la |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r] para comenzar la misión|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Acepta la misión Esquirla arcana mácula
    .mob Tainted Arcane Wraith
    .use 20483
step
    #label Academy
    .goto Eversong Woods,30.79,25.37,20,0
    .goto Eversong Woods,29.35,24.44,20,0
    .goto Eversong Woods,29.32,26.24,20,0
    .goto Eversong Woods,30.75,26.30,10,0
    .goto Eversong Woods,30.13,26.42,10,0
    .goto Eversong Woods,30.09,27.41,10,0
    .goto Eversong Woods,30.48,27.90,10,0
    .goto Eversong Woods,30.84,27.13
    >>Mata a los |cRXP_ENEMY_Arcane Wraiths|r y a los |cRXP_ENEMY_Tainted Arcano Wraiths|r mientras subes a la Academia
    >>Kill |cRXP_ENEMY_Felendren the Banished|r at the top. Loot him for his |cRXP_LOOT_Cabeza|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .mob +Arcane Wraith
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .mob +Tainted Arcane Wraith
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob +Felendren the Banished
step << !Warlock
    .goto Eversong Woods,30.84,27.13
    >>Mata a |cRXP_ENEMY_Ánima arcana mácula|r. Despoja la |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r].
    >>|cRXP_WARN_Usa la |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r] para comenzar la misión|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >> Acepta la misión Esquirla arcana mácula
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .hs >> Usa tu Piedra de Hogar para ir a la Isla de Caminante del Sol
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>|cRXP_WARN_Cast |r|T135738:0|t[Mana Tap] |cRXP_WARN_on|r |cRXP_ENEMY_Vermis de maná|r
    .complete 8346,1 --Mana Tap creature (x6)
    .mob Mana Wyrm
step
    #completewith next
    .goto Eversong Woods,38.56,20.98,10,0
    .goto Eversong Woods,39.43,21.06,10,0
    .goto Eversong Woods,39.48,20.58,10,0
    .goto Eversong Woods,39.31,20.23,10,0
    .goto Eversong Woods,38.93,19.93,10,0
    .goto Eversong Woods,38.76,19.36,10 >>Sube las escaleras
step
    #label SolanianB
    .goto Eversong Woods,38.76,19.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solanian|r
    .turnin 8330 >> Entrega la misión Las posesiones de Solanian
    .turnin 8345 >> Entrega la misión Santuario de Dath'Remar
    .target Well Watcher Solanian
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithanas|r
    .turnin 8336 >> Entrega la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
    .isQuestComplete 8336
step
    #label SolanianB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helion|r
    .turnin 8338 >> Entrega la misión Esquirla arcana mácula << !Warlock
    .turnin 8346 >> Entrega la misión Sed insaciable
    .goto Eversong Woods,37.18,18.94
    .target +Arcanist Helion
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanthan|r
    .turnin 8335 >> Entrega la misión Felendren el Desterrado
    .accept 8347 >> Acepta la misión Ayudando a los avanzados
    .target Lanthan Perilon
step
    #xprate <1.5
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    .xp 5+1800 >> Farmea hasta 1800+/2800 XP
step
    #xprate >1.49
    #loop
	.goto Eversong Woods,33.92,26.49,0
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
    .xp 5+1300 >> Mata enemigos hasta alcanzar 1300+/2800xp
step
    #completewith next
    .goto Eversong Woods,38.91,30.27,30,0
    .goto Eversong Woods,40.41,32.21,30 >>Cruza el puente
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alarion|r
    .turnin 8347 >> Entrega la misión Ayudando a los avanzados
    .accept 9704 >> Acepta la misión Ejecutados por los desdichados
    .target Outrunner Alarion
step
    .goto Eversong Woods,42.02,35.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el cadáver del Outrunner en el suelo
    .turnin 9704 >> Entrega la misión Ejecutados por los desdichados
    .accept 9705 >> Acepta la misión Recuperación de paquete
    .target Slain Outrunner
step
    .goto Eversong Woods,40.41,32.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alarion|r
    .turnin 9705 >> Entrega la misión Recuperación de paquete
    .accept 8350 >> Acepta la misión El encargo
    .target Outrunner Alarion
step
    #xprate <1.5
    #loop
    .goto Eversong Woods,45.97,43.35,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2690 >> Mata enemigos hasta alcanzar 2690+/2800xp
step
    #xprate >1.49
    #loop
    .goto Eversong Woods,45.97,43.35,0
    .goto Eversong Woods,45.97,43.35,40,0
    .goto Eversong Woods,46.57,35.10,40,0
    .goto Eversong Woods,43.62,34.88,40,0
    .xp 5+2635 >> Mata enemigos hasta alcanzar 2635+/2800xp
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name 6-10 Bosque Canción Eterna
#displayname 8-11 Eversong Woods << Orc Warrior/Troll Warrior
#displayname 7-11 Eversong Woods << Orc !Warrior !Hunter !Warlock/Troll !Warrior !Hunter
#defaultfor BloodElf/Undead/Orc !Hunter !Shaman !Warlock/Troll !Hunter !Shaman
#version 7
#subgroup RestedXP Horda 1-30
#next 10-12 Bosque de Canción Eterna

step
    .goto Eversong Woods,47.26,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >> Acepta la misión Avería grave
    .target Magister Jaronis
step
    #completewith FalconHS
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entra en la Posada
step << BloodElf Warlock
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    .turnin 8350 >> Entrega la misión El encargo
    .home >> Establece tu Piedra de hogar en la Plaza del Alacorza
    .target Innkeeper Delaniel
    .bindlocation 3665
step << !Warlock !Warrior
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    .home >> Establece tu Piedra de hogar en la Plaza del Alacorza
    .target Innkeeper Delaniel
    .bindlocation 3665
step << Priest/Mage/Warlock/Warrior/Rogue
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Sube las escaleras
step << Priest
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r arriba
    .accept 9489 >> Limpiar la Cicatriz << BloodElf
    .train 591 >>Aprende tus hechizos de clase
    .target Ponaris
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r arriba
    .train 143 >>Aprende tus hechizos de clase
    .target Garridel
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r arriba
    .train 695 >>Aprende tus hechizos de clase
    .target Celoenus
step << Warrior/Rogue
    .goto Eversong Woods,48.58,47.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanaria|r arriba
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .target Kanaria
step << Mage/Warlock/Priest
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r
    .collect 1179,5,8468,1 --Ice Cold Milk (5)
    .money <0.0119
    .target Innkeeper Delaniel
step
    #optional
    #label FalconHS
step << !Warlock !Warrior
    #completewith next
    .goto Eversong Woods,47.86,47.76,8,0
    .goto Eversong Woods,47.79,47.35,8 >> Ve afuera
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cartel de Se busca|r y con |cRXP_FRIENDLY_Aeldon|r
    .accept 8468 >> Acepta la misión Wanted: Thaelis el Hambriento
    .goto Eversong Woods,48.18,46.31
    .accept 8463 >> Acepta la misión Cristales de maná inestables
    .target +Aeldon Sunbrand
    .goto Eversong Woods,48.17,46.00
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .train 639 >>Aprende tus hechizos de clase
    .target Noellene
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannaria|r arriba
    .train 1757 >>Aprende tus hechizos de clase
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 3044 >>Aprende tus hechizos de clase
    .target Hannovia
step << Rogue/Warrior
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Aprende Espadas de 1 mano << Rogue
    .train 202 >>Aprende Espadas de 2 manos << Warrior
    .target Duelist Larenis
    .money <0.11
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendedor basura. Vende tu arma si te da suficiente dinero para un |T135321:0|t[Gladius] (5s 9c). Volverás más tarde si aún no tienes suficiente.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_de él|r
    .collect 2488,1,8476,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendedor basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (3s 82c). Volverás más tarde si aún no tienes suficiente.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_de él|r
    .collect 2494,1,8476,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Undead Warrior/Paladin/Rogue
    #optional
    #completewith Thaelis
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Thaelis
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Despoja las |cRXP_PICK_Cajas de Cristal de Maná Inestable|r en el suelo
    >>Kill |cRXP_ENEMY_Arcane Patrollers|r. Loot them for their |cRXP_LOOT_Núcleo|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob +Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Mata al |cRXP_ENEMY_Thaelis el Hambriento|r. Despoja la |cRXP_LOOT_Thaelis's Cabeza|r
    .complete 8468,1 --Collect Thaelis's Head (x1)
    .mob Thaelis the Hungerer
step
    #loop
    .goto Eversong Woods,47.22,37.39,0
    .goto Eversong Woods,47.22,37.39,40,0
    .goto Eversong Woods,46.67,35.11,40,0
    .goto Eversong Woods,43.96,34.90,40,0
    .goto Eversong Woods,42.41,38.04,40,0
    .goto Eversong Woods,42.17,40.49,40,0
    .goto Eversong Woods,40.70,41.12,40,0
    .goto Eversong Woods,40.77,43.15,40,0
    .goto Eversong Woods,43.03,42.97,40,0
    .goto Eversong Woods,44.23,45.21,40,0
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Despoja las |cRXP_PICK_Cajas de Cristal de Maná Inestable|r en el suelo
    >>Kill |cRXP_ENEMY_Arcane Patrollers|r. Loot them for their |cRXP_LOOT_Núcleo|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob +Arcane Patroller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarondis|r, |cRXP_FRIENDLY_Kan'ren|r y |cRXP_FRIENDLY_Aeldon|r
    .turnin 8472 >> Entrega la misión Avería grave
    .accept 8895 >> Acepta la misión Entrega para el Sagrario del Norte
    .target +Magister Jaronis
    .goto Eversong Woods,47.26,46.31
    .turnin 8468 >> Entrega la misión Wanted: Thaelis el Hambriento
    .target +Sergeant Kan'ren
    .goto Eversong Woods,47.77,46.58
    .turnin 8463 >> Entrega la misión Cristales de maná inestables
    .accept 9352 >> Acepta la misión Intrusiones darnassianas
    .target +Aeldon Sunbrand
    .goto Eversong Woods,48.17,46.00
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .train 853 >>Aprende tus hechizos de clase
    .target Noellene
	.xp <8,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannaria|r arriba
    .train 6760 >>Aprende tus hechizos de clase
    .target Tannaria
	.xp <8,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Aprende tus hechizos de clase
    .target Hannovia
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entra en la Posada
	.xp <8,1
step << Mage/Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Sube las escaleras
	.xp <8,1
step << Mage
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r arriba
    .train 5143 >>Aprende tus hechizos de clase
    .target Garridel
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r arriba
    .train 980 >>Aprende tus hechizos de clase
    .target Celoenus
	.xp <8,1
step << Warlock
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daestra|r arriba
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio of Descarga de Fuego (Rank 2)] |cRXP_BUY_de ella|r
    .collect 16302,1,8491,1 --Grimoire of Firebolt Rank 2
    .target Daestra
	.xp <8,1
    .train 7799,1
step << Rogue/Warrior
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Aprende Espadas de 1 mano << Rogue
    .train 202 >>Aprende Espadas de 2 manos << Warrior
    .target Duelist Larenis
    .money <0.11
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendedor basura. Vende tu arma si te da suficiente dinero para un |T135321:0|t[Gladius] (5s 9c). Volverás más tarde si aún no tienes suficiente.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Undead Warrior/Paladin/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_de él|r
    .collect 2488,1,8491,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
    .train 201,3 << Rogue
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendedor basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (3s 82c). Volverás más tarde si aún no tienes suficiente.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_de él|r
    .collect 2494,1,8491,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Undead Warrior/Paladin/Rogue
    #optional
    #completewith Caidanis
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Caidanis
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #completewith BuyFood1
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entra en la Posada
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a esta vendedora|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra la|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_de ella|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
step
    #label BuyFood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a esta vendedora|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra la|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_de ella|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Viaja hacia |cRXP_FRIENDLY_Caidanis|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caidanis|r
    .turnin 8895 >> Entrega la misión Entrega para el Sagrario del Norte
    .accept 9119 >> Acepta la misión Disfunción en el Sagrario del Oeste
    .target Ley-Keeper Caidanis
step
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ralen|r
    .accept 9035 >> Acepta la misión Asaltantes de caminos
    .target Apprentice Ralen
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meledor|r
    .turnin 9035 >> Entrega la misión Asaltantes de caminos
    .accept 9062 >> Acepta la misión Papel mojado
    .target Apprentice Meledor
step
    #xprate <1.5
    .goto Eversong Woods,44.34,62.00
    >>Loot the |cRXP_PICK_Grimorio|r underwater
    .complete 9062,1 --Collect Antheol's Elemental Grimoire (x1)
step
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meledor|r
    .turnin 9062 >> Entrega la misión Papel mojado
    .accept 9064 >> Acepta la misión Asumiendo la responsabilidad
    .target Apprentice Meledor
step << BloodElf Priest
    #xprate <1.5
    #completewith next
    >>|cRXP_WARN_Cast|r |T135987:0|t[Palabra de poder: entereza] en |cRXP_FRIENDLY_Eversong Forestales|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >> Acepta la misión La Cicatriz Muerta
    .target Ranger Jaela
step << BloodElf Priest
    .goto Eversong Woods,50.19,50.88,-1
    .goto Eversong Woods,50.24,50.96,-1
    .goto Eversong Woods,50.29,51.02,-1
    .goto Eversong Woods,50.34,51.04,-1
    .goto Eversong Woods,50.41,51.00,-1
    .goto Eversong Woods,50.46,50.91,-1
    >>|cRXP_WARN_Cast|r |T135987:0|t[Palabra de poder: entereza] en |cRXP_FRIENDLY_Eversong Forestales|r
    .complete 9489,1 --Eversong Ranger Blessed (6)
    .target Eversong Ranger
    .isOnQuest 9489
step
    #xprate <1.5
    #completewith next
    >>Mata a los |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9064 >> Entrega la misión Asumiendo la responsabilidad
    .accept 9066 >> Acepta la misión La letra con sangre entra
    .target Instructor Antheol
step
    #xprate <1.5
    #loop
    .goto Eversong Woods,50.82,56.49,0
    .goto Eversong Woods,50.82,56.49,40,0
    .goto Eversong Woods,49.72,56.96,40,0
    .goto Eversong Woods,49.48,53.13,40,0
    .goto Eversong Woods,50.95,52.96,40,0
    >>Mata a los |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --Kill Plaguebone Pillager (x8)
    .mob Plaguebone Pillager
step
    #xprate <1.5
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaela|r
    .turnin 8475 >> Entrega la misión La Cicatriz Muerta
    .target Ranger Jaela
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>|cRXP_WARN_Usa la|r |T135147:0|t[Vara disciplinaria] |cRXP_WARN_en|r |cRXP_FRIENDLY_Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>|cRXP_WARN_Usa la|r |T135147:0|t[Vara disciplinaria] |cRXP_WARN_en|r |cRXP_FRIENDLY_Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velania|r
    .turnin 9119 >> Entrega la misión Disfunción en el Sagrario del Oeste
    .accept 8486 >> Acepta la misión Inestabilidad arcana
    .target Ley-Keeper Velania
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Manawraiths|r y a los |cRXP_ENEMY_Maná Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    #loop
    .goto Eversong Woods,36.77,60.99,0
    .goto Eversong Woods,36.77,60.99,30,0
    .goto Eversong Woods,34.65,62.03,30,0
    .goto Eversong Woods,34.04,60.81,30,0
    .goto Eversong Woods,34.19,58.49,30,0
    >>Kill a |cRXP_ENEMY_Explorador darnassiano|r. Loot him for his |T133464:0|t[|cRXP_LOOT_Incriminating Documents|r]
    >>Usa la|cRXP_WARN_ |T133464:0|t[|cRXP_LOOT_Documentos incriminadores|r] para iniciar la misión|r
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482,1 --Incriminating Documents (1)
    .accept 8482 >> Acepta la misión Documentos incriminadores
    .mob Darnassian Scout
    .use 20765
step
    #loop
	.goto Eversong Woods,35.57,61.41,0
	.goto Eversong Woods,35.57,61.41,40,0
	.goto Eversong Woods,34.41,60.64,40,0
	.goto Eversong Woods,35.02,56.58,40,0
	.goto Eversong Woods,35.82,58.36,40,0
	.goto Eversong Woods,36.20,60.28,40,0
    >>Mata a los |cRXP_ENEMY_Manawraiths|r y a los |cRXP_ENEMY_Maná Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velania|r
    .turnin 8486 >> Entrega la misión Inestabilidad arcana
    .turnin 9352 >> Entrega la misión Intrusiones darnassianas
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hathvelion|r
    .accept 8884 >> Acepta la misión Aquí, pescadito...
    .target Hathvelion Sungaze
step
    #loop
    .goto Eversong Woods,26.45,58.14,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    >>Kill |cRXP_ENEMY_Grimscale Foragers|r and |cRXP_ENEMY_Grimscale Seers|r. Loot them for their |cRXP_LOOT_Cara|r and |T134939:0|t[|cRXP_LOOT_Captain Kelisendra's Lost Rutters|r]
    >>Usa|cRXP_WARN_ |T134939:0|t[|cRXP_LOOT_Rutas perdidas de la capitana Kelisendra|r] para iniciar la misión|r
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887 --Captain Kelisendra's Lost Rutters
    .accept 8887 >> Acepta la misión Rutas perdidas de la capitana Kelisendra
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    #loop
    .goto Eversong Woods,27.47,56.54,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    .xp 7+3195 >> Farmea hasta 3195+/4500xp
step << Warrior/Warlock/Hunter/Rogue
    #xprate >1.49
    #loop
    .goto Eversong Woods,27.47,56.54,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    .xp 7+2540 >> Grind to 2540+/4500xp (NOT TRANSLATED IN :esMX YET)
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8884 >> Entrega la misión Aquí, pescadito...
    .accept 8885 >> Acepta la misión El anillo de Mmmrrrggglll
    .target Hathvelion Sungaze
step << Paladin/Priest/Mage
    #softcore
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << Warrior/Warlock/Hunter/Rogue
    #softcore
    #completewith next
    .goto Eversong Woods,35.50,55.70,30 >> Corre hacia el norte del Santuario Oeste
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    #softcore
    .goto Eversong Woods,35.50,55.70
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Make sure your subzone is Eversong Woods and NOT West Sanctum|r (NOT TRANSLATED IN :esMX YET)
    .target Ángel de la Resurrección
    .isOnQuest 8885
step << Warrior/Warlock/Hunter/Rogue
    #completewith next
    .goto Eversong Woods,46.70,49.09,20,0
    .goto Eversong Woods,46.69,48.02,20 >> Viaja hacia |cRXP_FRIENDLY_Aeldon|r
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Entrega la misión Documentos incriminadores
    .accept 8483 >> Acepta la misión El espía enano
    .target Aeldon Sunbrand
step << Warrior/Warlock/Hunter/Rogue
    #xprate >1.49
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Entrega la misión Documentos incriminadores
    .target Aeldon Sunbrand
step << Rogue/Warrior
    .goto Eversong Woods,48.34,45.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larenis|r
    .train 201 >>Aprende Espadas de 1 mano << Rogue
    .train 202 >>Aprende Espadas de 2 manos << Warrior
    .target Duelist Larenis
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannaria|r arriba
    .train 6760 >>Aprende tus hechizos de clase
    .target Tannaria
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Aprende tus hechizos de clase
    .target Hannovia
step << Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entra en la Posada
step << Warlock
    #completewith next
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Sube las escaleras
step << Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r arriba
    .train 980 >>Aprende tus hechizos de clase
    .target Celoenus
step << Warlock
    .goto Eversong Woods,48.34,47.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daestra|r arriba
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio of Descarga de Fuego (Rank 2)] |cRXP_BUY_de ella|r
    .collect 16302,1,8491,1 --Grimoire of Firebolt Rank 2
    .target Daestra
    .train 7799,1
step << Undead Warrior/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendedor basura. Vende tu arma si te da suficiente dinero para un |T135321:0|t[Gladius] (5s 9c). Volverás más tarde si aún no tienes suficiente.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Undead Warrior/Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_de él|r
    .collect 2488,1,8491,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vendedor basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (3s 82c). Volverás más tarde si aún no tienes suficiente.
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Rogue
    .goto Eversong Woods,48.49,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_de él|r
    .collect 2494,1,8491,1 --Collect Stiletto
    .target Geron
    .money <0.0382
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
    .train 201,1
step << Undead Warrior/Rogue
    #optional
    #completewith Situation
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Situation
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>Habla con |cRXP_FRIENDLY_Guardayunque|r
    .timer 28,Prospector Guardayunque RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    #label Anvilward
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cRXP_WARN_Espera al Roleplay|r
    >>Kill |cRXP_ENEMY_Prospector Anvilward|r. Loot him for his |cRXP_LOOT_Cabeza|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step << Warrior
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8483 >> Entrega la misión El espía enano
    .target Aeldon Sunbrand
step << Undead Warlock
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8483 >> Turn in The Dwarven Spy (NOT TRANSLATED IN :esMX YET)
    .target Aeldon Sunbrand
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,45.19,56.43
    >>Usa la |T135147:0|t[Vara disciplinaria] en |cRXP_FRIENDLY_Ralen|r
    .complete 9066,2 --Apprentice Ralen Disciplined
    .target Apprentice Ralen
    .use 22473
step << Warrior/Warlock/Hunter/Rogue
    #xprate <1.5
    .goto Eversong Woods,44.88,61.03
    >>Usa la |T135147:0|t[Vara disciplinaria] en |cRXP_FRIENDLY_Meledor|r
    .complete 9066,1 --Apprentice Meledor Disciplined
    .target Apprentice Meledor
    .use 22473
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Sube las escaleras
step
    #label Situation
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Degolien|r
    .accept 8892 >> Acepta la misión Problemas en el Fondeadero Vela del Sol
    .target Ranger Degolien
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marniel|r y |cRXP_FRIENDLY_Ardeyn|r
    .accept 9358 >> Acepta la misión La forestal Sareyn
    .target +Marniel Amberlight
    .goto Eversong Woods,43.67,71.31
    .accept 9258 >>Acepta la misión La Arboleda Agostada
    .target +Ardeyn Riverwind
    .goto Eversong Woods,43.58,71.20
step
    #xprate >1.49
    .goto Eversong Woods,43.67,71.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marniel|r (NOT TRANSLATED IN :esMX YET)
    .accept 9358 >> Acepta la misión La forestal Sareyn
    .target Marniel Amberlight
step
    #completewith next
    .goto Eversong Woods,44.04,70.35,0
    >>|cRXP_BUY_Compra|r la |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_de|r |cRXP_FRIENDLY_Halis|r |cRXP_BUY_si necesitas bolsas|r
    .vendor >> Vende la basura
    .target Halis Dawnstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velan|r y |cRXP_FRIENDLY_Landra|r
    .accept 8491 >> Acepta la misión Caza de pelambres
    .target +Velan Brightoak
    .goto Eversong Woods,44.72,69.63
    .accept 9395 >> Acepta la misión El Refugio de Saltheril
    .accept 9254 >> Acepta la misión El aprendiz de díscolo
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
step
    #completewith Sunsail
    .goto Eversong Woods,42.28,72.62,40,0
    .goto Eversong Woods,40.90,72.87,40,0
    .goto Eversong Woods,39.59,73.65,40,0
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .isOnQuest 8491
step
    #xprate <1.5
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltheril|r
    .turnin 9395 >>Entrega la misión El Refugio de Saltheril
    .accept 9067 >>Acepta la misión Fiesta interminable
    .target Lord Saltheril
step
    #xprate >1.49
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltheril|r
    .turnin 9395 >>Entrega la misión El Refugio de Saltheril
    .target Lord Saltheril
step
    #label Sunsail
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelisendra|r y |cRXP_FRIENDLY_Velendris|r
    .turnin 8887 >> Entrega la misión Rutas perdidas de la capitana Kelisendra
    .accept 8886 >> Acepta la misión ¡Piratas Malaescama!
    .target +Captain Kelisendra
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >> Acepta la misión El armamento perdido
    .target +Velendris Whitemorn
    .goto Eversong Woods,36.36,66.78
step
    #completewith Aldaron
    >>Mata a los |cRXP_ENEMY_Wretched Thugs|r y a los |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #loop
    .goto Eversong Woods,34.66,68.00,0
    .goto Eversong Woods,34.66,68.00,25,0
    .goto Eversong Woods,34.11,69.20,25,0
    .goto Eversong Woods,33.01,71.10,25,0
    .goto Eversong Woods,32.39,69.80,25,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,25,0
    .goto Eversong Woods,30.54,69.24,25,0
    .goto Eversong Woods,31.40,70.90,25,0
    >>Despoja los |cRXP_PICK_Armamento Boxes|r en el suelo cerca de los |cRXP_ENEMY_Wretched|r y dentro del edificio
    .complete 8480,1 --Collect Sin'dorei Armaments (x8)
step
    .goto Eversong Woods,36.36,66.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velendris|r
    .turnin 8480 >>Entrega la misión El armamento perdido
    .accept 9076 >>Acepta la misión El jefe de los desdichados
    .target Velendris Whitemorn
step
    #completewith next
    .goto Eversong Woods,32.80,69.49,40,0
    .goto Eversong Woods,32.77,68.65,10,0
    .goto Eversong Woods,32.24,68.98,10,0
    .goto Eversong Woods,32.30,70.03,10,0
    .goto Eversong Woods,32.78,70.17,10,0
    .goto Eversong Woods,32.82,68.80,10,0
    .goto Eversong Woods,33.19,69.21,10 >>Sube a la cima del edificio
step
    #label Aldaron
    .goto Eversong Woods,32.80,69.40
    >>Kill |cRXP_ENEMY_Aldaron the Reckless|r at the top. Loot him his |cRXP_LOOT_Cabeza|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    .goto Eversong Woods,31.40,70.90,0
    .goto Eversong Woods,34.66,68.00,30,0
    .goto Eversong Woods,34.11,69.20,30,0
    .goto Eversong Woods,33.01,71.10,30,0
    .goto Eversong Woods,32.39,69.80,30,0
    .goto Eversong Woods,32.76,68.51,10,0
    .goto Eversong Woods,32.21,69.07,10,0
    .goto Eversong Woods,32.40,70.26,10,0
    .goto Eversong Woods,32.77,70.15,10,0
    .goto Eversong Woods,32.74,68.77,10,0
    .goto Eversong Woods,31.71,68.95,30,0
    .goto Eversong Woods,30.54,69.24,30,0
    .goto Eversong Woods,31.40,70.90,30,0
    >>Mata a los |cRXP_ENEMY_Wretched Thugs|r y a los |cRXP_ENEMY_Wretched Hooligans|r
    .complete 8892,1 --Kill Wretched Thug (x5)
    .mob +Wretched Thug
    .complete 8892,2 --Kill Wretched Hooligan (x5)
    .mob +Wretched Hooligan
step
    #completewith next
    .goto Eversong Woods,29.53,72.32,40,0
    .goto Eversong Woods,27.73,71.83,40,0
    .goto Eversong Woods,26.53,74.16,40,0
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .isOnQuest 8491
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Mata a los |cRXP_ENEMY_Grimscale Murlocs|r y a los |cRXP_ENEMY_Grimscale Oracles|r. Despoja el |cRXP_LOOT_Cargo|r
    >>Despoja los |cRXP_PICK_Cargo Barrels|r en el suelo
    >>|cRXP_WARN_Usar|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_to interrupt the|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[Flash Heal] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,24.36,72.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.24,65.65,40,0
    .goto Eversong Woods,24.89,66.85,40,0
    .goto Eversong Woods,25.81,68.16,40,0
    .goto Eversong Woods,25.68,68.93,40,0
    .goto Eversong Woods,24.66,68.47,40,0
    .goto Eversong Woods,24.32,69.66,40,0
    .goto Eversong Woods,25.09,71.12,40,0
    .goto Eversong Woods,24.36,72.66,40,0
    >>Mata a |cRXP_ENEMY_Mmmrrrggglll|r. Despoja el |cRXP_LOOT_Ring of Mmmrrrggglll|r
    >>|cRXP_WARN_Él patrulla un poco por los alrededores|r
    >>|cRXP_WARN_Usar|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_to interrupt|r |cRXP_ENEMY_Mmmrrrggglll|r's |T136052:0|t[Healing Wave] << BloodElf
    .complete 8885,1 --Collect Ring of Mmmrrrggglll (x1)
    .unitscan Mmmrrrggglll
step
    #loop
    .goto Eversong Woods,24.36,72.66,0
    .goto Eversong Woods,25.24,65.65,50,0
    .goto Eversong Woods,24.89,66.85,50,0
    .goto Eversong Woods,25.81,68.16,50,0
    .goto Eversong Woods,25.68,68.93,50,0
    .goto Eversong Woods,24.66,68.47,50,0
    .goto Eversong Woods,24.32,69.66,50,0
    .goto Eversong Woods,25.09,71.12,50,0
    .goto Eversong Woods,24.36,72.66,50,0
    >>Mata a los |cRXP_ENEMY_Grimscale Murlocs|r y a los |cRXP_ENEMY_Grimscale Oracles|r. Despoja el |cRXP_LOOT_Cargo|r
    >>Despoja los |cRXP_PICK_Cargo Barrels|r en el suelo
    >>|cRXP_WARN_Usar|r |T136222:0|t[Arcane Torrent] |cRXP_WARN_to interrupt the|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[Flash Heal] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8885 >> Entrega la misión El anillo de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .isOnQuest 8491
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelisendra|r y |cRXP_FRIENDLY_Velendris|r
    .turnin 8886 >> Entrega la misión ¡Piratas Malaescama!
    .target +Captain Kelisendra
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >> Entrega la misión El jefe de los desdichados
    .target +Velendris Whitemorn
    .goto Eversong Woods,36.36,66.78
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Rough Flechas] |cRXP_BUY_y|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_de él|r. |cRXP_BUY_Compra|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_de ella|r |cRXP_BUY_si necesitas bolsas|r
    .collect 2512,200,9252,1 << Hunter --Rough Arrow (200)
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
    .itemcount 2512,<200
	.xp >10,1
step << Hunter
    .goto Eversong Woods,44.04,70.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_de ella|r. |cRXP_BUY_Compra|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_de él|r |cRXP_BUY_si necesitas bolsas|r
    .collect 2515,1000,9252,1 << Hunter --Sharp Arrow (1000)
    .target Halis Dawnstrider
step << !Hunter
    #completewith Sareyn
    .goto Eversong Woods,44.04,70.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Compra|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_de él si necesitas bolsas|r
    .vendor >> Vende la Basura
    .target Halis Dawnstrider
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Sube las escaleras
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Degolien|r
    .turnin 8892 >>Entrega la misión Problemas en el Fondeadero Vela del Sol
    .accept 9359 >>Acepta la misión El Retiro del Errante
    .target Ranger Degolien
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >> Entrega la misión Caza de pelambres
    .target Velan Brightoak
    .isQuestComplete 8491
step
    #label Sareyn
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sareyn|r
    .turnin 9358 >> Entrega la misión La forestal Sareyn
    .accept 9252 >> Acepta la misión Defender la Aldea Brisa Pura
    .target Ranger Sareyn
step
    #completewith Notes
    >>Kill |cRXP_ENEMY_Merodeador carnepútrea|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Merodeador carnepútrea|r |cRXP_WARN_cast|r |T136128:0|t[Disease Touch] (|cRXP_WARN_15 Damage Instant Cast Spell|r)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step
    #loop
    .goto Eversong Woods,50.89,80.74,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    >>Mata a los |cRXP_ENEMY_Darkwraiths|r
    >>|cRXP_WARN_Ten cuidado pues|r |cRXP_ENEMY_Darkwraiths|r |cRXP_WARN_lanzan|r |T136224:0|t[Enfurecer] |cRXP_WARN_(daño y velocidad de ataque aumentados) con poca salud|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    .turnin 9254 >> Entrega la misión El aprendiz de díscolo
    .accept 8487 >> Acepta la misión Tierra corrupta
    .target Apprentice Mirveda
step
    #loop
    .goto Eversong Woods,54.13,71.21,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Despoja las |cRXP_PICK_Pilas de tierra contaminada|r en el suelo
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
step
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    >>|cRXP_WARN_Espera al Roleplay|r
    .turnin 8487 >> Entrega la misión Tierra corrupta
    .timer 9,Tierra corrupta Roleplay
    .accept 8488 >> Acepta la misión Resultados inesperados
    .target Apprentice Mirveda
step
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Mata a |cRXP_ENEMY_Gharsul el Despiadado|r y a los |cRXP_ENEMY_Angershades|r para proteger a |cRXP_FRIENDLY_Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
step
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    .turnin 8488 >> Entrega la misión Resultados inesperados
    .accept 9255 >> Acepta la misión Notas de investigación
    .target Apprentice Mirveda
step
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    >>Kill |cRXP_ENEMY_Merodeador carnepútrea|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Merodeador carnepútrea|r |cRXP_WARN_cast|r |T136128:0|t[Disease Touch] (|cRXP_WARN_15 Damage Instant Cast Spell|r)
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
step << !Warrior !Warlock/BloodElf
    #xprate <1.5
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 9+5875 >> Farmea hasta 5875+/6500 xp
step << !Warrior !Warlock/BloodElf
    #xprate >1.49
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 9+5560 >> Grind to 5560+/6500xp (NOT TRANSLATED IN :esMX YET)
step << Warrior/Undead Warlock/Orc Warlock
    #loop
    .goto Eversong Woods,53.88,70.03,0
    .goto Eversong Woods,54.13,71.21,40,0
    .goto Eversong Woods,50.79,72.17,40,0
    .goto Eversong Woods,50.87,71.40,40,0
    .goto Eversong Woods,51.21,69.89,40,0
    .goto Eversong Woods,51.47,69.09,40,0
    .goto Eversong Woods,52.60,68.47,40,0
    .goto Eversong Woods,53.24,69.28,40,0
    .goto Eversong Woods,53.88,70.03,40,0
    .xp 10 >> Mata enemigos hasta subir al nivel 10
step << Warrior
    #completewith WarriorClassQ
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .bindlocation 2119,1
    .zoneskip Tirisfal Glades
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
    .target Austil de Mon
    .isQuestAvailable 1498
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
    .isOnQuest 1819
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
    .isQuestComplete 1819
step << Warrior
    #label WarriorClassQ
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Entrega la misión Habla con Coleman
    .target Coleman Farthing
    .isOnQuest 1820
step << Warrior
    #completewith ExitUC
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entra en Entrañas
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_a este vendedor|r
    .collect 1198,1 --Collect Claymore (1)
    .money <0.2543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Louis Warren
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Buy a|r |T132395:0|t[Tabar] |cRXP_BUY_from him|r (NOT TRANSLATED IN :esMX YET)
    .collect 1196,1 --Collect Tabar (1)
    .money <0.2103
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
    .target Louis Warren
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ExitUC
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 202,3
    .zoneskip Eversong Woods
    .zoneskip Silvermoon City
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ExitFalcon
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    >>|cRXP_WARN_You will train the Two handed Swords skill soon in Falconwing Square|r (NOT TRANSLATED IN :esMX YET)
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 202,1
step << Orc Warrior
    #optional
    #completewith ExitUC
    +|cRXP_WARN_Equipa el|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Undead Warlock
    #completewith VoidWalkerComplete
    .hs >>Usa tu Piedra de hogar para ir a Entrañas
    .bindlocation 1497,1
    .zoneskip Undercity
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .accept 1473 >>Acepta la misión Criatura Abisal
    .target Carendin Halgar
step << Undead Warlock
    #optional
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 707 >> Aprende tus hechizos de clase
    .target Richard Kerwin
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    .goto Undercity,88.91,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 705 >> Aprende tus hechizos de clase
    .target Richard Kerwin
    .xp <12,1
step << Undead Warlock
    #completewith next
    .goto Tirisfal Glades,61.75,64.96
    .zone Tirisfal Glades >> Sal de Entrañas
    .isOnQuest 1473
step << Undead Warlock
    .goto Tirisfal Glades,51.44,67.69,15,0
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja el |cRXP_PICK_Cofre de la Criatura del Vacío|r en el suelo
    .complete 1473,1 --Creature of the Void (1)
step << Undead Warlock
    #completewith next
    .goto Undercity,66.16,1.05,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,71.31,44.16,10,0
    .goto Undercity,72.99,44.19,10 >>Toma el ascensor para bajar a Entrañas
    .isOnQuest 1473
step << Undead Warlock
    #completewith next
    .goto Undercity,71.90,40.45,15,0
    .goto Undercity,68.15,40.83,10,0
    .goto Undercity,74.53,43.72,30,0
    .goto Undercity,79.60,42.63,30,0
    .goto Undercity,85.04,25.97,40 >>Viaja hacia |cRXP_FRIENDLY_Carendin|r
    .isOnQuest 1473
step << Undead Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .turnin 1473 >>Entrega la misión Criatura Abisal
    .accept 1471 >>Acepta la misión El vínculo
    .target Carendin Halgar
step << Undead Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_Usa las|r |T134416:0|t[Runas de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Undead Warlock
    .goto Undercity,86.64,27.10
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Undead Warlock
    #label VoidWalkerComplete
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Entrega la misión El vínculo
    .target Carendin Halgar
step << Warrior/Undead Warlock
    #label ExitUC
    #completewith ExitSVM
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the |cRXP_PICK_Orbe de traslado|r to Silvermoon City
step << Warrior/Undead Warlock
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toquesol|r
    >>|cRXP_BUY_Compra una|r |T132798:0|t[Reserva especial Toquesol] |cRXP_BUY_al vendedor|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << Warrior/Undead Warlock
    #label ExitSVM
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Sal de Lunargenta
step << Warrior/Undead Warlock
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9066 >> Gira en La letra con sangre entra
    .target Instructor Antheol
step << !Warrior !Warlock !Hunter
    #completewith ExitFalcon
    .hs >> Usa tu Hoguera para ir a Falconwing Square
    .bindlocation 3665,1
    .subzoneskip 3665
step << BloodElf Warlock/BloodElf Hunter
    #completewith ExitFalcon
    .hs >> Hearth to Falconwing Square (NOT TRANSLATED IN :esMX YET)
    .bindlocation 3665,1
    .subzoneskip 3665
step
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a esta vendedora|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra la|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_de ella|r << Paladin
    .collect 1179,20,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4541,20,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (20)
    .collect 4541,10,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0476 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0714 << Paladin
    .target Innkeeper Delaniel
    .subzoneskip 3665,1
step
    #label Buyfood1
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a esta vendedora|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra la|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_de ella|r << Paladin
    .collect 1179,10,8491,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4541,10,8491,1 << !Priest !Mage !Warlock !Druid !Paladin --Freshly Baked Bread (10)
    .collect 4541,5,8491,1 << Paladin --Freshly Baked Bread (10)
    .money <0.0238 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0357 << Paladin
    .target Innkeeper Delaniel
    .subzoneskip 3665,1
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Entrega la misión Documentos incriminadores
    .accept 8483 >> Acepta la misión El espía enano
    .target Aeldon Sunbrand
step << Paladin/Priest/Mage
    #xprate >1.49
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Entrega la misión Documentos incriminadores
    .target Aeldon Sunbrand
step << Paladin/Priest/Mage
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,44.57,53.30
    .gossipoption 91301 >>Habla con |cRXP_FRIENDLY_Guardayunque|r
    .timer 28,Prospector Guardayunque RP
    .target Prospector Anvilward
    .skipgossip 15420,1
    .isOnQuest 8483
step << Paladin/Priest/Mage
    #xprate <1.5
    .goto Eversong Woods,44.57,53.11,10,0
    .goto Eversong Woods,44.01,52.83,10,0
    .goto Eversong Woods,43.91,53.12,10,0
    .goto Eversong Woods,44.07,53.33
    >>|cRXP_WARN_Espera al Roleplay|r
    >>Kill |cRXP_ENEMY_Prospector Anvilward|r. Loot him for his |cRXP_LOOT_Cabeza|r
    .complete 8483,1 --Collect Prospector Anvilward's Head (x1)
    .mob Prospector Anvilward
step
    #xprate <1.5
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8483 >> Turn in The Dwarven Spy (NOT TRANSLATED IN :esMX YET)
    .target Aeldon Sunbrand
step
    #optional
    .goto Eversong Woods,45.02,37.68
    .xp 10 >> Mata enemigos hasta subir al nivel 10
step << Paladin
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .train 633 >>Aprende tus hechizos de clase
    .target Noellene
	.xp <10,1
    .xp >12,1
step << Paladin
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .accept 9677 >> Acepta la misión El llamamiento del Señor Caballero Sangrevalor
    .train 19834 >>Aprende tus hechizos de clase
    .target Noellene
	.xp <12,1
step << Rogue
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannaria|r arriba
    .train 2983 >>Aprende tus hechizos de clase
    .target Tannaria
	.xp <10,1
step << Hunter
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 13165 >>Aprende tus hechizos de clase
    .target Hannovia
	.xp <10,1
	.xp >12,1
step << Hunter
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 14281 >>Aprende tus hechizos de clase
    .target Hannovia
	.xp <12,1
step << Mage/Priest/Warlock
    #completewith next
    .goto Eversong Woods,47.79,47.35,8,0
    .goto Eversong Woods,47.86,47.76,8 >> Entra en la Posada
	.xp <10,1
step << Mage/Priest/Warlock
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Sube las escaleras
	.xp <10,1
step << Priest
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r arriba
    .turnin 9489 >> Limpiar la Cicatriz << BloodElf
    .train 8092 >>Aprende tus hechizos de clase
    .target Ponaris
	.xp <10,1
    .xp >12,1
step << Priest
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r arriba
    .turnin 9489 >> Limpiar la Cicatriz << BloodElf
    .train 592 >>Aprende tus hechizos de clase
    .target Ponaris
	.xp <12,1
step << Mage
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r arriba
    .train 7300 >>Aprende tus hechizos de clase
    .target Garridel
	.xp <10,1
    .xp >12,1
step << Mage
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r arriba
    .train 145 >>Aprende tus hechizos de clase
    .target Garridel
	.xp <12,1
step << Undead Warlock
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r arriba
    .train 707 >>Aprende tus hechizos de clase
    .target Celoenus
    .xp <10,1
    .xp >12,1
step << Undead Warlock
    #label MaPrWaTrain2
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r arriba
    .train 705 >>Aprende tus hechizos de clase
    .target Celoenus
    .xp <12,1
step
    #label ExitFalcon
    #completewith Antheol2
    .goto Eversong Woods,46.65,49.13,40 >>Sal de Falconwing Square
    .subzoneskip 3665,1
step << BloodElf Warlock
    #completewith next
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
    .isQuestAvailable 9529
step << BloodElf Warlock
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entra en la Posada
step << BloodElf Warlock
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toquesol|r
    >>|cRXP_BUY_Compra una|r |T132798:0|t[Reserva especial Toquesol] |cRXP_BUY_al vendedor|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << BloodElf Warlock
    #completewith TheStone
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entra en el edificio, luego baja las escaleras
    .isQuestAvailable 9529
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Acepta la misión La piedra
    .train 707 >>Aprende tus hechizos de clase
    .target Talionia
    .xp <10,1
    .xp >12,1
step << BloodElf Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Acepta la misión La piedra
    .train 705 >>Aprende tus hechizos de clase
    .target Talionia
    .xp <12,1
step << BloodElf Warlock
    #label TheStone
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .accept 9529 >>Acepta la misión La piedra
    .target Talionia
    .isQuestAvailable 9529
step << BloodElf Warlock
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Eversong Woods,56.66,50.11
    .zone Eversong Woods >>Sal de Lunargenta
step
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9066 >> Entrega la misión La letra con sangre entra
    .accept 9402 >> Acepta la misión ¡Tráeme una cosita! << Mage
    .target Instructor Antheol
step << Mage
    .goto Eversong Woods,54.87,56.37
    >>Despoja la |cRXP_PICK_Azure Ampolla|r bajo el agua
    .complete 9402,1 --Azure Phial (1)
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9402 >>Entrega la misión ¡Tráeme una cosita!
    .accept 9403 >>Acepta la misión El agua más pura
    .target Instructor Antheol
step
    #optional
    #label Antheol2

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#defaultfor !Shaman
#name 10-12 Bosque de Canción Eterna
#displayname 11-13 Eversong Woods << Orc !Hunter !Warlock/Troll !Hunter
#version 7
#subgroup RestedXP Horda 1-30
#next 12-16 Tierras Fantasma

step << Orc Hunter/Troll Hunter
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,74.82,36.86,20,0
    .goto Silvermoon City,91.23,38.75,20 >>Viaja hacia |cRXP_FRIENDLY_Ileda|r
step << Orc Hunter/Troll Hunter
    .goto Silvermoon City,91.23,38.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ileda|r
    .train 202 >>Aprende Espadas de 2 manos
    .target Ileda
    .money <0.1000
step << Orc Hunter/Troll Hunter/Orc Warlock/Tauren
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,75.63,58.34,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Silvermoon City,73.22,59.91,20,0 << !Orc/!Hunter !Troll/!Hunter
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Sal de Lunargenta
step << Orc Hunter/Troll Hunter/Orc Warlock/Tauren
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Aprende la ruta de vuelo hacia Ciudad de Lunargenta
    .target Skymistress Gloaming
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .accept 9402 >>Acepta la misión ¡Tráeme una cosita!
    .target Instructor Antheol
step << Troll Mage
    .goto Eversong Woods,54.87,56.37
    >>Despoja la |cRXP_PICK_Ampolla Azul|r bajo el agua
    .complete 9402,1 --Azure Phial (1)
step << Troll Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9402 >>Gira en ¡Tráeme una cosita!
    .accept 9403 >>Acepta la misión El agua más pura
    .target Instructor Antheol
step
    #completewith Farstrider1
    .subzone 3464 >>Viaja al Retiro del Errante
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
step
    #xprate <1.5
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalene|r
    >>|cRXP_BUY_Compra la|r |T133974:0|t[Aperitivos de garragil] |cRXP_BUY_de ella|r
    .collect 22776,1,9067,1 --Collect Springpaw Appetizers
    .target Zalene Firstlight
    .isOnQuest 9067
step << Mage/Priest/Warlock
    .goto Eversong Woods,60.41,62.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zalene|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r
    .collect 1179,20,8476,1 --Ice Cold Milk (20)
    .target Zalene Firstlight
step
    #optional
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9359 >>Entrega la misión El Retiro del Errante << !Tauren !Hunter/BloodElf
    .accept 8476 >>Acepta la misión Asentamiento Amani
    .accept 9484 >>Acepta la misión Domesticar la bestia << BloodElf Hunter
    .target Lieutenant Dawnrunner
    .isOnQuest 9359
step
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dawnrunner|r
    .accept 8476 >>Accept Amani Encroachment (NOT TRANSLATED IN :esMX YET)
    .accept 9484 >>Acepta la misión Domesticar la bestia << BloodElf Hunter
    .target Lieutenant Dawnrunner
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo laminado] |cRXP_BUY_y|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_de él|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .collect 2515,2000,9144,1 --Sharp Arrow (2000)
    .target Paelarin
    .money <0.2252 << Orc/Troll
    .money <0.2144 << BloodElf
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,2000,9252,1 << Hunter --Sharp Arrow (2000)
    .target Paelarin
    .money <0.0500 << Orc/Troll
    .money <0.0480 << BloodElf
step << Hunter !Troll
    #optional
    #completewith Otembe
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #label Farstrider1
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arathel|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]. Obtendrás |T136248:0|t[Minería] después, que te permitirá fabricar |T135248:0|t[Sharpening Stones] (+2 Daño con arma durante 1 hora) << Paladin/BloodElf Rogue/Undead Rogue
    >>|cRXP_WARN_Puedes omitir|r |T136241:0|t[Herrería] |cRXP_WARN_si lo deseas|r << Paladin/BloodElf Rogue/Undead Rogue
    .accept 8477 >> Acepta la misión El martillo del maestro de lanzas
    .target Arathel Sunforge
step << BloodElf Hunter
    #loop
    .goto Eversong Woods,60.48,58.86,0
    .goto Eversong Woods,61.65,65.46,40,0
    .goto Eversong Woods,64.19,68.21,40,0
    .goto Eversong Woods,63.75,66.40,40,0
    .goto Eversong Woods,64.06,61.14,40,0
    .goto Eversong Woods,63.90,60.17,40,0
    .goto Eversong Woods,62.62,60.38,40,0
    .goto Eversong Woods,60.48,58.86,40,0
    >>Usa la |T132164:0|t[Fusta de doma] desde el máximo alcance en un |cRXP_ENEMY_Dracohalcón enloquecido|r
    >>|cRXP_WARN_NO mates a los|r |cRXP_ENEMY_Elder Springpaws|r
    .complete 9484,1 --Tame a Crazed Dragonhawk
    .mob Crazed Dragonhawk
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dawnrunner|r
    .turnin 9484 >> Entrega la misión Domesticar la bestia
    .accept 9486 >> Acepta la misión Domesticar la bestia
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    #loop
    .goto Eversong Woods,59.62,57.24,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    >>Usa la |T132164:0|t[Fusta de doma] desde el máximo alcance en un |cRXP_ENEMY_Garragil anciano|r
    .complete 9486,1 --Tame an Elder Springpaw
    .mob Elder Springpaw
    .use 23702
step << BloodElf Hunter
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Correalba|r
    .turnin 9486 >> Entrega la misión Domesticar la bestia
    .accept 9485 >> Acepta la misión Domesticar la bestia
    .target Lieutenant Dawnrunner
step
    #optional
    #completewith Otembe
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
step << Mage
    .goto Eversong Woods,64.16,72.62
    >>|cRXP_WARN_Usa la|r |T134776:0|t[Azure Ampolla] |cRXP_WARN_under the Cascada|r
    .complete 9403,1 --Filled Azure Phial (1)
    .use 23566
step
    #completewith Marosh
    >>Kill |cRXP_ENEMY_Rabioso Amani|r and |cRXP_ENEMY_Amani Axe Throwers|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Rabioso Amani|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_(increased damage and attack speed) at low health|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .mob +Amani Berserker
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob +Amani Axe Thrower
    .isOnQuest 8476
step
    #label Otembe
    .goto Eversong Woods,70.10,72.28
    >>Kill |cRXP_ENEMY_Spearcrafter Otembe|r. Loot him for his |cRXP_LOOT_Martillo|r
    .complete 8477,1 --Collect Otembe's Hammer (x1)
    .mob Spearcrafter Otembe
step
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven'jashi|r en la Jaula
    .accept 8479 >> Acepta la misión Zul'Marosh
    .target Ven'jashi
step
    #completewith next
    .goto Eversong Woods,62.57,79.72,15,0
    .goto Eversong Woods,62.25,80.08,8,0
    .goto Eversong Woods,61.83,79.89,8,0
    .goto Eversong Woods,61.90,79.63,8 >>Sube a la cabaña hacia |cRXP_ENEMY_Zul'Marosh|r
step
    .goto Eversong Woods,62.51,79.68
    >>Kill |cRXP_ENEMY_Chieftain Zul'Marosh|r. Loot him for his |cRXP_LOOT_Cabeza|r and the |T134946:0|t[|cRXP_LOOT_Amani Invasion Plans|r]
    >>|cRXP_WARN_Usa la |T134946:0|t[|cRXP_LOOT_Amani Invasión Plans|r] para iniciar la misión|r
    .complete 8479,1 --Collect Chieftain Zul'Marosh's Head (x1)
    .collect 23249,1,9360 --Collect Amani Invasion Plans (x1)
    .accept 9360 >> Acepta la misión La invasión Amani
    .mob Chieftain Zul'Marosh
    .use 23249
step
    #label Marosh
    .goto Eversong Woods,70.53,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ven'jashi|r en la Jaula
    .turnin 8479 >> Entrega la misión Zul'Marosh
    .target Ven'jashi
step
    #loop
    .goto Eversong Woods,70.90,71.63,0
    .goto Eversong Woods,70.90,71.63,40,0
    .goto Eversong Woods,68.12,70.88,40,0
    .goto Eversong Woods,68.54,73.15,40,0
    .goto Eversong Woods,69.23,74.08,40,0
    .goto Eversong Woods,69.39,76.51,40,0
    .goto Eversong Woods,71.65,76.95,40,0
    .goto Eversong Woods,71.45,78.94,40,0
    .goto Eversong Woods,70.49,81.45,40,0
    .goto Eversong Woods,70.43,82.60,40,0
    .goto Eversong Woods,68.82,83.40,40,0
    .goto Eversong Woods,68.89,80.37,40,0
    >>Kill |cRXP_ENEMY_Rabioso Amani|r and |cRXP_ENEMY_Amani Axe Throwers|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Rabioso Amani|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_(increased damage and attack speed) at low health|r
    .complete 8476,1 --Kill Amani Berserker (x5)
    .mob +Amani Berserker
    .complete 8476,2 --Kill Amani Axe Thrower (x5)
    .mob +Amani Axe Thrower
    .isOnQuest 8476
step
    #softcore
    #completewith AmaniTurnins
    .deathskip >>Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #hardcore
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
step
    #label AmaniTurnins
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Correalba|r
    .turnin 8476 >> Entrega la misión Asentamiento Amani
    .turnin 9360 >> Entrega la misión La invasión Amani
    .accept 9363 >> Acepta la misión Aviso a la Aldea Brisa Pura
    .target Lieutenant Dawnrunner
step << BloodElf Hunter
    #completewith next
    .zone Ghostlands >>Viaja a Tierras Fantasma
step << BloodElf Hunter
    #loop
    .goto Ghostlands,49.07,16.77,0
    .goto Ghostlands,55.08,12.75,90,0
    .goto Ghostlands,49.07,16.77,90,0
    .goto Ghostlands,44.65,19.14,90,0
    .goto Ghostlands,35.40,21.13,90,0
    .goto Ghostlands,31.32,26.22,90,0
    .goto Ghostlands,25.64,30.23,90,0
    >>Usa la |T132164:0|t[Fusta de doma] desde el máximo alcance en un |cRXP_ENEMY_Murciélago brumoso|r
    .complete 9485,1 --Tame a Mistbat
    .mob Mistbat
    .use 23703
step << BloodElf Hunter
    #completewith FlySMC
    .subzone 3488 >> Viaja a Tranquillien
step << BloodElf Hunter
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r
    .accept 9327 >> Acepta la misión Los Renegados
    .target Arcanist Vandril
step << BloodElf Hunter
    .goto Ghostlands,44.78,32.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mavren|r
    .turnin 9327 >> Entrega la misión Los Renegados
    .accept 9758 >> Acepta la misión Regresa junto al arcanista Vandril
    .target High Executor Mavren
step << BloodElf Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lymel|r
    .accept 9130 >> Acepta la misión Mercancía de Ciudad de Lunargenta
    .target Quartermaster Lymel
step << BloodElf Hunter
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r
    .turnin 9758 >> Entrega la misión Regresa junto al arcanista Vandril
    .accept 9138 >> Acepta la misión La Aldea Corona del Sol
    .target Arcanist Vandril
step << BloodElf Hunter
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .turnin 9130 >> Entrega la misión Mercancía de Ciudad de Lunargenta
    .accept 9133 >> Acepta la misión Vuelo a la Ciudad de Lunargenta
    .target Skymaster Sunwing
step << BloodElf Hunter
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathis|r
    .accept 9152 >> Acepta la misión Los suministros de Sepulturero
    .target Rathis Tomber
step << BloodElf Hunter
    #label FlySMC
    #completewith FairBreezeHunter1
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon City >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << BloodElf Hunter
    #completewith AmaniTurnins
    .subzone 3464 >>Viaja al Retiro del Errante
step << BloodElf Hunter
    #optional
    #completewith AmaniTurnins
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
step << BloodElf Hunter
    #label AmaniTurnins
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnrunner|r (NOT TRANSLATED IN :esMX YET)
    .turnin 8476 >> Entrega la misión Asentamiento Amani
    .turnin 9360 >> Entrega la misión La invasión Amani
    .accept 9363 >> Acepta la misión Aviso a la Aldea Brisa Pura
    .turnin 9485 >> Entrega la misión Domesticar la bestia
    .accept 9673 >> Acepta la misión Doma de bestias
    .target Lieutenant Dawnrunner
step
    #xprate <1.5
    #optional
    #completewith MagiApp
    +|cRXP_WARN_Recuerdo que no vendas tus|r |T133974:0|t[Aperitivos de garragil] |cRXP_WARN_y|r |T132798:0|t[Reserva especial Toquesol]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,1
step
    #xprate <1.5
    #optional
    #completewith MagiApp
    +|cRXP_WARN_Recuerdo que no vendas tus|r |T133974:0|t[Aperitivos de garragil]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,<1
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo laminado] |cRXP_BUY_al|r |cRXP_FRIENDLY_Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    #optional
    #completewith HunterTrain
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    .goto Eversong Woods,59.52,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arathel|r
    .turnin 8477 >> Entrega la misión El martillo del maestro de lanzas
    .target Arathel Sunforge
step << Rogue
    #optional
    +|cRXP_WARN_Equipa la|r |T135274:0|t[Navaja de forestal]
    .use 22963
    .itemcount 22963,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.3
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >> Viaja por la rampa hacia |cRXP_FRIENDLY_Duskwither|r
step
    #label MagiApp
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ocaso Marchito|r
    .accept 8888 >> Acepta la misión La aprendiza
    .target Magister Duskwither
step
    #optional
    #completewith Wylliethen1
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loralthalis|r
    .turnin 8888 >> Entrega la misión La aprendiza
    .accept 8889 >> Acepta la misión Desactivando la Aguja
    .accept 9394 >> Acepta la misión ¿Dónde está Wyllithen?
    .target Apprentice Loralthalis
step
    #label Wylliethen1
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wyllithen|r
    .turnin 9394 >> Entrega la misión ¿Dónde está Wyllithen?
    .accept 8894 >> Acepta la misión Limpieza a fondo
    .target Groundskeeper Wyllithen
step
    #completewith DeactivationComplete
    >>Mata a los |cRXP_ENEMY_Maná Serpents|r y a los |cRXP_ENEMY_Ether Fiends|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .mob +Mana Serpent
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob +Ether Fiend
step
    #completewith next
    .goto Eversong Woods,68.95,51.95
    .cast 26566 >>Click the |cRXP_PICK_Orbe de traslado|r atop the stairs
step
    .goto Eversong Woods,68.24,51.56,15,0
    .goto Eversong Woods,68.57,51.61,15,0
    .goto Eversong Woods,68.96,51.95
    >>Haz clic en el |cRXP_PICK_Cristal Flotante Verde|r
    .complete 8889,1 --First Power Source Deactivated (x1)
step
    #completewith next
    .goto Eversong Woods,69.16,52.01,8,0
    .goto Eversong Woods,69.09,51.74,8,0
    .goto Eversong Woods,68.93,51.69,8 >> Sube las escaleras
step
    #sticky
    #label Journalt
    .goto Eversong Woods,69.24,52.11,0,0
    >>Haz clic en el |cRXP_PICK_Diario|r en la mesa
    .accept 8891 >> Acepta la misión Investigación abandonada
step
    >>Haz clic en el |cRXP_PICK_Cristal Flotante Verde|r
    .complete 8889,2 --Second Power Source Deactivated (x1)
    .goto Eversong Woods,68.80,52.00,8,0
    .goto Eversong Woods,68.96,51.94
step
    #requires Journalt
    #completewith next
    .goto Eversong Woods,69.57,52.12,12,0
    .goto Eversong Woods,69.82,52.50,12,0
    .goto Eversong Woods,69.76,52.98,12,0
    .goto Eversong Woods,69.64,53.35,15 >> Sube las escaleras
step
    #requires Journalt
    .goto Eversong Woods,69.64,53.35
    >>Haz clic en el |cRXP_PICK_Cristal Flotante Verde|r
    >>|cRXP_WARN_Do NOT click the |cRXP_PICK_Orbe de traslado|r yet|r
    .complete 8889,3 --Third Power Source Deactivated (x1)
step
    #label DeactivationComplete
    .goto Eversong Woods,69.61,53.47
    .cast 26572 >>Click the |cRXP_PICK_Orbe de traslado|r to teleport back down
    .isOnQuest 8889
step
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    >>Mata a los |cRXP_ENEMY_Maná Serpents|r y a los |cRXP_ENEMY_Ether Fiends|r
    .complete 8894,1 --Kill Mana Serpent (x6)
    .mob +Mana Serpent
    .complete 8894,2 --Kill Ether Fiend (x6)
    .mob +Ether Fiend
step
    .goto Eversong Woods,68.71,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wyllithen|r
    .turnin 8894 >> Entrega la misión Limpieza a fondo
    .target Groundskeeper Wyllithen
step << Mage
    #xprate <1.5
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+5535 >> Grind to 5535+/8700xp (NOT TRANSLATED IN :esMX YET)
    .isQuestComplete 9403
step << !BloodElf/!Warlock
    #xprate <1.5
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+6375 >> Mata enemigos hasta alcanzar 6375+/8700 de experiencia
    .isQuestNotComplete 9403 << Mage
step << Mage
    #xprate >1.49
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+3960 >> Grind to 3960+/8700xp (NOT TRANSLATED IN :esMX YET)
    .isQuestComplete 9403
step << !BloodElf/!Warlock
    #xprate >1.49
    #loop
	.goto Eversong Woods,69.15,50.56,0
	.goto Eversong Woods,69.15,50.56,40,0
	.goto Eversong Woods,70.02,50.62,40,0
	.goto Eversong Woods,70.58,48.16,40,0
	.goto Eversong Woods,69.97,46.28,40,0
	.goto Eversong Woods,69.50,44.69,40,0
	.goto Eversong Woods,68.29,43.31,40,0
	.goto Eversong Woods,67.61,45.28,40,0
	.goto Eversong Woods,67.13,48.48,40,0
	.goto Eversong Woods,69.01,48.22,40,0
    .xp 11+5110 >> Grind to 5110+/8700xp (NOT TRANSLATED IN :esMX YET)
    .isQuestNotComplete 9403 << Mage
step
    .goto Eversong Woods,67.80,56.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loralthalis|r
    .turnin 8889 >> Entrega la misión Desactivando la Aguja
    .accept 8890 >> Acepta la misión Un mensaje de la Aguja
    .target Apprentice Loralthalis
step
    #loop
    .goto Eversong Woods,59.62,57.24,0
    .goto Eversong Woods,66.28,57.66,40,0
    .goto Eversong Woods,64.60,61.15,40,0
    .goto Eversong Woods,63.72,64.26,40,0
    .goto Eversong Woods,62.22,65.24,40,0
    .goto Eversong Woods,60.20,65.87,40,0
    .goto Eversong Woods,68.15,68.11,40,0
    .goto Eversong Woods,65.72,69.53,40,0
    .goto Eversong Woods,60.08,66.06,40,0
    .goto Eversong Woods,63.21,64.35,40,0
    .goto Eversong Woods,64.00,63.93,40,0
    .goto Eversong Woods,64.54,61.08,40,0
    .goto Eversong Woods,62.92,61.12,40,0
    .goto Eversong Woods,61.72,58.56,40,0
    .goto Eversong Woods,63.25,58.12,40,0
    .goto Eversong Woods,59.62,57.24,40,0
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r y a los |cRXP_ENEMY_Elder Springpaws|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
    .mob Elder Springpaw
    .isOnQuest 8491
step
    #xprate <1.5
    #optional
    #completewith Spire
    +|cRXP_WARN_Recuerda NO vender tus|r |T133974:0|t[Aperitivos de garragil] |cRXP_WARN_y|r |T132798:0|t[Reserva especial Toquesol]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,1
step
    #xprate <1.5
    #optional
    #completewith Spire
    +|cRXP_WARN_Recuerda NO vender tus|r |T133974:0|t[Aperitivos de garragil]
    .isOnQuest 9067
    .itemcount 22776,1
    .itemcount 22775,<1
step << Hunter !Troll
    .goto Eversong Woods,60.32,62.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Paelarin|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo laminado] |cRXP_BUY_de|r |cRXP_FRIENDLY_Paelarin|r
    .collect 2507,1,9144,1 --Laminated Recurve Bow (1)
    .target Paelarin
    .money <0.1752 << Orc/Troll
    .money <0.1664 << BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step << Hunter !Troll
    #optional
    #completewith HunterTrain
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.5
step
    #completewith next
    .goto Eversong Woods,59.53,62.16,12,0
    .goto Eversong Woods,59.82,61.91,12,0
    .goto Eversong Woods,59.82,61.91,10 >> Sube por la rampa hacia |cRXP_FRIENDLY_Duskwither|r
step
    #label Spire
    .goto Eversong Woods,60.31,61.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ocaso Marchito|r
    .turnin 8890 >> Entrega la misión Un mensaje de la Aguja
    .turnin 8891 >> Entrega la misión Investigación abandonada
    .target Magister Duskwither
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9403 >>Entrega la misión El agua más pura
    .accept 9404 >>Acepta la misión Recientemente vivo
    .target Instructor Antheol
step << !BloodElf/!Warlock
    #completewith SMtraining01
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harene|r
    .train 8936 >> Aprende tus hechizos de clase
    .target Harene Plainwalker
	.xp <12,1
	.xp >14,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harene|r
    .train 782 >> Aprende tus hechizos de clase
    .target Harene Plainwalker
	.xp <14,1
step
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entra en la Posada
step
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toquesol|r
    >>|cRXP_BUY_Compra la|r |T132798:0|t[Reserva especial Toquesol] |cRXP_BUY_de él|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << !BloodElf Hunter
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entra en la posada. Sal del otro lado
step << BloodElf Hunter
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>Sal al otro lado de la posada
step << Orc Warlock/Undead Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 705 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <12,1
    .xp >14,1
step << Orc Warlock/Undead Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <14,1
step << Rogue
    #completewith Zelanis
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Viaja hacia |cRXP_FRIENDLY_Zelanis|r
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de haber entrenado|r |T133644:0|t[Robar] |cRXP_WARN_y|r |T132320:0|t[Sigilo] |cRXP_WARN_para una misión más tarde|r
    .accept 9532 >> Acepta la misión Encuentra a Keltus Hojaoscura
    .train 2983 >>Aprende tus hechizos de clase
    .target Zelanis
    .train 2983,1
    .xp <10,1
    .xp >14,1
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de haber entrenado|r |T133644:0|t[Robar] |cRXP_WARN_y|r |T132320:0|t[Sigilo] |cRXP_WARN_para una misión más tarde|r
    .accept 9532 >> Acepta la misión Encuentra a Keltus Hojaoscura
    .train 1758 >>Aprende tus hechizos de clase
    .target Zelanis
    .train 1758,1
    .xp <14,1
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de entrenar|r |T133644:0|t[Robar] |cRXP_WARN_y|r |T132320:0|t[Sigilo] |cRXP_WARN_para una misión más adelante|r
    .accept 9532 >> Acepta la misión Encuentra a Keltus Hojaoscura
    .target Zelanis
step << BloodElf Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .train 921 >> Aprende |T133644:0|t[Robar] para una misión más tarde
    .train 1784 >> Aprende |T132320:0|t[Sigilo] para una misión más tarde
    .train 921,1
    .train 1784,1
    .target Zelanis
step << BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .train 1784 >> Aprende |T132320:0|t[Sigilo] para una misión más tarde
    .target Zelanis
step << BloodElf Rogue
    #optional
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .train 921 >> Aprende |T133644:0|t[Robar] para una misión más tarde
    .target Zelanis
step << !BloodElf Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .train 2983 >>Aprende tus hechizos de clase
    .target Zelanis
    .xp <10,1
    .xp >14,1
step << !BloodElf Rogue
    #label Zelanis
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .train 1758 >>Aprende tus hechizos de clase
    .target Zelanis
    .xp <14,1
step << Rogue
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,78.28,59.34,8,0
    .goto Silvermoon City,78.36,60.14,8 >> Entra en la Posada
step << Rogue
    #xprate <1.5
    .goto Silvermoon City,79.50,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toquesol|r
    >>|cRXP_BUY_Compra una|r |T132798:0|t[Reserva especial Toquesol] |cRXP_BUY_al vendedor|r
    .collect 22775,1,9067,1 --Suntouched Special Reserve (1)
    .target Vinemaster Suntouched
    .isOnQuest 9067
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #xprate <1.5
    #completewith next
    .goto Silvermoon City,80.90,57.53,8,0
    .goto Silvermoon City,82.04,58.31,8 >>Sal del otro lado de la posada
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,78.90,43.25,20 >>Viaja hacia |cRXP_FRIENDLY_Belil|r
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,78.90,43.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belil|r
    .train 2580 >> Aprende |T136248:0|t[Minería]. Esto te permitirá encontrar |T135232:0|t|cRXP_LOOT_[Piedra férrea]|r de nodos para elaborar |T135248:0|t[Sharpening Stones] (+2 Daño con arma durante 1 hora) << Paladin/BloodElf Rogue/Undead Rogue
    .target Belil
    .skill blacksmithing,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    .goto Silvermoon City,78.41,42.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelan|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_FRIENDLY_Zelan|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Zelan
    .skill blacksmithing,1
    .skill mining,1
step << BloodElf Paladin/BloodElf Rogue/Undead Rogue
    #completewith Defending
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
step << Paladin
    #completewith FirstTrialB
    .goto Silvermoon City,89.02,37.03,12,0
    .goto Silvermoon City,89.26,35.20,15 >>Viaja hacia |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9677 >>Entrega la misión El llamamiento del Lord caballero Sangrevalor
    .accept 9678 >>Acepta la misión La primera prueba
    .target Knight-Lord Bloodvalor
    .isOnQuest 9677
step << Paladin
    #label FirstTrialB
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bloodvalor|r
    .accept 9678 >>Acepta la misión La primera prueba
    .target Knight-Lord Bloodvalor
step << Paladin
    #optional
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 19834 >>Aprende tus hechizos de clase
	.target Ithelis
	.target Osselan
	.xp <12,1
	.xp >14,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 647 >>Aprende tus hechizos de clase
	.target Ithelis
	.target Osselan
	.xp <14,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Viaja hacia |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMtraining01
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Viaja hacia |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,82.20,28.06,15 >>Viaja hacia |cRXP_FRIENDLY_Halthenis|r << BloodElf
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r << !BloodElf
    .itemcount 3026,<1
step << BloodElf Hunter
    .goto Silvermoon City,82.20,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halthenis|r
    .turnin 9673 >> Entrega la misión Doma de bestias
    .train 4187 >> Entrena los hechizos de tu mascota
    .target Halthenis
step << Hunter
    .goto Silvermoon City,82.39,26.09 << BloodElf
    .goto Silvermoon City,84.71,28.05 << !BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tana|r << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zandine|r << !BloodElf
    >>|cRXP_WARN_Arrastra|r |T132162:0|t[Adiestramiento de bestias] |cRXP_WARN_a tus Barras de Acción. Enseña habilidades a tu mascota|r << BloodElf
    .train 14281 >> Aprende tus hechizos de clase
    .target Tana << BloodElf
    .target Zandine << !BloodElf
	.xp <12,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9144,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Rogue
    #completewith Louis
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the |cRXP_PICK_Orbe de traslado|r to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Louis
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Toma el ascensor para bajar a Entrañas
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    #completewith Louis
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra dos|r |T135346:0|t[Cutlasses] |cRXP_BUY_de él|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 851,<2
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 851,<1
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .xp >12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra dos|r |T135343:0|t[Scimitars] |cRXP_BUY_de él|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra dos|r |T135346:0|t[Cutlasses] |cRXP_BUY_de él|r
    .collect 851,2,9144,1 --Cutlass (2)
    .target Louis Warren
    .itemcount 2027,<2 --Scimitar (2)
    .money <0.4046 << Troll/Orc
    .money <0.3844 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #label Louis
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,9144,1 --Cutlass (1)
    .target Louis Warren
    .itemcount 2027,<1 --Scimitar (1)
    .money <0.2023 << Troll/Orc
    .money <0.1922 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << BloodElf Hunter
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sathren|r
    .turnin 9133 >> Entrega la misión Vuelo a la Ciudad de Lunargenta
    .accept 9134 >> Acepta la misión La maestra del cielo Anochecer
    .target Sathren Azuredawn
step << BloodElf Hunter
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Sal de Lunargenta
    .zoneskip Ghostlands
step << BloodElf Hunter
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anochecer|r
    .turnin 9134 >> Entrega la misión La maestra del cielo Anochecer
    .accept 9135 >> Acepta la misión Regresa junto al intendente Lymel
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step
    #optional
    #label SMtraining01
step << BloodElf !Hunter !Warlock/Undead !Warlock !Warrior/Orc !Warrior !Warlock !Hunter/Troll !Warrior !Hunter/!Tauren
    #completewith Defending
    .hs >> Usa tu Hoguera para ir a Falconwing Square
    .cooldown item,6948,>0
    .bindlocation 3665,1
    .subzoneskip 3665
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20 >>Toma el ascensor de vuelta hacia Luna de Plata
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the |cRXP_PICK_Orbe de traslado|r to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
    .zoneskip Silvermoon City
step << Priest
    #xprate >1.49
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vynna|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_del AH si es barata|r
    >>|cRXP_WARN_Si todos son demasiado caros, omite este paso|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .zoneskip Silvermoon City,1
step << !BloodElf/!Warlock
    #completewith SGrove
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Sal de Lunargenta
    .cooldown item,6948,<0 << BloodElf !Hunter !Warlock/Undead !Warlock !Warrior/Orc !Warrior !Warlock !Hunter/Troll !Warrior !Hunter/!Tauren
step << Mage/Priest
    #optional
    #completewith MaPrWaTrain2
    .subzone 3665 >>Viaja a Falconwing Square
step << Mage/Priest
    #completewith MaPrWaTrain2
    .goto Eversong Woods,48.27,47.05,8,0
    .goto Eversong Woods,48.06,47.11,8 >> Sube las escaleras
	.xp <10,1
step << Priest
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r arriba
    .train 592 >> Aprende tus hechizos de clase
    .target Ponaris
	.xp <12,1
	.xp >14,1
step << Priest
    #label MaPrWaTrain2
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r arriba
    .train 598 >> Aprende tus hechizos de clase
    .target Ponaris
	.xp <14,1
step << Mage
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r arriba
    .train 145 >> Aprende tus hechizos de clase
    .target Garridel
	.xp <12,1
	.xp >14,1
step << Mage
    #label MaPrWaTrain2
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r arriba
    .train 1449 >> Aprende tus hechizos de clase
    .target Garridel
	.xp <14,1
step
    #xprate <1.5
    #loop
    .goto Eversong Woods,46.63,63.83,0
    .goto Eversong Woods,46.63,63.83,40,0
    .goto Eversong Woods,45.04,65.51,40,0
    .goto Eversong Woods,46.57,65.84,40,0
    .goto Eversong Woods,45.24,67.85,40,0
    .goto Eversong Woods,46.66,67.71,40,0
    .goto Eversong Woods,47.05,68.83,40,0
    .goto Eversong Woods,42.89,65.47,40,0
    .goto Eversong Woods,38.45,65.63,40,0
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despoja los |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .target Springpaw Stalker
    .isOnQuest 8491
step
    #completewith FairBreezeturnins
    .subzone 3462 >>Viaja a Fairbreeze Village
step
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sareyn|r
    .turnin 9252 >> Entrega la misión Defender la Aldea Brisa Pura
    .accept 9253 >> Acepta la misión Celador de las runas Deryan
    .target Ranger Sareyn
    .isQuestComplete 9252
step
    #optional
    #label Defending
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sareyn|r
    .accept 9253 >> Acepta la misión Celador de las runas Deryan
    .target Ranger Sareyn
    .isQuestTurnedIn 9252
step
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >> Entrega la misión Caza de pelambres
    .target Velan Brightoak
    .isQuestComplete 8491
step
    #xprate <1.5
    .goto Eversong Woods,44.0,70.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halis|r
    >>|cRXP_BUY_Compra el|r |T134285:0|t[Fardo de fuegos artificiales] |cRXP_BUY_de él|r
    .collect 22777,1,9067,1 --Bundle of Fireworks (1)
    .target Halis Dawnstrider
    .isOnQuest 9067
step
    #xprate <1.5
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landra|r, |cRXP_FRIENDLY_Degolien|r, y |cRXP_FRIENDLY_Ardeyn|r arriba
    .accept 9144 >>Acepta la misión Desaparecido en las Tierras Fantasma
    .turnin 9255 >>Entrega la misión Notas de investigación
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Entrega la misión Aviso a la Aldea Brisa Pura
    .target +Ranger Degolien
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Acepta la misión La Arboleda Agostada
    .target +Ardeyn Riverwind
    .goto Eversong Woods,43.58,71.20
    .isOnQuest 9255
step
    #xprate <1.5
    #label FairBreezeturnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landra|r, |cRXP_FRIENDLY_Degolien|r, y |cRXP_FRIENDLY_Ardeyn|r arriba
    .accept 9144 >>Acepta la misión Desaparecido en las Tierras Fantasma
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Entrega la misión Aviso a la Aldea Brisa Pura
    .target +Ranger Degolien
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .accept 9258 >>Acepta la misión La Arboleda Agostada
    .target +Ardeyn Riverwind
    .goto Eversong Woods,43.58,71.20
step
    #xprate >1.49
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landra|r and |cRXP_FRIENDLY_Degolien|r (NOT TRANSLATED IN :esMX YET)
    .accept 9144 >>Acepta la misión Desaparecido en las Tierras Fantasma
    .turnin 9255 >>Entrega la misión Notas de investigación
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Entrega la misión Aviso a la Aldea Brisa Pura
    .target +Ranger Degolien
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
    .isOnQuest 9255
step
    #xprate >1.49
    #label FairBreezeturnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landra|r and |cRXP_FRIENDLY_Degolien|r (NOT TRANSLATED IN :esMX YET)
    .accept 9144 >>Acepta la misión Desaparecido en las Tierras Fantasma
    .target +Magistrix Landra Dawnstrider
    .goto Eversong Woods,44.03,70.76
    .turnin 9363 >>Entrega la misión Aviso a la Aldea Brisa Pura
    .target +Ranger Degolien
    .goto Eversong Woods,43.61,70.66,10,0
    .goto Eversong Woods,43.34,70.82
step
    #xprate <1.5
    .goto Eversong Woods,38.14,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saltheril|r
    .turnin 9067 >>Entrega la misión Fiesta interminable
    .target Lord Saltheril
    .isQuestComplete 9067
step
    #xprate <1.5
    #optional
    #completewith next
    .destroy 23500 >> |cRXP_WARN_Elimina|r |T133461:0|t[Invitación a la fiesta del Refugio de Saltheril] |cRXP_WARN_de tus bolsas, ya que ya no es necesario|r
step
    #xprate <1.5
    #label SGrove
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larianna|r
    .turnin 9258 >> Entrega la misión La Arboleda Agostada
    .accept 8473 >> Acepta la misión Una tarea dolorosa
    .target Larianna Riverwind
step
    #xprate <1.5
    #completewith next
    >>Kill |cRXP_ENEMY_Jardinero marchito|r
    >>|cRXP_WARN_Ten cuidado ya que tienen|r |T132282:0|t[Golpear]|cRXP_WARN_ que causa el doble del daño Normal|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
step
    #xprate <1.5
    .goto Eversong Woods,35.10,84.05,10,0
    .goto Eversong Woods,34.91,84.34
    >>Kill |cRXP_ENEMY_Old Whitebark|r. Loot him for |T133280:0|t[|cRXP_LOOT_Colgante del viejo Cortezablanca|r]
    >>|cRXP_WARN_Use |T133280:0|t[|cRXP_LOOT_Colgante del viejo Cortezablanca|r] to start the quest|r
    >>|cRXP_ENEMY_Viejo Cortezablanca|r |cRXP_WARN_tiene un tiempo de reaparición de 7 minutos 30 segundos|r
    .collect 23228,1,8474,1 --Collect Old Whitebark's Pendant (x1)
    .accept 8474 >> Acepta la misión El Colgante del viejo Cortezablanca
    .mob Old Whitebark
    .use 23228
step
    #xprate <1.5
    #loop
	.goto Eversong Woods,36.07,83.10,0
	.goto Eversong Woods,36.07,83.10,40,0
	.goto Eversong Woods,36.21,85.47,40,0
	.goto Eversong Woods,33.24,87.69,40,0
	.goto Eversong Woods,32.05,87.25,40,0
	.goto Eversong Woods,32.63,83.57,40,0
	.goto Eversong Woods,33.46,81.99,40,0
	.goto Eversong Woods,34.47,83.08,40,0
    >>Kill |cRXP_ENEMY_Jardinero marchito|r
    >>|cRXP_WARN_Ten cuidado ya que tienen|r |T132282:0|t[Golpear]|cRXP_WARN_ que causa el doble del daño Normal|r
    .complete 8473,1 --Kill Withered Green Keeper (x10)
    .mob Withered Green Keeper
step
    #xprate <1.5
    .goto Eversong Woods,34.06,80.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larianna|r
    .turnin 8473 >> Entrega la misión Una tarea dolorosa
    .turnin 8474 >> Entrega la misión Colgante del viejo Cortezablanca
    .accept 10166 >> Acepta la misión La memoria de Cortezablanca
    .target Larianna Riverwind
step
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,37.79,86.25
    .cast 33980 >> |cRXP_WARN_Usar|r |T133280:0|t[Old Whitebark's Pendant] |cRXP_WARN_to summon|r |cRXP_ENEMY_Espíritu de Cortezablanca|r
    .use 28209
    .isOnQuest 10166
step
    #xprate <1.5
    .goto Eversong Woods,37.79,86.25
    >>Defeat |cRXP_ENEMY_Espíritu de Cortezablanca|r
    >>Talk to |cRXP_FRIENDLY_Espíritu de Cortezablanca|r after defeating him
    .turnin 10166 >> Entrega la misión La memoria de Cortezablanca
    .target Whitebark's Spirit
    .use 28209
step
    .goto Eversong Woods,44.19,85.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deryan|r
    .turnin 9253 >> Entrega la misión Celador de las runas Deryan
    .target Runewarden Deryan
    .isOnQuest 9253
step << Mage
    #loop
    .goto Eversong Woods,53.02,82.14,0
    .goto Eversong Woods,53.02,82.14,40,0
    .goto Eversong Woods,53.85,80.72,40,0
    .goto Eversong Woods,53.58,78.32,40,0
    .goto Eversong Woods,53.51,77.64,40,0
    .goto Eversong Woods,55.14,76.10,40,0
    .goto Eversong Woods,55.63,74.22,40,0
    >>Kill |cRXP_ENEMY_Guardaverdor de Canción Eterna|r. Loot them for their |cRXP_LOOT_Rama viva|r
    .complete 9404,1 --Living Branch (x1)
    .mob Eversong Green Keeper
step
    #optional
    .abandon 8490 >>Abandona la misión Reforzando las defensas
step
    #optional
    .abandon 8491 >>Abandon Pelt Collection (NOT TRANSLATED IN :esMX YET)
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name 12-16 Tierras Fantasma
#displayname 13-16 Ghostlands << Orc !Hunter !Warlock/Troll !Hunter
#defaultfor !Shaman
#version 7
#subgroup RestedXP Horda 1-30
#next 16-20 Tierras Fantasma

step << Mage
    #optional
    #completewith next
    +|cRXP_WARN_Asegúrate de no vender accidentalmente tu|r |cRXP_LOOT_|T136065:0|t[Rama viva]|r
    .isQuestComplete 9404
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caminalba|r y |cRXP_FRIENDLY_Thedra|r
    .turnin 9144 >> Entrega la misión Desaparecido en las Tierras Fantasma
    .target +Courier Dawnstrider
    .goto Eversong Woods,48.98,88.99
    .accept 9147 >> Acepta la misión El mensajero caído
    .target +Apothecary Thedra
    .goto Eversong Woods,49.02,89.05
step << BloodElf Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Garrafantasma famélico|r and |cRXP_ENEMY_Mistbats|r. Loot them for their |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step << BloodElf Warlock
    .goto Ghostlands,43.66,15.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Purple Shard|r en el suelo
    .turnin 9529 >>Entrega la misión La piedra
    .accept 9619 >>Acepta la misión La runa de invocación
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,27.51,15.75,10,0
    .goto Ghostlands,27.35,15.01,8,0
    .goto Ghostlands,26.17,15.61,8,0
    .goto Ghostlands,26.09,14.56,8,0
    .goto Ghostlands,26.44,14.24,8,0
    .goto Ghostlands,26.74,14.38,8 >>Sube las escaleras
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,26.99,15.24
    .cast 30208 >>Use the |T134078:0|t[Voidstone] to summon a |cRXP_ENEMY_Abisario invocado|r
    .use 23732
step << BloodElf Warlock
    .goto Ghostlands,26.99,15.24
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 9619,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 23732
step
    #loop
    .goto Ghostlands,47.81,12.66,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    .goto Ghostlands,46.75,13.42,40,0
    .goto Ghostlands,45.74,14.35,40,0
    .goto Ghostlands,44.94,16.92,40,0
    .goto Ghostlands,44.84,18.84,40,0
    .goto Ghostlands,45.36,19.92,40,0
    .goto Ghostlands,47.43,20.19,40,0
    .goto Ghostlands,48.56,19.02,40,0
    .goto Ghostlands,49.52,17.34,40,0
    .goto Ghostlands,51.08,16.71,40,0
    .goto Ghostlands,52.00,18.05,40,0
    .goto Ghostlands,55.22,14.72,40,0
    .goto Ghostlands,50.01,13.00,40,0
    .goto Ghostlands,49.45,13.55,40,0
    .goto Ghostlands,49.12,15.08,40,0
    .goto Ghostlands,48.42,15.77,40,0
    .goto Ghostlands,47.81,12.66,40,0
    >>Kill |cRXP_ENEMY_Garrafantasma famélico|r and |cRXP_ENEMY_Mistbats|r. Loot them for their |cRXP_LOOT_Blood Samples|r
    .complete 9147,1 --Collect Plagued Blood Sample (x4)
    .mob Starving Ghostclaw
    .mob Mistbat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thedra|r y |cRXP_FRIENDLY_Caminalba|r
    .turnin 9147 >> Entrega la misión El mensajero caído
    .target +Apothecary Thedra
    .goto Eversong Woods,49.02,89.05
    .accept 9148 >> Acepta la misión Entrega en Tranquillien
    .target +Courier Dawnstrider
    .goto Eversong Woods,48.98,88.99
step
    #completewith next
    .subzone 3488 >> Viaja a Tranquillien
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r
    .turnin 9148 >> Entrega la misión Entrega en Tranquillien
    .accept 9327 >> Acepta la misión Los Renegados << BloodElf
    .accept 9329 >> Acepta la misión Los Renegados << !BloodElf
    .target Arcanist Vandril
step << Warrior
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fp Tranquillien >> Aprende la ruta de vuelo hacia Tranquillien
    .target Skymaster Sunwing
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mavren|r
    .turnin 9327 >> Entrega la misión Los Renegados << BloodElf
    .turnin 9329 >> Entrega la misión Los Renegados << !BloodElf
    .accept 9758 >> Acepta la misión Regresa junto al arcanista Vandril
    .target High Executor Mavren
step << BloodElf !Hunter
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lymel|r
    .accept 9130 >> Acepta la misión Mercancía de Ciudad de Lunargenta
    .target Quartermaster Lymel
step << BloodElf Warlock
    #completewith next
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    .home >> Establece tu Piedra de hogar en Tranquillien
    .target Innkeeper Kalarin
    .bindlocation 3488
step
    .goto Ghostlands,46.55,28.38,10,0
    .goto Ghostlands,46.08,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r
    .turnin 9758 >> Entrega la misión Regresa junto al arcanista Vandril
    .accept 9138 >> Acepta la misión La Aldea Corona del Sol
    .target Arcanist Vandril
step << BloodElf
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .turnin 9130 >> Entrega la misión Mercancía de Ciudad de Lunargenta
    .accept 9133 >> Acepta la misión Vuelo a la Ciudad de Lunargenta << Warlock/Priest/Mage
    .target Skymaster Sunwing
step << BloodElf Warlock
    #completewith RuneOS
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << BloodElf Warlock
    #completewith RuneOS
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
step << BloodElf Warlock
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sathren|r
    .turnin 9133 >> Entrega la misión Vuelo a la Ciudad de Lunargenta
    .accept 9134 >> Acepta la misión La maestra del cielo Anochecer
    .target Sathren Azuredawn
step << BloodElf Warlock
    #completewith RuneOS
    .goto Silvermoon City,66.92,59.84,30,0
    .goto Silvermoon City,69.32,59.09,20,0
    .goto Silvermoon City,73.50,58.21,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entra en el edificio, luego baja las escaleras
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Entrega la misión La runa de invocación
    .train 705 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <12,1
    .xp >14,1
    .train 705,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Entrega la misión La runa de invocación
    .train 6222 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <14,1
    .xp >16,1
    .train 6222,1
step << BloodElf Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Entrega la misión La runa de invocación
    .train 1455 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <16,1
    .train 1455,1
step << BloodElf Warlock
    #label RuneOS
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .turnin 9619 >>Entrega la misión La runa de invocación
    .target Talionia
step << BloodElf Warlock
    #completewith AnokPickup
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .bindlocation 3488,1
    .subzoneskip 3488
step
    .goto Ghostlands,47.23,28.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathis|r
    .accept 9152 >> Acepta la misión Los suministros de Sepulturero
    .target Rathis Tomber
step
    #label AnokPickup
    .goto Ghostlands,57.54,14.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Elfo de sangre agonizante|r on the ground
    .accept 9315 >> Acepta la misión Anok'suten
    .target Dying Blood Elf
step << !Paladin
    #completewith next
    >>Kill |cRXP_ENEMY_Guardia Nerubis|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith FirstT
    >>Kill |cRXP_ENEMY_Guardia Nerubis|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    #loop
    .goto Ghostlands,62.86,11.04,0
    .goto Ghostlands,59.47,12.43,20,0
    .goto Ghostlands,59.83,10.22,20,0
    .goto Ghostlands,58.92,9.19,20,0
    .goto Ghostlands,60.72,9.46,20,0
    .goto Ghostlands,61.74,9.63,20,0
    .goto Ghostlands,62.86,11.04,20,0
    .goto Ghostlands,63.26,9.50,20,0
    .goto Ghostlands,62.76,12.68,20,0
    .goto Ghostlands,63.52,13.39,20,0
    .goto Ghostlands,62.00,14.21,20,0
    .goto Ghostlands,60.70,14.39,20,0
    .goto Ghostlands,60.34,16.13,20,0
    .goto Ghostlands,59.92,13.83,20,0
    >>Mata a |cRXP_ENEMY_Anok'suten|r. Patrulla en sentido antihorario alrededor del camino del pueblo y entra en los edificios.
    >>|cRXP_WARN_He calls for help from|r |cRXP_ENEMY_Guardia Nerubis|r |cRXP_WARN_with a range of 60 yards at <50% health|r
    >>|cRXP_WARN_Busca un grupo para él si es necesario|r
    .complete 9315,1 --Kill Anok'suten (x1)
    .unitscan Anok'suten
step << !Paladin
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    >>Kill |cRXP_ENEMY_Guardia Nerubis|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step << Paladin
    #completewith next
    >>Nada hacia la isla
    .goto Ghostlands,68.53,8.66,20 >>Entra en la cueva
step << Paladin
    #completewith next
    .goto Ghostlands,68.41,7.42
    .cast 3365 >>Click the |cRXP_PICK_Blandón dorado|r to summon |cRXP_ENEMY_Sangrias Hojafirme|r
step << Paladin
    #label FirstT
    .goto Ghostlands,68.50,9.77
    >>Kill |cRXP_ENEMY_Sangrias Hojafirme|r
    .complete 9678,1 --Undergo the First Trial
    .mob Sangrias Stillblade
step << Paladin
    #loop
	.goto Ghostlands,68.61,10.24,0
	.goto Ghostlands,68.61,10.24,30,0
	.goto Ghostlands,69.93,9.00,30,0
	.goto Ghostlands,70.52,5.81,30,0
	.goto Ghostlands,69.54,4.65,30,0
	.goto Ghostlands,68.63,4.93,30,0
	.goto Ghostlands,66.76,5.54,30,0
	.goto Ghostlands,66.70,6.58,30,0
	.goto Ghostlands,67.41,9.70,30,0
    >>Kill |cRXP_ENEMY_Guardia Nerubis|r
    .complete 9138,1 --Kill Nerubis Guard (x10)
    .mob Nerubis Guard
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valanna|r
    .accept 9143 >> Acepta la misión Encargarse de Zeb'Sora
    .target Ranger Valanna
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geranis|r
    .accept 9157 >> Acepta la misión Rituales olvidados
    .target Geranis Whitemorn
step
    #loop
	.goto Ghostlands,73.64,14.43,0
	.goto Ghostlands,73.64,14.43,30,0
	.goto Ghostlands,73.77,11.83,30,0
	.goto Ghostlands,74.70,11.89,30,0
	.goto Ghostlands,74.75,9.70,30,0
	.goto Ghostlands,75.89,8.49,30,0
	.goto Ghostlands,76.87,8.54,30,0
	.goto Ghostlands,78.20,9.68,30,0
	.goto Ghostlands,77.70,12.61,30,0
	.goto Ghostlands,75.88,10.23,30,0
	.goto Ghostlands,76.00,13.71,30,0
    >>Kill |cRXP_ENEMY_Desgarrador Sombrapino|r and |cRXP_ENEMY_Brujo Sombrapino|r. Loot them for their |cRXP_LOOT_Troll Ears|r
    .complete 9143,1 --Collect Zeb'Sora Troll Ear (x6)
    .mob Shadowpine Ripper
    .mob Shadowpine Witch
step
    #completewith next
    .subzone 3496 >>Viaja a Enclave del Errante
step
    .goto Ghostlands,73.48,32.15,15,0
    .goto Ghostlands,72.50,32.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedina|r
    .accept 9158 >> Acepta la misión Transmisores de la peste
    .target Farstrider Sedina
step << !Mage
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_del vendedor|r << Paladin
    .collect 1179,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (20)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0500 << Priest/Mage/Warlock/Druid
    .money <0.0540 << Paladin
    .isOnQuest 9158
    .xp >15,1
step << !Mage
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_del vendedor|r << Paladin
    .collect 1179,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Ice Cold Milk (10)
    .collect 4592,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Longjaw Mud Snapper (20)
    .collect 4592,10,9281,1 << Paladin --Longjaw Mud Snapper (10)
    .target Heron Skygaze
    .money <0.0080 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.0250 << Priest/Mage/Warlock/Druid
    .money <0.0290 << Paladin
    .isOnQuest 9158
    .xp >15,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <1.000
    .isOnQuest 9158
    .xp <15,1
    .xp >30,1
step << Hunter
    #completewith next
    .goto Ghostlands,48.48,31.36,0
    +|cRXP_WARN_Abandon your current pet. Alternatively you talk to|r |cRXP_FRIENDLY_Paniar|r |cRXP_WARN_in Tranquillien to stable your current pet|r (NOT TRANSLATED IN :esMX YET)
    .target Paniar
step << Hunter
    #loop
    .goto Ghostlands,72.68,41.63,0
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    .train 16830 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on an |cRXP_ENEMY_Ghostclaw Lynx|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)] (NOT TRANSLATED IN :esMX YET)
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .mob Ghostclaw Lynx
step
    #loop
    .goto Ghostlands,72.68,41.63,0
    .goto Ghostlands,69.61,31.21,40,0
    .goto Ghostlands,66.93,35.04,40,0
    .goto Ghostlands,69.21,36.19,40,0
    .goto Ghostlands,68.34,39.28,40,0
    .goto Ghostlands,66.16,42.71,40,0
    .goto Ghostlands,68.48,46.50,40,0
    .goto Ghostlands,71.08,44.62,40,0
    .goto Ghostlands,72.68,41.63,40,0
    .goto Ghostlands,73.06,39.68,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,73.82,36.71,40,0
    .goto Ghostlands,76.03,36.52,40,0
    .goto Ghostlands,76.39,34.86,40,0
    .goto Ghostlands,74.79,39.15,40,0
    .goto Ghostlands,77.29,31.89,40,0
    .goto Ghostlands,77.16,27.58,40,0
    .goto Ghostlands,76.07,25.13,40,0
    .goto Ghostlands,74.82,29.77,40,0
    >>Kill |cRXP_ENEMY_Lince garrafantasma|r
    >>|cRXP_ENEMY_Ghostclaw Lynxes|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Vampiric Mistbats|r. Kill them too if there aren't enough |cRXP_ENEMY_Ghostclaw Lynxes|r around|r (NOT TRANSLATED IN :esMX YET)
    .complete 9158,1 --Kill Ghostclaw Lynx (x10)
    .mob Ghostclaw Lynx
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedina|r, |cRXP_FRIENDLY_Solanna|r, el |cRXP_FRIENDLY_Wanted Poster|r, |cRXP_FRIENDLY_Krenn'an|r, y |cRXP_FRIENDLY_Helios|r
    .turnin 9158 >> Entrega la misión Transmisores de la peste
    .accept 9159 >> Acepta la misión Control de plagas
    .target +Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Acepta la misión Ataque a Zeb'Tela
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .accept 9215 >>Acepta la misión ¡Tráeme la cabeza de Kel'gash!
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>Acepta la misión Los espíritus de los ahogados
    .target +Ranger Krenn'an
    .goto Ghostlands,72.21,29.78
    .accept 9214 >>Acepta la misión Armas Sombrapino
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
    .xp <15,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedina|r, el |cRXP_FRIENDLY_Wanted Poster|r, y |cRXP_FRIENDLY_Krenn'an|r
    .turnin 9158 >> Entrega la misión Transmisores de la peste
    .accept 9159 >> Acepta la misión Control de plagas
    .target +Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .accept 9215 >>Acepta la misión ¡Tráeme la cabeza de Kel'gash!
    .goto Ghostlands,72.24,31.14
    .accept 9274 >>Acepta la misión Los espíritus de los ahogados
    .target +Ranger Krenn'an
    .goto Ghostlands,72.21,29.78
step
    #completewith Aquantion
    >>Kill |cRXP_ENEMY_Aparecido voraz|r and |cRXP_ENEMY_Aparecido vengativo|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .mob +Ravening Apparition
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob +Vengeful Apparition
step
    #loop
    .goto Ghostlands,73.42,22.88,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,71.31,15.24,30,0
    .goto Ghostlands,71.11,15.38,30,0
    .goto Ghostlands,71.16,13.76,30,0
    .goto Ghostlands,70.65,13.67,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    >>Despoja los |cRXP_PICK_Glistening Mud Piles|r bajo el agua para los |cRXP_LOOT_Wavefront Medallions|r
    .complete 9157,1 --Collect Wavefront Medallion (x8)
step
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geranis|r
    .turnin 9157 >> Entrega la misión Rituales olvidados
    .accept 9174 >> Acepta la misión Derrotar a Aquantion
    .target Geranis Whitemorn
step
    #completewith next << !Mage !Priest
    #completewith AquantionKill << Priest/Mage
    .goto Ghostlands,71.32,14.93
    .cast 28226 >> Haz clic en el |cRXP_PICK_Altar|r para invocar |cRXP_ENEMY_Aquantion|r
step
    .goto Ghostlands,71.31,14.58
    >>Mata a |cRXP_ENEMY_Aquantion|r
    >>|cRXP_WARN_Tiene salud de nivel élite e inflige daño de escarcha|r
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_y|r |T135963:0|t[Martillo de Justicia] << BloodElf Paladin
    >>|cRXP_WARN_Es inmune a|r |T135963:0|t[Martillo de Justicia] << !BloodElf Paladin
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_y|r |T136183:0|t[Miedo] << BloodElf Warlock
    >>|cRXP_WARN_Es inmune a|r |T136183:0|t[Miedo] << !BloodElf Warlock
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_y|r |T136184:0|t[Alarido psíquico] << BloodElf Priest
    >>|cRXP_WARN_Es inmune a|r |T136184:0|t[Alarido psíquico] << !BloodElf Priest
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano], |T135846:0|t[Descarga de Escarcha], |T135848:0|t[Vigía del pozo Solanian], |cRXP_WARN_y|r |T135843:0|t[Armadura de Escarcha] << BloodElf Mage
    >>|cRXP_WARN_Es inmune a|r |T135846:0|t[Descarga de Escarcha], |T135848:0|t[Vigía del pozo Solanian], |cRXP_WARN_y|r |T135843:0|t[Armadura de Escarcha] << !BloodElf Mage
    >>|cRXP_WARN_Asegúrate de prepararte con|r |T136006:0|t[Atenuar magia] |cRXP_WARN_antes de evocarlo|r << Mage
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_y|r |T132155:0|t[Gubia] << BloodElf Rogue
    >>|cRXP_WARN_Es inmune a|r |T132155:0|t[Gubia] << !BloodElf Rogue
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano] << BloodElf Hunter
    >>|cRXP_WARN_Busca un grupo para él si es necesario|r << !Hunter !Warlock
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
    .train 8122,3 << Priest
    .train 604,3 << Mage
step << Priest/Mage
    #label AquantionKill
    #optional
    .goto Ghostlands,71.31,14.58
    >>Mata a |cRXP_ENEMY_Aquantion|r
    >>|cRXP_WARN_Tiene salud de nivel élite e inflige daño de escarcha|r
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano] << BloodElf Priest
    >>|cRXP_WARN_Es inmune a|r |T136222:0|t[Torrente Arcano], |T135846:0|t[Descarga de Escarcha], |T135848:0|t[Vigía del pozo Solanian], |cRXP_WARN_y|r |T135843:0|t[Armadura de Escarcha] << BloodElf Mage
    >>|cRXP_WARN_Es inmune a|r |T135846:0|t[Descarga de Escarcha], |T135848:0|t[Vigía del pozo Solanian], |cRXP_WARN_y|r |T135843:0|t[Armadura de Escarcha] << !BloodElf Mage
    .complete 9174,1 --Kill Aquantion (x1)
    .mob Aquantion
step
    #label Aquantion
    .goto Ghostlands,72.29,19.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geranis|r
    .turnin 9174 >> Entrega la misión Derrotar a Aquantion
    .target Geranis Whitemorn
step
    #loop
    .goto Ghostlands,71.99,28.39,0
    .goto Ghostlands,71.99,28.39,30,0
    .goto Ghostlands,72.55,27.63,30,0
    .goto Ghostlands,72.79,26.45,30,0
    .goto Ghostlands,73.42,22.88,30,0
    .goto Ghostlands,73.69,22.23,30,0
    .goto Ghostlands,73.70,21.53,30,0
    .goto Ghostlands,73.51,21.12,30,0
    .goto Ghostlands,73.49,18.45,30,0
    .goto Ghostlands,70.46,17.19,30,0
    .goto Ghostlands,69.58,18.80,30,0
    .goto Ghostlands,70.16,21.99,30,0
    >>Kill |cRXP_ENEMY_Aparecido voraz|r and |cRXP_ENEMY_Aparecido vengativo|r
    .complete 9274,1 --Kill Ravening Apparition (x8)
    .mob +Ravening Apparition
    .complete 9274,2 --Kill Vengeful Apparition (x8)
    .mob +Vengeful Apparition
step
    .goto Ghostlands,69.40,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valanna|r
    .turnin 9143 >> Entrega la misión Encargarse de Zeb'Sora
    .accept 9146 >> Acepta la misión Informar al capitán Helios
    .target Ranger Valanna
step
    #optional
    #completewith SuncrownTurnin
    .destroy 22639 >>|cRXP_WARN_Destruye el restante|r |T133857:0|t[Zeb'Sora Trol Ear] |cRXP_WARN_ya que ya no es necesario|r
step << Mage
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+8440 >>Grind to 8440+/11000xp (NOT TRANSLATED IN :esMX YET)
    .isQuestComplete 9315
    .isQuestComplete 9404
step << Mage
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+9320 >>Grind to 9320+/11000xp (NOT TRANSLATED IN :esMX YET)
    .isQuestNotComplete 9315
    .isQuestComplete 9404
step
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+9280 >>Grind to 9280+/11000xp (NOT TRANSLATED IN :esMX YET)
    .isQuestComplete 9315
    .isQuestNotComplete 9404 << Mage
step
    #xprate <1.5
    #optional
    #loop
	.goto Ghostlands,59.47,12.43,0
	.goto Ghostlands,59.47,12.43,30,0
	.goto Ghostlands,59.83,10.22,30,0
	.goto Ghostlands,58.92,9.19,30,0
	.goto Ghostlands,60.72,9.46,30,0
	.goto Ghostlands,61.74,9.63,30,0
	.goto Ghostlands,62.86,11.04,30,0
	.goto Ghostlands,63.26,9.50,30,0
	.goto Ghostlands,62.76,12.68,30,0
	.goto Ghostlands,63.52,13.39,30,0
	.goto Ghostlands,62.00,14.21,30,0
	.goto Ghostlands,60.70,14.39,30,0
	.goto Ghostlands,60.34,16.13,30,0
	.goto Ghostlands,59.92,13.83,30,0
	.goto Ghostlands,62.86,11.04,30,0
    .xp 13+10160 >>Grind to 10160+/11000xp (NOT TRANSLATED IN :esMX YET)
    .isQuestNotComplete 9315
    .isQuestNotComplete 9404 << Mage
step << Priest/Mage/Warlock/Rogue/Druid/Warrior
    #xprate <1.5 << !Warrior
    #softcore
    #completewith SuncrownTurnin
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << Priest/Mage/Warlock/Rogue/Druid/Warrior
    #hardcore
    #completewith SuncrownTurnin
    .subzone 3488 >> Viaja a Tranquillien
step << !Priest !Mage !Warlock !Rogue !Druid !Warrior
    #softcore
    #xprate <1.5
    #completewith SuncrownTurnin
    .subzone 3488 >> Viaja a Tranquillien
step << !Warrior
    #softcore
    #xprate >1.49
    #completewith SuncrownTurnin
    .subzone 3488 >> Viaja a Tranquillien
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r y el |cRXP_FRIENDLY_Cartel de Se busca|r
    .turnin 9315 >>Entrega la misión Anok'suten
    .turnin 9138 >>Entrega la misión La Aldea Corona del Sol
    .accept 9139 >>Acepta la misión Aldea Bruma Dorada
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >> Acepta la misión SE BUSCAN: Putrenudillos y Luzran
    .goto Ghostlands,48.35,31.67
    .target Arcanist Vandril
    .isQuestComplete 9315
step
    #label SuncrownTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r y el |cRXP_FRIENDLY_Cartel de Se busca|r
    .turnin 9138 >>Entrega la misión La Aldea Corona del Sol
    .accept 9139 >>Acepta la misión Aldea Bruma Dorada
    .goto Ghostlands,46.55,28.38,10,0 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33 << !Priest !Mage !Warlock !Rogue !Druid
    .goto Ghostlands,46.08,28.33,10,0 << Priest/Mage/Warlock/Rogue/Druid
    .goto Ghostlands,46.55,28.38 << Priest/Mage/Warlock/Rogue/Druid
    .accept 9156 >> Acepta la misión SE BUSCAN: Putrenudillos y Luzran
    .goto Ghostlands,48.35,31.67
    .target Arcanist Vandril
step << !Warrior
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    .home >> Establece tu Piedra de hogar en Tranquillien
    .target Innkeeper Kalarin
    .bindlocation 3488
step << Mage/Priest/Warlock
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra las|r |T132562:0|t[Botas de principiante] |cRXP_BUY_de él|r
    .collect 22991,1,9281,1 --Collect Apprentice Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra las|r |T132538:0|t[Botas de caminante de la ciénaga] |cRXP_BUY_y la|r |T135277:0|t[Flamberge de Tranquillien] |cRXP_BUY_de él|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .collect 28164,1,9281,1 << Hunter --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Rogue/Shaman/Hunter/Druid
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra las|r |T132538:0|t[Botas de caminante de la ciénaga] |cRXP_BUY_de él|r
    .collect 22992,1,9281,1 --Collect Bogwalker Boots (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<1
step << Hunter
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T135277:0|t[Flamberge de Tranquillien] |cRXP_BUY_de él|r
    .collect 28164,1,9281,1 << Hunter --Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra las|r |T132535:0|t[Grebas de voluntario] |cRXP_BUY_y la|r |T135277:0|t[Flamberge de Tranquillien] |cRXP_BUY_de él|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemStat 8,LEVEL,<15
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra las|r |T132535:0|t[Grebas de voluntario] |cRXP_BUY_de él|r
    .collect 22993,1,9281,1 --Collect Volunteer's Greaves (1)
    .target Provisioner Vredigar
    .itemStat 8,LEVEL,<15
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T135277:0|t[Flamberge de Tranquillien] |cRXP_BUY_de él|r
    .collect 28164,1,9281,1 --Collect Tranquillien Flamberge (1)
    .target Provisioner Vredigar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Mage/Priest/Warlock
    #optional
    #completewith ManaEssence
    +|cRXP_WARN_Equipa las|r |T132562:0|t[Botas de principiante]
    .use 22991
    .itemcount 22991,1
    .itemStat 8,LEVEL,<15
step << Rogue/Shaman/Hunter
    #optional
    #completewith ManaEssence
    +|cRXP_WARN_Equipa las|r |T132538:0|t[Botas de caminante de la ciénaga]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter
    #optional
    #label Huntertbc1
    #completewith ManaEssence
    +|cRXP_WARN_Equipa las|r |T132538:0|t[Botas de caminante de la ciénaga] |cRXP_WARN_y la|r |T135277:0|t[Flamberge de Tranquillien]
    .use 22992
    .use 28164
    .itemcount 22992,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Hunter
    #optional
    #label Huntertbc2
    #requires Huntertbc1
    #completewith ManaEssence
    +|cRXP_WARN_Equipa las|r |T132538:0|t[Botas de caminante de la ciénaga]
    .use 22992
    .itemcount 22992,1
    .itemStat 8,LEVEL,<15
step << Hunter
    #optional
    #requires Huntertbc2
    #completewith ManaEssence
    +|cRXP_WARN_Equipa la|r |T135277:0|t[Flamberge de Tranquillien]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin/Warrior
    #optional
    #label Paladinwep1
    #completewith ManaEssence
    +|cRXP_WARN_Equipa las|r |T132535:0|t[Grebas de voluntario] |cRXP_WARN_y la|r |T135277:0|t[Flamberge de Tranquillien]
    .use 22993
    .use 28164
    .itemcount 22993,1
    .itemcount 28164,1
    .itemStat 8,LEVEL,<15
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step << Paladin/Warrior
    #optional
    #label Paladinwep2
    #requires Paladinwep1
    #completewith ManaEssence
    +|cRXP_WARN_Equipa las|r |T132535:0|t[Grebas de voluntario]
    .use 22993
    .itemcount 22993,1
    .itemStat 8,LEVEL,<15
step << Paladin/Warrior
    #optional
    #requires Paladinwep2
    #completewith ManaEssence
    +|cRXP_WARN_Equipa la|r |T135277:0|t[Flamberge de Tranquillien]
    .use 28164
    .itemcount 28164,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
step
    #optional
    #completewith ManaEssence
    .abandon 9315 >> Abandona la misión Anok'suten
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzithen|r
    .accept 9149 >> Acepta la misión La costa apestada
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan01
    #completewith ManaEssence
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] |cRXP_WARN_y la|r |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan01
    #completewith ManaEssence
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan01
    #completewith ManaEssence
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzithen|r, |cRXP_FRIENDLY_Rathiel|r, |cRXP_FRIENDLY_Valwyn|r, |cRXP_FRIENDLY_Dama|r, |cRXP_FRIENDLY_Maltendis|r, y |cRXP_FRIENDLY_Darenis|r
    .accept 9149 >> Acepta la misión La costa apestada
    .target +Apothecary Renzithen
    .goto Ghostlands,47.67,34.87
    .accept 9155 >> Acepta la misión Limpiar La Cicatriz Muerta
    .target +Deathstalker Rathiel
    .goto Ghostlands,46.02,33.58
    .accept 9193 >> Acepta la misión Investiga las Catacumbas Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>Acepta la misión Explorando An'daroth
    .target +Dame Auriferous
    .goto Ghostlands,44.88,32.51
    .accept 9199 >> Acepta la misión Juju trol
    .accept 9192 >> Acepta la misión Problemas en las Minas Sondaluz
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>Acepta la misión Al rescate del pasado
    .target +Magister Darenis
    .goto Ghostlands,46.02,31.95
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiel|r, |cRXP_FRIENDLY_Valwyn|r, |cRXP_FRIENDLY_Dama|r, |cRXP_FRIENDLY_Maltendis|r, y |cRXP_FRIENDLY_Darenis|r
    .accept 9155 >> Acepta la misión Limpiar La Cicatriz Muerta
    .target +Deathstalker Rathiel
    .goto Ghostlands,46.02,33.58
    .accept 9193 >> Acepta la misión Investiga las Catacumbas Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .accept 9160 >>Acepta la misión Explorando An'daroth
    .target +Dame Auriferous
    .goto Ghostlands,44.88,32.51
    .accept 9199 >> Acepta la misión Juju trol
    .accept 9192 >> Acepta la misión Problemas en las Minas Sondaluz
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .accept 9150 >>Acepta la misión Al rescate del pasado
    .target +Magister Darenis
    .goto Ghostlands,46.02,31.95
step << Warrior
    #completewith BrillTrain2
    .hs >> Usa tu Piedra de Hogar para ir a Rémol
    .bindlocation 2119,1
    .zoneskip Tirisfal Glades
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <14,1
    .xp >16,1
step << Warrior
    #label BrillTrain2
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 285 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <16,1
step << Warrior
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step << Warrior
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the |cRXP_PICK_Orbe de traslado|r to Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << !Paladin !Shaman !Warrior !Druid !BloodElf/!Warlock
    #xprate <1.5
    #completewith SMTraining2
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << Rogue
    #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
step << Rogue
    #xprate <1.5
    #optional
    .abandon 9491 >> Abandona la misión Avaricia
step << Rogue
    #xprate <1.5
    #completewith RogueTrain2
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Viaja hacia |cRXP_FRIENDLY_Zelanis|r
    .xp <16,1
step << Rogue
    #xprate <1.5
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .train 1758 >>Aprende tus hechizos de clase
    .target Zelanis
    .xp <14,1
    .xp >16,1
step << Rogue
    #xprate <1.5
    #label RogueTrain2
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .accept 10372 >> Acepta la misión Una investigación discreta
    .train 6761 >>Aprende tus hechizos de clase
    .target Zelanis
    .xp <16,1
step << Rogue
    #xprate <1.5
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the |cRXP_PICK_Orbe de traslado|r to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Toma el ascensor para bajar a Entrañas
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    #xprate <1.5
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    #xprate <1.5
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra dos|r |T135343:0|t[Scimitars] |cRXP_BUY_de él|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #completewith Clearing
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    #xprate <1.5
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>Toma el ascensor de vuelta hacia Luna de Plata
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    #xprate <1.5
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the |cRXP_PICK_Orbe de traslado|r to Silvermoon City
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Mage
    #xprate <1.5
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9404 >>Entrega la misión Recientemente vivo
    .train 1460,1
    .target Instructor Antheol
 step << Mage/Priest
     #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
    .train 1460,1
step << !BloodElf Warlock
    #xprate <1.5
    #completewith SMTraining2
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
step << BloodElf Priest/BloodElf Mage
    #xprate <1.5
    .goto Silvermoon City,69.27,77.00,8,0
    .goto Silvermoon City,68.13,74.07,8,0
    .goto Silvermoon City,66.56,73.29,8,0
    .goto Silvermoon City,65.53,72.60,8,0
    .goto Silvermoon City,53.93,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sathren|r
    .turnin 9133 >> Entrega la misión Vuelo a la Ciudad de Lunargenta
    .accept 9134 >> Acepta la misión La maestra del cielo Anochecer
    .target Sathren Azuredawn
step << Priest
    #xprate <1.5
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vynna|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_del AH si es barata|r
    >>|cRXP_WARN_Si todos son demasiado caros, omite este paso|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #xprate <1.5
    #completewith SMTraining2
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Viaja hacia |cRXP_FRIENDLY_Luanga|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Viaja hacia |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    #xprate <1.5
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Luanga|r
    .train 8122 >> Aprende tus hechizos de clase
    .target Lotheolan
	.xp <14,1
	.xp >16,1
step << Priest
    #xprate <1.5
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Luanga|r
    .train 8102 >> Aprende tus hechizos de clase
    .target Lotheolan
	.xp <16,1
step << Mage
    #xprate <1.5
    #optional
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaedana|r
    .train 1460 >> Aprende tus hechizos de clase
    .target Zaedana
	.xp <14,1
	.xp >16,1
step << Mage
    #xprate <1.5
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaedana|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Zaedana
	.xp <16,1
step << !BloodElf Warlock
    #xprate <1.5
    #completewith SMTraining2
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entra en el edificio, luego baja las escaleras
step << !BloodElf Warlock
    #xprate <1.5
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <14,1
step << BloodElf Priest
    #xprate <1.5
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Sal de Lunargenta
step << BloodElf Priest/BloodElf Mage
    #xprate <1.5
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .turnin 9134 >> Entrega la misión La maestra del cielo Anochecer
    .accept 9135 >> Acepta la misión Regresa junto al intendente Lymel
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step << !Paladin !Shaman !Warrior !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5
    #completewith ManaEssence
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #xprate <1.5
    #optional
    #label SMTraining2
step << !Paladin !Shaman !Druid !BloodElf/!Warlock !Paladin !Rogue
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Sal de Lunargenta
    .zoneskip Ghostlands
    .cooldown item,6948,<0 << !Warrior
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << !Paladin !Shaman !Druid !BloodElf/!Warlock !Paladin
    #xprate <1.5 << !Warrior
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Vuela a Tranquillien
    .target Skymistress Gloaming
    .cooldown item,6948,<0 << !Warrior
    .zoneskip Ghostlands
    .itemStat 16,QUALITY,<7 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8 << Rogue
step << Warrior
    .goto Ghostlands,48.34,31.99,8,0
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    .home >> Establece tu Piedra de hogar en Tranquillien
    .target Innkeeper Kalarin
    .bindlocation 3488
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << BloodElf Priest/BloodElf Mage
    .goto Ghostlands,47.34,29.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lymel|r
    .turnin 9135 >> Entrega la misión Regresa junto al Intendente Lymel
    .target Quartermaster Lymel
step
    #completewith SanctumOTM
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>Kill |cRXP_ENEMY_Luzran|r |cRXP_WARN_IF you can find a group to help you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #completewith next
    >>Kill |cRXP_ENEMY_Caníbal ganglioso|r and |cRXP_ENEMY_Hambriento resucitado|r. Loot the |cRXP_ENEMY_Hambriento resucitado|r for their |cRXP_LOOT_Rotting Hearts|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Caníbal ganglioso|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_(increased damage and attack speed) at low health|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Hambriento resucitado|r |cRXP_WARN_cast|r |T132278:0|t[Blood Leech] |cRXP_WARN_(10 damage lifesteal)|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .collect 22641,10,9216,1 --Rotting Hearts (10)
    .disablecheckbox
    .mob Risen Hungerer
    .mob Gangled Cannibal
step
    #label SanctumOTM
    .goto Ghostlands,35.18,32.85,100 >>Viaja hacia el Sagrario de la Luna
    .isOnQuest 9150
step
    #label ManaEssence
    #loop
    .goto Ghostlands,35.18,32.85,0
    .goto Ghostlands,35.18,32.85,40,0
    .goto Ghostlands,34.58,31.04,40,0
    .goto Ghostlands,33.15,30.13,40,0
    .goto Ghostlands,31.39,29.83,40,0
    .goto Ghostlands,30.52,31.32,40,0
    .goto Ghostlands,30.24,33.02,40,0
    .goto Ghostlands,32.08,34.65,40,0
    .goto Ghostlands,32.53,35.72,40,0
    .goto Ghostlands,33.63,36.13,40,0
    .goto Ghostlands,34.11,34.93,40,0
    >>Kill |cRXP_ENEMY_Devorador Arcano|r and |cRXP_ENEMY_Conmutador de maná|r. Loot them for their |cRXP_LOOT_Mana Essence|r
    .complete 9150,1 --Collect Crystallized Mana Essence (x8)
    .mob Arcane Devourer
    .mob Mana Shifter
step
    .goto Ghostlands,33.55,26.55
    >>Despoja la |cRXP_PICK_Box of Suministros|r en la caravana
    .complete 9152,1 --Collect Rathis Tomber's Supplies (x1)
step << !BloodElf/!Rogue
    #completewith Andaroth
    .goto Ghostlands,37.69,20.68,40,0
    >>Kill |cRXP_ENEMY_Araña husaraña|r. Loot them for their |cRXP_LOOT_Patas de araña|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step << BloodElf Rogue
    #completewith KeltusD
    .goto Ghostlands,37.69,20.68,40,0
    >>Kill |cRXP_ENEMY_Araña husaraña|r. Loot them for their |cRXP_LOOT_Patas de araña|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith Andaroth
    >>Mata a los |cRXP_ENEMY_Sentinel Spies|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step << BloodElf Rogue
    #label KeltusD
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keltus|r
    >>|cRXP_WARN_DON'T kill the|r |cRXP_ENEMY_Líder centinela|r
    >>|cRXP_FRIENDLY_Keltus|r |cRXP_WARN_Su phasing puede ser inestable. Si no está allí, entonces nada hacia Canción Eterna Woods y regresa|r
    .turnin 9532 >> Entrega la misión Encuentra a Keltus Hojaoscura
    .accept 9460 >> Acepta la misión Aunando fuerzas
    .target Keltus Darkleaf
step << BloodElf Rogue
    #completewith next
    >>Viaja hacia el |cRXP_PICK_Santuario|r
    .complete 9160,2 --Investigate An'daroth
step << BloodElf Rogue
    #loop
    .goto Ghostlands,37.05,14.03,0
    .goto Ghostlands,37.05,14.03,30,0
    .goto Ghostlands,38.45,13.16,30,0
    .goto Ghostlands,37.33,13.50,30,0
    .goto Ghostlands,35.87,11.73,30,0
    .goto Ghostlands,35.41,11.93,30,0
    .goto Ghostlands,36.33,13.66,30,0
    .goto Ghostlands,35.98,14.48,30,0
    >>|T132320:0|t[Stealth] |cRXP_WARN_and then|r |T133644:0|t[Pick Pocket] |cRXP_WARN_the|r |cRXP_ENEMY_Líder centinela|r |cRXP_WARN_for her|r |cRXP_LOOT_Lacy Handkerchief|r
    >>|cRXP_WARN_Si la atraes, huye y reinicia el combate|r
    .complete 9460,1 --Lacy Handkerchief (x1)
    .mob Sentinel Leader
step
    #label Andaroth
    .goto Ghostlands,36.94,15.73
    >>Viaja hacia el |cRXP_PICK_Santuario|r
    .complete 9160,2 --Investigate An'daroth
step
    #loop
	.goto Ghostlands,38.21,17.44,0
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
    >>Mata a los |cRXP_ENEMY_Sentinel Spies|r
    .complete 9160,1 --Kill Sentinel Spy (x12)
    .mob Sentinel Spy
step
    #xprate <1.5
    #loop
	.goto Ghostlands,38.21,17.44,0
	.goto Ghostlands,38.21,17.44,35,0
	.goto Ghostlands,36.67,17.00,35,0
	.goto Ghostlands,35.87,14.42,35,0
	.goto Ghostlands,34.77,12.01,35,0
	.goto Ghostlands,35.94,11.58,35,0
	.goto Ghostlands,38.51,13.19,35,0
	.goto Ghostlands,37.50,14.67,35,0
    .xp 14+5200 >> Sube hasta 5200+/12300xp
step << BloodElf Rogue
    .goto Ghostlands,32.97,11.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keltus|r
    >>|cRXP_FRIENDLY_Keltus|r |cRXP_WARN_Su phasing puede ser inestable. Si no está allí, entonces nada hacia Canción Eterna Woods y regresa|r
    .turnin 9460 >> Entrega la misión Aunando fuerzas
    .accept 9618 >> Acepta la misión Devuelve los informes
    .target Keltus Darkleaf
step
    #completewith next
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Kill |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #loop
    .goto Ghostlands,29.08,15.17,0
    .goto Ghostlands,29.08,15.17,30,0
    .goto Ghostlands,27.21,12.88,30,0
    .goto Ghostlands,25.83,14.98,30,0
    .goto Ghostlands,24.14,14.29,30,0
    .goto Ghostlands,23.41,16.01,30,0
    .goto Ghostlands,24.71,16.39,30,0
    .goto Ghostlands,26.35,17.43,30,0
    .goto Ghostlands,27.08,15.48,30,0
    >>Kill |cRXP_ENEMY_Fantasma Quel'dorei|r and |cRXP_ENEMY_Ánima Quel'dorei|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T136205:0|t[Evasión] |cRXP_WARN_(Esquiva aumentada) al 50% de salud|r << Rogue/Paladin
    .complete 9139,1 --Kill Quel'dorei Ghost (x6)
    .mob +Quel'dorei Ghost
    .complete 9139,2 --Kill Quel'dorei Wraith (x4)
    .mob +Quel'dorei Wraith
step
    #completewith next
    >>Kill |cRXP_ENEMY_Araña husaraña|r. Loot them for their |cRXP_LOOT_Patas de araña|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    #completewith next
    .goto Ghostlands,18.88,13.73,80 >>Viaja a la Costa
step
    #loop
    .goto Ghostlands,18.88,13.73,0
    .goto Ghostlands,18.88,13.73,40,0
    .goto Ghostlands,18.53,18.37,40,0
    .goto Ghostlands,19.44,20.80,40,0
    .goto Ghostlands,18.99,21.71,40,0
    .goto Ghostlands,19.93,23.83,40,0
    .goto Ghostlands,17.38,27.32,40,0
    .goto Ghostlands,18.16,10.60,40,0
    .goto Ghostlands,18.43,8.30,40,0
    .goto Ghostlands,18.54,6.17,40,0
    >>Kill |cRXP_ENEMY_Malaescama zombi|r and |cRXP_ENEMY_Malaescama|r. Loot them for their |cRXP_LOOT_Plagued Murloc Spines|r
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Malaescama zombi|r's|r |T136066:0|t[Fevered Fatigue] |cRXP_WARN_(reduces Intellect and Spirit by 6 for 10 min)|r << !Rogue !Warrior
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Malaescama|r's|r |T135914:0|t[Decayed Agility] |cRXP_WARN_(reduces Agility by 18 for 5 min)|r  << !Mage !Priest !Warlock
    >>|cRXP_WARN_Muévete fuera de su rango de combate cuerpo a cuerpo para evitarlo|r
    .complete 9149,1 --Collect Plagued Murloc Spine (x6)
    .mob Zombified Grimscale
    .mob Withered Grimscale
step
    #completewith SLurker
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Kill |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #completewith next
    >>Kill |cRXP_ENEMY_Araña husaraña|r. Loot them for their |cRXP_LOOT_Patas de araña|r
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .mob Spindleweb Spider
step
    .goto Ghostlands,27.40,38.73,100 >>Cross the river toward the |cRXP_ENEMY_Rondador husaraña|r
    .isOnQuest 9159
step
    #completewith SLurker
    >>Kill |cRXP_ENEMY_Murciélago brumoso vampírico|r
    >>|cRXP_WARN_Ten cuidado con su|r |T136130:0|t[Toque drenador] |cRXP_WARN_hechizo Robavida|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
    #loop
	.goto Ghostlands,26.17,37.11,0
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
    >>Kill |cRXP_ENEMY_Rondador husaraña|r. Loot them for their |cRXP_LOOT_Patas de araña|r
    >>Ten cuidado con su|cRXP_WARN_ |T136016:0|t[Veneno]|r
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .disablecheckbox
    .mob Spindleweb Lurker
    .itemcount 22644,<5
step
    #label SLurker
    #loop
	.goto Ghostlands,26.17,37.11,0
	.goto Ghostlands,26.17,37.11,40,0
	.goto Ghostlands,24.52,39.78,40,0
	.goto Ghostlands,25.64,42.73,40,0
	.goto Ghostlands,25.18,44.78,40,0
	.goto Ghostlands,27.23,44.19,40,0
	.goto Ghostlands,27.81,42.02,40,0
	.goto Ghostlands,29.30,41.97,40,0
	.goto Ghostlands,31.41,42.20,40,0
	.goto Ghostlands,32.04,43.60,40,0
	.goto Ghostlands,34.11,42.43,40,0
	.goto Ghostlands,35.24,41.73,40,0
	.goto Ghostlands,35.69,38.63,40,0
	.goto Ghostlands,32.27,39.40,40,0
	.goto Ghostlands,29.89,36.61,40,0
    >>Kill |cRXP_ENEMY_Rondador husaraña|r
    >>Ten cuidado con su|cRXP_WARN_ |T136016:0|t[Veneno]|r
    .complete 9159,2 --Kill Spindleweb Lurker (x8)
    .mob Spindleweb Lurker
    .itemcount 22644,5
step
    #completewith next
    >>Kill |cRXP_ENEMY_Gnoll Patanegra|r, |cRXP_ENEMY_Carroñero Patanegra|r, and |cRXP_ENEMY_Chamán Patanegra|r
    >>|cRXP_WARN_No te enfoques en esto todavía|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob +Blackpaw Gnoll
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob +Blackpaw Scavenger
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob +Blackpaw Shaman
step
    .goto Ghostlands,31.44,48.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shatharia|r
    .accept 9207 >> Acepta la misión Muestras de mena de Sondaluz
    .target Apprentice Shatharia
step
    #loop
    .goto Ghostlands,30.72,46.23,0
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    >>Kill |cRXP_ENEMY_Gnoll Patanegra|r, |cRXP_ENEMY_Carroñero Patanegra|r, and |cRXP_ENEMY_Chamán Patanegra|r. Loot them for their |cRXP_LOOT_Underlight Ore|r
    >>|cRXP_WARN_También puedes minar el|r |cRXP_PICK_Mineral Sondaluz|r |cRXP_WARN_de los nodos en las Minas de Sondaluz|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob +Blackpaw Gnoll
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob +Blackpaw Scavenger
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob +Blackpaw Shaman
    .complete 9207,1 --Collect Underlight Ore (x6)
    .skill mining,1
step
    #loop
    .goto Ghostlands,30.72,46.23,0
    .goto Ghostlands,30.72,46.23,30,0
    .goto Ghostlands,30.26,45.12,30,0
    .goto Ghostlands,29.33,44.62,30,0
    .goto Ghostlands,28.56,46.32,30,0
    .goto Ghostlands,27.87,47.13,30,0
    .goto Ghostlands,26.97,47.44,30,0
    .goto Ghostlands,25.76,47.44,30,0
    .goto Ghostlands,25.24,49.18,30,0
    .goto Ghostlands,27.39,50.88,30,0
    .goto Ghostlands,29.01,50.36,30,0
    .goto Ghostlands,29.09,48.09,30,0
    .goto Ghostlands,31.27,48.98,30,0
    .goto Ghostlands,30.07,51.93,30,0
    .goto Ghostlands,28.68,52.86,30,0
    .goto Ghostlands,27.27,52.20,30,0
    .goto Ghostlands,26.85,46.23,30,0
    .goto Ghostlands,29.22,42.42,30,0
    .goto Ghostlands,31.60,44.47,30,0
    >>Kill |cRXP_ENEMY_Gnoll Patanegra|r, |cRXP_ENEMY_Carroñero Patanegra|r, and |cRXP_ENEMY_Chamán Patanegra|r. Loot them for their |cRXP_LOOT_Underlight Ore|r
    .complete 9192,1 --Kill Blackpaw Gnoll (x8)
    .mob +Blackpaw Gnoll
    .complete 9192,2 --Kill Blackpaw Scavenger (x6)
    .mob +Blackpaw Scavenger
    .complete 9192,3 --Kill Blackpaw Shaman (x4)
    .mob +Blackpaw Shaman
    .complete 9207,1 --Collect Underlight Ore (x6)
step
    #completewith Hungerers
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Kill |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #completewith Hungerers
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>Kill |cRXP_ENEMY_Luzran|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #label Hungerers
    #loop
    .goto Ghostlands,37.13,48.38,0
    .goto Ghostlands,37.13,48.38,40,0
    .goto Ghostlands,37.63,45.56,40,0
    .goto Ghostlands,39.64,43.05,40,0
    .goto Ghostlands,37.56,41.68,40,0
    .goto Ghostlands,39.82,39.35,40,0
    .goto Ghostlands,37.78,38.23,40,0
    .goto Ghostlands,39.66,35.69,40,0
    .goto Ghostlands,38.29,33.03,40,0
    .goto Ghostlands,40.23,31.75,40,0
    .goto Ghostlands,38.77,29.82,40,0
    .goto Ghostlands,40.76,28.98,40,0
    >>Kill |cRXP_ENEMY_Caníbal ganglioso|r and |cRXP_ENEMY_Hambriento resucitado|r. Loot |cRXP_ENEMY_Hambriento resucitado|r for their |cRXP_LOOT_Rotting Hearts|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Caníbal ganglioso|r |cRXP_WARN_cast|r |T136224:0|t[Enrage] |cRXP_WARN_(increased damage and attack speed) at low health|r
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Hambriento resucitado|r |cRXP_WARN_cast|r |T132278:0|t[Blood Leech] |cRXP_WARN_(10 damage lifesteal)|r
    >>|cRXP_ENEMY_Caníbal ganglioso|r |cRXP_WARN_and |cRXP_ENEMY_Hambriento resucitado|r share spawns with each other. Kill both to spawn the ones you need|r
    .complete 9155,1 --Kill Risen Hungerer (x10)
    .mob +Risen Hungerer
    .complete 9155,2 --Kill Gangled Cannibal (x10)
    .mob +Gangled Cannibal
    .collect 22641,10,9216,1 --Rotting Hearts (10)
    .disablecheckbox
step
    #completewith TranqVisit3
    .subzone 3488 >> Viaja a Tranquillien
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r, |cRXP_FRIENDLY_Rathis|r, y |cRXP_FRIENDLY_Mouldier|r
    .turnin 9139 >> Entrega la misión Aldea Bruma Dorada
    .target +Arcanist Vandril
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >> Acepta la misión La Aldea Brisaveloz
    .turnin 9152 >> Entrega la misión Los suministros de Sepulturero
    .target +Rathis Tomber
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .accept 9171 >> Acepta la misión Texturas crujientes
    .turnin 9171 >> Entrega la misión Texturas crujientes
    .target +Master Chef Mouldier
    .goto Ghostlands,48.43,30.93
    .itemcount 22644,5
step
    #label TranqVisit3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r y |cRXP_FRIENDLY_Rathis|r
    .turnin 9139 >> Entrega la misión Aldea Bruma Dorada
    .target +Arcanist Vandril
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9140 >> Acepta la misión La Aldea Brisaveloz
    .turnin 9152 >> Entrega la misión Los suministros de Sepulturero
    .target +Rathis Tomber
    .goto Ghostlands,47.14,28.30,10,0
    .goto Ghostlands,47.27,28.59
    .itemcount 22644,<5
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1
step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T132492:0|t[Faja de defensor de Tranquillien] |cRXP_BUY_del vendedor|r
    .collect 28162,1,9281,1 --Collect Tranquillien Defender's Girdle (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Paladin/Warrior
    #optional
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T132492:0|t[Faja de defensor de Tranquillien]
    .use 28162
    .itemcount 28162,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra el|r |T132498:0|t[Cinturón de piel de murciélago] |cRXP_BUY_del vendedor|r
    .collect 28158,1,9281,1 --Collect Batskin Belt (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 6,LEVEL,<17
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith Clearing
    +|cRXP_WARN_Equipa el|r |T132498:0|t[Cinturón de piel de murciélago]
    .use 28158
    .itemcount 28158,1
    .itemStat 6,LEVEL_SHORT,<5
step << Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzithen|r
    .turnin 9149 >> Entrega la misión La costa apestada
    .target Apothecary Renzithen
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan1
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] |cRXP_WARN_y la|r |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan1
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan1
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << !Rogue
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzithen|r
    .turnin 9149 >> Entrega la misión La costa apestada
    .target Apothecary Renzithen
step
    #optional
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiel|r
    .turnin 9155 >> Entrega la misión Limpiar La Cicatriz Muerta
    .turnin 9156 >> Entrega la misión SE BUSCAN: Putrenudillos y Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiel|r
    .turnin 9155 >> Entrega la misión Limpiar La Cicatriz Muerta
    .target Deathstalker Rathiel
step
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dama|r
    .turnin 9160 >> Entrega la misión Explorando An'daroth
    .accept 9163 >> Acepta la misión En territorio ocupado
    .target Dame Auriferous
step
    .goto Ghostlands,44.77,32.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mavren|r
    .accept 9173 >> Acepta la misión Recuperar Aguja Brisaveloz
    .target High Executor Mavren
step
    .goto Ghostlands,44.74,32.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maltendis|r
    .turnin 9192 >> Entrega la misión Problemas en las Minas Sondaluz
    .target Deathstalker Maltendis
step
    #optional
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darenis|r
    .turnin 9150 >> Entrega la misión Al rescate del pasado
    .accept 9151 >> Acepta la misión El Sagrario del Sol
    .target Magister Darenis
    .xp <17,1
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darenis|r
    .turnin 9150 >> Entrega la misión Al rescate del pasado
    .target Magister Darenis
step
    #completewith Clearing
    #optional
    .destroy 22580 >>|cRXP_WARN_Destruir|r |T134137:0|t[Crystallized Mana Essence] |cRXP_WARN_as it's no longer needed for anything|r
step << Druid
	#completewith DruidTrain2
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 783 >> Aprende tus hechizos de clase << wotlk
    .train 8925 >> Aprende tus hechizos de clase << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain2
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
step << !Druid !Shaman !Warrior
    #completewith SMTraining3
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .train 6761,1 << Rogue
    .zoneskip Silvermoon City
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9404 >>Entrega la misión Recientemente vivo
    .train 3140,1
    .target Instructor Antheol
step << !Druid !Shaman !Warrior
    #completewith SMTraining3
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
    .train 6761,1 << Rogue
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de que has entrenado|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_para una misión después|r
    .turnin 9618 >> Entrega la misión Devuelve los informes << BloodElf
    .accept 10372 >> Acepta la misión Una investigación discreta
    .train 1804 >>Aprende tus hechizos de clase
    .target Zelanis
    .train 1804,1
    .xp <16,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    .turnin 9618 >> Entrega la misión Devuelve los informes << BloodElf
    .target Zelanis
step << Rogue
    #completewith Scimitars
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the |cRXP_PICK_Orbe de traslado|r to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Scimitars
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Toma el ascensor para bajar a Entrañas
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra dos|r |T135343:0|t[Scimitars] |cRXP_BUY_de él|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #label Scimitars
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #completewith Clearing
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>Toma el ascensor de vuelta hacia Luna de Plata
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the |cRXP_PICK_Orb of Translocation|r to Silvermoon City (NOT TRANSLATED IN :esMX YET)
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest/Mage
    #completewith SMTraining3
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Viaja hacia |cRXP_FRIENDLY_Luanga|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Viaja hacia |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Luanga|r
    .train 8102 >> Aprende tus hechizos de clase
    .target Lotheolan
	.xp <16,1
	.xp >18,1
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Luanga|r
    .train 970 >> Aprende tus hechizos de clase
    .target Lotheolan
    .train 8102,1
	.xp <18,1
step << Mage
    #optional
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaedana|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Zaedana
	.xp <16,1
	.xp >18,1
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaedana|r
    .train 3140 >> Aprende tus hechizos de clase
    .target Zaedana
	.xp <18,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Viaja hacia |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r
    .itemcount 3026,1
step << Hunter
    #completewith SMTraining3
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r
    .itemcount 3026,<1
step << Hunter
    #optional
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zandine|r
    .train 13795 >>Aprende tus hechizos de clase << tbc
    .train 5118 >>Aprende tus hechizos de clase << wotlk
    .target Zandine
	.xp <16,1
	.xp >18,1
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zandine|r
    .train 14318 >> Aprende tus hechizos de clase
    .target Zandine
	.xp <18,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Warlock
    #completewith SMTraining3
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entra en el edificio, luego baja las escaleras
step << Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 1014 >> Aprende tus hechizos de clase
    .target Talionia
    .xp <18,1
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Viaja hacia |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9678 >>Entrega la misión La primera prueba
    .accept 9681 >>Acepta la misión Un estudio sobre el poder
    .target Knight-Lord Bloodvalor
step << Paladin
    #optional
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bachi|r
    .train 647 >>Aprende tus hechizos de clase
    .target Champion Bachi
    .xp <14,1
    .xp >16,1
step << Paladin
    .goto Silvermoon City,91.74,35.35,12,0
    .goto Silvermoon City,92.20,37.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bachi|r
    .train 7294 >>Aprende tus hechizos de clase << tbc
    .train 62124 >>Aprende tus hechizos de clase << wotlk
    .target Champion Bachi
	.xp <16,1
step << Paladin
    .goto Silvermoon City,92.62,37.53,4,0
    .goto Silvermoon City,92.06,36.23
    >>|cRXP_WARN_Salta al agujero detrás|r |cRXP_FRIENDLY_Bachi|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Astalor|r
    .turnin 9681 >>Entrega la misión Un estudio sobre el poder
    .accept 9684 >>Acepta la misión Reclamando la Luz << wotlk
    .accept 63866 >>Acepta la misión Reclamando la Luz << tbc
    .target Magister Astalor Bloodsworn
-- This changes in sunwell plataeu, but im not sure if we'd have a phase system instead of just tbc
step << Paladin wotlk
    .goto Silvermoon City,92.61,36.80
    >>Usa la |T134867:0|t[Vasija refulgente] en un |cRXP_FRIENDLY_Magister|r
    .complete 9684,1 --Collect Filled Shimmering Vessel
    .target Blood Elf Magister
    .use 24157
step << Paladin tbc
    .goto Silvermoon City,92.61,36.80
    >>Usa la |T134867:0|t[Vasija refulgente] en |cRXP_FRIENDLY_M'uru|r
    .complete 63866,1 --Collect Filled Shimmering Vessel
    .target M'uru
    .use 185956
step << Paladin
    #completewith next
    .goto Silvermoon City,90.82,37.55,12,0
    .goto Silvermoon City,87.41,36.85,12,0
    .goto Silvermoon City,87.30,31.73,10,0
    .goto Silvermoon City,87.11,29.92,8,0
    .goto Silvermoon City,86.36,30.72,8,0
    .goto Silvermoon City,89.00,36.95,10,0
    .goto Silvermoon City,89.26,35.20,8 >>Corre hacia arriba de vuelta a |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9684 >>Entrega la misión Reclamando la Luz << wotlk
    .turnin 63866 >>Entrega la misión Reclamando la Luz << tbc
    .accept 9685 >>Acepta la misión Redimir a los muertos
    .target Knight-Lord Bloodvalor
step << Paladin
    #optional
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 647 >>Aprende tus hechizos de clase
	.target Ithelis
	.target Osselan
    .xp <14,1
    .xp >16,1
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 7294 >>Aprende tus hechizos de clase << tbc
    .train 62124 >>Aprende tus hechizos de clase << wotlk
	.target Ithelis
	.target Osselan
	.xp <16,1
 step << Paladin
    #completewith next
    .goto Silvermoon City,82.04,58.31,8,0
    .goto Silvermoon City,80.90,57.53,8 >>Entra en la Posada
step << Paladin
    #completewith next
    .goto Silvermoon City,79.61,56.25,8,0
    .goto Silvermoon City,80.09,55.56,8,0
    .goto Silvermoon City,80.61,56.51,8,0
    .goto Silvermoon City,80.16,60.24,8 >>Viaja hacia |cRXP_FRIENDLY_Stillblade|r
step << Paladin
    .goto Silvermoon City,80.16,60.24
    >>Usa la |T134723:0|t[Vasija refulgente llena] en |cRXP_FRIENDLY_Stillblade|r
    .complete 9685,1 --Resurrect Sangrias Stillblade (1)
    .target Blood Knight Stillblade
    .use 24184
step
    #optional
    #label SMTraining3
step << Druid
	#completewith DruidTrain1
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
	.xp <14,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 782 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <14,1
    .xp >16,1
step << Druid
    #label DruidTrain1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
step << !Shaman !Warrior !Rogue
    #completewith Clearing
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0 << !Druid
    .bindlocation 3488,1
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,56.52,49.83
    .zone Eversong Woods >> Sal de Lunargenta
    .zoneskip Ghostlands
    .cooldown item,6948,<0
step << !Shaman !Warrior !Druid
    #completewith Clearing
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Vuela a Tranquillien
    .target Skymistress Gloaming
    .cooldown item,6948,<0
    .zoneskip Ghostlands
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    .turnin 10372 >> Entrega la misión Una investigación discreta
    .accept 9491 >> Acepta la misión Avaricia
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    .accept 9491 >> Acepta la misión Avaricia
    .target Eralan
    .isQuestTurnedIn 10372
step
    #loop
    .goto Ghostlands,46.71,40.79,0
    .goto Ghostlands,46.71,40.79,40,0
    .goto Ghostlands,46.90,42.95,40,0
    .goto Ghostlands,45.96,43.99,40,0
    .goto Ghostlands,44.32,47.56,40,0
    .goto Ghostlands,45.56,52.25,40,0
    .goto Ghostlands,48.41,53.36,40,0
    .goto Ghostlands,48.63,56.38,40,0
    .goto Ghostlands,52.05,51.17,40,0
    .goto Ghostlands,51.57,46.46,40,0
    .goto Ghostlands,52.85,44.28,40,0
    >>Kill |cRXP_ENEMY_Murciélago brumoso vampírico|r
    >>|cRXP_WARN_Ten cuidado con su|r |T136130:0|t[Toque drenador] |cRXP_WARN_hechizo Robavida|r
    .complete 9159,1 --Kill Vampiric Mistbat (x10)
    .mob Vampiric Mistbat
step
    #completewith next
    .subzone 3506 >>Viaja a Andilien Estate
step
    #label Clearing
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vor'el|r
    .accept 9281 >> Acepta la misión Despejando el camino
    .target Apprentice Vor'el
step
    #xprate <1.5
    #completewith SpireT
    >>Kill |cRXP_ENEMY_Husaraña superior|r and |cRXP_ENEMY_Devastador garrafantasma|r. Loot |cRXP_ENEMY_Husaraña superior|r for their |cRXP_LOOT_Patas de araña|r
    >>|cRXP_WARN_Ten cuidado, estos enemigos pueden ser difíciles debido a la diferencia de nivel|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #xprate <1.5
    #completewith SpireT
    >>Kill |cRXP_ENEMY_Husaraña superior|r and |cRXP_ENEMY_Devastador garrafantasma|r
    >>|cRXP_WARN_Ten cuidado, estos enemigos pueden ser difíciles debido a la diferencia de nivel|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #xprate >1.49
    #completewith SpireT
    >>Kill |cRXP_ENEMY_Husaraña superior|r and |cRXP_ENEMY_Devastador garrafantasma|r. Loot |cRXP_ENEMY_Husaraña superior|r for their |cRXP_LOOT_Patas de araña|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #xprate >1.49
    #completewith SpireT
    >>Kill |cRXP_ENEMY_Husaraña superior|r and |cRXP_ENEMY_Devastador garrafantasma|r
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #completewith SpireT01
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>Kill |cRXP_ENEMY_Luzran|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,2 --Luzran's Head (1)
    .mob Luzran
step
    #xprate >1.49
    #completewith SpireT01
    >>Kill |cRXP_ENEMY_Acechador resucitado|r. Loot them for their |cRXP_LOOT_Rotting Hearts|r
    >>Kill |cRXP_ENEMY_Centinela Terroespina|r and |cRXP_ENEMY_Hechicero Jaulamuerta|r. Loot them for their |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Centinela Terroespina|r cast |r |T132357:0|t[Shield Bash] |cRXP_WARN_(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #label SpireT01
    .goto Ghostlands,34.06,57.57,80 >> Cruza la Cicatriz Muerta
    .isOnQuest 9173
step
    #completewith SpireT
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Kill |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #label SpireT
    .goto Ghostlands,17.21,58.09,80 >> Viaja a Aguja Brisaveloz
    .isOnQuest 9173
step
    #completewith next
    >>Loot |cRXP_ENEMY_Forestal caída|r and |cRXP_ENEMY_Acólito de la Ciudad de la Muerte|r for |T133303:0|t[|cRXP_LOOT_The Lady's Necklace|r]
    >>Usa la |T133303:0|t[|cRXP_WARN_The Lady's Collar|cRXP_LOOT_] |rpara comenzar la misión|r
    .collect 22597,1,9175 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Acepta la misión El collar de Sylvanas
    .use 22597
step
    #loop
    .goto Ghostlands,17.21,58.09,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    >>Kill |cRXP_ENEMY_Forestal caída|r and |cRXP_ENEMY_Acólito de la Ciudad de la Muerte|r
    >>|cRXP_WARN_Ten cuidado, estos enemigos son difíciles|r
    .complete 9173,1 --Deatholme Acolyte (8)
    .mob +Deatholme Acolyte
    .complete 9173,2 --Fallen Ranger (10)
    .mob +Fallen Ranger
step
    #loop
    .goto Ghostlands,17.21,58.09,0
    .goto Ghostlands,17.21,58.09,40,0
    .goto Ghostlands,15.17,56.58,30,0
    .goto Ghostlands,12.45,56.89,15,0
    .goto Ghostlands,13.26,54.85,20,0
    .goto Ghostlands,11.58,55.88,15,0
    .goto Ghostlands,11.29,57.15,20,0
    .goto Ghostlands,11.93,57.05,15,0
    .goto Ghostlands,12.13,58.44,15,0
    .goto Ghostlands,13.69,58.59,20,0
    .goto Ghostlands,12.66,58.98,15,0
    .goto Ghostlands,12.24,57.47,15,0
    >>Kill |cRXP_ENEMY_Forestal caída|r and |cRXP_ENEMY_Acólito de la Ciudad de la Muerte|r. Loot them for |T133303:0|t[|cRXP_LOOT_The Lady's Necklace|r]
    >>Usa la |T133303:0|t[|cRXP_WARN_The Lady's Collar|cRXP_LOOT_] |rpara comenzar la misión|r
    .collect 22597,1,9175,1 --Collect The Lady's Necklace (x1)
    .accept 9175 >> Acepta la misión El collar de Sylvanas
    .use 22597
step
    #completewith next
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Kill |cRXP_ENEMY_Knucklerot|r |cRXP_WARN_IF you can find a group to carry you|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .mob Knucklerot
step
    #loop
    .goto Ghostlands,20.37,48.76,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    .goto Ghostlands,21.10,47.74,30,0
    .goto Ghostlands,19.58,45.15,45,0
    .goto Ghostlands,21.99,43.70,30,0
    .goto Ghostlands,20.01,40.51,30,0
    .goto Ghostlands,18.38,42.74,30,0
    .goto Ghostlands,15.89,42.54,30,0
    .goto Ghostlands,16.93,46.43,30,0
    .goto Ghostlands,16.46,48.48,30,0
    .goto Ghostlands,18.20,53.81,30,0
    .goto Ghostlands,16.38,52.92,30,0
    .goto Ghostlands,17.45,48.83,30,0
    .goto Ghostlands,20.23,47.83,30,0
    .goto Ghostlands,20.37,48.76,30,0
    >>Kill |cRXP_ENEMY_Buscador fantasmal|r and |cRXP_ENEMY_Destripador Alapétrea|r. Loot them for their |cRXP_LOOT_Phantasmal Subtance|r and |cRXP_LOOT_Gargoyle Fragments|r
    .complete 9140,1 --Collect Phantasmal Substance (x6)
    .mob +Phantasmal Seeker
    .complete 9140,2 --Collect Gargoyle Fragment (x4)
    .mob +Stonewing Slayer
step
    #completewith next
    .cast 7840 >> |cRXP_WARN_Usa la|r |T134754:0|t[Poción de velocidad de nado] |cRXP_WARN_en el agua para nadar más rápido|r
    .use 6372
    .itemcount 6372,1
step
    >>Despoja los |cRXP_PICK_Planos de los elfos de la noche|r en el suelo, dentro de las tiendas o en la parte superior de las mesas
    .complete 9163,2 --Collect Night Elf Plans: An'owyn (x1)
    .goto Ghostlands,12.80,25.09,8,0
    .goto Ghostlands,12.54,24.81,8,0
    .goto Ghostlands,12.85,23.93
    .complete 9163,1 --Collect Night Elf Plans: An'daroth (x1)
    .goto Ghostlands,14.77,26.61,8,0
    .goto Ghostlands,13.70,26.83,8,0
    .goto Ghostlands,12.53,26.51
step
    #completewith next
    .goto Ghostlands,10.13,23.77,12,0
    .goto Ghostlands,10.12,23.04,12,0
    .goto Ghostlands,10.44,22.58,12 >>Corre hacia la parte superior del barco
step
    .goto Ghostlands,10.44,22.58
    >>Despoja los |cRXP_PICK_Planos de los elfos de la noche|r en la mesa
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Cazadora darnassiana|r cast|r |T132282:0|t[Strike] |cRXP_WARN_(Instant cast attack dealing double damage)|r
    .complete 9163,3 --Collect Night Elf Plans: Scrying on the Sin'dorei (x1)
step << Priest/Druid/Rogue/Paladin
    #xprate <1.5
    #loop
	.goto Ghostlands,14.71,26.66,0
	.goto Ghostlands,14.71,26.66,30,0
	.goto Ghostlands,13.06,26.15,30,0
	.goto Ghostlands,11.63,26.63,30,0
	.goto Ghostlands,12.51,24.81,30,0
	.goto Ghostlands,9.43,23.77,30,0
	.goto Ghostlands,10.47,22.51,30,0
    .xp 15+10600 >> Sube hasta 10600+/13600
step
    #optional
    #softcore
    #completewith WindrunnerV
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .train 6761,1 << Rogue
    .train 2120,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8102,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step
    #completewith WindrunnerV
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .cooldown item,6948,>0
    .train 6761,3 << Rogue
    .train 2120,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8102,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith WindrunnerV
    .subzone 3488 >>Viaja a Tranquillien
    .cooldown item,6948,<0
    .train 6761,3 << Rogue
    .train 2120,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8102,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
step
    #completewith WindrunnerV
    .cast 7840 >> |cRXP_WARN_Usa la|r |T134754:0|t[Poción de velocidad de nado] |cRXP_WARN_en el agua para regresar nadando más rápido|r
    .use 6372
    .itemcount 6372,1
    .cooldown item,6948,<0
    .train 6761,3 << Rogue
    .train 2120,3 << Mage
    .train 5118,3 << Hunter wotlk
    .train 13795,3 << Hunter tbc
    .train 8102,3 << Priest
    .train 6222,3 << Warlock
    .train 647,3 << Paladin tbc
    .train 62124,3 << Paladin wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con  |cRXP_FRIENDLY_Mouldier|r y |cRXP_FRIENDLY_Vandril|r
    .accept 9171 >> Acepta la misión Texturas crujientes
    .turnin 9171 >> Entrega la misión Texturas crujientes
    .target +Master Chef Mouldier
    .goto Ghostlands,48.43,30.93
    .turnin 9140 >> Entrega la misión La Aldea Brisaveloz
    .target +Arcanist Vandril
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,>0
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r y |cRXP_FRIENDLY_Mouldier|r
    .turnin 9140 >> Entrega la misión La Aldea Brisaveloz
    .target +Arcanist Vandril
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    .accept 9171 >> Acepta la misión Texturas crujientes
    .turnin 9171 >> Entrega la misión Texturas crujientes
    .target +Master Chef Mouldier
    .goto Ghostlands,48.43,30.93
    .itemcount 22644,5
    .isQuestAvailable 9171
    .cooldown item,6948,<0
step
    #label WindrunnerV
    .goto Ghostlands,46.08,28.33,10,0
    .goto Ghostlands,46.55,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vandril|r
    .turnin 9140 >> Entrega la misión La Aldea Brisaveloz
    .target Arcanist Vandril
step
    .goto Ghostlands,46.02,31.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darenis|r
    .accept 9151 >> Acepta la misión El Sagrario del Sol
    .target Magister Darenis
    .xp <17,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dama|r y |cRXP_FRIENDLY_Mavren|r
    .turnin 9163 >> Entrega la misión En territorio ocupado
    .accept 9166 >> Acepta la misión Entregando los planes a An'telas
    .target +Dame Auriferous
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.88,32.51
    .turnin 9173 >> Entrega la misión Recuperar Aguja Brisaveloz
    .turnin 9175 >> Entrega la misión El collar de Sylvanas
    .accept 9177 >> Acepta la misión Viaje a Entrañas << !BloodElf
    .accept 9180 >> Acepta la misión Viaje a Entrañas << BloodElf
    .target +High Executor Mavren
    .goto Ghostlands,44.77,32.44
step
    #optional
    .xp 16 >>Mata enemigos hasta subir al nivel 16
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .train 6761,1 << Rogue
    .train 2120,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8102,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
    .zoneskip Silvermoon City
step << Rogue/Mage/Hunter/Priest/Warlock/Paladin
    #completewith SMTraining4
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
    .train 6761,1 << Rogue
    .train 2120,1 << Mage
    .train 5118,1 << Hunter wotlk
    .train 13795,1 << Hunter tbc
    .train 8102,1 << Priest
    .train 6222,1 << Warlock
    .train 647,1 << Paladin tbc
    .train 62124,1 << Paladin wotlk
step << Rogue
    #optional
    .abandon 9491 >> Abandona la misión Avaricia
    .isQuestAvailable 10372
step << Rogue
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Viaja hacia |cRXP_FRIENDLY_Zelanis|r
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de que has entrenado|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_para una misión después|r
    .turnin 9618 >> Entrega la misión Devuelve los informes << BloodElf
    .accept 10372 >> Acepta la misión Una investigación discreta
    .train 1804 >>Aprende tus hechizos de clase
    .target Zelanis
    .train 1804,1
step << Rogue
    #completewith Scimitars2
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the |cRXP_PICK_Orbe de traslado|r to Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Scimitars2
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,60.07,47.70,10 >>Toma el ascensor para bajar a Entrañas
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead Rogue
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra dos|r |T135343:0|t[Scimitars] |cRXP_BUY_de él|r
    .collect 2027,2,9144,1 --Scimitar (2)
    .target Louis Warren
    .itemcount 2027,<2
    .money <0.7632 << Troll/Orc
    .money <0.7250 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #label Scimitars2
    .goto Undercity,61.15,40.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis|r
    >>|cRXP_BUY_Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,9144,1 --Scimitar (1)
    .target Louis Warren
    .itemcount 2027,<1
    .money <0.3816 << Troll/Orc
    .money <0.3625 << Undead/BloodElf
    .xp <12,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    #completewith next
    .goto Undercity,60.07,47.70,10,0
    .goto Undercity,60.52,44.02,10,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,59.81,11.33,20,0 >>Toma el ascensor de vuelta hacia Luna de Plata
    .cooldown item,6948,<0
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Rogue
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Take the |cRXP_PICK_Orb of Translocation|r to Silvermoon City (NOT TRANSLATED IN :esMX YET)
    .cooldown item,6948,<0
    .zoneskip Eversong Woods
    .zoneskip Ghostlands
step << Priest/Mage
    #completewith SMTraining4
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Viaja hacia |cRXP_FRIENDLY_Luanga|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Viaja hacia |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    #optional
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Luanga|r
    .train 8102 >> Aprende tus hechizos de clase
    .target Lotheolan
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaedana|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Zaedana
step << Priest
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vynna|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_del AH si es barata|r
    >>|cRXP_WARN_Si todos son demasiado caros, omite este paso|r
    .collect 11288,1,9281,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .zoneskip Silvermoon City,1
step << Hunter
    #completewith next
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,82.20,28.06,15 >>Viaja hacia |cRXP_FRIENDLY_Celana|r
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r
step << Hunter
    #completewith SMTraining4
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r
    .itemcount 3026,<1
step << Hunter
    #optional
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zandine|r
    .train 13795 >>Aprende tus hechizos de clase << tbc
    .train 5118 >>Aprende tus hechizos de clase << wotlk
    .target Zandine
	.xp <16,1
step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9181,1 --Reinforced Bow (1)
    .target Celana
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
    .zoneskip Silvermoon City,1
step << Warlock
    #completewith SMTraining4
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entra en el edificio, luego baja las escaleras
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torian|r
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio de sacrificio] |cRXP_BUY_y el|r |T133738:0|t[Grimorio de Consumir Sombras] |cRXP_BUY_del vendedor|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .target Torian
    .train 20381,1
step << Warlock TBC
    #optional
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torian|r
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio de sacrificio] |cRXP_BUY_del vendedor|r
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .target Torian
    .train 20381,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de sacrificio]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
step << Warlock
    #optional
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Talionia
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Viaja hacia |cRXP_FRIENDLY_Bloodvalor|r
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sangrevalor|r
    .turnin 9685 >>Entrega la misión Redimir a los muertos
    .target Knight-Lord Bloodvalor
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 7294 >>Aprende tus hechizos de clase << tbc
    .train 62124 >>Aprende tus hechizos de clase << wotlk
	.target Ithelis
	.target Osselan
step
    #optional
    #label SMTraining4
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Ahora deberías buscar un grupo para Sima Ígnea
    .dungeon RFC
step
    #completewith UCPortRFC
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .dungeon RFC
step
    #completewith UCPortRFC
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
    .dungeon RFC
step
    #label UCPortRFC
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the |cRXP_PICK_Orbe de traslado|r to Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Tirisfal Glades
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .dungeon RFC
step
    #completewith RFCPowerPickup
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .dungeon RFC
step
    #completewith next
    .goto Undercity,51.99,64.54,10,0
    .goto Undercity,46.25,73.22,10,0
    .goto Undercity,45.32,78.32,10,0
    .goto Undercity,46.26,83.91,10,0
    .goto Undercity,49.03,87.92,10,0
    .goto Undercity,52.94,89.60,10 >>Entra en el Barrio Real
    .dungeon RFC
step
    #label RFCPowerPickup
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Acepta la misión Poder destructivo
    .target Varimathras
    .zoneskip Durotar
    .zoneskip Orgrimmar
    .dungeon RFC
step
    #completewith Durotar
    .zone Tirisfal Glades >>Toma el ascensor de regreso al piso superior y sal de las Entrañas
    .dungeon RFC
step
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Sube a la Torre del Zepelín
    .zone Durotar >>Toma el zepelín hacia Durotar
    .zoneskip Orgrimmar
    .dungeon RFC
step
    #completewith EnterRFC
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
    .dungeon RFC
step << !Troll !Orc
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >>Consigue la ruta de vuelo de Orgrimmar
    .target Doras
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :esMX YET)
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>Sal de Orgrimmar
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Mata a los |cRXP_ENEMY_Filo Ardiente|r en Roca del Cráneo hasta que obtengas una |cRXP_LOOT_Insignia de Teniente|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :esMX YET)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .isOnQuest 5726
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 5761 >>Acepta la misión Matar a la bestia
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isOnQuest 5727
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entrega la misión Enemigos ocultos
    .accept 5728 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5727
    .dungeon RFC
step
    #optional
    #label OrgPickups
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5728 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5727
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437,2 >> Entra por el portal de la instancia a Sima Ígnea. Entra en la mazmorra
    .dungeon RFC
step
    >>|cRXP_WARN_Si es posible, haz que los miembros del grupo compartan las siguientes misiones|r
    >>|cRXP_WARN_Skip this step if nobody has these quests|r (NOT TRANSLATED IN :esMX YET)
    .accept 5722 >>Acepta la misión Buscando la cartera perdida
    .accept 5723 >>Acepta la misión Midiendo fuerzas con el enemigo
    .dungeon RFC
step
    #completewith next
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Entrega la misión Buscando la cartera perdida
    .accept 5724 >>Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>Mata a |cRXP_ENEMY_Taragaman el Hambriento|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>Mata a |cRXP_ENEMY_Bazzalan|r y a |cRXP_ENEMY_Jergosh el Convocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5761 >>Entrega la misión Matar a la bestia
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Entrega la misión Enemigos ocultos
    .accept 5729 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5729 >>Entrega la misión Enemigos ocultos
    .accept 5730 >>Acepta la misión Enemigos ocultos
    .target Neeru Fireblade
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step << Druid
	#completewith DruidTrain3
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 783 >> Aprende tus hechizos de clase << wotlk
    .train 8925 >> Aprende tus hechizos de clase << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #label DruidTrain3
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
step
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .cooldown item,6948,>0
    .zoneskip Ghostlands
    .bindlocation 3488,1
    .zoneskip Ghostlands
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,30,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (30)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.3000 << Priest/Mage/Warlock/Druid/Paladin
    .money <0.2000 << !Priest !Mage !Warlock !Druid !Paladin
    .money <0.4000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 4538,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (20)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,10,9281,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .xp <15,1
    .xp >30,1

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name 16-20 Tierras Fantasma
#defaultfor !Shaman
#version 7
#subgroup RestedXP Horda 1-30
#next 20-23 Stonetalon/The Barrens

step << Paladin/Warrior
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T132492:0|t[Faja de defensor de Tranquillien] |cRXP_BUY_del vendedor|r
    .collect 28162,1,9276,1 --Collect Tranquillien Defender's Girdle (1)
    .target Provisioner Vredigar
    .itemStat 7,LEVEL,<11
    .reputation 922,honored,<0,1
step << Paladin/Warrior
    #optional
    #completewith Enclave2
    +|cRXP_WARN_Equipa la|r |T132492:0|t[Faja de defensor de Tranquillien]
    .use 28162
    .itemcount 28162,1
    .itemStat 7,LEVEL,<11
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra el|r |T132498:0|t[Cinturón de piel de murciélago] |cRXP_BUY_del vendedor|r
    .collect 28158,1,9276,1 --Collect Batskin Belt (1)
    .target Provisioner Vredigar
    .reputation 922,honored,<0,1
    .itemStat 7,LEVEL,<11
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith Enclave2
    +|cRXP_WARN_Equipa el|r |T132498:0|t[Cinturón de piel de murciélago]
    .use 28158
    .itemcount 28158,1
    .itemStat 7,LEVEL,<11
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T132660:0|t[Toga de boticario] |cRXP_BUY_de él|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .reputation 922,revered,<0,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra el|r |T132716:0|t[Jubón de Mortacechador] |cRXP_BUY_de él|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .reputation 922,revered,<0,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +|cRXP_WARN_Equipa la|r |T132660:0|t[Toga de boticario]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith StoneOL
    +|cRXP_WARN_Equipa el|r |T132716:0|t[Jubón de Mortacechador]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    .turnin 10372 >> Entrega la misión Una investigación discreta
    .accept 9491 >> Acepta la misión Avaricia
    .target Eralan
    .isOnQuest 10372
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    .accept 9491 >> Acepta la misión Avaricia
    .target Eralan
    .isQuestTurnedIn 10372
step << Rogue wotlk
    #completewith Enclave2
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra|r el |T132273:0|t[Veneno instantáneo] |cRXP_BUY_de ella|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan3
    #completewith Enclave2
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] y |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan3
    #completewith Enclave2
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan3
    #completewith Enclave2
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .subzone 3493 >>Viaja a Sagrario del Sol
step
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quallestis|r y |cRXP_FRIENDLY_Kaendris|r
    .turnin 9207 >> Entrega la misión Muestras de mena de Sondaluz
    .target +Magister Quallestis
    .goto Ghostlands,54.95,48.49
    .accept 9282 >> Acepta la misión El Enclave del Errante
    .target +Magister Kaendris
    .goto Ghostlands,55.07,48.83
step
    #optional
    #completewith Enclave2
    .destroy 22634 >>|cRXP_WARN_Destruir|r |T134575:0|t[Underlight Ore] |cRXP_WARN_as it's no longer needed for anything|r
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Sube las escaleras
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Idonis|r
    .turnin 9151 >> Entrega la misión El Sagrario del Sol
    .accept 9220 >> Acepta la misión Guerra a la Ciudad de la Muerte
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Idonis|r
    .accept 9220 >> Acepta la misión Guerra a la Ciudad de la Muerte
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith next
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,57.04,45.01,40,0
    .goto Ghostlands,60.07,42.43,40,0
    .goto Ghostlands,60.29,35.63,40 >>Viaja hacia |cRXP_FRIENDLY_Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylastor|r
    .turnin 9166 >> Entrega la misión Entregando los planes a An'telas
    .accept 9169 >> Acepta la misión Desactivando An'owyn
    .target Magister Sylastor
step
    #completewith Enclave2
    .subzone 3496 >>Viaja a Enclave del Errante
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narina|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_y|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_de ella|r
    .collect 3026,1,9276,1 --Reinforced Bow (1)
    .collect 2515,2000,9276,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.4101 << BloodElf
    .money <0.4312 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narina|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Arco reforzado] |cRXP_BUY_de ella|r
    .collect 3026,1,9276,1 --Reinforced Bow (1)
    .target Narina
    .money <0.3621 << BloodElf
    .money <0.3812 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.7
step << Hunter
    .goto Ghostlands,72.13,32.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narina|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a esta vendedora|r
    .collect 2515,2000,9276,1 << Hunter --Sharp Arrow (2000)
    .target Narina
    .money <0.0480 << BloodElf
    .money <0.0500 << Troll/Orc
step
    #label Enclave2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sedina|r, |cRXP_FRIENDLY_Solanna|r, |cRXP_FRIENDLY_Krenn'an|r y |cRXP_FRIENDLY_Helios|r
    .turnin 9159 >> Entrega la misión Control de plagas
    .target +Farstrider Sedina
    .goto Ghostlands,72.50,32.14
    .accept 9276 >> Acepta la misión Ataque a Zeb'Tela
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .turnin 9274 >>Entrega la misión Los espíritus de los ahogados
    .target +Ranger Krenn'an
    .goto Ghostlands,72.21,29.78
    .turnin 9146 >> Entrega la misión Informar al capitán Helios
    .accept 9214 >>Acepta la misión Armas Sombrapino
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
step
    #optional
    .abandon 9274 >> Abandona la misión Los espíritus de los ahogados
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>Sube la rampa oriental
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Venustus|r
    .accept 9275 >> Acepta la misión Un toque de especias
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>Sube la rampa occidental
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vynna|r
    .turnin 9282 >> Entrega la misión El Enclave del Errante
    .accept 9161 >> Acepta la misión La sombra del traidor
    .target Ranger Vynna
step
    #completewith TrollR1
    >>Kill |cRXP_ENEMY_Rebanacabezas momificado|r and |cRXP_ENEMY_Oráculo Sombrapino|r. Loot them for their |cRXP_LOOT_Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,68.08,29.39,50,0
    .goto Ghostlands,66.24,28.55,12 >> Entra en la Cripta
    .isOnQuest 9199
step << Rogue
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>|T136058:0|t[Fuerza la cerradura] en los |cRXP_PICK_Burial Chests|r en el suelo dentro de la Cripta. Despoja para obtener la |cRXP_LOOT_Oro Band|r
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    .skill lockpicking,18 >> Sube tu habilidad |T136058:0|t[Forzar cerraduras] al nivel 18
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
    .skill lockpicking,18,1
step << !Rogue
    #completewith next
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,62.91,30.75,12,0
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    .complete 9193,1,6 --Mummified Troll Remains Burned (x10)
step
    .goto Ghostlands,62.91,31.77
    >>Corre hacia la sala Fogata
    .complete 9193,2 --Investigate the Amani Catacombs
step
    #label TrollR1
    #loop
	.goto Ghostlands,62.60,31.00,0
	.goto Ghostlands,62.60,31.00,12,0
	.goto Ghostlands,62.41,31.34,12,0
	.goto Ghostlands,62.32,31.81,12,0
	.goto Ghostlands,62.41,32.23,12,0
	.goto Ghostlands,62.63,32.56,12,0
	.goto Ghostlands,63.22,32.55,12,0
	.goto Ghostlands,63.44,32.18,12,0
	.goto Ghostlands,63.50,31.74,12,0
	.goto Ghostlands,63.43,31.29,12,0
	.goto Ghostlands,63.21,30.98,12,0
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    >>|cRXP_WARN_NO hables con|r |cRXP_FRIENDLY_Lilatha|r |cRXP_WARN_todavía|r
    >>|cRXP_WARN_Revisa la sala principal si la sala Fogata no tiene restos|r
    .complete 9193,1,8 --Mummified Troll Remains Burned (x10)
step
    #loop
    .goto Ghostlands,63.35,29.57,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    >>Kill |cRXP_ENEMY_Rebanacabezas momificado|r and |cRXP_ENEMY_Oráculo Sombrapino|r. Loot them for their |cRXP_LOOT_Troll Juju|r
    .complete 9199,1,6 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
    .isOnQuest 9199
step
    .goto Ghostlands,62.93,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lilatha|r para comenzar la escolta
    .accept 9212,1 >> Acepta la misión Huida de las catacumbas
    .target Ranger Lilatha
step
    #completewith TrollR
    >>Kill |cRXP_ENEMY_Mummmified Headhunters|r and |cRXP_ENEMY_Oráculo Sombrapino|r. Loot them for their |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #label PittedG
    #completewith Lilatha
    >>|T136058:0|t[Forzar cerradura] los |cRXP_PICK_Burial Chests|r en el suelo dentro de la Cripta. Despójalos para obtener la |cRXP_LOOT_Pitted Oro Band|r
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    >>|cRXP_WARN_Asegúrate de terminar esto antes de salir de las Catacumbas|r
    .skill lockpicking,20 >> |T136058:0|tSube tu habilidad Forzar cerraduras al nivel 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Rogue
    #requires PittedG
    #completewith Lilatha
    >>|T136058:0|t[Forzar cerradura] |cRXP_WARN_las|r |cRXP_PICK_Burial Chests|r |cRXP_WARN_en el suelo dentro de la Cripta mientras esperas a|r |cRXP_FRIENDLY_Lilatha|r|cRXP_WARN_. Estos pueden contener Comida, Pociones, y Cuchillos de lanzamiento|r
step << !Rogue
    #completewith Lilatha
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    >>|cRXP_WARN_Asegúrate de terminar esto antes de salir de las Catacumbas|r
    .complete 9193,1 --Collect Mummified Troll Remains Burned (x10)
step << Paladin/Druid/Priest
    #completewith Lilatha
    .cast 19834 >>Potencia a |cRXP_FRIENDLY_Lilatha|r con |T135906:0|t[Bendición de poderío] << Paladin
    .cast 5232 >>Potencia a |cRXP_FRIENDLY_Lilatha|r con |T136078:0|t[Marca de lo Salvaje] << Druid
    .cast 1244 >>Potencia a |cRXP_FRIENDLY_Lilatha|r con |T135987:0|t[Palabra de poder: entereza] << Priest
    .target Ranger Lilatha
step
    #label Lilatha
    >>|cRXP_WARN_Escolta|r |cRXP_FRIENDLY_Lilatha|r
    >>|cRXP_WARN_A |cRXP_ENEMY_Oráculo Sombrapino|r and a |cRXP_ENEMY_Rebanacabezas momificado|r will spawn on |cRXP_FRIENDLY_Lilatha|r about 60 yards after leaving the Catacombs|r
    .goto Ghostlands,67.93,28.98,40,0
    .goto Ghostlands,71.09,32.01,40,0
    .goto Ghostlands,72.24,30.10
    .complete 9212,1 --Escort Ranger Lilatha back to the Farstrider Enclave
    .target Ranger Lilatha
step << Rogue
    #label TrollR
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>|T136058:0|t[Forzar cerradura] los |cRXP_PICK_Burial Chests|r en el suelo dentro de la Cripta. Despójalos para obtener la |cRXP_LOOT_Pitted Oro Band|r
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    .skill lockpicking,20 >> |T136058:0|tSube tu habilidad Forzar cerraduras al nivel 20
    .complete 9491,1 --Pitted Gold Band (1)
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step << !Rogue
    #label TrollR
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>Haz clic en los |cRXP_PICK_Mummified Trol Remains|r en el suelo para quemarlos
    .complete 9193,1 --Mummified Troll Remains Burned (x10)
step
    #loop
    .goto Ghostlands,65.89,28.58,0
    .goto Ghostlands,65.89,28.58,15,0
    .goto Ghostlands,63.64,28.64,15,0
    .goto Ghostlands,63.35,29.57,15,0
    .goto Ghostlands,62.40,29.46,15,0
    .goto Ghostlands,62.71,27.83,15,0
    .goto Ghostlands,61.68,28.58,15,0
    .goto Ghostlands,61.69,27.50,15,0
    .goto Ghostlands,61.84,29.43,15,0
    .goto Ghostlands,61.15,30.86,15,0
    .goto Ghostlands,59.31,30.79,15,0
    .goto Ghostlands,59.31,27.71,15,0
    .goto Ghostlands,61.68,28.58,15,0
    >>Kill |cRXP_ENEMY_Rebanacabezas momificado|r and |cRXP_ENEMY_Oráculo Sombrapino|r. Loot them for their |cRXP_LOOT_Troll Juju|r
    .complete 9199,1 --Collect Troll Juju (x8)
    .mob Mummified Headhunter
    .mob Shadowpine Oracle
step << Rogue
    #optional
    #completewith SadT
    +|cRXP_WARN_Equipa el|r |T135427:0|t[Cuchillo arrojadizo grande]
    .use 25874
    .itemcount 25874,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.0 << wotlk
step
    .goto Ghostlands,72.37,29.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helios|r
    .turnin 9212 >> Entrega la misión Huida de las catacumbas
    .target Captain Helios
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de sacrificio] y el |T133738:0|t[Grimorio de Consumir Sombras]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de sacrificio]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de Consumir Sombras]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Rogue
    #completewith SadT
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valwyn|r y |cRXP_FRIENDLY_Maltendis|r
    .turnin 9193 >> Entrega la misión Investiga las Catacumbas Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Entrega la misión Juju trol
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra|r el |T132273:0|t[Veneno instantáneo] |cRXP_BUY_de ella|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    #label SadT
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    .turnin 9491 >>Entrega la misión Avaricia
    .accept 10548 >>Acepta la misión La triste verdad
    .target Eralan
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    .accept 10548 >>Acepta la misión La triste verdad
    .target Eralan
    .isQuestTurnedIn 9491
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan4
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] |cRXP_WARN_y la|r |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan4
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan4
    #completewith Clearing
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .goto Ghostlands,78.82,19.81,15,0
    .goto Ghostlands,80.04,20.58,10,0
    .goto Ghostlands,80.27,19.82,10,0
    .goto Ghostlands,79.88,18.97,10,0
    .goto Ghostlands,79.63,18.58,10,0
    .goto Ghostlands,79.63,17.57,10 >>Ve al piso superior del edificio
step
    .goto Ghostlands,79.63,17.57
    >>Click the |cRXP_PICK_Libro|r on the ground
    .turnin 9161 >> Entrega la misión La sombra del traidor
    .accept 9162 >> Acepta la misión Huellas del pasado
step << Rogue
    #completewith next
    >>|T136058:0|t[Forzar cerradura] Abre los |cRXP_PICK_Primitive Chests|r en el suelo cerca de las ruinas. Despoja la |cRXP_LOOT_Archaeologist's Tamaño reducido Cabeza|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #loop
    .goto Ghostlands,74.73,43.27,0
    .goto Ghostlands,76.95,34.45,40,0
    .goto Ghostlands,79.55,35.99,40,0
    .goto Ghostlands,81.57,39.31,40,0
    .goto Ghostlands,78.58,38.63,40,0
    .goto Ghostlands,75.89,38.65,40,0
    .goto Ghostlands,77.00,42.39,40,0
    .goto Ghostlands,77.04,44.69,40,0
    .goto Ghostlands,75.12,45.29,40,0
    .goto Ghostlands,74.73,43.27,40,0
    >>Kill |cRXP_ENEMY_Taumaturgo umbrío Sombrapino|r and |cRXP_ENEMY_Rebanacabezas Sombrapino|r. Loot them for their |cRXP_LOOT_Shadowcaster Maces|r and |cRXP_LOOT_Headhunter Axes|r
    .complete 9276,1 --Kill Shadowpine Shadowcaster (x8)
    .mob +Shadowpine Shadowcaster
    .complete 9276,2 --Kill Shadowpine Headhunter (x8)
    .mob +Shadowpine Headhunter
    .complete 9214,2 --Collect Shadowcaster Mace (x3)
    .mob +Shadowpine Shadowcaster
    .complete 9214,1 --Collect Headhunter Axe (x3)
    .mob +Shadowpine Headhunter
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << Paladin
    .collect 1205,20,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (20)
    .collect 3770,20,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (20)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .isOnQuest 9276
    .money <0.2000 << !Paladin
    .money <0.3000 << Paladin
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,72.29,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Heron|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133970:0|t[Mutton Chops] |cRXP_BUY_del vendedor|r << Paladin
    .collect 1205,10,9281,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 3770,10,9281,1 << !Priest !Mage !Warlock !Druid !Paladin --Mutton Chop (10)
    .collect 3770,10,9281,1 << Paladin --Mutton Chop (10)
    .target Heron Skygaze
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .isOnQuest 9276
    .xp <15,1
    .xp >30,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solanna|r
    .turnin 9276 >> Entrega la misión Ataque a Zeb'Tela
    .accept 9277 >> Acepta la misión Asalto a Zeb'Nowa
    .goto Ghostlands,72.33,31.24
    .target Farstrider Solanna
step
    #completewith next
    .goto Ghostlands,71.88,30.11,10,0
    .goto Ghostlands,71.74,30.47,10,0
    .goto Ghostlands,71.41,31.28,10,0
    .goto Ghostlands,71.19,32.34,10,0
    .goto Ghostlands,71.78,32.63,8 >>Sube la rampa occidental
step
    .goto Ghostlands,71.96,32.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vynna|r
    .turnin 9162 >> Entrega la misión Huellas del pasado
    .accept 9172 >> Acepta la misión Informa al magister Kaendris
    .target Ranger Vynna
step << Rogue
    #completewith KelGash
    >>|T136058:0|t[Forzar cerradura] Abre los |cRXP_PICK_Primitive Chests|r en el suelo. Despoja la |cRXP_LOOT_Archaeologist's Tamaño reducido Cabeza|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #completewith KelGash
    .goto Ghostlands,69.63,50.08,50,0
    .goto Ghostlands,69.64,51.43,50,0
    .goto Ghostlands,69.63,52.41,50,0
    .goto Ghostlands,67.54,50.89,50,0
    .goto Ghostlands,65.73,53.82,50,0
    .goto Ghostlands,68.41,54.61,50,0
    >>Kill |cRXP_ENEMY_Señor de felinos Sombrapino|r and |cRXP_ENEMY_Aojador Sombrapino|r. Loot them for their |cRXP_LOOT_Catlord Claws|r and |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob +Shadowpine Catlord
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob +Shadowpine Hexxer
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob +Shadowpine Catlord
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob +Shadowpine Hexxer
step
    .goto Ghostlands,67.60,57.98,12,0
    .goto Ghostlands,68.25,57.78
    >>Haz clic en el |cRXP_PICK_Fresh Pez Rack|r
    .complete 9275,3 --Poison the Fresh Fish Rack (x1)
step
    .goto Ghostlands,65.11,66.74
    >>Haz clic en el |cRXP_PICK_Raw Carne Rack|r
    .complete 9275,1 --Poison the Raw Meat Rack (x1)
step
    .goto Ghostlands,63.04,74.99
    >>Haz clic en el |cRXP_PICK_Smoked Carne Rack|r
    .complete 9275,2 --Poison the Smoked Meat Rack (x1)
step
    #completewith KelGash
    #loop
	.goto Ghostlands,61.16,75.58,0
	.goto Ghostlands,61.16,75.58,50,0
	.goto Ghostlands,60.28,73.66,50,0
	.goto Ghostlands,61.68,71.27,50,0
	.goto Ghostlands,61.81,71.16,50,0
	.goto Ghostlands,61.46,68.82,50,0
	.goto Ghostlands,64.27,73.63,50,0
	.goto Ghostlands,64.34,73.03,50,0
	.goto Ghostlands,61.46,73.38,50,0
	.goto Ghostlands,64.22,73.82,50,0
	.goto Ghostlands,63.93,73.70,50,0
	.goto Ghostlands,63.90,72.99,50,0
	.goto Ghostlands,64.87,70.28,50,0
	.goto Ghostlands,65.31,70.32,50,0
	.goto Ghostlands,64.70,67.70,50,0
	.goto Ghostlands,65.42,66.39,50,0
	.goto Ghostlands,64.66,64.07,50,0
    .xp 18 >> Mata enemigos hasta subir al nivel 18
    >>|cRXP_WARN_Hitting 18 is needed in order to solo kill |cRXP_ENEMY_Kel'gash the Wicked|r. You can skip this if you can find a group instead|r (NOT TRANSLATED IN :esMX YET)
step
    #completewith next
    .goto Ghostlands,65.29,79.31,12,0
    .goto Ghostlands,65.77,79.73,8,0
    .goto Ghostlands,65.93,80.68,8,0
    .goto Ghostlands,65.59,80.72,8 >> Sube las escaleras
step
    #label KelGash
    .goto Ghostlands,65.29,79.46
    >>Kill |cRXP_ENEMY_Kel'gash the Wicked|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Dodge |cRXP_ENEMY_Kel'gash the Wicked|r's|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_and|r |T136121:0|t[Shrink] |cRXP_WARN_by LoSing (Line of Sighting) him around the pillar so he cancels each spell. Make sure you have your cooldowns available|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Busca un grupo para él si es necesario|r << !Hunter !Warlock
    .complete 9215,1 --Collect Head of Kel'gash the Wicked (x1)
    .mob Kel'gash the Wicked
    .use 858
    .use 929
    .isOnQuest 9215
step << Rogue
    #completewith next
    .goto Ghostlands,69.63,50.08,40,0
    .goto Ghostlands,69.64,51.43,40,0
    .goto Ghostlands,69.63,52.41,40,0
    .goto Ghostlands,67.54,50.89,40,0
    .goto Ghostlands,65.73,53.82,40,0
    .goto Ghostlands,68.41,54.61,40,0
    >>Kill |cRXP_ENEMY_Señor de felinos Sombrapino|r and |cRXP_ENEMY_Aojador Sombrapino|r. Loot them for their |cRXP_LOOT_Catlord Claws|r and |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob +Shadowpine Catlord
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob +Shadowpine Hexxer
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob +Shadowpine Catlord
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob +Shadowpine Hexxer
step << Rogue
    #loop
    .goto Ghostlands,61.16,75.58,0
    .goto Ghostlands,61.16,75.58,10,0
    .goto Ghostlands,60.28,73.66,10,0
    .goto Ghostlands,61.68,71.27,10,0
    .goto Ghostlands,61.81,71.16,10,0
    .goto Ghostlands,61.46,68.82,10,0
    .goto Ghostlands,64.27,73.63,10,0
    .goto Ghostlands,64.34,73.03,8,0
    .goto Ghostlands,61.46,73.38,10,0
    .goto Ghostlands,64.22,73.82,8,0
    .goto Ghostlands,63.93,73.70,8,0
    .goto Ghostlands,63.90,72.99,10,0
    .goto Ghostlands,64.87,70.28,10,0
    .goto Ghostlands,65.31,70.32,10,0
    .goto Ghostlands,64.70,67.70,10,0
    .goto Ghostlands,65.42,66.39,10,0
    .goto Ghostlands,64.66,64.07,10,0
    >>|T136058:0|t[Forzar cerradura] Abre los |cRXP_PICK_Primitive Chests|r en el suelo cerca de las ruinas. Despoja la |cRXP_LOOT_Archaeologist's Tamaño reducido Cabeza|r
    .complete 10548,1 --Archaeologist's Shrunken Head (1)
step
    #loop
    .goto Ghostlands,61.23,75.22,0
    .goto Ghostlands,61.23,75.22,40,0
    .goto Ghostlands,61.50,71.88,40,0
    .goto Ghostlands,61.76,67.88,40,0
    .goto Ghostlands,63.70,64.30,40,0
    .goto Ghostlands,65.33,66.10,40,0
    .goto Ghostlands,64.67,67.30,40,0
    .goto Ghostlands,65.10,70.20,40,0
    .goto Ghostlands,63.84,73.07,40,0
    .goto Ghostlands,63.04,74.16,40,0
    .goto Ghostlands,64.51,77.99,40,0
    >>Kill |cRXP_ENEMY_Señor de felinos Sombrapino|r and |cRXP_ENEMY_Aojador Sombrapino|r. Loot them for their |cRXP_LOOT_Catlord Claws|r and |cRXP_LOOT_Hexxer Staves|r
    .complete 9277,1 --Kill Shadowpine Catlord (x10)
    .mob +Shadowpine Catlord
    .complete 9277,2 --Kill Shadowpine Hexxer (x10)
    .mob +Shadowpine Hexxer
    .complete 9214,3 --Collect Catlord Claws (x3)
    .mob +Shadowpine Catlord
    .complete 9214,4 --Collect Hexxer Stave (x3)
    .mob +Shadowpine Hexxer
step
    #loop
	.goto Ghostlands,57.70,67.55,0
	.goto Ghostlands,57.70,67.55,30,0
	.goto Ghostlands,58.19,67.07,30,0
	.goto Ghostlands,58.89,65.55,30,0
	.goto Ghostlands,58.37,62.88,30,0
	.goto Ghostlands,57.24,63.00,30,0
	.goto Ghostlands,56.35,65.01,30,0
	.goto Ghostlands,56.49,68.12,30,0
    >>Kill |cRXP_ENEMY_Infiltrada centinela|r. Loot them for the |cRXP_LOOT_Controlling Orb|r
    .collect 23191,1,9169,1 --Collect Crystal Controlling Orb (x1)
    .mob Sentinel Infiltrator
step
    .goto Ghostlands,58.18,65.14
    >>Haz clic en el |cRXP_PICK_Moon Cristal|r
    .complete 9169,1 --Collect Night Elf Moon Crystal Deactivated (x1)
step
    #completewith Enclave4
    .subzone 3496 >>Viaja a Enclave del Errante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solanna|r y |cRXP_FRIENDLY_Helios|r
    .turnin 9277 >> Entrega la misión Asalto a Zeb'Nowa
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >> Entrega la misión Armas Sombrapino
    .turnin 9215 >> Entrega la misión ¡Tráeme la cabeza de Kel'gash!
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
    .isQuestComplete 9215
step
    #label Enclave4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solanna|r y |cRXP_FRIENDLY_Helios|r
    .turnin 9277 >> Entrega la misión Asalto a Zeb'Nowa
    .target +Farstrider Solanna
    .goto Ghostlands,72.33,31.24
    .turnin 9214 >> Entrega la misión Armas Sombrapino
    .target +Captain Helios
    .goto Ghostlands,72.37,29.64
step
    #optional
    .abandon 9215 >> Abandona la misión ¡Tráeme la cabeza de Kel'gash!
step << Paladin/Rogue/Warrior
    #optional
    #completewith StoneOL
    +|cRXP_WARN_Equipa la|r |T135275:0|t[Espada bien hecha]
    .use 23410
    .itemcount 23410,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.2
step
    #completewith next
    .goto Ghostlands,72.80,30.17,10,0
    .goto Ghostlands,73.07,30.67,10,0
    .goto Ghostlands,73.06,31.36,10,0
    .goto Ghostlands,72.81,31.56,8 >>Sube la rampa oriental
step
    .goto Ghostlands,72.61,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Venustus|r
    .turnin 9275 >> Entrega la misión Un toque de especias
    .target Apothecary Venustus
step
    #completewith next
    .goto Ghostlands,65.22,38.14,15,0
    .goto Ghostlands,63.85,38.10,15,0
    .goto Ghostlands,60.29,35.63,40 >>Viaja hacia |cRXP_FRIENDLY_Sylastor|r
step
    .goto Ghostlands,60.29,35.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylastor|r
    .turnin 9169 >> Entrega la misión Desactivando An'owyn
    .target Magister Sylastor
step << !Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,45.17,32.37,50 >> Viaja a Tranquillien
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue
    #completewith Truth
    .goto Ghostlands,56.64,45.14,40,0
    .goto Ghostlands,54.68,41.88,20,0
    .goto Ghostlands,51.07,38.21,20,0
    .goto Ghostlands,48.58,35.52,20,0
    .goto Ghostlands,47.67,34.87,40 >> Viaja a Tranquillien
    .isQuestAvailable 9151
step << Rogue wotlk
    #completewith Truth
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra|r el |T132273:0|t[Veneno instantáneo] |cRXP_BUY_de ella|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .vendor >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .vendor >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .vendor >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
    .isQuestAvailable 9151
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .target Eralan
    .isQuestAvailable 9151
step << Rogue
    #optional
    #label Eralan5
    #completewith Truth
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] |cRXP_WARN_y la|r |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan5
    #completewith Truth
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan5
    #completewith Truth
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darenis|r, |cRXP_FRIENDLY_Valwyn|r, y |cRXP_FRIENDLY_Maltendis|r
    .accept 9151 >> Acepta la misión El Sagrario del Sol
    .target +Magister Darenis
    .goto Ghostlands,46.02,31.95
    .turnin 9193 >> Entrega la misión Investiga las Catacumbas Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Entrega la misión Juju trol
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #label Truth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valwyn|r y |cRXP_FRIENDLY_Maltendis|r
    .turnin 9193 >> Entrega la misión Investiga las Catacumbas Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Entrega la misión Juju trol
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Paladin wotlk
    #completewith next
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .xp <20,1
    .zoneskip Silvermoon City
step << Paladin wotlk
    #completewith SMTraining44
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
    .xp <20,1
step << Paladin wotlk
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Viaja hacia |cRXP_FRIENDLY_Bloodvalor|r
    .xp <20,1
step << Paladin wotlk
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bloodvalor|r
    .turnin 9685 >>Entrega la misión Redimir a los muertos
    .target Knight-Lord Bloodvalor
    .xp <20,1
step << Paladin wotlk
    #label SMTraining44
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 34769 >>Aprende |T136103:0|t[Invocar caballo de guerra]
	.target Ithelis
	.target Osselan
    .xp <20,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de sacrificio] y el |T133738:0|t[Grimorio de Consumir Sombras]
    .collect 16351,1,9220,1 --Collect Grimoire of Sacrifice (x1)
    .collect 16357,1,9220,1 --Collect Grimoire of Consume Shadows (x1)
    .use 16351
    .use 16357
    .itemcount 16351,1
    .itemcount 16357,1
    .train 20381,1
    .train 17767,1
    .xp <18,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de sacrificio]
    .use 16351
    .itemcount 16351,1
    .train 20381,1
    .xp <16,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio de Consumir Sombras]
    .use 16357
    .itemcount 16357,1
    .train 17767,1
    .xp <18,1
step << Druid
	#completewith DruidTrain5
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 783 >> Aprende tus hechizos de clase << wotlk
    .train 8925 >> Aprende tus hechizos de clase << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrain5
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << Druid/Paladin wotlk
    #completewith ReportMK
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .zoneskip Ghostlands
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << Paladin wotlk
    #completewith ReportMK
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra la|r |T136103:0|t[Caballo de guerra thalassiano] |cRXP_WARN_a tus barras de acción|r
    .cast 34769 >> Monta tu |T136103:0|t[Caballo de guerra thalassiano]
    .train 34769,3
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T132660:0|t[Toga de boticario] |cRXP_BUY_de él|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra el|r |T132716:0|t[Jubón de Mortacechador] |cRXP_BUY_de él|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +|cRXP_WARN_Equipa la|r |T132660:0|t[Toga de boticario]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step << Rogue/Hunter/Druid/Shaman
    #optional
    #completewith StoneOL
    +|cRXP_WARN_Equipa el|r |T132716:0|t[Jubón de Mortacechador]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
    .isQuestAvailable 9151 << !Paladin/!wotlk
step
    #completewith next
    .subzone 3493 >>Viaja a Sagrario del Sol
step
    #label ReportMK
    .goto Ghostlands,54.84,49.30,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaendris|r
    .turnin 9172 >> Entrega la misión Informa al magister Kaendris
    .accept 9176 >> Acepta la misión Los zigurats gemelos
    .goto Ghostlands,55.07,48.83
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Sube las escaleras
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Idonis|r
    .turnin 9151 >> Entrega la misión El Sagrario del Sol
    .accept 9220 >> Acepta la misión Guerra a la Ciudad de la Muerte
    .target Magister Idonis
    .isOnQuest 9151
step
    .goto Ghostlands,54.87,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Idonis|r
    .accept 9220 >> Acepta la misión Guerra a la Ciudad de la Muerte
    .target Magister Idonis
    .isQuestTurnedIn 9151
step
    #completewith Hearts
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    >>Kill |cRXP_ENEMY_Knucklerot|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Evadir|r |cRXP_ENEMY_Knucklerot|r|cRXP_WARN_'s |T136016:0|t[Corrosive Poison] by interrupting it with|r |T135963:0|t[Hammer of Justice] << Paladin
    >>|cRXP_WARN_Evadir|r |cRXP_ENEMY_Knucklerot|r|cRXP_WARN_'s |T136016:0|t[Corrosive Poison] by interrupting it with|r |T132219:0|t[Kick] << Rogue
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] (NOT TRANSLATED IN :esMX YET) << Warlock/Priest
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] (NOT TRANSLATED IN :esMX YET) << Mage
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] (NOT TRANSLATED IN :esMX YET) << Druid
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] (NOT TRANSLATED IN :esMX YET) << Shaman
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] (NOT TRANSLATED IN :esMX YET) << Warrior
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
step
    #completewith Deatholme1
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    >>Kill |cRXP_ENEMY_Luzran|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Be careful,|r |cRXP_ENEMY_Luzran|r casts|r |T132338:0|t[Cleave] |cRXP_WARN_and|r |T132939:0|t[Knock] |cRXP_WARN_(knocks you into the air)|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] (NOT TRANSLATED IN :esMX YET) << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] (NOT TRANSLATED IN :esMX YET) << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] (NOT TRANSLATED IN :esMX YET) << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] (NOT TRANSLATED IN :esMX YET) << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] (NOT TRANSLATED IN :esMX YET) << Warrior
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #completewith next
    .goto Ghostlands,40.57,48.56,12,0
    .goto Ghostlands,40.42,49.40,10 >>Entra en el Ziggurat
step
    .goto Ghostlands,40.37,49.75
    >>Loot the |cRXP_PICK_Worn Chest|r inside for the |cRXP_LOOT_Piedra|r
    .complete 9176,1 --Collect Stone of Flame (x1)
step
    #completewith next
    .goto Ghostlands,34.34,48.77,12,0
    .goto Ghostlands,34.31,48.03,10 >>Entra en el Ziggurat
step
    #label StoneOL
    .goto Ghostlands,34.30,47.67
    >>Loot the |cRXP_PICK_Worn Chest|r inside for the |cRXP_LOOT_Piedra|r
    .complete 9176,2 --Collect Stone of Light (x1)
step
    #loop
    .goto Ghostlands,33.22,59.97,0
    .goto Ghostlands,33.22,59.97,60,0
    .goto Ghostlands,27.93,61.91,60,0
    .goto Ghostlands,22.57,60.97,60,0
    .goto Ghostlands,18.75,62.27,60,0
    >>Kill |cRXP_ENEMY_Husaraña superior|r and |cRXP_ENEMY_Devastador garrafantasma|r. Loot |cRXP_ENEMY_Husaraña superior|r for their |cRXP_LOOT_Patas de araña|r
    >>|cRXP_WARN_Ten cuidado, estos enemigos pueden ser difíciles debido a la diferencia de nivel|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .collect 22644,5,9171,1 --Collect Crunchy Spider Leg (x5)
    .isQuestAvailable 9171
step
    #loop
    .goto Ghostlands,33.22,59.97,0
    .goto Ghostlands,33.22,59.97,60,0
    .goto Ghostlands,27.93,61.91,60,0
    .goto Ghostlands,22.57,60.97,60,0
    .goto Ghostlands,18.75,62.27,60,0
    >>Kill |cRXP_ENEMY_Husaraña superior|r and |cRXP_ENEMY_Devastador garrafantasma|r
    >>|cRXP_WARN_Ten cuidado, estos enemigos pueden ser difíciles debido a la diferencia de nivel|r << Rogue
    .complete 9281,1 --Kill Greater Spindleweb (x10)
    .mob +Greater Spindleweb
    .complete 9281,2 --Kill Ghostclaw Ravager (x10)
    .mob +Ghostclaw Ravager
    .isQuestTurnedIn 9171
step
    #label Hearts
    #completewith next
    >>Kill |cRXP_ENEMY_Acechador resucitado|r. Loot them for their |cRXP_LOOT_Rotting Hearts|r
    >>Kill |cRXP_ENEMY_Centinela Terroespina|r and |cRXP_ENEMY_Hechicero Jaulamuerta|r. Loot them for their |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Centinela Terroespina|r cast |r |T132357:0|t[Shield Bash] |cRXP_WARN_(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #label Deatholme1
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >> Corre hacia Deatholme
    .isOnQuest 9220
step << Paladin/Druid/Shaman
    #loop
    .goto Ghostlands,36.41,87.05,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    >>Kill |cRXP_ENEMY_Eyes of Dar'Khan|r, |cRXP_ENEMY_Centurión Nerubis|r, and |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T135949:0|t[Purify] |cRXP_WARN_to remove it|r (NOT TRANSLATED IN :esMX YET) << Paladin
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T136067:0|t[Cure Poison] |cRXP_WARN_to remove it|r (NOT TRANSLATED IN :esMX YET) << Druid
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable). Cast|r |T136067:0|t[Cure Toxins] |cRXP_WARN_to remove it|r (NOT TRANSLATED IN :esMX YET) << Shaman
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .mob +Eye of Dar'Khan
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .mob +Nerubis Centurion
    .complete 9220,3 --Kill Wailer (x6)
    .mob +Wailer
    .train 1152,3 << Paladin
    .train 8946,3 << Druid
    .train 526,3 << Shaman
step
    #optional << Paladin/Druid/Shaman
    #loop
    .goto Ghostlands,36.41,87.05,0
    .goto Ghostlands,31.66,74.11,40,0
    .goto Ghostlands,31.53,76.48,40,0
    .goto Ghostlands,32.66,77.91,40,0
    .goto Ghostlands,37.19,75.45,40,0
    .goto Ghostlands,37.18,77.49,40,0
    .goto Ghostlands,38.66,76.98,40,0
    .goto Ghostlands,39.61,79.82,40,0
    .goto Ghostlands,36.41,87.05,40,0
    >>Kill |cRXP_ENEMY_Eyes of Dar'Khan|r, |cRXP_ENEMY_Centurión Nerubis|r, and |cRXP_ENEMY_Wailers|r
    >>|cRXP_WARN_Be careful of the|r |cRXP_ENEMY_Nerubis Centurions|r's |T136067:0|t[Deadly Poison] |cRXP_WARN_as it deals 31 damage every 10 seconds (stackable)|r (NOT TRANSLATED IN :esMX YET)
    .complete 9220,1 --Kill Eye of Dar'Khan (x5)
    .mob +Eye of Dar'Khan
    .complete 9220,2 --Kill Nerubis Centurion (x6)
    .mob +Nerubis Centurion
    .complete 9220,3 --Kill Wailer (x6)
    .mob +Wailer
step
    #completewith RDraught
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step
    #completewith RDraught
    .subzone 3488 >>Viaja a Tranquillien
    .cooldown item,6948,<0
step
    .goto Ghostlands,48.91,32.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalarin|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock/Druid
    >>|cRXP_BUY_Compra|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_de él|r << !Priest !Mage !Warlock !Druid !Paladin
    >>|cRXP_BUY_Compra|r |T132796:0|t[Melón Jugo] |cRXP_BUY_y|r |T133978:0|t[Snapvine Watermelon] |cRXP_BUY_a él|r << Paladin
    .collect 1205,20,9170,1 << Priest/Mage/Warlock/Druid/Paladin --Melon Juice (10)
    .collect 4538,20,9170,1 << !Priest !Mage !Warlock !Druid !Paladin --Snapvine Watermelon (10)
    .collect 4538,20,9170,1 << Paladin --Snapvine Watermelon (10)
    .target Innkeeper Kalarin
    .money <0.1000 << !Paladin
    .money <0.2000 << Paladin
    .cooldown item,6948,>0
    .xp <15,1
    .xp >30,1
step
    .goto Ghostlands,48.43,30.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mouldier|r
    .accept 9171 >> Acepta la misión Texturas crujientes
    .turnin 9171 >> Entrega la misión Texturas crujientes
    .target Master Chef Mouldier
    .itemcount 22644,5
    .isQuestAvailable 9171
    .addquestitem 22644,9171
step
    #completewith Aminel
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >> Sube las escaleras
step
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acepta la misión Corazones putrefactos
    .turnin 9216 >>Entrega la misión Corazones putrefactos
    .accept 9218 >>Acepta la misión Polvo de espina dorsal
    .turnin 9218 >>Entrega la misión Polvo de espina dorsal
    .target Magistrix Aminel
    .itemcount 22641,10
    .itemcount 22642,10
step
    #optional
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aminel|r
    .accept 9218 >>Acepta la misión Polvo de espina dorsal
    .turnin 9218 >>Entrega la misión Polvo de espina dorsal
    .target Magistrix Aminel
    .itemcount 22642,10
step
    #optional
    #label Aminel
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acepta la misión Corazones putrefactos
    .turnin 9216 >>Entrega la misión Corazones putrefactos
    .target Magistrix Aminel
    .itemcount 22641,10
step << Mage/Warlock/Priest
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T132660:0|t[Toga de boticario] |cRXP_BUY_de él|r
    .collect 22986,1,9220,1 --Collect Apothecary's Robe (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra el|r |T132716:0|t[Jubón de Mortacechador] |cRXP_BUY_de él|r
    .collect 22987,1,9220,1 --Collect Deathstalker's Vest (1)
    .target Provisioner Vredigar
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Mage/Warlock/Priest
    #optional
    #completewith StoneOL
    +|cRXP_WARN_Equipa la|r |T132660:0|t[Toga de boticario]
    .use 22986
    .itemcount 22986,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step << Rogue/Hunter/Druid/Shaman
    #completewith StoneOL
    +|cRXP_WARN_Equipa el|r |T132716:0|t[Jubón de Mortacechador]
    .use 22987
    .itemcount 22987,1
    .itemStat 5,QUALITY,<7
    .itemStat 5,LEVEL,<15
step
    #label Truth2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valwyn|r y |cRXP_FRIENDLY_Maltendis|r
    .turnin 9193 >> Entrega la misión Investiga las Catacumbas Amani
    .target +Advisor Valwyn
    .goto Ghostlands,45.17,32.37,10,0
    .goto Ghostlands,44.84,32.81
    .turnin 9199 >> Entrega la misión Juju trol
    .target +Deathstalker Maltendis
    .goto Ghostlands,44.74,32.28
step
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiel|r
    .turnin 9156 >> Entrega la misión SE BUSCAN: Putrenudillos y Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step << Rogue wotlk
    #completewith Eralan6
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra|r el |T132273:0|t[Veneno instantáneo] |cRXP_BUY_de ella|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .vendor >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .vendor >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .vendor >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_WARN_Guarda la|r |T135662:0|t[Daga de fronda cortante] |cRXP_WARN_para después ya que la necesitarás para una misión|r << tbc
    .turnin 10548,1 >>Entrega la misión La triste verdad << tbc
    .turnin 10548 >>Entrega la misión La triste verdad << wotlk
    .target Eralan
step << Rogue
    #optional
    #label Eralan6
    #completewith Jurion
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] |cRXP_WARN_y la|r |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan6
    #completewith Jurion
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan6
    #completewith Jurion
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #completewith next
    .subzone 3493 >>Viaja a Sagrario del Sol
step
    #label TwinZ
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaendris|r
    .turnin 9176 >> Gira en Los zigurats gemelos
    .accept 9167 >> Acepta la misión La muerte del traidor
    .target Magister Kaendris
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Sube las escaleras
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Idonis|r y |cRXP_FRIENDLY_Janeda|r
    .turnin 9220 >> Gira en Guerra a la Ciudad de la Muerte
    .accept 9170 >> Acepta la misión Los tenientes de Dar'Khan
    .target +Magister Idonis
    .goto Ghostlands,54.87,48.55
    .accept 9877 >> Acepta la misión Una pócima reconstituyente
    .target +Arcanist Janeda
    .goto Ghostlands,54.82,48.35
step
    #completewith next
    .subzone 3488 >> Viaja a Tranquillien
step
    #label RDraught
    .goto Ghostlands,47.67,34.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzithen|r
    .turnin 9877 >>Gira en Una pócima reconstituyente
    .accept 9164 >>Acepta la misión Cautivos en la Ciudad de la Muerte
    .target Apothecary Renzithen
step
    #completewith next
    .subzone 3506 >>Viaja a Andilien Estate
step
    .goto Ghostlands,46.40,56.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vor'el|r
    .turnin 9281 >> Entrega la misión Despejando el camino
    .target Apprentice Vor'el
step
    #completewith Varnis
    .cast 28486 >>|cRXP_WARN_Usa el|r |T134754:0|t[Jarabe finiquiplaga]
    .use 22779
    .itemcount 22779,1
step
    #completewith Luzran
    >>Kill |cRXP_ENEMY_Acechador resucitado|r. Loot them for their |cRXP_LOOT_Rotting Hearts|r
    >>Kill |cRXP_ENEMY_Centinela Terroespina|r and |cRXP_ENEMY_Hechicero Jaulamuerta|r. Loot them for their |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Centinela Terroespina|r cast |r |T132357:0|t[Shield Bash] |cRXP_WARN_(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #completewith Deatholme1
    >>Kill |cRXP_ENEMY_Luzran|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Be careful,|r |cRXP_ENEMY_Luzran|r casts|r |T132338:0|t[Cleave] |cRXP_WARN_and|r |T132939:0|t[Knock] |cRXP_WARN_(knocks you into the air)|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] (NOT TRANSLATED IN :esMX YET) << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] (NOT TRANSLATED IN :esMX YET) << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] (NOT TRANSLATED IN :esMX YET) << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] (NOT TRANSLATED IN :esMX YET) << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] (NOT TRANSLATED IN :esMX YET) << Warrior
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #loop
    .line Ghostlands,40.58,48.42,40.76,47.73,41.84,46.91,41.49,45.52,39.69,46.64,39.27,47.41,37.53,49.81,36.15,51.63,35.26,52.16,33.69,52.57,31.89,54.85,30.16,55.32,27.71,55.36,25.79,55.11,24.53,53.16,23.79,51.34,22.22,48.11,21.93,46.53,22.05,44.27,22.14,42.83,22.10,40.09,22.66,38.42,23.67,37.62,26.79,37.49,27.94,38.01,29.05,37.85,30.25,36.63,29.87,34.81,28.71,32.15,27.57,29.23,27.23,27.55,27.12,26.04,29.25,24.14,29.70,23.11,29.26,21.07,28.41,19.25,27.56,17.58,25.60,16.40,25.31,15.03
    .goto Ghostlands,40.58,48.42,0
    .goto Ghostlands,40.58,48.42,50,0
    .goto Ghostlands,40.76,47.73,50,0
    .goto Ghostlands,41.84,46.91,50,0
    .goto Ghostlands,41.49,45.52,50,0
    .goto Ghostlands,39.69,46.64,50,0
    .goto Ghostlands,39.27,47.41,50,0
    .goto Ghostlands,37.53,49.81,50,0
    .goto Ghostlands,36.15,51.63,50,0
    .goto Ghostlands,35.26,52.16,50,0
    .goto Ghostlands,33.69,52.57,50,0
    .goto Ghostlands,31.89,54.85,50,0
    .goto Ghostlands,30.16,55.32,50,0
    .goto Ghostlands,27.71,55.36,50,0
    .goto Ghostlands,25.79,55.11,50,0
    .goto Ghostlands,24.53,53.16,50,0
    .goto Ghostlands,23.79,51.34,50,0
    .goto Ghostlands,22.22,48.11,50,0
    .goto Ghostlands,21.93,46.53,50,0
    .goto Ghostlands,22.05,44.27,50,0
    .goto Ghostlands,22.14,42.83,50,0
    .goto Ghostlands,22.10,40.09,50,0
    .goto Ghostlands,22.66,38.42,50,0
    .goto Ghostlands,23.67,37.62,50,0
    .goto Ghostlands,26.79,37.49,50,0
    .goto Ghostlands,27.94,38.01,50,0
    .goto Ghostlands,29.05,37.85,50,0
    .goto Ghostlands,30.25,36.63,50,0
    .goto Ghostlands,29.87,34.81,50,0
    .goto Ghostlands,27.12,26.04,50,0
    .goto Ghostlands,25.31,15.03,50,0
    .goto Ghostlands,40.58,48.42,50,0
    >>Kill |cRXP_ENEMY_Knucklerot|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Knucklerot|r|cRXP_WARN_'s |T136016:0|t[Corrosive Poison] by interrupting it with|r |T135963:0|t[Hammer of Justice] (NOT TRANSLATED IN :esMX YET) << Paladin
    >>|cRXP_WARN_Avoid|r |cRXP_ENEMY_Knucklerot|r|cRXP_WARN_'s |T136016:0|t[Corrosive Poison] by interrupting it with|r |T132219:0|t[Kick] (NOT TRANSLATED IN :esMX YET) << Rogue
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] (NOT TRANSLATED IN :esMX YET) << Warlock/Priest
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] (NOT TRANSLATED IN :esMX YET) << Mage
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] (NOT TRANSLATED IN :esMX YET) << Druid
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] (NOT TRANSLATED IN :esMX YET) << Shaman
    >>|cRXP_ENEMY_Knucklerot|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] (NOT TRANSLATED IN :esMX YET) << Warrior
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,1 --Knucklerot's Head (1)
    .unitscan Knucklerot
step
    #label Luzran
    #loop
    .line Ghostlands,34.35,49.33,34.18,50.75,34.27,52.13,35.59,52.11,36.15,51.60,37.01,52.90,37.70,59.57,37.30,63.89,36.97,68.06,36.39,68.31,36.77,65.23,37.87,60.95,38.12,57.42,38.20,53.38,37.93,49.52,37.65,48.77,37.57,44.63,37.95,41.65,38.66,38.08,39.29,33.57,39.64,31.98
    .goto Ghostlands,34.35,49.33,0
    .goto Ghostlands,34.35,49.33,50,0
    .goto Ghostlands,34.18,50.75,50,0
    .goto Ghostlands,34.27,52.13,50,0
    .goto Ghostlands,35.59,52.11,50,0
    .goto Ghostlands,36.15,51.60,50,0
    .goto Ghostlands,37.01,52.90,50,0
    .goto Ghostlands,37.70,59.57,50,0
    .goto Ghostlands,37.30,63.89,50,0
    .goto Ghostlands,36.97,68.06,50,0
    .goto Ghostlands,36.39,68.31,50,0
    .goto Ghostlands,36.77,65.23,50,0
    .goto Ghostlands,37.87,60.95,50,0
    .goto Ghostlands,38.12,57.42,50,0
    .goto Ghostlands,38.20,53.38,50,0
    .goto Ghostlands,37.93,49.52,50,0
    .goto Ghostlands,37.65,48.77,50,0
    .goto Ghostlands,37.57,44.63,50,0
    .goto Ghostlands,37.95,41.65,50,0
    .goto Ghostlands,38.66,38.08,50,0
    .goto Ghostlands,39.29,33.57,50,0
    .goto Ghostlands,39.64,31.98,50,0
    .goto Ghostlands,34.35,49.33,50,0
    >>Kill |cRXP_ENEMY_Luzran|r. Loot him for his |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_aparece en Sangrado (occidental) Ziggurat, patrulla hacia Muerto Scar, luego regresa hasta que llega al río|r
    >>|cRXP_WARN_Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo solo|r
    >>|cRXP_WARN_Be careful,|r |cRXP_ENEMY_Luzran|r casts|r |T132338:0|t[Cleave] |cRXP_WARN_and|r |T132939:0|t[Knock] |cRXP_WARN_(knocks you into the air)|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_is immune to|r |T136183:0|t[Fear] (NOT TRANSLATED IN :esMX YET) << Warlock/Priest
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed and rooted with|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] (NOT TRANSLATED IN :esMX YET) << Mage
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be rooted with|r |T136100:0|t[Entangling Roots] (NOT TRANSLATED IN :esMX YET) << Druid
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T136102:0|t[Earthbind Totem] (NOT TRANSLATED IN :esMX YET) << Shaman
    >>|cRXP_ENEMY_Luzran|r |cRXP_WARN_can be slowed with|r |T132316:0|t[Hamstring] (NOT TRANSLATED IN :esMX YET) << Warrior
    >>|cRXP_WARN_Patrulla alrededor, su ruta está marcada en tu mapa|r
    .complete 9156,2 --Luzran's Head (1)
    .unitscan Luzran
step
    #label Hearts2
    #loop
    .goto Ghostlands,36.25,70.35,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    >>Kill |cRXP_ENEMY_Acechador resucitado|r. Loot them for their |cRXP_LOOT_Rotting Hearts|r
    >>Kill |cRXP_ENEMY_Centinela Terroespina|r and |cRXP_ENEMY_Hechicero Jaulamuerta|r. Loot them for their |cRXP_LOOT_Spinal Dust|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Centinela Terroespina|r cast |r |T132357:0|t[Shield Bash] |cRXP_WARN_(Interrupt)|r
    .collect 22641,10,9216,1 --Collect Rotting Heart (x10)
    .mob +Risen Stalker
    .collect 22642,10,9218,1 --Collect Spinal Dust (x10)
    .mob +Dreadbone Sentinel
    .mob +Deathcage Sorcerer
step
    #completewith next
    .goto Ghostlands,35.17,74.71,40 >> Corre hacia Deatholme
    .isOnQuest 9164
step
    #completewith next
    .goto Ghostlands,31.70,73.64,10,0
    .goto Ghostlands,31.78,72.91,10 >>Entra en la cripta
step
    #label Jurion
    .goto Ghostlands,32.19,73.08,8,0
    >>Kill |cRXP_ENEMY_Jurion el Falsario|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Enith|r en el suelo
    .complete 9170,3 --Kill Jurion the Deceiver (x1)
    .mob +Jurion the Deceiver
    .goto Ghostlands,32.10,74.45,-1
    .complete 9164,1 --Apothecary Enith Rescued
    .target +Apothecary Enith
    .goto Ghostlands,32.15,73.95,-1
    .skipgossip
step
    #completewith next
    .goto Ghostlands,32.19,73.08,8,0
    .goto Ghostlands,31.78,72.91,10,0
    .goto Ghostlands,31.70,73.64,10 >>Sal de la cripta
step
    .goto Ghostlands,37.36,79.33
    >>Kill |cRXP_ENEMY_Mirdoran el Caído|r
    .complete 9170,1 --Kill Mirdoran the Fallen (x1)
    .mob Mirdoran the Fallen
step
    #completewith Varnis
    .goto Ghostlands,37.51,84.18,30,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,40.98,83.22,15 >>Viaja hacia |cRXP_FRIENDLY_Varnis|r
step
    #completewith next
    .goto Ghostlands,41.24,83.04,15,0
    >>Kill |cRXP_ENEMY_Borgoth el Flebotomista|r if he's up next to |cRXP_FRIENDLY_Varnis|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Varnis
    .goto Ghostlands,40.98,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varnis|r en la mesa
    .complete 9164,2 --Apprentice Varnis Rescued
    .target Apprentice Varnis
    .skipgossip
step
    #completewith next
    .goto Ghostlands,35.24,88.23,15,0
    .goto Ghostlands,35.77,89.13,15,0
    >>Check for |cRXP_ENEMY_Masophet el Negro|r inside the first Ziggurat. Kill him if he's up
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    #completewith Vedoran
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.79,89.93,15 >>Viaja hacia |cRXP_FRIENDLY_Vedoran|r
 step
    #completewith next
    >>Kill |cRXP_ENEMY_Borgoth el Flebotomista|r if he's up next to |cRXP_FRIENDLY_Vedoran|r
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #label Vedoran
    .goto Ghostlands,32.79,89.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vedoran|r en la mesa
    .complete 9164,3 --Ranger Vedoran Rescued
    .target Ranger Vedoran
    .skipgossip
    --TODO: BETA check this step, bugged on pserver
step
    #loop
    .goto Ghostlands,35.77,89.13,0
    .goto Ghostlands,29.81,87.99,10,0
    .goto Ghostlands,29.28,88.89,8,0
    .goto Ghostlands,35.24,88.23,10,0
    .goto Ghostlands,35.77,89.13,8,0
    >>Kill |cRXP_ENEMY_Masophet el Negro|r inside the either of the Ziggurats
    .complete 9170,4 --Kill Masophet the Black (x1)
    .mob Masophet the Black
step
    #loop
    .goto Ghostlands,41.24,83.04,0
    .goto Ghostlands,32.84,88.21,10,0
    .goto Ghostlands,32.80,88.53,10,0
    .goto Ghostlands,32.67,90.30,8,0
    .goto Ghostlands,40.09,83.34,10,0
    .goto Ghostlands,41.24,83.04,8,0
    >>Kill |cRXP_ENEMY_Borgoth el Flebotomista|r inside either of the Slaughterhouses
    .complete 9170,2 --Kill Borgoth the Bloodletter (x1)
    .mob Borgoth the Bloodletter
step
    #completewith next
    .goto Ghostlands,32.25,82.18,10,0
    .goto Ghostlands,32.80,82.45,10,0
    .goto Ghostlands,32.65,83.15,8 >>Go inside the central Ziggurat. Kill all the |cRXP_ENEMY_Eyes of Dar'Khan|r and |cRXP_ENEMY_Nigromante de la Ciudad de la Muerte|r inside
    .mob Eye of Dar'Khan
    .mob Deatholme Necromancer
    .isOnQuest 9167
step
    .goto Ghostlands,32.80,82.39,10,0
    .goto Ghostlands,33.04,81.25
    >>Mata a |cRXP_ENEMY_Dar'Khan Drathir|r en la base del Ziggurat
    >>|cRXP_WARN_This quest is very difficult to solo! Find a group for him if possible|r (NOT TRANSLATED IN :esMX YET) << !Hunter !Warlock
    >>|cRXP_WARN_Busca un grupo para él si es necesario|r << Hunter Warlock
    >>|cRXP_WARN_Evita la línea de visión de su|r |T136118:0|t[Vigía del pozo Solanian] |cRXP_WARN_y|r |T136197:0|t[Descargas de las Sombras] |cRXP_WARN_moviéndote alrededor del Ziggurat|r
    >>|cRXP_WARN_Asegúrate de que no haya otros enemigos alrededor para cuando lance|r |T136183:0|t[Miedo] |cRXP_WARN_sobre ti|r
    >>|cRXP_WARN_Usar|r |T135738:0|t[Mana Tap] |cRXP_WARN_to pull the|r |cRXP_ENEMY_Necromancers|r |cRXP_WARN_out of the room|r << BloodElf Paladin tbc/BloodElf Rogue tbc
    .complete 9167,1 --Collect Dar'Khan's Head (x1)
    .mob Dar'Khan Drathir
step
    #softcore
    #completewith HeroSindorei
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #hardcore
    #completewith HeroSindorei
    .subzone 3493 >>Viaja a Sagrario del Sol
step
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaendris|r
    .turnin 9167 >> Entrega la misión La muerte del traidor
    .accept 9328 >> Acepta la misión Héroe de los sin'dorei << BloodElf
    .accept 9811 >> Acepta la misión Amigos de los sin'dorei << !BloodElf
    .target Magister Kaendris
    .isQuestComplete 9167
step
    #label HeroSindorei
    .goto Ghostlands,54.84,49.30,10,0
    .goto Ghostlands,55.07,48.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaendris|r
    .accept 9328 >> Acepta la misión Héroe de los sin'dorei << BloodElf
    .accept 9811 >> Acepta la misión Amigos de los sin'dorei << !BloodElf
    .target Magister Kaendris
    .isQuestTurnedIn 9167
step
    #completewith next
    .goto Ghostlands,55.42,48.70,10,0
    .goto Ghostlands,55.32,48.35,10,0
    .goto Ghostlands,55.17,48.21,10 >>Sube las escaleras
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Idonis|r y |cRXP_FRIENDLY_Janeda|r
    .turnin 9170 >>Entrega la misión Los tenientes de Dar'Khan
    .target +Magister Idonis
    .goto Ghostlands,54.87,48.55
    .turnin 9164 >>Entrega la misión Cautivos en la Ciudad de la Muerte
    .target +Arcanist Janeda
    .goto Ghostlands,54.82,48.35
step << !Troll/!wotlk !Orc/!wotlk
    #completewith KnuLuz
    .hs >> Usa tu Piedra de hogar para ir a Tranquillien
    .cooldown item,6948,>0
    .bindlocation 3488,1
    .subzoneskip 3488
step << !Troll/!wotlk !Orc/!wotlk
    #completewith KnuLuz
    #completewith next
    .subzone 3488 >> Viaja a Tranquillien
    .cooldown item,6948,<0
step
    .goto Ghostlands,47.71,32.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vredigar|r
    >>|cRXP_BUY_Compra la|r |T133759:0|t[Capa del campeón de Tranquillien] |cRXP_BUY_de él|r
    .collect 22990,1,496,1 --Collect Tranquillien Champion's Cloak (1)
    .target Provisioner Vredigar
    .itemStat 15,LEVEL,<21
    .isQuestTurnedIn 9167
step << Rogue wotlk
    #completewith SMTraining5
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra|r el |T132273:0|t[Veneno instantáneo] |cRXP_BUY_de ella|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Eralan
    .xp <19,1
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_y la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si están disponibles|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.7517 << BloodElf/Undead
    .money <0.7893 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135344:0|t[Cimitarra siniestra] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.6947 << BloodElf/Undead
    .money <0.7294 << Orc/Troll
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,>7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>12.5 << wotlk
step << Rogue
    .goto Ghostlands,47.20,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eralan|r
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Sajagargantas] |cRXP_BUY_de ella si está disponible|r
    .vendor 16268 >> Vende la Basura
    .target Eralan
    .money <0.0570 << BloodElf/Undead
    .money <0.0599 << Orc/Troll
    .itemStat 16,QUALITY,>7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #label Eralan7
    #completewith SMTraining5
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas] |cRXP_WARN_y la|r |T135344:0|t[Cimitarra siniestra]
    .use 29584
    .use 29583
    .itemcount 29584,1
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step << Rogue
    #optional
    #requires Eralan7
    #completewith SMTraining5
    +|cRXP_WARN_Equipa la|r |T135344:0|t[Cimitarra siniestra]
    .use 29583
    .itemcount 29583,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.0
step << Rogue
    #optional
    #requires Eralan7
    #completewith SMTraining5
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Sajagargantas]
    .use 29584
    .itemcount 29584,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6 << tbc
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5 << wotlk
step
    #label KnuLuz
    .goto Ghostlands,46.02,33.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiel|r
    .turnin 9156 >> Entrega la misión SE BUSCAN: Putrenudillos y Luzran
    .target Deathstalker Rathiel
    .isQuestComplete 9156
step
    #completewith Aminel2
    .goto Ghostlands,48.91,31.13,12,0
    .goto Ghostlands,49.36,31.74,12,0
    .goto Ghostlands,49.36,31.74,10 >> Sube las escaleras
step
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acepta la misión Corazones putrefactos
    .turnin 9216 >>Entrega la misión Corazones putrefactos
    .accept 9218 >>Acepta la misión Polvo de espina dorsal
    .turnin 9218 >>Entrega la misión Polvo de espina dorsal
    .target Magistrix Aminel
    .itemcount 22641,10
    .itemcount 22642,10
step
    #optional
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aminel|r
    .accept 9218 >>Acepta la misión Polvo de espina dorsal
    .turnin 9218 >>Entrega la misión Polvo de espina dorsal
    .target Magistrix Aminel
    .itemcount 22642,10
step
    #optional
    #label Aminel2
    .goto Ghostlands,48.91,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aminel|r
    .accept 9216 >>Acepta la misión Corazones putrefactos
    .turnin 9216 >>Entrega la misión Corazones putrefactos
    .target Magistrix Aminel
    .itemcount 22641,10
step
    #loop
    .goto Ghostlands,36.25,70.35,0
    .goto Ghostlands,37.82,52.20,50,0
    .goto Ghostlands,38.11,56.94,50,0
    .goto Ghostlands,37.73,61.43,50,0
    .goto Ghostlands,37.06,65.52,50,0
    .goto Ghostlands,36.25,70.35,50,0
    .xp 20 >>Farmea hasta el nivel 20
step
    #completewith SMTraining5
    .goto Ghostlands,45.42,30.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alasol|r
    .fly Silvermoon >> Vuela a la Ciudad de Lunargenta
    .target Skymaster Sunwing
    .zoneskip Silvermoon City
step << Mage
    .goto Eversong Woods,55.70,54.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antheol|r
    .turnin 9404 >>Entrega la misión Recientemente vivo
    .target Instructor Antheol
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.38,53.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Perascamin|r
    .skill riding,75 >> Aprende |T136103:0|t[Aprendiz jinete] de él
	.target Perascamin
    .money <4.5 << Rogue
    .money <4.693 << !Rogue
step << BloodElf !Warlock !Paladin wotlk
    .goto Eversong Woods,61.08,54.15,12,0
    .goto Eversong Woods,61.09,54.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Winaestra|r
    +|cRXP_BUY_Compra cualquiera|r |T132228:0|t[Halcón zancudo] |cRXP_BUY_que te guste de ella|r
	.target Winaestra
    .itemcount 28927,<1 --Red Hawkstrider
    .itemcount 29220,<1 --Blue Hawkstrider
    .itemcount 29221,<1 --Black Hawkstrider
    .itemcount 29222,<1 --Purple Hawkstrider
    .money <0.9025 << Rogue
    .money <1.083 << !Rogue
    .skill riding,<75,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >> Usa el |T132227:0|t[Halcón zancudo rojo] para aprender
    .use 28927
    .itemcount 28927,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >> Usa el |T132229:0|t[Halcón zancudo azul] para aprender
    .use 29220
    .itemcount 29220,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >> Usa el |T132228:0|t[Halcón zancudo negro] para aprender
    .use 29221
    .itemcount 29221,1
step << BloodElf !Warlock !Paladin wotlk
    #optional
    .cast 55884 >> Usa el |T132231:0|t[Halcón zancudo morado] para aprender
    .use 29222
    .itemcount 29222,1
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra el|r |T132227:0|t[Halcón zancudo rojo] |cRXP_WARN_a tus barras de acción|r
    .cast 34795 >> Monta tu |T132227:0|t[Halcón zancudo rojo]
    .train 34795,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra el|r |T132229:0|t[Halcón zancudo azul] |cRXP_WARN_a tus barras de acción|r
    .cast 35020 >> Monta tu |T132229:0|t[Halcón zancudo azul]
    .train 35020,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra el|r |T132228:0|t[Halcón zancudo negro] |cRXP_WARN_a tus barras de acción|r
    .cast 29221 >> Monta tu |T132228:0|t[Halcón zancudo negro]
    .train 29221,3
step << BloodElf !Warlock !Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra el|r |T132231:0|t[Halcón zancudo morado] |cRXP_WARN_a tus barras de acción|r
    .cast 29222 >> Monta tu |T132231:0|t[Halcón zancudo morado]
    .train 29222,3
step << Mage/Priest/Warlock/Hunter/Paladin
    #completewith SMTraining5
    .goto Eversong Woods,56.51,49.61,25,0
    .goto Silvermoon City,73.39,59.65
    .zone Silvermoon City >>Entra en Silvermoon
step << Priest
    #ah
    .goto Silvermoon City,60.65,63.45,15,0
    .goto Silvermoon City,65.92,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vynna|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_del AH si es barata|r
    >>|cRXP_WARN_Si todos son demasiado caros, omite este paso|r
    .collect 11288,1,496,1 --Greater Magic Wand
    .target Vynna
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Mage
    #completewith SMTraining5
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,62.89,31.26,30,0
    .goto Silvermoon City,57.45,24.46,15,0
    .goto Silvermoon City,55.31,24.96,15,0 << Priest
    .goto Silvermoon City,57.21,21.25,15,0 << Mage
    .goto Silvermoon City,55.38,26.76,12 >> Viaja hacia |cRXP_FRIENDLY_Luanga|r << Priest
    .goto Silvermoon City,57.16,18.85,12 >> Viaja hacia |cRXP_FRIENDLY_Zaedana|r << Mage
step << Priest
    .goto Silvermoon City,55.38,26.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Luanga|r
    .train 7128 >> Aprende tus hechizos de clase
    .target Lotheolan
step << Mage
    .goto Silvermoon City,57.16,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaedana|r
    .train 1953 >> Aprende tus hechizos de clase
    .target Zaedana
step << Mage
    .goto Silvermoon City,58.07,20.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narinth|r
    .train 32272 >> Aprende |T135761:0|t[Teletransporte a: Lunargenta]
    .target Narinth
    .money <0.5000
step << Hunter
    #completewith SMTraining5
    .goto Silvermoon City,83.52,48.68,30,0
    .goto Silvermoon City,83.50,43.40,20,0
    .goto Silvermoon City,83.45,30.13,15,0
    .goto Silvermoon City,83.45,28.56,15,0
    .goto Silvermoon City,84.71,28.05,15 >>Viaja hacia |cRXP_FRIENDLY_Zandine|r
step << Hunter
    .goto Silvermoon City,84.71,28.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zandine|r
    .train 14282 >> Aprende tus hechizos de clase
    .target Zandine
 step << Hunter
    .goto Silvermoon City,86.24,35.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celana|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_de ella|r
    .collect 3027,1,496,1 --Reinforced Bow (1)
    .target Celana
    .money <0.6032 << BloodElf
    .money <0.6336 << Troll/Orc
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.7
step << Warlock
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,75.62,58.31,20,0
    .goto Silvermoon City,75.95,52.92,30,0
    .goto Silvermoon City,75.65,45.04,15,0
    .goto Silvermoon City,76.33,43.33,12 >>Entra en el edificio, luego baja las escaleras
step << Warlock TBC
    .goto Silvermoon City,73.97,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torian|r
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio of Tormento (Rank 2)] |cRXP_BUY_de él|r
    .collect 16346,1,496,1 --Grimoire of Torment Rank 2
    .target Torian
    .train 20317,1
step << Warlock TBC
    #optional
    +Usa el |T133738:0|t[Grimorio of Tormento (Rank 2)]
    .use 16346
    .itemcount 16346,1
    .train 20317,1
step << Warlock
    .goto Silvermoon City,74.39,47.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talionia|r
    .train 5784 >> Aprende |T136103:0|t[Invocar corcel vil] << wotlk
    .train 706 >> Aprende tus hechizos de clase << tbc
    .target Talionia
step << Warlock wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra el|r |T136103:0|t[Corcel vil] |cRXP_WARN_en tu barra de acciones|r
    .cast 5784 >> Monta tu |T136103:0|t[Corcel vil]
    .train 5784,3
step << Paladin wotlk
    #completewith SMTraining5
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,20 >>Viaja hacia |cRXP_FRIENDLY_Ithelis|r y |cRXP_FRIENDLY_Osselan|r
    .isQuestTurnedIn 9685
step << Paladin
    #completewith next
    .goto Silvermoon City,82.03,68.36,25,0
    .goto Silvermoon City,84.63,48.65,25,0
    .goto Silvermoon City,84.65,43.43,25,0
    .goto Silvermoon City,89.00,36.95,15,0
    .goto Silvermoon City,89.26,35.20,15 >>Viaja hacia |cRXP_FRIENDLY_Bloodvalor|r
--   .train 647,1 << Paladin tbc
--  .train 62124,1 << Paladin wotlk
step << Paladin
    .goto Silvermoon City,89.26,35.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sangrevalor|r
    .turnin 9685 >>Entrega la misión Redimir a los muertos
    .target Knight-Lord Bloodvalor
step << Paladin wotlk
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|cRXP_WARN_Salta a uno de los bancos de abajo para evitar subir las escaleras|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .train 34769 >>Aprende |T136103:0|t[Invocar caballo de guerra]
	.target Ithelis
	.target Osselan
    .train 34769,1
step << Paladin wotlk
    #completewith LorThemar
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastra la|r |T136103:0|t[Caballo de guerra thalassiano] |cRXP_WARN_a tus barras de acción|r
    .cast 34769 >> Monta tu |T136103:0|t[Caballo de guerra thalassiano]
    .train 34769,3
step << Rogue
    #completewith SMTraining5
    .goto Silvermoon City,73.39,59.65,30,0
    .goto Silvermoon City,76.55,52.05,20,0
    .goto Silvermoon City,79.70,52.16,20 >>Viaja hacia |cRXP_FRIENDLY_Zelanis|r
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de haber entrenado|r |T132282:0|t[Emboscada] |cRXP_WARN_y|r |T132302:0|t[Ruptura] |cRXP_WARN_para una misión posterior|r << tbc
    .accept 10794 >>Acepta la misión Pícaros de la Mano Destrozada
    .train 8676 >>Aprende |T132282:0|t[Emboscada] << tbc
    .train 1943 >>Aprende |T132302:0|t[Ruptura] << tbc
    .train 1943 >>Aprende tus hechizos de clase << wotlk
    .target Zelanis
    .xp <20,1
    .xp >22,1
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de haber entrenado|r |T132282:0|t[Emboscada] |cRXP_WARN_y|r |T132302:0|t[Ruptura] |cRXP_WARN_para una misión posterior|r << tbc
    .accept 10794 >>Acepta la misión Pícaros de la Mano Destrozada
    .train 8676 >>Aprende |T132282:0|t[Emboscada] << tbc
    .train 1943 >>Aprende |T132302:0|t[Ruptura] << tbc
    .train 1759 >>Aprende tus hechizos de clase
    .target Zelanis
    .xp <22,1
    .xp >24,1
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de haber entrenado|r |T132282:0|t[Emboscada] |cRXP_WARN_y|r |T132302:0|t[Ruptura] |cRXP_WARN_para una misión posterior|r << tbc
    .accept 10794 >>Acepta la misión Pícaros de la Mano Destrozada
    .train 8676 >>Aprende |T132282:0|t[Emboscada] << tbc
    .train 1943 >>Aprende |T132302:0|t[Ruptura] << tbc
    .train 6762 >>Aprende tus hechizos de clase << wotlk
    .target Zelanis
    .xp <24,1
step << Rogue
    #optional
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de haber entrenado|r |T132282:0|t[Emboscada] |cRXP_WARN_y|r |T132302:0|t[Ruptura] |cRXP_WARN_para una misión posterior|r << tbc
    .accept 10794 >>Acepta la misión Pícaros de la Mano Destrozada
    .target Zelanis
step << Rogue wotlk
    .goto Silvermoon City,80.47,51.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darlia|r
    >>|cRXP_BUY_Compra|r el |T132273:0|t[Veneno instantáneo] |cRXP_BUY_de ella|r
    .collect 6947,10,496,1 --Instant Poison (10)
    .target Darlia
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harene|r
    .train 8938 >> Aprende tus hechizos de clase
    .target Harene Plainwalker
	.xp <18,1
	.xp >20,1
step << Druid
    #optional
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harene|r
    .train 6756 >> Aprende tus hechizos de clase
    .target Harene Plainwalker
	.xp <20,1
	.xp >22,1
step << Druid
    .goto Silvermoon City,72.53,56.24,10,0
    .goto Silvermoon City,71.55,55.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harene|r
    .train 8926 >> Aprende tus hechizos de clase
    .target Harene Plainwalker
	.xp <22,1
step << skip
    .goto Silvermoon City,53.926,71.029
    .turnin 9134 >> Entrega la misión La maestra del cielo Anochecer
--VV BloodElf Paladin
step << Warlock
    .abandon 10605 >>Abandona la misión Carendin Summons
step
    #completewith UndercitySM
    .goto Silvermoon City,75.76,58.26,20,0 << Druid
    .goto Silvermoon City,75.35,51.78,30,0 << Druid
    .goto Silvermoon City,79.93,33.54,30,0 << Paladin wotlk
    .goto Silvermoon City,77.32,33.43,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,74.47,36.83,20,0 << Hunter/Paladin wotlk
    .goto Silvermoon City,63.47,31.98,20,0
    .goto Silvermoon City,57.48,24.49,20,0
    .goto Silvermoon City,53.80,20.23,50 >>Viaja hacia |cRXP_FRIENDLY_Lor'themar|r
step
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lor'themar|r
    .turnin 9328 >> Entrega la misión Héroe de los sin'dorei << BloodElf
    .accept 9621 >> Acepta la misión Enviado de la Horda << BloodElf
    .turnin 9811 >> Entrega la misión Amigos de los sin'dorei << !BloodElf
    .accept 9812 >> Acepta la misión Enviado de la Horda << !BloodElf
    .target Lor'themar Theron
    .isOnQuest 9328 << BloodElf
    .isOnQuest 9811 << !BloodElf
step
    #label LorThemar
    .goto Silvermoon City,53.80,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lor'themar|r
    .accept 9621 >> Acepta la misión Enviado de la Horda << BloodElf
    .accept 9812 >> Acepta la misión Enviado de la Horda << !BloodElf
    .target Lor'themar Theron
    .isQuestTurnedIn 9328 << BloodElf
    .isQuestTurnedIn 9811 << !BloodElf
step
    #completewith UndercitySM
    .goto Silvermoon City,51.83,17.91,30,0
    .goto Silvermoon City,49.45,15.00
    .zone Undercity >>Take the |cRXP_PICK_Orbe de traslado|r to Undercity
step
    #completewith UndercitySM
    .goto Undercity,59.81,11.33,20,0
    .goto Undercity,66.08,18.24,30,0
    .goto Undercity,66.04,32.97,30,0
    .goto Undercity,65.97,44.08,30,0
    .goto Undercity,60.52,44.02,10,0 << !Undead/!Mage
    .goto Undercity,71.33,44.14,10,0 << Undead Mage
    .goto Undercity,60.07,47.70,10 >>Toma el ascensor para bajar a Entrañas << !Undead/!Mage
    .goto Undercity,71.88,40.45,10 >>Toma el ascensor para bajar a Entrañas << Undead Mage
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
step << Mage
    #completewith next
    .goto Undercity,68.25,40.67,15,0
    .goto Undercity,66.06,30.63,20,0
    .goto Undercity,67.27,23.68,20,0
    .goto Undercity,82.77,15.85,20 >> Viaja hacia |cRXP_FRIENDLY_Hannah|r
step << Mage
    .goto Undercity,82.77,15.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannah|r
    >>|cRXP_BUY_Compra una|r |T134419:0|t[Runa de teletransporte] |cRXP_BUY_a esta vendedora|r
    .collect 17031,1,496,1 --Rune of Teleportation (1)
    .money <0.3000 << Troll
    .money <0.2850 << !Troll
    .target Hannah Akeley
step << Mage
    .goto Undercity,84.19,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortaim|r arriba
    .train 3563 >>Aprende |T135766:0|t[Teletransporte a: Entrañas]
    .money <0.2000 << Troll
    .money <0.1900 << !Troll
    .target Lexington Mortaim
step << Rogue
    .goto Undercity,77.49,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nathaniel|r
    >>|cRXP_BUY_Compra la|r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_de él|r
    .collect 25875,1,496,1 --Deadly Throwing Axe (1)
    .target Nathaniel Steenwick
    .itemStat 18,QUALITY,<2
    .isQuestAvailable 496
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135423:0|t[Hacha arrojadiza mortal]
    .use 25875
    .itemcount 25875,1
    .itemStat 18,QUALITY,<2
step
    #completewith UndercitySM
    .goto Undercity,63.84,47.17,5,0 << !Mage
    .goto Undercity,65.50,56.75,20,0 << !Mage
    .goto Undercity,64.42,64.62,20,0 << !Mage
    .goto Undercity,51.88,64.84,20,0
    .goto Undercity,46.28,73.10,15,0
    .goto Undercity,45.31,78.24,15,0
    .goto Undercity,46.18,83.63,15,0
    .goto Undercity,48.80,87.63,15,0
    .goto Undercity,52.45,89.49,15,0
    .goto Undercity,58.06,91.79,20 >> Viaja hacia |cRXP_FRIENDLY_Sylvanas|r en el Barrio Real
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylvanas|r y |cRXP_FRIENDLY_Penasol|r
    .turnin 9621 >> Entrega la misión Enviado de la Horda << BloodElf
    .accept 9626 >> Acepta la misión Encuentro con el Jefe de Guerra << BloodElf
    .turnin 9180 >> Entrega la misión Viaje a Entrañas << BloodElf
    .turnin 9812 >> Entrega la misión Enviado de la Horda << !BloodElf
    .accept 9813 >> Acepta la misión Encuentro con el Jefe de Guerra << !BloodElf
    .turnin 9177 >> Entrega la misión Viaje a Entrañas << !BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acepta la misión Informando en Molino Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isOnQuest 9621 << BloodElf
    .isOnQuest 9812 << !BloodElf
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylvanas|r y |cRXP_FRIENDLY_Penasol|r
    .accept 9626 >> Acepta la misión Encuentro con el Jefe de Guerra << BloodElf
    .turnin 9180 >> Entrega la misión Viaje a Entrañas << BloodElf
    .accept 9813 >> Acepta la misión Encuentro con el Jefe de Guerra << !BloodElf
    .turnin 9177 >> Entrega la misión Viaje a Entrañas << !BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acepta la misión Informando en Molino Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    .isQuestTurnedIn 9621 << BloodElf
    .isQuestTurnedIn 9812 << !BloodElf
step
    #optional
    #label UndercitySM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylvanas|r y |cRXP_FRIENDLY_Penasol|r
    .turnin 9177 >> Entrega la misión Viaje a Entrañas << !BloodElf
    .turnin 9180 >> Entrega la misión Viaje a Entrañas << BloodElf
    .target +Lady Sylvanas Windrunner
    .goto Undercity,58.06,91.79
    .accept 9425 >> Acepta la misión Informando en Molino Tarren << BloodElf
    .target +Ambassador Sunsorrow << BloodElf
    .goto Undercity,57.77,90.57 << BloodElf
    --TODO: Beta check if 9180 turns in properly
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .turnin 5725 >>Entrega la misión Poder destructivo
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step << Paladin
    #optional
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cyssa|r
    .train 879 >>Aprende tus hechizos de clase
	.target Champion Cyssa Dawnrose
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cyssa|r
    .train 19835 >>Aprende tus hechizos de clase
	.target Champion Cyssa Dawnrose
    .xp <22,1
    .xp >24,1
step << Paladin
    .goto Undercity,58.00,90.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cyssa|r
    .train 5588 >>Aprende tus hechizos de clase
	.target Champion Cyssa Dawnrose
    .xp <24,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Angela|r
    .train 845 >> Aprende tus hechizos de clase
    .target Angela Curthas
    .xp <20,1
    .xp >22,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Angela|r
    .train 6192 >> Aprende tus hechizos de clase
    .target Angela Curthas
    .xp <22,1
step
    #label SMTraining5
    #optional
    .abandon 9167 >>Abandon The Traitor's Destruction (NOT TRANSLATED IN :esMX YET)
step
    #optional
    .abandon 9156 >>Abandon Wanted: Knucklerot and Luzran (NOT TRANSLATED IN :esMX YET)
step
    #label ExitUC
    .goto Undercity,66.21,4.90,15,0
    .goto Tirisfal Glades,61.73,64.87
    .zone Tirisfal Glades >>Sal de Entrañas
    .isQuestAvailable 496
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,60.08,52.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velma|r
    .skill riding,75 >> Aprende |T136103:0|t[Aprendiz jinete] de ella
    .target Velma Warnam
    .money <4.5
step << !Warlock Undead wotlk
    .goto Tirisfal Glades,59.87,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zachariah|r
    +|cRXP_BUY_Compra cualquier|r |T132264:0|t[Caballo esquelético] |cRXP_BUY_que te guste de él|r
	.target Zachariah Post
    .itemcount 13331,<1 --Red Skeletal Horse
    .itemcount 13332,<1 --Blue Skeletal Horse
    .itemcount 13333,<1 --Brown Skeletal Horse
    .itemcount 46308,<1 --Brown Skeletal Horse
    .money <0.9025
    .skill riding,<75,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >> Usa el |T132264:0|t[Caballo esquelético rojo] para aprenderlo
    .use 13331
    .itemcount 13331,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >> Usa el |T132264:0|t[Caballo esquelético azul] para aprenderlo
    .use 13332
    .itemcount 13332,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >> Usa el |T132264:0|t[Caballo esquelético marrón] para aprenderlo
    .use 13333
    .itemcount 13333,1
step << !Warlock Undead wotlk
    #optional
    .cast 55884 >> Usa el |T132264:0|t[Caballo esquelético negro] para aprenderlo
    .use 46308
    .itemcount 46308,1
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastrar el|r |T132264:0|t[Caballo esquelético rojo] |cRXP_WARN_a tu barra de acción|r
    .cast 17462 >> Monta tu |T132264:0|t[Caballo esquelético rojo]
    .train 17462,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastrar el|r |T132264:0|t[Caballo esquelético azul] |cRXP_WARN_a tu barra de acción|r
    .cast 17463 >> Monta tu |T132264:0|t[Caballo esquelético azul]
    .train 17463,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastrar el|r |T132264:0|t[Caballo esquelético marrón] |cRXP_WARN_a tu barra de acción|r
    .cast 17464 >> Monta tu |T132264:0|t[Caballo esquelético marrón]
    .train 17464,3
step << !Warlock Undead wotlk
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Montura|r
    >>|cRXP_WARN_Arrastrar el|r |T132264:0|t[Caballo esquelético negro] |cRXP_WARN_a tu barra de acción|r
    .cast 64977 >> Monta tu |T132264:0|t[Caballo esquelético negro]
    .train 64977,3
step
    #label Durotar
    .goto Tirisfal Glades,61.06,58.86,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Sube a la Torre del Zepelín
    .zone Durotar >>Toma el zepelín hacia Durotar
]])
