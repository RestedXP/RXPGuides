if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Isla del Caminante del Sol
#next 6-10 Bosque Canción Eterna
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor BloodElf
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    #label SunstriderIsleFirstQuestCheck
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrix Erona|r
    .accept 8325 >>Acepta la misión Recuperar la Isla del Caminante del Sol
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,37.70,23.26,0
    .goto Eversong Woods,37.70,23.26,30,0
    .goto Eversong Woods,38.21,24.56,30,0
    .goto Eversong Woods,37.62,25.77,30,0
    .goto Eversong Woods,37.30,24.54,30,0
    >>Mata |cRXP_ENEMY_Vermis de maná|r
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8325 >>Entrega la misión Recuperar la Isla del Caminante del Sol
    .accept 8326 >>Acepta la misión Medidas extremas
    .target Magistrix Erona
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    >>Mata a los |cRXP_ENEMY_Springpaw Cubs|r y al |cRXP_ENEMY_Lince garragil|r. Despójalos para obtener sus |cRXP_LOOT_Collars|r
    .complete 8326,1 --8/8 Lynx Collar
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    #loop
    .goto Eversong Woods,39.13,19.06,0
    .goto Eversong Woods,39.13,19.06,30,0
    .goto Eversong Woods,40.36,17.88,30,0
    .goto Eversong Woods,40.54,16.43,30,0
    .goto Eversong Woods,40.05,20.44,30,0
    .goto Eversong Woods,39.32,22.18,30,0
    .xp 2+650 >>Sube hasta 650/900 xp
step
    .goto Eversong Woods,38.02,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrix Erona|r
    .turnin 8326 >>Entrega la misión Medidas extremas
    .accept 8327 >>Acepta la misión Informar a Lanthan Perilon
    .accept 31170 >>Acepta la misión Instrucción de monje << Monk
    .accept 9393 >>Acepta la misión Instrucción de cazador << Hunter
    .accept 8328 >>Acepta la misión Instrucción de mago << Mage
    .accept 9676 >>Acepta la misión Instrucción de paladín << Paladin
    .accept 8564 >>Acepta la misión Instrucción de sacerdote << Priest
    .accept 9392 >>Acepta la misión Entrenamiento de pícaros << Rogue
    .accept 8563 >>Acepta la misión Entrenamiento de brujos << Warlock
    .accept 8329 >>Acepta la misión Instrucción de guerrero << Warrior
    .target Magistrix Erona
step << Monk
    .goto 467/0,-3998.000,7978.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pao|r
    .turnin 31170 >>Entrega la misión Instrucción de monje
    .accept 31171 >>Acepta la misión Palma del tigre
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Forestal Sallina|r
    .turnin 9393 >>Entrega la misión Instrucción de cazador
    .accept 10070 >> Acepta la misión Disparo firme
    .train 56641 >>Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia Golpesol|r
    .turnin 8328 >>Entrega la misión Instrucción de mago
    .accept 10068 >>Acepta la misión Misiles Arcanos
    .train 5143 >>Aprende |T136096:0|t[Misiles Arcanos] << Cata
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia Golpesol|r
    .turnin 8328 >>Entrega la misión Instrucción de mago
    .accept 10068 >>Acepta la misión Nova de Escarcha
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jesthenis Golpesol|r
    .turnin 9676 >>Entrega la misión Instrucción de paladín
    .accept 10069 >>Acepta la misión El camino de la Luz
    .train 20271 >>Aprende |T135959:0|t[Sentencia] << Cata
    .train 20154 >>Aprende |T135960:0|t[Sello de rectitud] << Cata
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matrona Arena|r
    .turnin 8564 >>Entrega la misión Instrucción de sacerdote
    .accept 10072 >>Acepta la misión Sanar a los heridos
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << Cata
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matrona Arena|r
    .turnin 8564 >>Entrega la misión Instrucción de sacerdote
    .accept 10072 >>Acepta la misión Ayudando a los heridos
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 9392 >>Entrega la misión Entrenamiento de pícaros
    .accept 10071 >>Acepta la misión Eviscerar
    .train 2098 >>Aprende |T132292:0|t[Eviscerar] << Cata
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Invocador Teli'Larien|r
    .turnin 8563 >>Entrega la misión Entrenamiento de brujos
    .accept 10073 >>Acepta la misión Inmolación
    .train 348 >>Aprende |T135817:0|t[Inmolar] << Cata
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Invocador Teli'Larien|r
    .turnin 8563 >>Entrega la misión Entrenamiento de brujos
    .accept 10073 >>Acepta la misión Corrupción
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delios Platahoja|r
    .turnin 8329 >>Entrega la misión Instrucción de guerrero
    .accept 27091 >>Acepta la misión ¡A la carga!
    .train 100 >>Aprende |T132337:0|t[Cargar] << Cata
    .target Delios Silverblade
step << Monk
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T606551:0|t[Palma del tigre] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r afuera
	.complete 31171,2 --Cast Tiger Palm
	.mob Training Dummy
step << Hunter
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T132213:0|t[Disparo firme] a un |cRXP_ENEMY_Muñeco de entrenamiento|r afuera
	.complete 10070,2 << !Cata --Cast Steady Shot
	.complete 10070,1 << Cata --Cast Steady Shot
	.mob Training Dummy
step << Mage cata
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T136096:0|t[Misiles Arcanos] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r afuera
	.complete 10068,1 << Cata --Cast Arcane Missiles
	.mob Training Dummy
step << Mage !cata
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T135848:0|t[Nova de escarcha] a un |cRXP_ENEMY_Muñeco de entrenamiento|r afuera
	.complete 10068,2 --Cast Frost Nova
	.mob Training Dummy
step << Paladin cata
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T135960:0|t[Sello de rectitud] sobre ti, luego lanza |T135959:0|t[Sentencia] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r afuera
	.complete 10069,1 << Cata --Cast Judgement
	.mob Training Dummy
step << Paladin !cata
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T135961:0|t[Sello de orden], luego ataca a un |cRXP_ENEMY_Muñeco de Entrenamiento|r afuera
	.complete 10069,2
	.mob Training Dummy
step << Priest cata
    .goto Eversong Woods,39.49,20.29
	>>Lanza |T135907:0|t[Sanación relámpago] a un |cRXP_ENEMY_Avanzado herido|r
	.complete 10072,1 --Cast Flash Heal
	.target Wounded Outrunner
 step << Priest !cata
    .goto Eversong Woods,38.34,20.64
	>>Lanza |T136207:0|t[Palabra de las Sombras: dolor] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r afuera
	.complete 10072,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto Eversong Woods,38.34,20.64
	>>Usa |T132292:0|t[Eviscerar] en un |cRXP_ENEMY_Muñeco de entrenamiento|r afuera
	.complete 10071,2 << !Cata --Cast Eviscerate
	.complete 10071,1 << Cata --Cast Eviscerate
	.mob Training Dummy
step << Warlock cata
    .goto Eversong Woods,38.34,20.64
	>>Usa |T135817:0|t[Inmolar] en un |cRXP_ENEMY_Muñeco de entrenamiento|r afuera
	.complete 10073,1 --Cast Immolate
	.mob Training Dummy
step << Warlock !cata
    .goto Eversong Woods,38.34,20.64
	>>Usa |T136118:0|t[Vigía del pozo Solanian] en un |cRXP_ENEMY_Muñeco de entrenamiento|r afuera
	.complete 10073,2 --Cast Corruption
	.mob Training Dummy
step << Warrior
    .goto Eversong Woods,38.34,20.64
	>>Usa |T132337:0|t[Cargar] en un |cRXP_ENEMY_Muñeco de entrenamiento|r afuera
	.complete 27091,2 << !Cata --Cast Charge
	.complete 27091,1 << Cata --Cast Charge
	.mob Training Dummy
step << Monk
    .goto 467/0,-3998.200,7978.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pao|r
    .turnin 31171 >>Entrega la misión Palma del tigre
    .target Pao
step << Hunter
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Sallina|r
    .turnin 10070 >>Entrega la misión Tiro firme
    .target Ranger Sallina
step << Mage cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia Golpesol|r
    .turnin 10068 >>Entrega la misión Misiles Arcanos
    .target Julia Sunstriker
step << Mage !cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia Golpesol|r
    .turnin 10068 >>Entrega la misión Vigía del pozo Solanian
    .target Julia Sunstriker
step << Paladin
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jesthenis Golpesol|r
    .turnin 10069 >>Entrega la misión Caminos de la Luz
    .target Jesthenis Sunstriker
step << Priest cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matrona Arena|r
    .turnin 10072 >>Entrega la misión Sanación del Herido
    .target Matron Arena
step << Priest !cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matrona Arena|r
    .turnin 10072 >>Entrega la misión Aprender la palabra
    .target Matron Arena
step << Rogue
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pathstalker Avokor|r
    .turnin 10071 >>Entrega la misión Evisceración
    .target Pathstalker Avokor
step << Warlock cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Invocador Teli'Larien|r
    .turnin 10073 >>Entrega la misión Inmolación
    .target Summoner Teli'Larien
step << Warlock !cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Invocador Teli'Larien|r
    .turnin 10073 >>Entrega la misión Corrupción
    .target Summoner Teli'Larien
step << Warrior
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delios Platahoja|r
    .turnin 27091 >>Gira en ¡A la carga!
    .target Delios Silverblade
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Sube las escaleras
step
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigía del pozo Solanian|r
    .accept 8330 >>Acepta la misión Las posesiones de Solanian
    .accept 8345 >>Acepta la misión Santuario de Dath'Remar
    .target Well Watcher Solanian
step
    .goto Eversong Woods,38.27,19.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Ithanas|r
    .accept 8336 >>Acepta la misión Por un puñado de esquirlas
    .target Arcanist Ithanas
step
    .goto Eversong Woods,37.18,18.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Helion|r
    .accept 8346 >>Acepta la misión Sed insaciable
    .target Arcanist Helion
step
    #completewith Journal
    >>Usa |T136222:0|t[Torrente Arcano] cuando estés en rango de combate cuerpo a cuerpo de un |cRXP_ENEMY_Vermis de maná|r
    >>Mata a los |cRXP_ENEMY_Vermis de maná|r y a los |cRXP_ENEMY_Feral Tenders|r. Despójalos de sus |cRXP_LOOT_Slivers|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
    .mob Feral Tender
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanthan Perilon|r
    .turnin 8327 >>Entrega la misión Informar a Lanthan Perilon
    .accept 8334 >>Acepta la misión Agresividad
    .target Lanthan Perilon
step
    #label Journal
    .goto Eversong Woods,37.70,24.91
    >>Despoja el |cRXP_PICK_Diario|r del suelo
    .complete 8330,3 --Collect Solanian's Journal (x1)
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Tenders|r y a los |cRXP_ENEMY_Feral Tenders|r. Despójalos para obtener sus |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .complete 8334,2 --Kill Feral Tender (x7)
    .complete 8336,1--Collect Arcane Sliver (x6)
    .mob Tender
    .mob Feral Tender
step
    #label RedOrb
    .goto Eversong Woods,35.14,28.89
    >>Despoja el |cRXP_PICK_Orbe de visión|r en la plataforma
    .complete 8330,1 --Collect Solanian's Scrying Orb (x1)
step
    #loop
	.line Eversong Woods,33.92,26.49,33.97,28.55,35.15,29.78,36.52,29.35,35.58,27.42,33.92,26.49
	.goto Eversong Woods,33.92,26.49,40,0
	.goto Eversong Woods,33.97,28.55,40,0
	.goto Eversong Woods,35.15,29.78,40,0
	.goto Eversong Woods,36.52,29.35,40,0
	.goto Eversong Woods,35.58,27.42,40,0
	.goto Eversong Woods,33.92,26.49,40,0
    >>Mata a los |cRXP_ENEMY_Tenders|r y a los |cRXP_ENEMY_Feral Tenders|r. Despójalos para obtener sus |cRXP_LOOT_Slivers|r
    .complete 8334,1 --Kill Tender (x7)
    .mob +Tender
    .complete 8334,2 --Kill Feral Tender (x7)
    .mob +Feral Tender
    .complete 8336,1--Collect Arcane Sliver (x6)
step
    #label Aggression
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanthan|r
    .turnin 8334 >>Entrega la misión Agresividad
    .accept 8335 >>Acepta la misión Felendren el Desterrado
    .target Lanthan Perilon
step
    #completewith RunRamp
    >>Mata a los |cRXP_ENEMY_Feral Tenders|r. Despójalos para obtener sus |cRXP_LOOT_Slivers|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Feral Tender
step
    #label Shrine
    .goto Eversong Woods,29.61,19.38
    >>Haz clic en el |cRXP_PICK_Santuario de Dath'Remar|r
    .complete 8345,1 --Collect Shrine of Dath'Remar Read (x1)
step
    .goto Eversong Woods,31.33,22.74
    >>Despoja el |cRXP_PICK_Pergamino|r en el suelo
    .complete 8330,2 --Collect Scroll of Scourge Magic (x1)
step
    #label RunRamp
    #completewith next
    .goto Eversong Woods,32.57,25.53,20,0
    .goto Eversong Woods,32.02,26.09,20 >>Sube por la rampa
step
    #completewith Academy
    >>Mata a un |cRXP_ENEMY_Ánima arcana mácula|r. Despójalo para obtener su |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r].
    >>|cRXP_WARN_Usa la |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r] para iniciar la misión|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Acepta la misión Esquirla arcana mácula
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
    >>Mata a las |cRXP_ENEMY_Ánimas arcanas|r y a las |cRXP_ENEMY_Ánimas arcanas máculas|r mientras subes por la Academia. Despójalos para obtener sus |cRXP_LOOT_Esquirlas|r
    >>Mata a |cRXP_ENEMY_Felendren el Desterrado|r en la cima. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 8335,1 --Kill Arcane Wraith (x8)
    .complete 8335,2 --Kill Tainted Arcane Wraith (x2)
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .complete 8335,3 --Collect Felendren's Head (x1)
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
    .mob Felendren the Banished
step
    .goto Eversong Woods,30.84,27.13
    >>Mata a un |cRXP_ENEMY_Ánima arcana mácula|r. Despójalo para obtener su |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r].
    >>|cRXP_WARN_Usa la |T132884:0|t[|cRXP_LOOT_Esquirla arcana mácula|r] para iniciar la misión|r
    .collect 20483,1,8338,1 --Tainted Arcane Sliver (1)
    .accept 8338 >>Acepta la misión Esquirla arcana mácula
    .mob Tainted Arcane Wraith
    .use 20483
step
    #completewith SolanianB
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Vermis de maná|r. Despójalos para obtener sus |cRXP_LOOT_Esquirlas|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Conjura |T136222:0|t[Torrente Arcano] cuando estés a rango de combate de un |cRXP_ENEMY_Vermis de maná|r
    .complete 8346,1 --Cast Arcane Torrent on Mana Wyrm (x1)
    .mob Mana Wyrm
step
    #loop
    .goto Eversong Woods,36.79,19.88,0
    .goto Eversong Woods,36.79,19.88,40,0
    .goto Eversong Woods,34.64,18.82,40,0
    .goto Eversong Woods,33.78,19.46,40,0
    .goto Eversong Woods,34.17,20.59,40,0
    >>Mata a los |cRXP_ENEMY_Vermis de maná|r. Despójalos para obtener sus |cRXP_LOOT_Esquirlas|r
    .complete 8336,1 --Collect Arcane Sliver (x6)
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helion|r e |cRXP_FRIENDLY_Ithanas|r
    .turnin 8346 >>Entrega la misión Sed insaciable
    .turnin 8338 >>Entrega la misión Esquirla arcana mácula
    .target +Arcanist Helion
    .goto Eversong Woods,37.18,18.94
    .turnin 8336 >>Entrega la misión Por un puñado de esquirlas
    .target +Arcanist Ithanas
    .goto Eversong Woods,38.27,19.13
step
    #completewith next
    .goto Eversong Woods,39.44,21.16,10,0
    .goto Eversong Woods,39.44,20.35,10,0
    .goto Eversong Woods,39.10,20.04,10 >>Sube las escaleras
step
    #label SolanianB
    .goto Eversong Woods,38.97,20.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solanian|r
    .turnin 8330 >>Entrega la misión Las posesiones de Solanian
    .turnin 8345 >>Entrega la misión Santuario de Dath'Remar
    .target Well Watcher Solanian
step << Hunter Cata
    .goto Eversong Woods,39.05,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Sallina|r
    .train 2973 >>Aprende |T132223:0|t[Golpe de raptor]
    .target Ranger Sallina
    .xp <6,1
step << Mage Cata
    .goto Eversong Woods,39.23,21.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Julia Golpesol|r
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Julia Sunstriker
    .xp <5,1
step << Paladin Cata
    .goto Eversong Woods,39.47,20.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jesthenis Golpesol|r
    .train 465 >>Aprende |T135893:0|t[Aura de devoción]
    .target Jesthenis Sunstriker
    .xp <5,1
step << Priest Cata
    .goto Eversong Woods,39.41,20.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matrona Arena|r
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Matron Arena
    .xp <5,1
step << Rogue Cata
    .goto Eversong Woods,38.93,20.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pathstalker Avokor|r
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Pathstalker Avokor
    .xp <5,1
step << Warlock Cata
    .goto Eversong Woods,38.94,21.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Invocador Teli'Larien|r
    .train 1454 >>Aprende |T136126:0|t[Transfusión de vida]
    .target Summoner Teli'Larien
    .xp <5,1
step << Warrior Cata
    .goto Eversong Woods,39.29,20.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delios Platahoja|r
    .train 34428 >>Aprende |T132342:0|t[Ataque de la victoria]
    .target Delios Silverblade
    .xp <5,1
step
    .goto Eversong Woods,35.37,22.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanthan|r
    .turnin 8335 >>Entrega la misión Felendren el Desterrado
    .accept 8347 >>Acepta la misión Ayudando a los avanzados
    .target Lanthan Perilon
step
    #completewith next
    .goto Eversong Woods,39.283,30.747,30,0
    .goto Eversong Woods,40.177,31.700,30 >>Cruza el Puente
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alarion|r
    .turnin 8347 >>Entrega la misión Ayudando a los avanzados
    .accept 9704 >>Acepta la misión Ejecutados por los desdichados
    .target Outrunner Alarion
step
    .goto Eversong Woods,42.020,35.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el cadáver del |cRXP_FRIENDLY_Outrunner|r en el suelo
    .turnin 9704 >>Entrega la misión Ejecutados por los desdichados
    .accept 9705 >>Acepta la misión Recuperación de paquete
    .target Slain Outrunner
step
    .goto Eversong Woods,40.420,32.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alarion|r
    .turnin 9705 >>Entrega la misión Recuperación de paquete
    .accept 8350 >>Acepta la misión El encargo
    .target Outrunner Alarion


]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Bosque Canción Eterna
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor BloodElf/Undead
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Jaela|r
    .accept 8475 >>Acepta la misión La Cicatriz Muerta
    .target Ranger Jaela
step << Undead
    #loop
    .goto Eversong Woods,49.857,55.567,0
    .waypoint Eversong Woods,49.699,53.225,40,0
    .waypoint Eversong Woods,49.857,55.567,40,0
    .waypoint Eversong Woods,49.851,57.816,40,0
    .waypoint Eversong Woods,50.095,59.583,40,0
    .waypoint Eversong Woods,51.072,56.126,40,0
    >>Mata a los |cRXP_ENEMY_Plaguebone Pillagers|r
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step << Undead
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Jaela|r
    .turnin 8475 >>Entrega la misión La Cicatriz Muerta
    .target Ranger Jaela
step
    #completewith next
    .subzone 3665 >>Viaja a Falconwing Square
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarondis|r
    .accept 8472 >>Acepta la misión Avería grave
    .target Magister Jaronis
step << !Undead
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entra en la Posada
step << !Undead
    .goto Eversong Woods,48.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delaniel|r
    .turnin 8350 >>Entrega la misión El encargo << BloodElf
    .home >>Establece tu Piedra de Hogar en Falconwing Square
    .target Innkeeper Delaniel
    .isQuestAvailable 8885
step << !Undead
    #completewith next
    .goto Eversong Woods,47.823,47.696,8,0
    .goto Eversong Woods,47.771,47.303,8 >>Sal
step
    .goto Eversong Woods,48.166,46.311
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 8468 >>Acepta la misión Wanted: Thaelis el Hambriento
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon Marcasol|r
    .accept 8463 >> Acepta la misión Cristales de maná inestables
    .target Aeldon Sunbrand
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vende tu arma a un vendedor de artículos basura si te da suficiente dinero para un |T135321:0|t[Gladius] (5s 9c). Volverás después si aún no tienes suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_al vendedor|r
    .collect 2488,1,8468,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T133053:0|t[Marra de madera] (6 platas 66 cobres). Volverás más tarde si aún no tienes suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra una|r |T133053:0|t[Marra de madera] |cRXP_BUY_al vendedor|r
    .collect 2493,1,8468,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Thaelis
    +Equipa el |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Thaelis
    +Equipa la |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.96,43.56,40,0
    .goto Eversong Woods,47.09,39.00,40,0
    >>Despoja las |cRXP_PICK_Unstable Maná Cristal Boxes|r en el suelo
    >>Mata a los |cRXP_ENEMY_Patrulleros Arcanos|r. Despójalos para obtener sus |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    #label Thaelis
    .goto Eversong Woods,45.02,37.68
    >>Mata al |cRXP_ENEMY_Thaelis el Hambriento|r. Despójalo para obtener |cRXP_LOOT_Thaelis's Cabeza|r
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
    .goto Eversong Woods,42.17,40.49,40,0
    >>Despoja las |cRXP_PICK_Unstable Maná Cristal Boxes|r en el suelo
    >>Mata a los |cRXP_ENEMY_Patrulleros Arcanos|r. Despójalos para obtener sus |cRXP_LOOT_Cores|r
    .complete 8463,1 --Collect Unstable Mana Crystal (x6)
    .complete 8472,1 --Collect Arcane Core (x6)
    .mob Arcane Patroller
step
    .goto Eversong Woods,47.256,46.314
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarondis|r
    .turnin 8472 >>Entrega la misión Avería grave
    .accept 8895 >>Acepta la misión Entrega para el Sagrario del Norte
    .target Magister Jaronis
step
    .goto Eversong Woods,47.77,46.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Kan'ren|r
    .turnin 8468 >>Entrega la misión Wanted: Thaelis el Hambriento
    .target Sergeant Kan'ren
step
    .goto Eversong Woods,48.165,45.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon Marcasol|r
    .turnin 8463 >>Entrega la misión Cristales de maná inestables
    .accept 9352 >>Acepta la misión Intrusiones darnassianas
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .train 635 >>Aprende tus hechizos de clase
    .target Noellene
	.xp <7,1
    .xp >9,1
step << Paladin Cata
    #optional
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .train 85673 >>Aprende tus hechizos de clase
    .target Noellene
    .xp >7,1
	.xp <9,1
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lothan|r
    .train 772 >>Aprende tus hechizos de clase
    .target Lothan Silverblade
	.xp <7,1
    .xp >9,1
step << Warrior Cata
    #optional
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lothan|r
    .train 6343 >>Aprende tus hechizos de clase
    .target Lothan Silverblade
    .xp >7,1
	.xp <9,1
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannaria|r arriba
    .train 5277 >>Aprende tus hechizos de clase
    .target Tannaria
	.xp <9,1
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 2973 >>Aprende tus hechizos de clase
    .target Hannovia
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    #optional
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 5116 >>Aprende tus hechizos de clase
    .target Hannovia
	.xp <8,1
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entra en la Posada
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Sube las escaleras
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r
    .train 588 >>Aprende tus hechizos de clase
    .target Ponaris
	.xp <7,1
    .xp >9,1
step << Priest Cata
    #optional
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Aprende tus hechizos de clase
    .target Ponaris
	.xp >7,1
    .xp <9,1
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r
    .train 116 >>Aprende tus hechizos de clase
    .target Garridel
	.xp <7,1
    .xp >8,1
step << Mage Cata
    #optional
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r
    .train 122 >>Aprende tus hechizos de clase
    .target Garridel
	.xp >7,1
    .xp <8,1
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r
    .train 689 >>Aprende tus hechizos de clase
    .target Celoenus
	.xp <6,1
    .xp >8,1
step << Warlock Cata
    #optional
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r
    .train 697 >>Aprende tus hechizos de clase
    .target Celoenus
	.xp >6,1
    .xp <8,1
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vende tu arma a un vendedor de artículos basura si te da suficiente dinero para un |T135321:0|t[Gladius] (5s 9c). Volverás después si aún no tienes suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_al vendedor|r
    .collect 2488,1,9062,1 --Gladius (1)
    .target Geron
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T133053:0|t[Marra de madera] (6 platas 66 cobres). Volverás más tarde si aún no tienes suficiente
    .target Geron
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Warrior/Paladin
    .goto Eversong Woods,48.492,45.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Geron|r
    >>|cRXP_BUY_Compra la|r |T133053:0|t[Marra de madera] |cRXP_BUY_al vendedor|r
    .collect 2493,1,9062,1 --Collect Wooden Mallet (1)
    .target Geron
    .money <0.0666
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Rogue
    #completewith Caidanis
    +Equipa la |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    #completewith Caidanis
    +Equipa la |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step
    #completewith next
    .goto Eversong Woods,46.68,48.07,30,0
    .goto Eversong Woods,44.63,53.13,30 >>Viaja hacia |cRXP_FRIENDLY_Caidanis|r
step
    #label Caidanis
    .goto Eversong Woods,44.63,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigilante-Ley Caidanis|r
    .turnin 8895 >>Entrega la misión Entrega para el Sagrario del Norte
    .accept 9119 >>Acepta la misión Disfunción en el Sagrario del Oeste
    .target Ley-Keeper Caidanis
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigilante-Ley Velania|r
    .turnin 9119 >>Entrega la misión Disfunción en el Sagrario del Oeste
    .accept 8486 >>Acepta la misión Inestabilidad arcana
    .target Ley-Keeper Velania
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Manawraiths|r y a los |cRXP_ENEMY_Mana Stalkers|r
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
    >>Mata a un |cRXP_ENEMY_Explorador darnassiano|r. Despójalo para obtener sus |T133464:0|t[|cRXP_LOOT_Documentos incriminadores|r]
    >>|cRXP_WARN_Usa|cRXP_LOOT_ |T133464:0|t[|rDocumentos incriminadores|r] para iniciar la misión
    .complete 9352,1 --Intruder Defeated
    .collect 20765,1,8482 --Incriminating Documents (1)
    .accept 8482 >> Acepta la misión Documentos incriminadores
    .mob Darnassian Scout
    .use 20765
step
    #loop
    .goto Eversong Woods,35.759,60.591,0
    .goto Eversong Woods,35.768,57.544,40,0
    .goto Eversong Woods,34.491,60.834,40,0
    .goto Eversong Woods,35.759,60.591,40,0
    .goto Eversong Woods,35.946,59.096,40,0
    >>Mata a los |cRXP_ENEMY_Manawraiths|r y a los |cRXP_ENEMY_Mana Stalkers|r
    .complete 8486,1 --Kill Manawraith (x5)
    .mob +Manawraith
    .complete 8486,2 --Kill Mana Stalker (x5)
    .mob +Mana Stalker
step
    .goto Eversong Woods,36.70,57.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vigilante-Ley Velania|r
    .turnin 8486 >>Entrega la misión Inestabilidad arcana
    .turnin 9352 >>Entrega la misión Intrusiones darnassianas
    .target Ley-Keeper Velania
step
    .goto Eversong Woods,30.22,58.35,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,29.90,58.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hathvelion Mirasol|r
    .accept 8884 >>Acepta la misión Aquí, pescadito...
    .target Hathvelion Sungaze
step
    #loop
    .goto Eversong Woods,25.61,64.29,0
    .goto Eversong Woods,27.47,56.54,40,0
    .goto Eversong Woods,26.45,58.14,40,0
    .goto Eversong Woods,26.35,59.41,40,0
    .goto Eversong Woods,28.20,59.52,40,0
    .goto Eversong Woods,27.96,61.31,40,0
    .goto Eversong Woods,25.70,60.50,40,0
    .goto Eversong Woods,25.36,62.88,40,0
    .goto Eversong Woods,25.61,64.29,40,0
    >>Mata a los |cRXP_ENEMY_Grimscale Foragers|r y a los |cRXP_ENEMY_Grimscale Seers|r. Despójalos para obtener sus |cRXP_LOOT_Murloc Cara|r y |T134939:0|t[|cRXP_LOOT_Rutas perdidas de la capitana Kelisendra|r]
    >>|cRXP_WARN_Usa|cRXP_LOOT_ |T134939:0|t[|rRutas perdidas de la capitana Kelisendra|r] para iniciar la misión
    .complete 8884,1 --Collect Grimscale Murloc Head (x8)
    .collect 21776,1,8887,1 --Captain Kelisendra's Lost Rutters
    .accept 8887 >>Acepta la misión Rutas perdidas de la capitana Kelisendra
    .mob Grimscale Forager
    .mob Grimscale Seer
    .use 21776
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hathvelion Mirasol|r
    .turnin 8884 >>Entrega la misión Cabezas de pescado, cabezas de pescado...
    .accept 8885 >>Acepta la misión El anillo de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #completewith next
    .goto Eversong Woods,27.94,59.41,20,0
    .goto Eversong Woods,28.01,61.01,20,0
    .goto Eversong Woods,26.25,60.46
    .deathskip >>Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #xprate <1.2
    .goto Eversong Woods,44.718,69.619
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velan Roblebrillante|r
    .accept 8491 >>Acepta la misión Caza de pelambres
    .target Velan Brightoak
step
    #completewith next
    .goto Eversong Woods,43.61,70.66,10 >>Sube las escaleras
step
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Forestal Degolien|r
    .accept 8892 >> Acepta la misión Problemas en el Fondeadero Vela del Sol
    .target Ranger Degolien
step << BloodElf
    .goto Eversong Woods,43.698,71.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sathiel|r
    .accept 9130 >>Acepta la misión Mercancía de Ciudad de Lunargenta
    .target Sathiel
    --VV TODO: See if this quest chain is live on beta
step << BloodElf
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro del cielo Alba Brillante |r
    .turnin 9130 >>Entrega la misión Mercancía de Ciudad de Lunargenta
    .accept 9133 >>Acepta la misión Vuelo a la Ciudad de Lunargenta
    .target Skymaster Brightdawn
step
    #xprate <1.2
    #completewith next
    .goto Eversong Woods,40.742,70.869,0
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelisendra|r y |cRXP_FRIENDLY_Velendris|r
    .turnin 8887 >>Entrega la misión Rutas perdidas de la capitana Kelisendra
    .accept 8886 >>Acepta la misión ¡Piratas Malaescama!
    .goto Eversong Woods,36.36,66.62
    .accept 8480 >>Acepta la misión El armamento perdido
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
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
    >>Despoja las |cRXP_PICK_Cajas de Armamento|r en el suelo cerca de los |cRXP_ENEMY_Wretched|r y dentro del edificio
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
    >>Mata al |cRXP_ENEMY_Aldaron el Temerario|r en la cima. Despójalo para obtener |cRXP_LOOT_Aldaron's Cabeza|r
    .complete 9076,1 --Collect Aldaron's Head (x1)
    .mob Aldaron the Reckless
step
    #loop
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
    #xprate <1.2
    #completewith next
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith next
    .goto Eversong Woods,24.32,74.07,40,0
    >>Mata a los |cRXP_ENEMY_Grimscale Murlocs|r y a los |cRXP_ENEMY_Grimscale Oracles|r. Despójalos para obtener su |cRXP_LOOT_Cargo|r
    >>Despoja los |cRXP_PICK_Barriles de Carga|r en el suelo
    >>|cRXP_WARN_Usa|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_para interrumpir la|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[Sanación relámpago] << BloodElf
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
    >>Mata al |cRXP_ENEMY_Mmmrrrggglll|r. Despójalo para obtener el |cRXP_LOOT_Ring of Mmmrrrggglll|r
    >>|cRXP_WARN_Él patrulla un poco por los alrededores|r
    >>|cRXP_WARN_Usa|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_para interrumpir|r |cRXP_ENEMY_Mmmrrrggglll|r's |T136052:0|t[Ola de sanación] << BloodElf
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
    >>Mata a los |cRXP_ENEMY_Grimscale Murlocs|r y a los |cRXP_ENEMY_Grimscale Oracles|r. Despójalos para obtener su |cRXP_LOOT_Cargo|r
    >>Despoja los |cRXP_PICK_Barriles de Carga|r en el suelo
    >>|cRXP_WARN_Usa|r |T136222:0|t[Torrente Arcano] |cRXP_WARN_para interrumpir la|r |cRXP_ENEMY_Grimscale Oracles|r' |T135907:0|t[Sanación relámpago] << BloodElf
    .complete 8886,1 --Collect Captain Kelisendra's Cargo (x6)
    .mob Grimscale Murloc
    .mob Grimscale Oracle
step
    .goto Eversong Woods,29.90,58.45,10,0
    .goto Eversong Woods,30.23,58.44,10,0
    .goto Eversong Woods,30.22,58.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hathvelion|r
    .turnin 8885 >>Entrega la misión El anillo de Mmmrrrggglll
    .target Hathvelion Sungaze
step
    #xprate <1.2
    #completewith next
    >>Mata a los |cRXP_ENEMY_Springpaw Stalkers|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelisendra|r y |cRXP_FRIENDLY_Velendris|r
    .turnin 8886 >>Entrega la misión ¡Piratas Malaescama!
    .goto Eversong Woods,36.36,66.62
    .turnin 9076 >>Entrega la misión El jefe de los desdichados
    .goto Eversong Woods,36.36,66.78
    .target Captain Kelisendra
    .target Velendris Whitemorn
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,36.115,71.876,0
    .goto Eversong Woods,28.840,71.832,0
    .waypoint Eversong Woods,36.115,71.876,60,0
    .waypoint Eversong Woods,34.94,74.229,60,0
    .waypoint Eversong Woods,28.840,71.832,60,0
    .waypoint Eversong Woods,26.134,73.852,60,0
    >>Termina de matar a los |cRXP_ENEMY_Springpaw Stalkers|r. Despójalos para obtener sus |cRXP_LOOT_Pieles|r
    .complete 8491,1 --Collect Springpaw Pelt (x6)
    .mob Springpaw Stalker
step
    #completewith SunsailTurnin
    .deathskip >> Muere y reaparece junto al |cRXP_FRIENDLY_Ángel de la Resurrección|r o corre de regreso a Fairbreeze Village
step
    #xprate <1.2
    .goto Eversong Woods,44.72,69.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Velan|r
    .turnin 8491 >>Entrega la misión Colección de pieles
    .target Velan Brightoak
step
    #label SunsailTurnin
    .goto Eversong Woods,43.34,70.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Degolien|r
    .turnin 8892 >>Entrega la misión Problemas en el Fondeadero Vela del Sol
    .target Ranger Degolien

    --Section below for users who are not level 10 yet

step
    #xprate <1.2
    .goto Eversong Woods,43.675,71.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marniel Luzámbar|r
    .accept 9358 >>Acepta la misión La forestal Sareyn
    .target Marniel Amberlight
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,44.030,70.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrix Landra Caminalba|r
    .accept 9254 >>Acepta la misión El aprendiz de díscolo
    .target Magistrix Landra Dawnstrider
    .maxlevel 9
step
    #xprate <1.2
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sareyn|r
    .turnin 9358 >>Entrega la misión La forestal Sareyn
    .accept 9252 >>Acepta la misión Defender la Aldea Brisa Pura
    .target Ranger Sareyn
    .isOnQuest 9358
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sareyn|r
    .accept 9252 >>Acepta la misión Defender la Aldea Brisa Pura
    .target Ranger Sareyn
    .isQuestTurnedIn 9358
step
    #xprate <1.2
    #completewith Notes
    >>Mata a los |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #loop
    .goto Eversong Woods,51.07,76.32,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    .goto Eversong Woods,50.89,80.74,40,0
    .goto Eversong Woods,50.83,78.68,40,0
    .goto Eversong Woods,50.42,77.39,40,0
    .goto Eversong Woods,51.07,76.32,40,0
    >>Mata a los |cRXP_ENEMY_Darkwraiths|r
    >>|cRXP_WARN_Ten cuidado porque los|r |cRXP_ENEMY_Darkwraiths|r |cRXP_WARN_lanzan|r |T136224:0|t[Enfurecer] |cRXP_WARN_(daño y velocidad de ataque aumentados) cuando tienen poca salud|r
    .complete 9252,2 --Kill Darkwraith (x4)
    .mob Darkwraith
    .isOnQuest 9252
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    .turnin 9254 >>Entrega la misión El aprendiz de díscolo
    .accept 8487 >>Acepta la misión Tierra corrupta
    .target Apprentice Mirveda
    .isOnQuest 9254
step
    #xprate <1.2
    #optional
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    .accept 8487 >>Acepta la misión Tierra corrupta
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
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
    >>Despójalas |cRXP_PICK_Montones de tierra contaminada|r en el suelo
    .complete 8487,1 --Collect Tainted Soil Sample (x8)
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    >>|cRXP_WARN_Espera al Roleplay|r
    .turnin 8487 >>Entrega la misión Tierra corrupta
    .timer 9,Tierra corrupta RP
    .accept 8488 >>Acepta la misión Resultados inesperados
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    .goto Eversong Woods,53.66,69.74,20,0
    .goto Eversong Woods,54.28,70.97
    >>Mata a |cRXP_ENEMY_Gharsul el Despiadado|r y a los |cRXP_ENEMY_Angershades|r para proteger a |cRXP_FRIENDLY_Mirveda|r
    .complete 8488,1 --Protect Apprentice Mirveda
    .mob Gharsul the Remorseless
    .mob Angershade
    .isQuestTurnedIn 9254
step
    #xprate <1.2
    #label Notes
    .goto Eversong Woods,54.28,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirveda|r
    .turnin 8488 >>Entrega la misión Resultados inesperados
    .accept 9255 >>Acepta la misión Notas de investigación
    .target Apprentice Mirveda
    .isQuestTurnedIn 9254
step
    #xprate <1.2
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
    >>Mata a los |cRXP_ENEMY_Rotlimb Marauders|r
    .complete 9252,1 --Kill Rotlimb Marauder (x4)
    .mob Rotlimb Marauder
    .isOnQuest 9252
step
    #xprate <1.2
    #completewith DefendingFBV
    .deathskip >> Muere y reaparece junto al |cRXP_FRIENDLY_Ángel de la Resurrección|r o corre de regreso a Fairbreeze Village
    .isQuestComplete 9252
step
    #xprate <1.2
    .goto Eversong Woods,44.029,70.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrix Landra Caminalba|r
    .turnin 9255 >>Entrega la misión Notas de investigación
    .target Magistrix Landra Dawnstrider
    .isQuestComplete 9255
step
    #xprate <1.2
    #label DefendingFBV
    .goto Eversong Woods,46.93,71.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sareyn|r
    .turnin 9252 >> Entrega la misión Defender la Aldea Brisa Pura
    .target Ranger Sareyn
    .isQuestComplete 9252
step << !Undead
    #completewith IncrDocs
    .hs >> Usa tu Piedra de Hogar para ir a Falconwing Square
    .cooldown item,6948,>2,1
step
    #completewith IncrDocs
    .goto Eversong Woods,43.949,69.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro del cielo Alba Brillante |r
    .fly Falconwing Square >>Vuela a la Plaza Alalcón
    .target Skymaster Brightdawn
    .cooldown item,6948,<0 << !Undead
step
    #label IncrDocs
    .goto Eversong Woods,48.17,46.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeldon|r
    .turnin 8482 >> Entrega la misión Documentos incriminadores
    .target Aeldon Sunbrand
step << Paladin Cata
    .goto Eversong Woods,48.39,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noellene|r
    .train 20473 >>Aprende tus hechizos de clase
    .target Noellene
step << Warrior Cata
    .goto Eversong Woods,48.29,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lothan|r
    .train 71 >>Aprende tus hechizos de clase
    .target Lothan Silverblade
step << Rogue Cata
    .goto Eversong Woods,48.58,46.29,8,0
    .goto Eversong Woods,48.50,45.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannaria|r arriba
    .train 5277 >>Aprende tus hechizos de clase
    .target Tannaria
step << Hunter Cata
    .goto Eversong Woods,48.27,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hannovia|r
    .train 34026 >>Aprende tus hechizos de clase
    .target Hannovia
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,47.771,47.303,8,0
    .goto Eversong Woods,47.823,47.696,8 >>Entra en la Posada
step << Mage Cata/Warlock Cata/Priest Cata
    #optional
    #completewith next
    .goto Eversong Woods,48.286,47.097,8,0
    .goto Eversong Woods,48.054,47.130,8,0
    .goto Eversong Woods,48.074,47.354,8 >>Sube las escaleras
step << Priest Cata
    .goto Eversong Woods,47.85,47.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponaris|r
    .train 8092 >>Aprende tus hechizos de clase
    .target Ponaris
step << Mage Cata
    .goto Eversong Woods,48.04,48.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garridel|r
    .train 2139 >>Aprende tus hechizos de clase
    .target Garridel
step << Warlock Cata
    .goto Eversong Woods,48.23,47.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celoenus|r
    .train 1120 >>Aprende tus hechizos de clase
    .target Celoenus
step << !Undead
    #completewith next
    .goto Eversong Woods,46.244,46.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maestro del cielo Skyles|r
    .fly Silvermoon >>Vuela a la Ciudad de Lunargenta
    .target Skymaster Skyles
step << !Undead
    .goto Eversong Woods,56.644,49.628,20,0
    .goto Eversong Woods,56.253,49.224,10,0
    .goto 110,70.881,86.623,10,0
    .goto 110,72.396,85.242
    .zone Silvermoon City >>Entra a Ciudad de Lunargenta
step << BloodElf
    .goto Silvermoon City,53.92,71.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sathren Azurocaso|r
    .turnin 9133 >>Entrega la misión Vuelo a la Ciudad de Lunargenta
    .target Sathren Azuredawn
    .isOnQuest 9133
step << !Undead
    #completewith next
    .goto Silvermoon City,57.53,24.56,10,0
    .goto Silvermoon City,51.77,17.86,10,0
    .goto Silvermoon City,49.48,14.80
    .zone Undercity >>Toma el Orbe de traslado hacia Undercity
step << !Undead
    #completewith next
    .goto 18,66.17,4.93,10,0
    .goto 18,61.88,64.94,10 >>Sal de Undercity
    .zoneskip Tirisfal Glades
step << Undead
    #completewith next
    .hs >>Usa tu Piedra de Hogar para ir a Rémol
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morris|r
    .turnin 6324 >>Entrega la misión Suministros para Brill
    .target Deathguard Morris
step
    .goto 18,61.06,58.86,12,0
    .goto 18,61.51,59.01,10,0
    .goto 18,61.27,59.22,8,0
    .goto 18,61.13,58.84,8,0
    .goto 18,61.38,58.71,8,0
    .goto 18,61.34,59.17,8,0
    .goto 18,60.51,58.69
    >>Sube a la Torre del Zepelín
    .zone Orgrimmar >>Toma el zepelín hacia Orgrimmar
]])
