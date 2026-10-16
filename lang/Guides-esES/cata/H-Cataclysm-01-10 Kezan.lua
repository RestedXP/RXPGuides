if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Kezan
#next 6-11 Las Islas Perdidas
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Sassy|r
    .accept 14138 >>Acepta la misión Cuidando del negocio
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Dampwick|r
    .turnin 14138 >>Entrega la misión Cuidando del negocio
    .accept 14069 >>Acepta la misión El buen servicio es difícil de encontrar
    .accept 14075 >>Acepta la misión Problemas en las minas
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>Entra en las minas
step
    #completewith KezanTroubleintheMines
    >>Haz clic en los |cRXP_FRIENDLY_Defiant Trolls|r. También puedes encontrarlos fuera de las minas.
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>Mata a los |cRXP_ENEMY_Tunneling Worms|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Sal de las minas
step
    >>Haz clic en los |cRXP_FRIENDLY_Defiant Trolls|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Mechamojada|r
    .turnin 14075 >>Entrega la misión Problemas en las minas
    .turnin 14069 >>Entrega la misión El buen servicio es difícil de encontrar
    .accept 25473 >>Acepta la misión Kaja'Cola
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Sassy Malallave|r
    .turnin 25473 >>Entrega la misión Kaja'Cola
    .accept 28349 >>Acepta la misión Megs de marketing
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Megs Trituramatic|r
    .turnin 28349 >>Entrega la misión Megs de marketing
    .accept 14071 >>Acepta la misión Voy en un coche...
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>Usar la |T134246:0|t[Llaves del bólido]
    >>|cRXP_WARN_Puedes asignar una tecla a la ventana "Activo Objetos" en RestedXP presionando Escape y luego yendo a Options->Keybindings->RestedXP Guides.|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>Viaja hacia |cRXP_FRIENDLY_Izzy|r
    >>|cRXP_WARN_Usar|r |T135788:0|t[Puñetazo] |cRXP_WARN_para aumentar tu velocidad|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>Viaja hacia |cRXP_FRIENDLY_Gargajo|r
    >>|cRXP_WARN_Usar|r |T135788:0|t[Puñetazo] |cRXP_WARN_para aumentar tu velocidad|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>Viaja hacia |cRXP_FRIENDLY_As|r
    >>|cRXP_WARN_Usar|r |T135788:0|t[Puñetazo] |cRXP_WARN_para aumentar tu velocidad|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>Sigue la calle de vuelta hacia arriba
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Megs|r, |cFF00FF25Sassy|r y |cFF00FF25Esquirla|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Megs|r, |cFF00FF25Sassy|r y |cFF00FF25Candy|r << Male
    .turnin 14071 >>Entrega la misión Voy en un coche...
    .accept 24567 >>Acepta la misión ¡A por ellos!
    .goto 194,58.28,76.57
    .accept 14070 >>Acepta la misión Encárgate personalmente
    .goto 194,56.43,76.95
    .accept 26711 >>Acepta la misión Al banco << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>Acepta la misión Al banco << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Asegúrate de usar tus|r |T134246:0|t[Llaves del bólido]
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >> Sigue la flecha alrededor de la casa
step
    .goto 194,45.19,74.76
    >>Ataca a |cFFFF5722Bruno|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>Ataca a |cFFFF5722Espumoso|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>Ataca a |cFFFF5722Jack|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>Ataca a |cFFFF5722Frankei|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Asegúrate de usar tus|r |T134246:0|t[Llaves del bólido]
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEntra al banco y habla con el |cFF00FF25Cajero de PBK|r
    .turnin 26711 >>Entrega la misión Al banco <<Female
    .accept 14110 >>Acepta la misión Tu nuevo yo <<Female
    .turnin 26712 >>Entrega la misión Al banco <<Male
    .accept 14109 >>Acepta la misión Tu nuevo yo <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00Asegúrate de usar|r |T134246:0|t[Llaves del bólido]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Szabo|r
    >>Obtén |cRXP_LOOT_a Hip New Outfit|r de él
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Gappy|r
    >>Obtén el |cRXP_LOOT_Shiny Bling|r de él
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Missa|r
    >>Obtén las |cRXP_LOOT_Gafas de sol chulas |rde ella
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Crosscheck|r
    .turnin 24567 >>Entrega la misión ¡A por ellos!
    .accept 24488 >>Acepta la misión Los repuestos
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>Recoge las |cFFDB2EEFReplacements Parts|r del suelo mientras estás en el |cFFFCDC00Bólido|r
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Crosscheck|r
    .turnin 24488 >>Entrega la misión Los repuestos
    .accept 24502 >>Acepta la misión Dureza necesaria
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>Sube al |cRXP_FRIENDLY_Bilgewater Bucanero|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>Usar |T134480:0|t[Lanzar bombalón] (1) para matar a los |cRXP_ENEMY_Steamwheedle Sharks|r frente a ti
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>Haz clic en la misión en tu registro de misiones; puede que tengas que desmontar para aceptar la siguiente misión de |cFF00FF25Crosscheck|r
    .goto 194,48.79,57.79
    .turnin 24502 >>Entrega la misión Dureza necesaria haciendo clic en la misión bajo tu minimapa
    --.accept 24503 >>Accept Fourth and Goal << Male
    .accept 28414 >>Acepta la misión El tanto de la victoria
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >> Sube al |cRXP_FRIENDLY_Bilgewater Bucanero|r
    .target Bilgewater Buccaneer
step
    >>Usar |T134480:0|tChutar bombalón (1)
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00Abandona el vehículo|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Crosscheck|r
    .turnin 24503 >>Entrega la misión El tanto de la victoria
    --.turnin 28414 >>Turn in Fourth and Goal << Male
    .accept 24520 >>Acepta la misión Cuéntale a Sassy las nuevas
    .target Coach Crosscheck
step
    #completewith next
    .hs >>Usa tu Piedra de Hogar para ir a KTC Headquarters
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Sassy|r y |cFF00FF25Esquirla|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Sassy|r y |cFF00FF25Candy|r << Male
    .turnin 24520 >>Entrega la misión Cuéntale a Sassy las nuevas
    .turnin 14070 >>Entrega la misión Encárgate personalmente
    .goto 194,56.42,76.94
    .turnin 14110 >>Entrega la misión Tu nuevo yo << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>Entrega la misión Tu nuevo yo << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Slinky|r
    .accept 14010 >>Acepta la misión Eviscerar
    .train 2098 >> Aprende |T132292:0|t[Eviscerar] << Cata
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Guerreromática NX-01|r
    .accept 14013 >>Acepta Cargar
    .train 100 >> |T132337:0|t[Cargar] << Cata
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Bamm|r
    .accept 14007 >>Acepta la misión Disparo firme
    .train 56641 >>Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Maxx|r
    .accept 14011 >>Acepta la misión Golpe primigenio
    .train 73899 >>Aprende |T460956:0|t[Golpe primigenio] << Cata
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Fizz|r
    .accept 14008 >>Acepta la misión Misiles Arcanos
    .train 5143 >>Aprende |T136096:0|t[Misiles Arcanos] << Cata
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Fizz|r
    .accept 14008 >>Acepta la misión Nova de Escarcha
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Evol|r
    .accept 14012 >>Acepta Inmolar
    .train 348 >>Aprende |T135817:0|t[Inmolar] << Cata
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Evol|r
    .accept 14012 >>Acepta la misión Corrupción
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Goldskimmer|r
    .accept 14009 >>Acepta Sanación relámpago
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << Cata
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Goldskimmer|r
    .accept 14009 >>Acepta la misión Ayudando a los heridos
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>Usa |T132292:0|t[Eviscerar] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14010,2 << !Cata --Cast Eviscerate (x3)
	.complete 14010,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>Usa |T132337:0|t[Cargar] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14013,2 << !Cata --Cast Charge (x3)
	.complete 14013,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>Usa |T132213:0|t[Vigía del pozo Solanian] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14007,2 << !Cata --Steady Shot (x3)
	.complete 14007,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>Usa |T460956:0|t[Golpe primigenio] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14011,2 << !Cata --Cast Primal Strike (x3)
	.complete 14011,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage cata
    .goto 194,60.91,77.39
	>>Usa |T136096:0|t[Misiles Arcanos] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 194,60.91,77.39
	>>Usa |T135848:0|t[Vigía del pozo Solanian] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14008,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 14008,1 << Cata --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock cata
    .goto 194,60.91,77.39
	>>Usa |T135817:0|t[Inmolar] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14012,1 --Cast Immolate (x3)
	.mob Training Dummy
step << Warlock !cata
    .goto 194,60.91,77.39
	>>Usa |T136118:0|t[Vigía del pozo Solanian] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14012,2 << !Cata --Cast Corruption (x3)
	.mob Training Dummy
step << Priest cata
    .goto 194,58.24,77.40
	>>Usa |T135907:0|t[Sanación relámpago] en un |cFF00FF25Empleado herido|r
	.complete 14009,1 --Cast Flash Heal (x5)
	.target Injured Employee
step << Priest !cata
    .goto 194,60.91,77.39
	>>Usa |T136207:0|t[Palabra de las Sombras: dolor] en un |cFFFF5722Muñeco de entrenamiento|r
	.complete 14009,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Slinky|r
    .turnin 14010 >>Gira a Eviscerar
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Guerreromática NX-01|r
    .turnin 14013 >>Gira a Cargar
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Bamm|r
    .turnin 14007 >>Entrega la misión Tiro firme
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Maxx|r
    .turnin 14011 >>Entrega la misión Golpe primigenio
    .target Maxx Avalanche
step << Mage cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Fizz|r
    .turnin 14008 >>Entrega la misión Misiles Arcanos
    .target Fizz Lighter
step << Mage !cata
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Fizz|r
    .turnin 14008 >>Entrega la misión Vigía del pozo Solanian
    .target Fizz Lighter
step << Warlock cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Evol|r
    .turnin 14012 >>Gira a Inmolar
    .target Evol Fingers
step << Warlock !cata
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Evol|r
    .turnin 14012 >>Gira a Inmolar
    .target Evol Fingers
step << Priest cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Gira a Sanación relámpago
    .target Sister Goldskimmer
step << Priest !cata
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Goldskimmer|r
    .turnin 14009 >>Entrega la misión Aprender la palabra
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Esquirla|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Candy|r << Male
    .accept 14153 >>Acepta la misión El alma de la fiesta << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>Acepta la misión El alma de la fiesta << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>Usa |T132809:0|t[Espumoso] (1) en |cRXP_FRIENDLY_Goblins|r que beben
    >>Usa el |T132806:0|t[Cubo] (2) en |cRXP_FRIENDLY_Goblins|r que se ven borrachos/confundidos
    >>|T133836:0|t[Bailar] (3) con |cRXP_FRIENDLY_Goblins|r que bailan
    >>Usa |T134285:0|t[Fuegos artificiales] (4) en |cRXP_FRIENDLY_Goblins|r con chispas
    >>Usa |T237329:0|t[Aperitivos] (5) en |cRXP_FRIENDLY_Goblins|r que comen
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Sassy|r
    .turnin 14153 >>Entrega la misión El alma de la fiesta << Female
	.turnin 14113 >>Entrega la misión El alma de la fiesta << Male
    .accept 14115 >>Acepta la misión Aguafiestas piratas
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>Mata a Pirata Grupo Crashers|cRXP_ENEMY_
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Sassy|r
    .turnin 14115 >>Entrega la misión Aguafiestas piratas
    .accept 14116 >>Acepta la misión El invitado no deseado
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>Sube las escaleras
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Gallywix|r
    .turnin 14116 >>Entrega la misión El invitado no deseado
    .accept 14120 >>Acepta la misión ¡¿Un bazillón de macarrones?!
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSalta por la ventana y habla con |cFF00FF25Sassy|r
    .turnin 14120 >>Entrega la misión ¡¿Un bazillón de macarrones?!
    .accept 14122 >>Acepta la misión El gran atraco al banco
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megs Trituramatic|r
    .accept 14121 >>Acepta la misión Atracadores
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Supervisor Mechamojada|r
    .accept 14124 >>Acepta la misión Libera la kaja'mita
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_Usa tus|r |T134246:0|t[Llaves del bólido]|cRXP_WARN_. Mientras estés en el vehículo eres inmune al daño de caída|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>Apunta las |T133712:0|t[Bombas Kabum] a los |cRXP_PICK_Kaja'mite Deposits|r y despoja los |cFF00BCD4Kaja'mite Chunks|r en el suelo cerca de las minas
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Slinky|r. Se mueve alrededor
    .accept 14123 >>Acepta la misión Entrar como si nada
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_Usa tus|r |T134246:0|t[Llaves del bólido]|cRXP_WARN_. Mientras estés en el vehículo eres inmune al daño de caída|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>Atropella a los |cFFFF5722Hired Looters|r cuando los veas
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>Haz clic en el |cRXP_PICK_First Bank of Kezan Vault|r
    >>|cRXP_WARN_Sigue las instrucciones mostradas en el centro de tu pantalla|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>Atropella a los |cFFFF5722Hired Looters|r cuando los veas
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Usa las Llaves del bólido|r.
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00Evita patrullajes|r |cFFFF5722Villa Mooks|r |cFFFCDC00y|r |cFFFF5722Keensnout Potbellies|r |cFFFCDC00porque pueden detectarte y matarte|r
    .mob Keensnout Potbelly
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>Recoge la |cFF00BCD4The Ultimate Bomba|r
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>Recoge la |cFF00BCD4The Goblin Lisa|r
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>Sube las escaleras
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>Recoge el |cFF00BCD4Maldy's Falcon|r
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>Salta por la ventana y corre entre los |cFFFF5722Villa Mooks|r o |cFFFF5722Keensnout Potbellies|r hostiles
    .deathskip >>Muere y resucita en el |cFF00FF25Ángel de la Resurrección|r
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keensnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>Sigue el camino hacia el Cuartel General
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Slinky|r. Se mueve alrededor
    .turnin 14123 >>Entrega la misión Entrar como si nada
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Supervisor Mechamojada|r
    .target Foreman Dampwick
    .turnin 14124 >>Entrega la misión Libera la kaja'mita
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megs Trituramatic|r
    .target Megs Dreadshredder
    .turnin 14121 >>Entrega la misión Atracadores
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .target Sassy Hardwrench
    .turnin 14122 >>Entrega la misión El gran atraco al banco
    .accept 14125 >>Acepta la misión 447
step
    .goto 194/648,1371.00000,-8420.79980
    >>Entra en la casa y haz clic en el |cFF00BCD4Defective Generator|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>Haz clic en la |cFF00BCD4Leaky Stove|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>Sube las escaleras y haz clic en la |cFF00BCD4Flammable Bed|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>Salta por la ventana y haz clic en el |cFF00BCD4Gasbot Panel de control|r
    >>|cRXP_WARN_Espera a que termine el corto Roleplay|r
    .timer 17,447 RP
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revisor de reclamaciones|r
    .target Claims Adjuster
    .turnin 14125 >>Entrega la misión 447
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .target Sassy Hardwrench
    .accept 14126 >>Acepta la misión Ahorros de toda una vida
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00Asegúrate de usar tus|r |T134246:0|t[Llaves del bólido]
step
    #completewith next
    .goto 194,23.18,39.30,15 >>Viaja hacia la Villa de Gallywix
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >> Haz clic en el cañón
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Gallywix|r
    .turnin 14126 >>Entrega la misión Ahorros de toda una vida
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-11 Las Islas Perdidas
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Goblin
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #completewith next
    >>A veces puedes quedarte atascado y tendrás que volver a iniciar sesión o usar /reload
    .timer 45 >> No entres en la luz RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Zapnozzle|r y |cFF00FF25Gizmo|r
    .turnin 14239 >>Entrega la misión ¡No vayas hacia la Luz!
    .goto 174,24.62,77.86
    .accept 14001 >>Acepta la misión Cápsulas de escape goblin
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doc Pinchamorros|r
    >>A veces puedes quedarte atascado y tendrás que volver a iniciar sesión o usar /reload
    .goto 174,24.6,77.9
    .turnin 14239 >>Entrega la misión ¡No vayas hacia la Luz!
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trasto Cadenas|r
    .accept 14001 >>Acepta la misión Cápsulas de escape goblin
    .target Geargrinder Gizmo
step
    >>Haz clic en el |cRXP_PICK_Goblin Escapar Pod|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,27.9,75.5
    .turnin 14001 >>Entrega la misión Cápsulas de escape goblin
    .accept 14014 >>Acepta la misión ¡Devuélvenos lo que es nuestro!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxx Avalancha|r
    .goto 174,27.85,74.29
    .accept 14473 >>Acepta la misión Ahora es nuestro problema
    .trainer >>Aprende tus hechizos de clase << Shaman Cata
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bamm Megabomba|r
    .goto 174,27.95,74.43
    .accept 14019 >>Acepta la misión Plátanos explosivos
    .trainer >>Aprende tus hechizos de clase << Hunter Cata
    .target Bamm Megabomb
step << Priest Cata
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Sacacuartos|r
    .trainer >>Aprende tus hechizos de clase
    .target Sister Goldskimmer
step << Mage Cata
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fizz Mechero|r
    .trainer >>Aprende tus hechizos de clase
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Evol Dedos|r
    .trainer >>Aprende tus hechizos de clase
    .target Evol Fingers
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guerreromática NX-01|r
    .trainer >>Aprende tus hechizos de clase
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Finta Navajazos|r
    .trainer >>Aprende tus hechizos de clase
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>Tame a |cRXP_ENEMY_Teraptor Hatchling|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>Usa los |T133979:0|t[Plátanos de nitropotasio] en los |cRXP_ENEMY_Bomb Lanzamiento Monkeys|r y mata a los |cRXP_ENEMY_Teraptor Hatchlings|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>Recoge los |cRXP_LOOT_Crates of Herramientas|r
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxx Avalancha|r y |cRXP_FRIENDLY_Bamm Megabomba|r
    .turnin 14473 >>Entrega la misión Ahora es nuestro problema
    .goto 174,27.85,74.29
    .turnin 14019 >>Entrega la misión Plátanos explosivos
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,27.9,75.5
    .turnin 14014 >>Entrega la misión ¡Devuélvenos lo que es nuestro!
    .accept 14248 >>Acepta la misión ¡Socorro!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Supervisor Mechamojada|r
    .goto 174,31.27,79.26
    .turnin 14248 >>Entrega la misión ¡Socorro!
    .accept 14021 >>Acepta la misión Problemas mineros
    .accept 14031 >>Acepta la misión Fotografiar lo desconocido
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>Sigue y protege al |cRXP_FRIENDLY_Minero aterrorizado|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>Usa la |T134442:0|t[KTC Fotoflash] para fotografiar el cuadro en la pared marcado con una cámara flotante
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>Usa el |T134442:0|t[KTC Fotoflash] para tomar una foto del cuadro en el techo marcado con una cámara flotante
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>Usa la |T134442:0|t[KTC Fotoflash] para fotografiar el cuadro en la pared marcado con una cámara flotante
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>Usa la |T134442:0|t[KTC Fotoflash] para fotografiar el cuadro en la pared marcado con una cámara flotante
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tIntenta hablar con el |cRXP_FRIENDLY_Explorador orco muerto|r
    .accept 14233 >>Acepta la misión ¿Los orcos saben escribir?
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>Sigue y protege al |cRXP_FRIENDLY_Minero aterrorizado|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tAbandona la cueva y habla con el |cRXP_FRIENDLY_Supervisor Mechamojada|r
    .turnin 14021 >>Entrega la misión Problemas mineros
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .turnin 14031 >>Entrega la misión Fotografiar lo desconocido
    .turnin 14233 >>Entrega la misión ¿Los orcos saben escribir?
    .accept 14234 >>Acepta la misión El enemigo de mi enemigo
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>Sigue el sendero montaña arriba
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14234 >>Entrega la misión El enemigo de mi enemigo
    .accept 14235 >>Acepta la misión El Valle Atroz
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Kilag Mandisangre|r
    .goto 174,35.43,75.71
    .turnin 14235 >>Entrega la misión El Valle Atroz
    .accept 14236 >>Acepta la misión El Segador de malas hierbas
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>Usa el |cRXP_FRIENDLY_Segador de malas hierbas|r y corre a través de las |cRXP_ENEMY_plantas|r para matarlas
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Kilag Mandisangre|r
    .goto 174,35.43,75.71
    .turnin 14236 >>Entrega la misión Segador de malas hierbas
    .accept 14303 >>Acepta la misión Vuelve con Aggra
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggra|r
    .goto 174,37.63,78.02
    .turnin 14303 >>Entrega la misión Vuelve con Aggra
    .accept 14237 >>Acepta la misión ¡Adelante!
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Kilag Mandisangre|r
    .goto 174,34.62,66.85
    .turnin 14237 >>Entrega la misión ¡Adelante!
    .accept 14238 >>Acepta la misión Infrarrojos = inframuertos
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>Mata a los |cRXP_ENEMY_SI:7 Assassins|r
    >>|cRXP_WARN_Usa tu|r |T133149:0|t[Lentes focales infrarrojas] |cRXP_WARN_para verlos|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Kilag Mandisangre|r
    .goto 174,34.61,66.85
    .turnin 14238 >>Entrega la misión Infrarrojos = inframuertos
    .accept 14240 >>Acepta la misión A los acantilados
    .timer 52,Monta sobre Bastia
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>Espera hasta que llegues al |cRXP_FRIENDLY_Explorador Brax|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Brax|r
    .goto 174,25.28,59.84
    .turnin 14240 >>Entrega la misión A los acantilados
    .accept 14241 >>Acepta la misión ¡Pilotar el girocóptero!
    .target Scout Brax
step
    >>Mata a los |cRXP_ENEMY_SI:7 Operatives|r y a los |cRXP_ENEMY_Gyrochopper Pilots|r. Despójalos para obtener las |cRXP_LOOT_Gyrochoppa Keys|r
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>Interactuarúa con el |cRXP_FRIENDLY_Girocóptero|r
    >>|cRXP_WARN_Puedes ignorar|r el |cRXP_ENEMY_Gyrochoppa Piloto|r
    .turnin 14241 >>Entrega la misión ¡Pilotar el girocóptero!
    .accept 14242 >>Acepta la misión Un cargamento preciado
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBaja al barco y habla con el |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .goto 174,11.8,62.8
    .turnin 14242 >>Entrega la misión Un cargamento preciado
    .accept 14326 >>Acepta la misión Reunión en cubierta
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSal afuera y encuentra al |cRXP_FRIENDLY_Thrall|r en la cubierta
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>Entrega la misión Reunión en cubierta
    .accept 14243 >>Acepta la misión La venganza del Jefe de Guerra
    .target Thrall
step
    >>Usa |T237589:0|t[Golpe de relámpago] (1) para matar a los |cRXP_FRIENDLY_Alliance Sailors|r.
    >>|cRXP_WARN_Apunta a los barcos más pequeños|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .goto 174,35.92,66.72
    .turnin 14243 >>Entrega la misión La venganza del Jefe de Guerra
    .accept 14445 >>Acepta la misión Esto no es un adiós, sino un hasta luego
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,36.02,67.53
    .turnin 14445 >>Entrega la misión Esto no es un adiós, sino un hasta luego
    .accept 14244 >>Acepta la misión Preparados, listos, ¡fuego!
    .target Sassy Hardwrench
step
    >>Haz clic en el |cRXP_PICK_Cohete Sling|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Mechamojada|r
    .goto 174,44.54,64.36
    .turnin 14244 >>Entrega la misión Preparados, listos, ¡fuego!
    .accept 14245 >>Acepta la misión La Ciudad de Bolsillo
    .target Foreman Dampwick
step
    >>Haz clic en el |cRXP_PICK_Town-In-A-Caja Plunger|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Mechamojada|r
    .goto 174,45.36,64.74
    .turnin 14245 >>Entrega la misión La Ciudad de Bolsillo
    .accept 27139 >>Acepta la misión Hobart te necesita
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart Martillazos|r
    .goto 174,45.34,65.22
    .turnin 27139 >>Entrega la misión Hobart te necesita
    .accept 24671 >>Acepta la misión Perseguir al pollo
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Grimy Dedosgrasos|r
    .home >>Establece tu Piedra de hogar en Town-In-A-Caja
    .target Grimy Greasefingers
    .isQuestAvailable 24925
step << Priest Cata
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Sacacuartos|r
    .trainer >>Aprende tus hechizos de clase
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bamm Megabomba|r
    .trainer >>Aprende tus hechizos de clase
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fizz Mechero|r
    .trainer >>Aprende tus hechizos de clase
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Evol Dedos|r
    .trainer >>Aprende tus hechizos de clase
    .target Evol Fingers
step << Shaman Cata
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxx Avalancha|r
    .trainer >>Aprende tus hechizos de clase
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guerreromática NX-01|r
    .trainer >>Aprende tus hechizos de clase
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Finta Navajazos|r
    .trainer >>Aprende tus hechizos de clase
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>Usa tu |T134273:0|t[Fuegos artificiales teledirigidos] para capturar |cRXP_PICK_Wild Cluckers|r alrededor del pueblo
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart Martillazos|r y |cRXP_FRIENDLY_Bamm Megabomba|r
    .turnin 24671 >>Entrega la misión Perseguir al pollo
    .goto 174,45.34,65.22
    .accept 24741 >>Acepta la misión Dar el cambiazo
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>Usa los |T236997:0|t[Salvaje Cluster Eggs] para colocar un huevo en una trampa. Luego espera hasta que un |cRXP_ENEMY_Spiny Raptor|r entre en la trampa y despoja el |cRXP_PICK_Spiny Raptor Huevo|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bamm Megabomba|r y |cRXP_FRIENDLY_Hobart Martillazos|r
    .turnin 24741 >>Entrega la misión Dar el cambiazo
    .goto 174,45.25,64.85
    .accept 24744 >>Acepta la misión El huevo más grande del mundo
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>Mata al |cRXP_ENEMY_Mecapollo|r. Despoja |cRXP_LOOT_El huevo más grande del mundo|r que cae en el suelo
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart Martillazos|r
    .goto 174,45.34,65.21
    .turnin 24744 >>Entrega la misión El huevo más grande del mundo
    .accept 24816 >>Acepta la misión ¿Y ahora quién encabeza la cadena alimentaria?
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>Mata a los |cRXP_ENEMY_Ravenous Lurkers|r. Despoja para obtener sus |cRXP_LOOT_Shark Parts|r
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .goto 174,45.27,65.57
    .turnin 24816 >>Entrega la misión ¿Y ahora quién encabeza la cadena alimentaria?
    .accept 24817 >>Acepta la misión Un goblin con piel de tiburón
    .target Assistant Greely
step
    >>Haz clic en el |cRXP_PICK_Mechshark X-Vapor Controlador|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>Usa |T132345:0|t[Alucinante rayo láser] (1) y |T135821:0|t[Descarga de huevos explosivos] (2) para matar al |cRXP_ENEMY_The Martillo|r
    >>|cRXP_WARN_Usa|r |T132996:0|t[Reparar] |cRXP_WARN_para sanar si es necesario|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart Martillazos|r
    .goto 174,45.34,65.21
    .turnin 24817 >>Entrega la misión Un goblin con piel de tiburón
    .accept 24856 >>Acepta la misión ¡Invasión inminente!
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megs Trituramatic|r
    .goto 174,52.2,73.2
    .turnin 24856 >>Entrega la misión ¡Invasión inminente!
    .accept 24858 >>Acepta la misión El Cártel Pantoque
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brett McPasta "el Monedas"|r
    .goto 174,52.20,73.22
    .accept 24859 >>Acepta la misión Pellejo de naga
    .target Brett "Coins" McQuid
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Vashj'elan Warriors|r y a los |cRXP_ENEMY_Vashj'elan Sirens|r. Despoja para obtener sus |cRXP_LOOT_Hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>Haz clic en los |cRXP_PICK_Naga Banners|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>Mata a los |cRXP_ENEMY_Vashj'elan Warriors|r y a los |cRXP_ENEMY_Vashj'elan Sirens|r. Despoja para obtener sus |cRXP_LOOT_hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brett McPasta "el Monedas"|r y |cRXP_FRIENDLY_Megs Trituramatic|r
    .turnin 24859 >>Entrega la misión Pellejo de naga
    .goto 174,52.2,73.22
    .turnin 24858 >>Entrega la misión El Cártel Pantoque
    .accept 24864 >>Acepta la misión El Poni flotador irresistible
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>Usa el |T132261:0|t[Poni flotador irresistible] cuando llegues al agua.
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Naga Hatchlings|r
    >>|cRXP_WARN_Ten cuidado de no matar a las crías con habilidades de AdE|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megs Trituramatic|r
    .goto 174,52.2,73.15
    .turnin 24864 >>Entrega la misión El Poni flotador irresistible
    .accept 24868 >>Acepta la misión ¡Rendíos!
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>Viaja al sur hacia las Ruinas de Vashj'elan
step
    .goto 174,54.07,90.06
    >>Mata a |cRXP_ENEMY_Ignoto de lo profundo|r
    >>|cRXP_WARN_Esperar la animación de aparición (círculo morado). Saltará poco después|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Megs Trituramatic|r
    .goto 174,52.20,73.15
    .turnin 24868 >>Entrega la misión ¡Rendíos!
    .accept 24897 >>Acepta la misión Regresar a la ciudad
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>Regresa a Town-in-a-Caja
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,45.18,64.91
    .turnin 24897 >>Entrega la misión Regresar a la ciudad
    .accept 24901 >>Acepta la misión Ciudad de Bolsillo: ¡nos atacan!
    .target Sassy Hardwrench
step
    >>Haz clic en el |cRXP_PICK_Eliminador B.C.|r para entrar en él y dispararles a los |cRXP_ENEMY_Oomlot Warriors|r
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Abandona el vehículo|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,45.2,64.9
    .turnin 24901 >>Entrega la misión Ciudad de Bolsillo: ¡nos atacan!
    .accept 24924 >>Acepta la misión El poblado Oomlot
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>Viaja al poblado Oomlot
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izzy|r
    .goto 174,56.56,71.96
    .turnin 24924 >>Entrega la misión El poblado Oomlot
    .accept 24925 >>Acepta la misión Liberar a los cautivos
    .accept 24929 >>Acepta la misión Envía un mensaje
    .target Izzy
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Oomlot Shamans|r para liberar a los |cRXP_FRIENDLY_Goblin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>Mata a |cRXP_ENEMY_Yngwie|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>Mata a los |cRXP_ENEMY_Oomlot Shamans|r para liberar a los |cRXP_FRIENDLY_Goblin Captives|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izzy|r
    .goto 174,56.56,71.96
    .turnin 24925 >>Entrega la misión Liberar a los cautivos
    .turnin 24929 >>Entrega la misión Envía un mensaje
    .accept 24937 >>Acepta la misión Problema de los Oomlot resuelto
    .target Izzy
step
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir a Ciudad de Bolsillo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,45.2,64.9
    .turnin 24937 >>Entrega la misión Problema de los Oomlot resuelto
    .accept 24940 >>Acepta la misión El volcán
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_Evita a los |cRXP_ENEMY_Goblin Zombies|r mientras corres montaña arriba|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Entrenador Paselargo|r, |cRXP_FRIENDLY_Supervisor Mechamojada|r y |cRXP_FRIENDLY_Ayudante Greely|r
    .turnin 24940 >>Entrega la misión El volcán
    .accept 24942 >>Acepta la misión Zombis contra botas con súper cohetes propulsores
    .goto 174,51.8,47.1
    .accept 24945 >>Acepta la misión Los tres pigmeos
    .goto 174,51.85,47.19
    .accept 24946 >>Acepta la misión Polvo del Rock
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_Tienes que cancelar Forma de las Sombras si eres sacerdote de las Sombras antes de poder usar las botas|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_Usa las |T133029:0|t[Botas con súper cohetes propulsores]|r
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Goblin Zombies|r al pasar sobre ellos con las Botas cohete
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Oostan Headhunters|r|r|cRXP_WARN_. Te pueden matar muy fácilmente|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>Recoge el |cRXP_PICK_Rockin' Powder|r del suelo
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>Mata a |cRXP_ENEMY_Malmo|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>Mata a |cRXP_ENEMY_Teloch|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Mata a |cRXP_ENEMY_Gaahl|r
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Mira alrededor y recoge los |cRXP_PICK_Rockin' Powders|r restantes
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>Mata a los |cRXP_ENEMY_Goblin Zombies|r caminando sobre ellos con las Botas cohete
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capataz Supervisor Mechamojada|r, |cRXP_FRIENDLY_Assistant Greedy|r y |cRXP_FRIENDLY_Entrenador Entrenador Paselargo|r
    .turnin 24945 >>Entrega la misión Los tres pigmeos
    .goto 174,51.85,47.20
    .turnin 24946 >>Entrega la misión Polvo del Rock
    .goto 174,51.73,47.38
    .turnin 24942 >>Entrega la misión Zombis contra botas con súper cohetes propulsores
    .accept 24952 >>Acepta la misión El impulso de botas cohetes
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>Usa las |T133029:0|t[Botas cohetes imbuidas con polvo del Rock]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart Martillazos|r
    .goto 174,68.93,46.44
    .turnin 24952 >>Entrega la misión El impulso de botas cohetes
    .accept 24954 >>Acepta la misión Los hijos del dios tortuga
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>Mata a los |cRXP_ENEMY_Hijo de Volcanoth|r. Despojar a los enemigos para obtener las |cRXP_LOOT_Glands|r
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart Martillazos|r
    .goto 174,68.93,46.44
    .turnin 24954 >>Entrega la misión Los hijos del dios tortuga
    .accept 24958 >>Acepta la misión ¡Volcanoth!
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>Usar |T135624:0|t[Botazuca] varias veces en el punto de ruta sobre |cRXP_ENEMY_Volcanoth|r
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .turnin 24958 >>Entrega la misión ¡Volcanoth!
    .accept 25023 >>Acepta la misión Viejos amigos
    .timer 110,Viejos amigos vuelan
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 25023 >>Entrega la misión Viejos amigos
    .accept 25024 >>Acepta la misión Repeler a los paracaidistas
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .accept 25058 >>Acepta la misión Deshacerse de las minas a lo goblin
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggra|r
    .accept 25093 >>Acepta la misión Los comandantes de la IV:7
    .target Aggra
step
    #completewith Paratroopers
    >>Usar la |T133716:0|t[Cartera de granadas] para destruir las |cRXP_PICK_Minas|r en el suelo
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>Mata al |cRXP_ENEMY_Paracaidista de la Alianza|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>Mata a |cRXP_ENEMY_Comandante Arrington|r. Despojar al enemigo para obtener su |cRXP_LOOT_Cabeza|r
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>Mata a |cRXP_ENEMY_Alexi Aullido Silencioso|r. Despojar al enemigo para obtener su |cRXP_LOOT_Cabeza|r
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>Mata a |cRXP_ENEMY_Cyn Filoscuro|r. Despojar al enemigo para obtener su |cRXP_LOOT_Cabeza|r
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>Mata al |cRXP_ENEMY_Paracaidista de la Alianza|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>Usar la |T133716:0|t[Cartera de granadas] para destruir las |cRXP_PICK_Minas|r en el suelo
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>Viaja a Warchief's Oteador
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggra|r
    .turnin 25093 >>Entrega la misión Los comandantes de la IV:7
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 25024 >>Entrega la misión Repeler a los paracaidistas
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .turnin 25058 >>Entrega la misión Deshacerse de las minas a lo goblin
    .accept 25066 >>Acepta la misión El orgullo de Kezan
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r para entrar en el vehículo
    .target Sassy Hardwrench
step
    >>Destruye a los |cRXP_ENEMY_Gnomeregan Sigilo Fighters|r
    >>|cRXP_WARN_Usar|r |T134273:0|t[Cohetes Comadreja Salvaje] |cRXP_WARN_(2)|r |cRXP_WARN_cada vez que esté disponible y usa repetidamente|r |T135627:0|t[Ametralladora] |cRXP_WARN_(1)|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>Vuela de regreso a Warchief's Oteador
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,37.36,41.92
    .turnin 25066 >>Entrega la misión El orgullo de Kezan
    .accept 25098 >>Acepta la misión El Jefe de Guerra te reclama
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .goto 174,36.79,43.13
    .turnin 25098 >>Entrega la misión El Jefe de Guerra te reclama
    .accept 25099 >>Acepta la misión Un préstamo bestial
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kilag Mandisangre|r
    .goto 174,33.8,38.8
    .turnin 25099 >>Entrega la misión Un préstamo bestial
    .accept 25100 >>Acepta la misión Vamos de paseo
    .timer 87,Paseo en Pantera
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Finta Navajazos|r después de montar a la pantera
    .goto 174,53.71,34.94
    .turnin 25100 >>Entrega la misión Vamos de paseo
    .accept 25109 >>Acepta la misión La Mina de Trabajos Forzados de Gallywix
    .target Slinky Sharpshiv
step << Priest Cata
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Sacacuartos|r
    .trainer >>Aprende tus hechizos de clase
    .target Sister Goldskimmer
step << Hunter Cata
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bamm Megabomba|r
    .trainer >>Aprende tus hechizos de clase
    .target Bamm Megabomb
step << Mage Cata
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fizz Mechero|r
    .trainer >>Aprende tus hechizos de clase
    .target Fizz Lighter
step << Warlock Cata
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Evol Dedos|r
    .trainer >>Aprende tus hechizos de clase
    .target Evol Fingers
step << Shaman Cata
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxx Avalancha|r
    .trainer >>Aprende tus hechizos de clase
    .target Maxx Avalanche
step << Warrior Cata
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guerreromática NX-01|r
    .trainer >>Aprende tus hechizos de clase
    .target Warrior-Matic NX-01
step << Rogue Cata
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Finta Navajazos|r
    .trainer >>Aprende tus hechizos de clase
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>Entra en la cueva y salta hacia abajo
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .turnin 25109 >>Entrega la misión La Mina de Trabajos Forzados de Gallywix
    .accept 25110 >>Acepta la misión ¡La Kaja'Cola te da IDEAS! (TM)
    .target Assistant Greely
step
    >>Recoge la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r] del suelo
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .goto 174,53.17,36.55
    .turnin 25110 >>Entrega la misión ¡La Kaja'Cola te da IDEAS! (TM)
    .accept 25122 >>Acepta la misión Liberar la mente
    .accept 25123 >>Acepta la misión ¡Tíralo al suelo!
    .target Assistant Greely
step
    #completewith FreeGobber
    >>Despoja la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r] del suelo
    >>Selecciona a los |cRXP_FRIENDLY_Kezan Citizens|r y usa la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Liberar As
    >>Selecciona a |cRXP_FRIENDLY_As|r y usa la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r]
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Liberar Izzy
    >>Selecciona a |cRXP_FRIENDLY_Izzy|r y usa la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r]
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>Mata a |cRXP_ENEMY_Bombaumbro el Señor de las Bestias|r y recoge la |cRXP_PICK_Piedra de alma de Bombaumbro|r.
    .use 52481 >>|cRXP_WARN_Usa|r |T134336:0|t[Piedra de alma de Bombaumbro]|cRXP_WARN_ en el cadáver de|r |cRXP_ENEMY_Bombaumbro el Señor de las Bestias|r
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>Selecciona a |cRXP_FRIENDLY_Gargajo|r y usa la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r]
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>Despoja la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r] del suelo
    >>Selecciona a los |cRXP_FRIENDLY_Kezan Citizens|r y usa la |T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero-Uno|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .turnin 25123 >>Entrega la misión ¡Tíralo al suelo!
    .turnin 25122 >>Entrega la misión Liberar la mente
    .accept 25125 >>Acepta la misión Una luz al final del túnel
    .target Assistant Greely
step
    >>Interactuarúa con el |cRXP_PICK_Carro de minas|r
    .goto 174,56.29,27.33
    .turnin 25125 >>Entrega la misión Una luz al final del túnel
    .accept 25184 >>Acepta la misión Trayecto en vagón de mina
step
    >>Monta en la Vagoneta de la Mina
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .goto 174,54.4,16.9
    .turnin 25184 >>Entrega la misión Trayecto en vagón de mina
    .accept 25200 >>Acepta la misión Desconectar trituradoras
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Entrenador Paselargo|r
    .goto 174,54.44,16.93
    .accept 25201 >>Acepta la misión El uniforme de bombalón supremo
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>Mata a los |cRXP_ENEMY_Steamwheedle Sharks|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>Recoge las |cRXP_LOOT_Piezas de trituradora de repuesto|r
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Entrenador Paselargo|r
    .goto 174,54.44,16.93
    .turnin 25201 >>Entrega la misión El uniforme de bombalón supremo
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .goto 174,54.4,16.93
    .turnin 25200 >>Entrega la misión Desconectar trituradoras
    .accept 25204 >>Acepta la misión Abrir las válvulas
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_As|r
    .goto 174,54.16,17.21
    .accept 25203 >>Acepta la misión ¿Qué clase de nombre es Locko?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izzy|r
    .goto 174,54.01,16.98
    .accept 25202 >>Acepta la misión El camino más rápido al corazón
    .target Izzy
step
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>Mata a |cRXP_ENEMY_Locko Mia|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>Mata a |cRXP_ENEMY_Locko Mia|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>Interactuarúa con el |cRXP_PICK_Panel de control de la plataforma|r
    .goto 174,51.4,13.1
    .turnin 25204 >>Entrega la misión Abrir las válvulas
    .accept 25207 >>Acepta la misión Hasta la vista petróleo
step
    >>Haz clic en el |cRXP_PICK_Botón rojo|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_As|r
    .goto 174,54.16,17.19
    .turnin 25203 >>Entrega la misión ¿Qué clase de nombre es Locko?
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Izzy|r
    .goto 174,54.01,16.97
    .turnin 25202 >>Entrega la misión El camino más rápido al corazón
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayudante Greely|r
    .goto 174,54.4,16.9
    .turnin 25207 >>Entrega la misión Hasta la vista petróleo
    .accept 25213 >>Acepta la misión Los Pozos de Esclavos
    .timer 24,Paseo en Trituradora
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r después de montar en la trituradora
    .goto 174,43.63,25.32
    .turnin 25213 >>Entrega la misión Los Pozos de Esclavos
    .accept 25244 >>Acepta la misión ¿Qué clase de nombre es Cara Melo? << Female
	.accept 25243 >>Acepta la misión Me quiere, NO me quiere... << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .accept 25214 >>Acepta la misión Velocidad de escape
    .target Hobart Grapplehammer
step
    #completewith next
    >>Haz clic en los |cRXP_FRIENDLY_Goblins capturados|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>Mata a |cRXP_ENEMY_Cara Melo|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>Haz clic en los |cRXP_FRIENDLY_Goblins capturados|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart|r
    .goto 174,43.85,25.30
    .turnin 25214 >>Entrega la misión Velocidad de escape
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,43.63,25.32
    .turnin 25244 >>Entrega la misión ¿Qué clase de nombre es Cara Melo? << Female
	.turnin 25243 >>Entrega la misión Me quiere, NO me quiere... << Male
    .accept 25251 >>Acepta la misión El último enfrentamiento
    .target Sassy Hardwrench
step
    >>Entra en el |cRXP_FRIENDLY_Uniforme de bombalón supremo|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>Selecciona a |cRXP_ENEMY_Príncipe mercante Gallywix|r y usa todas tus habilidades cada vez que esté disponible
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>Salta hacia abajo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .goto 174,43.6,25.3
    .turnin 25251 >>Entrega la misión El último enfrentamiento
    .accept 25265 >>Acepta la misión ¡Victoria!
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .goto 174,42.16,17.37
    .turnin 25265 >>Entrega la misión ¡Victoria!
    .accept 25266 >>Acepta la misión El emisario del Jefe de Guerra
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sassy Malallave|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'Kron Loyalist|r
    .goto 1,57.65,9.78
    .turnin 25266 >>Entrega la misión El emisario del Jefe de Guerra
    .accept 25267 >>Acepta la misión Un mensaje para Colmillosauro
    .timer 75,Viaja a Orgrimmar
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>Entra en Orgrimmar
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garrosh Grito Infernal|r
    .turnin 25267 >>Entrega la misión Un mensaje para Colmillosauro
    .accept 25275 >>Acepta la misión Informa al jefe de personal
    .target Garrosh Hellscream
]])
