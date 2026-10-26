if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Cañada Umbría
#next 6-10 Teldrassil
#defaultfor NightElf
<<Alliance
step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilthalaine|r
    .accept 28713 >>Acepta la misión El equilibrio de la naturaleza
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>Mata a los |cRXP_ENEMY_Young Nightsabers|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 28713 >>Entrega la misión El equilibrio de la naturaleza
    .accept 28714 >>Acepta la misión Corrupción de musgovil
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melithar Corzocelada|r
    .accept 28715 >>Acepta la misión Ladrones demoníacos
	.target Melithar Staghelm
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Grell|r y a los |cRXP_ENEMY_Grellkins|r. Despójalos para obtener su |cRXP_LOOT_Musgovil|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Despoja |cRXP_LOOT_Melithar's Stolen Bags|r en el suelo
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>Mata a los |cRXP_ENEMY_Grell|r y a los |cRXP_ENEMY_Grellkins|r. Despójalos para obtener su |cRXP_LOOT_Musgovil|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilthalaine|r y |cRXP_FRIENDLY_Melithar Corzocelada|r
    .turnin 28714 >>Entrega la misión Corrupción de musgovil
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>Entrega la misión Ladrones demoníacos
	.target +Melithar Staghelm
    .goto 460,45.93,72.86
    .accept 3116 >> Acepta la misión El Sigilo Simple << Warrior
    .accept 3117 >> Acepta la misión El Sigilo con Grabados << Hunter
    .accept 3118 >> Acepta la misión El sigilo cifrado << Rogue
    .accept 3119 >> Acepta la misión Sigilo Sacralizado << Priest
    .accept 3120 >> Acepta la misión El Sigilo Verdeante << Druid
    .accept 26841 >> Acepta la misión El sigilo prohibido << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Viaja por la rampa hacia |cRXP_FRIENDLY_Shanda|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >> Viaja por la rampa hacia |cRXP_FRIENDLY_Rhyanda|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r
    .turnin 3119 >> Entrega la misión Sigilo Sacralizado
    .accept 26949 >> Acepta la misión Sanar a los heridos << cata
    .accept 26949 >> Acepta la misión Ayudando a los heridos << !cata
    .train 2061 >> Aprende |T135907:0|t[Sanación relámpago] << cata
    .target Shanda
step << Priest cata
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_Lanza|r |T135907:0|t[Sanación relámpago] |cRXP_WARN_5 veces sobre un |cRXP_FRIENDLY_Herido Centinela|r a tu lado|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest !cata
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Lanza|r |T136207:0|t[Palabra de las Sombras: dolor] |cRXP_WARN_5 veces sobre un|r |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 26949,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r
    .turnin 26949 >> Entrega la misión Sanar a los heridos << cata
    .turnin 26949 >> Entrega la misión Aprender la palabra << !cata
    .accept 28723 >> Acepta la misión Sacerdotisa de la Luna
    .target Shanda
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26841 >> Entrega la misión El sigilo prohibido
    .accept 26940 >> Acepta la misión Misiles Arcanos
    .train 5143 >> Aprende |T136096:0|t[Misiles Arcanos] << cata
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_sobre el |cRXP_ENEMY_Muñeco de Entrenamiento|r hasta que obtengas un|r |T135731:0|t[Arcano Missles!] |cRXP_WARN_proc, luego lanza|r |T136096:0|t[Misiles Arcanos]|cRXP_WARN_. Repite esto dos veces|r
    .complete 26940,1 << cata -- Practice Arcane Missiles (1)
    .complete 26940,2 << !cata -- Practice Arcane Missiles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >> Viaja por la rampa hacia |cRXP_FRIENDLY_Rhyanda|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhyanda|r
    .turnin 26940 >> Entrega la misión Misiles Arcanos
    .accept 28723 >> Acepta la misión Sacerdotisa de la Luna
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >> Viaja hacia |cRXP_FRIENDLY_Alyissia|r dentro << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >> Viaja hacia |cRXP_FRIENDLY_Frahun Sombrusurro|r dentro << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Entrega la misión El Sigilo Simple
    .accept 26945 >> Acepta la misión Aprender nuevas técnicas
	.train 100 >> Aprende |T132337:0|t[Cargar] << cata
    .target Alyissia
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_Lanza|r |T132337:0|t[Cargar] |cRXP_WARN_sobre el|r |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 26945,1 << cata -- Practice Charge (1)
    .complete 26945,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
    .turnin 26945 >> Entrega la misión Aprender nuevas técnicas
    .accept 28723 >> Acepta la misión Sacerdotisa de la Luna
    .target Alyissia
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frahun Sombrusurro|r
    .turnin 3118 >> Entrega la misión El sigilo cifrado
    .accept 26946 >> Acepta la misión La ventaja del pícaro
	.train 2098 >> Aprende |T132292:0|t[Eviscerar] << cata
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_Lanza|r |T136189:0|t[Golpe siniestro] |cRXP_WARN_seguido de|r |T132292:0|t[Eviscerar] |cRXP_WARN_3 veces sobre el|r |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 26946,1 << cata -- Practice Eviscerate (1)
    .complete 26946,2 << !cata -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frahun Sombrusurro|r
    .turnin 26946 >> Entrega la misión La ventaja del pícaro
    .accept 28723 >> Acepta la misión Sacerdotisa de la Luna
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayanna Semprerguida|r
    .turnin 3117 >> Entrega la misión El Sigilo con Grabados
    .accept 26947 >> Acepta la misión La instrucción del forestal
	.train 56641 >> Aprende |T132213:0|t[Vigía del pozo Solanian] << cata
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_Lanza|r |T132213:0|t[Disparo firme] |cRXP_WARN_sobre el |cRXP_ENEMY_Muñeco de Entrenamiento|r 5 veces|r
    .complete 26947,1 << cata-- Practice Steady Shot (1)
    .complete 26947,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayanna Semprerguida|r
    .turnin 26947 >> Entrega la misión La instrucción del forestal
    .accept 28723 >> Acepta la misión Sacerdotisa de la Luna
    .target Ayanna Everstride
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >> Viaja hacia |cRXP_FRIENDLY_Mardant Fuerterroble|r dentro
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
    .turnin 3120 >> Entrega la misión El sigilo verdeante
    .accept 26948 >> Acepta la misión Toque de rejuvenecimiento << cata
    .accept 26948 >> Acepta la misión Fuego lunar << !cata
	.train 774 >> Aprende |T136081:0|t[Rejuvenecimiento] << cata
    .target Mardant Strongoak
step << Druid cata
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>|cRXP_WARN_Lanza|r |T136081:0|t[Rejuvenecimiento] |cRXP_WARN_sobre un|r |cRXP_FRIENDLY_Herido Centinela|r
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << !cata Druid
    .goto 460,46.003,56.584
    >>|cRXP_WARN_Lanza|r |T136096:0|t[Fuego lunar] |cRXP_WARN_sobre un|r |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 26948,2 -- Heal Wounded Sentinel
    .target Training Dummy
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
    .turnin 26948 >> Entrega la misión Rejuveneciendo Toque << cata
    .turnin 26948 >> Entrega la misión Fuego lunar << !cata
    .accept 28723 >> Acepta la misión Sacerdotisa de la Luna
    .target Mardant Strongoak
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .turnin 28723 >>Entrega la misión Sacerdotisa de la Luna
    .accept 28724 >>Acepta la misión Antídoto de Iverron
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>Despoja los |cRXP_LOOT_Lirios alunados|r del suelo
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .turnin 28724 >>Entrega la misión El antídoto de Iverron
    .accept 28725 >>Acepta la misión La protectora de los bosques
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,56.34,27.51,5 >> |cRXP_WARN_Entra en la Cueva, luego espera a que |cRXP_FRIENDLY_Tarindrella|r aparezca|r
step
    .goto 58,56.34,27.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r en la ubicación de la flecha. Ella aparecerá después de unos segundos
    .turnin 28725 >>Entrega la misión La protectora de los bosques
    .accept 28726 >>Acepta la misión Corrupción Tejemadera
	.target Tarindrella
step
    .goto 58,41.27,33.22,10,0
    .goto 58,34.81,15.50,15,0
    .waypoint 58,46.33,41.34
    >>Mata a las Webwood Arañas
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r a tu lado
    .turnin 28726 >>Entrega la misión Corrupción Tejemadera
    .accept 28727 >>Acepta la misión Toque vil
	.target Tarindrella
step
    .goto 58,34.56,23.87,0
    .goto 58,42.81,19.50,10,0
    .goto 58,45.02,31.37
    >>Mata a |cRXP_ENEMY_Githyiss la Vil|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r a tu lado
    .turnin 28727,1 >>Entrega la misión Toque vil
    .accept 28728 >>Acepta la misión Una señal de lo que está por venir
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .goto 460,42.50,50.50
    .turnin 28728 >>Entrega la misión Una señal de lo que está por venir
    .accept 28729 >>Acepta la misión Teldrassil: La corona de Azeroth
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_Para habilitar la asignación de teclas para los objetos de misión, sigue estos pasos:|r
    *[1] Presiona la |cRXP_WARN_tecla Escapar|r.
    *[2] Selecciona |cRXP_WARN_Options|r.
    *[3] Navega a |cRXP_WARN_Keybindings|r.
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encuentra |cRXP_WARN_RestedXP Guides|r.
    *[5] Selecciona y vincula los |cRXP_WARN_Active Botones|r.
step
    .goto 460,50.13,34.49
    .use 5185 >>|cRXP_WARN_Usa la|r |T134776:0|t[Ampolla de cristal] |cRXP_WARN_en la Poza de la Luna|r
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dentaria Claro de Plata|r
    .turnin 28729 >>Entrega la misión Teldrassil: La corona de Azeroth
    .accept 28730 >>Acepta la misión Aguas preciosas
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>Sube la rampa del Árbol
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 28730 >>Entrega la misión Aguas preciosas
    .accept 28731 >>Acepta la misión Teldrassil: La transmisión del conocimiento
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>|cRXP_WARN_Salto del Árbol. Tienes un buff de caída lenta, así que no morirás|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Acepta la misión Paquete de Dolanaar
	.target Porthannius
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-10 Teldrassil
#next 10-18 Costa Oscura
#defaultfor NightElf

<<Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .accept 488 >>Acepta la misión Las apuestas de Zenn
	.target Zenn Foulhoof
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Webwood Lurkers|r. Despójales para obtener sus |cRXP_LOOT_Webwood Seda de araña|r
    >>Mata a los |cRXP_ENEMY_Nightsabers|r. Despójales para obtener sus |cRXP_LOOT_Sable de la noche Colmillos|r
    >>Mata a los |cRXP_ENEMY_Strigid Owls|r. Despójales para obtener sus |cRXP_LOOT_Lechuza estrígida Plumas|r
    >>|cRXP_WARN_Tendrás más oportunidades para completar esto después|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r
    .accept 2438 >>Acepta la misión El atrapasueños esmeralda
	.target Tallonkai Swiftroot
step << !NightElf
    #completewith next
    .goto 57,55.48,50.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fidelio|r
    .fp Dolanaar >>Aprende la ruta de vuelo hacia Dolanaar
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .accept 475 >>Acepta la misión Una brisa problemática
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    .turnin 2159,1 >>Entrega la misión Paquete de Dolanaar
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    .home >>Establece tu Piedra de hogar en Dolanaar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iranis Sombraflor|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iranis Sombraflor|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
    .trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Irriende|r
    .trainer >> Aprende tus hechizos de clase
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .trainer >> Aprende tus hechizos de clase
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 28731 >>Entrega la misión Teldrassil: La transmisión del conocimiento
    .accept 929 >>Acepta la misión Teldrassil: La negativa de los Aspectos
	.target Corithras Moonrage
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
    .trainer >> Aprende tus hechizos de clase
    .target Kal
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>Mata a los |cRXP_ENEMY_Webwood Lurkers|r. Despójales para obtener sus |cRXP_LOOT_Webwood Seda de araña|r
    >>Mata a los |cRXP_ENEMY_Nightsabers|r. Despójales para obtener sus |cRXP_LOOT_Sable de la noche Colmillos|r
    >>Mata a los |cRXP_ENEMY_Strigid Owls|r. Despójales para obtener sus |cRXP_LOOT_Lechuza estrígida Plumas|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .goto 57,61.92,50.69
    .use 5619 >>|cRXP_WARN_Usa la|r |T134721:0|t[Ampolla de jade] |cRXP_WARN_en el Moonwell|r
    .complete 929,1 --1/1 Filled Jade Phial
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gaerolas Talvethren|r
    .turnin 475 >>Entrega la misión Una brisa problemática
    .accept 476 >>Acepta la misión Corrupción en Tuercepinos
	.target Gaerolas Talvethren
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>Abre la |cRXP_PICK_Tailonkai's Cómoda|r. Despójala para obtener la |cRXP_LOOT_Emerald Atrapasueños|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .subzoneskip 186
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >>Entrega la misión Teldrassil: La negativa de los Aspectos
	.target Corithras Moonrage
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .turnin 476 >>Entrega la misión Corrupción en Tuercepinos
	.target Athridas Bearmantle
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai|r
    .turnin 2438 >>Entrega la misión El atrapasueños esmeralda
    .accept 2459 >>Acepta la misión Ferocitas el Comesueños
	.target Tallonkai
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    #loop
    .goto 57,57.48,48.54,50,0
    .goto 57,58.21,49.79,50,0
    .goto 57,58.23,52.16,50,0
    .goto 57,59.97,53.47,50,0
    .goto 57,61.28,51.69,50,0
    .goto 57,60.21,50.03,50,0
    .goto 57,57.48,48.54,50,0
    >>Mata a los |cRXP_ENEMY_Webwood Lurkers|r. Despójales para obtener sus |cRXP_LOOT_Webwood Seda de araña|r
    >>Mata a los |cRXP_ENEMY_Nightsabers|r. Despójales para obtener sus |cRXP_LOOT_Sable de la noche Colmillos|r
    >>Mata a los |cRXP_ENEMY_Strigid Owls|r. Despójales para obtener sus |cRXP_LOOT_Lechuza estrígida Plumas|r
    .complete 488,3 --2/2 Webwood Spider Silk
    .mob +Webwood Lurker
    .complete 488,1 --2/2 Nightsaber Fang
    .mob +Nightsaber
    .complete 488,2 --2/2 Strigid Owl Feather
    .mob +Strigid Owl
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >>Entrega la misión Las apuestas de Zenn
	.target Zenn Foulhoof
step
    #completewith next
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    .goto 57,67.26,46.83
    >>Mata a |cRXP_ENEMY_Ferocitas el Comesueños|r. Despójalo para obtener la |cRXP_LOOT_Joya de Tallonkai|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Reduce tu salud al mínimo una vez que casi esté completo. Luego te vas a morir|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r
    .turnin 2459 >>Entrega la misión Ferocitas el Comesueños
	.target Tallonkai Swiftroot
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .trainer >> Aprende tus hechizos de clase
    .target Laurna Morninglight
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >>Acepta la misión ¡Búsqueda de redención!
	.target Syral Bladeleaf
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
    .trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Irriende|r
    .trainer >> Aprende tus hechizos de clase
    .target Irriende
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
    .trainer >> Aprende tus hechizos de clase
    .target Kal
step
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>Despoja las |cRXP_LOOT_Bellotas viles|r del suelo
    .complete 489,1 --3/3 Fel Cone
step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >>Entrega la misión ¡Búsqueda de redención!
	.target Zenn Foulhoof
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .target Syral Bladeleaf
    .accept 13946 >>Acepta la misión Represalia de la naturaleza
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r
    .accept 932 >>Acepta la misión Odio enraizado
	.target Tallonkai Swiftroot
step
#completewith melenas
    .goto 57,54.45,45.43,40 >> Ve al norte hacia la cueva
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    .use 46716 >>|cRXP_WARN_Usa la|r |T134217:0|t[Ireroot Seeds] |cRXP_WARN_para matar |cRXP_ENEMY_Grellkin|r dentro de la cueva|r
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
step
#label melenas
    .goto 57,51.82,43.85
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 932,1 --Collect Melenas' Head (x1)
    .mob Lord Melenas
step
    #requires ireroot
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .cooldown item,6948,>2,1
step
    .goto 57,55.77,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .target Syral Bladeleaf
    .turnin 13946 >>Entrega la misión Represalia de la naturaleza
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r
    .turnin 932 >>Entrega la misión Odio enraizado
	.target Tallonkai Swiftroot
step
    #xprate >1.59
    #optional
    .maxlevel 10,Teldskip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r y |cRXP_FRIENDLY_Centinela Kyra Cantoestelar|r
    .accept 483 >>Acepta la misión Las Reliquias del Despertar
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .accept 13945 >>Acepta la misión Un peligro cercano
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step
    #completewith sleepingd
    >>|cRXP_WARN_Mata cualquier tipo de |cRXP_ENEMY_Fúrbolg|r en tu camino hacia |cRXP_FRIENDLY_Oben Garrafuria|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,48.61,47.92,100,0
    .goto 57,46.03,47.99,100,0
    .goto 57,45.488,50.760,25 >> Entra al túnel dentro de la casa del árbol
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oben Garrafuria|r
    .target Oben Rageclaw
    .accept 2541 >>Acepta la misión El druida durmiente
step
    #label shamans
    #sticky
    >>Mata a los |cRXP_ENEMY_Gnarlpine Shamans|r. Despójales para obtener sus |cRXP_LOOT_Talismán de vudú chamán|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>Mata a los |cRXP_ENEMY_Furbolgs|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>|cRXP_WARN_Sigue el camino más adentro de Ban'ethil Barrow Den. Corre cruzando el puente en el piso superior|r
    >>Abre el |cRXP_PICK_Cofre de Anidación|r. Despójalo para obtener la |cRXP_LOOT_Runa de Anidación|r
    >>|cRXP_WARN_También puedes hablar con la |cRXP_FRIENDLY_Centinela Cazadora|r compañera y ella te mostrará el camino|r
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>|cRXP_WARN_Baja al nivel inferior|r
    >>Abre el |cRXP_PICK_Chest of the Negro Feather|r. Despójalo para obtener la |cRXP_LOOT_Black Feather Quill|r
    >>|cRXP_WARN_También puedes hablar con la |cRXP_FRIENDLY_Cazadora centinela|r acompañante y ella te mostrará el camino|r
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>|cRXP_WARN_Head to the big central room|r
    >>Abre el |cRXP_PICK_Chest of the Cielo|r. Despójalo para obtener la |cRXP_LOOT_Sapphire of Cielo|r
    >>|cRXP_WARN_También puedes hablar con la |cRXP_FRIENDLY_Cazadora centinela|r acompañante y ella te mostrará el camino|r
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>|cRXP_WARN_Sube a la plataforma central, corre cruzando el puente hacia el este|r
    >>Abre el |cRXP_PICK_Chest of the Cuervo Zarpa|r. Despójalo para obtener la |cRXP_LOOT_Raven Zarpa Talisman|r
    >>|cRXP_WARN_También puedes hablar con la |cRXP_FRIENDLY_Cazadora centinela|r acompañante y ella te mostrará el camino|r
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>Dirígete hacia la salida del túnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oben Garrafuria|r
    .target Oben Rageclaw
    .turnin 2541 >>Entrega la misión El druida durmiente
    .accept 2561 >>Acepta la misión El druida de la Zarpa
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>|cRXP_WARN_Corre a través del puente del otro lado y espera hasta que la puerta cerrada se abra sola|r
    >>Mata a |cRXP_ENEMY_Garrafuria|r
    .use 8149 >>|cRXP_WARN_Usa la|r |T132502:0|t[Vudú Embelesar] |cRXP_WARN_en el cadáver del |cRXP_ENEMY_Garrafuria|r|r
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>Dirígete hacia la salida del túnel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oben Garrafuria|r
    .target Oben Rageclaw
    .turnin 2561 >>Entrega la misión El druida de la Zarpa
step
    .isQuestComplete 483
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .cooldown item,6948,>2,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r y |cRXP_FRIENDLY_Centinela Kyra Cantoestelar|r
    .turnin 483 >>Entrega la misión Las Reliquias del Despertar
    .accept 486 >>Acepta la misión Ursal el Violento
    .target +Athridas Bearmantle
    .goto 57,55.70,51.99
    .turnin 13945 >>Entrega la misión Un peligro cercano
    .target +Sentinel Kyra Starsong
    .goto 57,55.656,51.991
step << Warrior cata
    .goto 57,55.887,51.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
    .trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Mage cata
    .goto 57,55.816,51.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Irriende|r
    .trainer >> Aprende tus hechizos de clase
    .target Irriende
step << Priest cata
    .goto 57,55.319,49.594
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .trainer >> Aprende tus hechizos de clase
    .target Laurna Morninglight
step << Rogue cata
    .goto 57,56.027,52.534
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Hunter cata
    .goto 57,56.284,51.973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Druid cata
    .goto 57,55.650,53.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
    .trainer >> Aprende tus hechizos de clase
    .target Kal
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    .target Moon Priestess Amara
    .accept 487 >>Acepta la misión El camino a Darnassus
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>Mata a los |cRXP_ENEMY_Gnarlpine Ambushers|r mientras viajas por la senda de montaña
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob Gnarlpine Ambusher
step
    .goto 57,51.693,39.805
    >>|cRXP_WARN_Sigue el sendero que sube por la rampa hacia la cueva en la cima de la montaña|r
    >>Mata a |cRXP_ENEMY_Ursal el Violento|r
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    .target Moon Priestess Amara
    .turnin 487 >>Entrega la misión El camino a Darnassus
step
    #completewith next
    #requires ambushers
    .deathskip >> Muere y resucita en Dolanaar
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .target Athridas Bearmantle
    .turnin 486 >>Entrega la misión Ursal el Violento
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .target Syral Bladeleaf
    .accept 997 >>Acepta la misión Las tierras de Denalan
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 997 >>Entrega la misión Las tierras de Denalan
    .accept 918 >>Acepta la misión Semillas de Brezomadera
    .accept 919 >>Acepta la misión Brotes de Brezomadera
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>Haz clic en la |cRXP_PICK_Planta con extraños frutos|r
    .accept 930 >>Acepta la misión El fruto resplandeciente
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener sus |cRXP_LOOT_Semillas|r
    >>Despoja los |cRXP_LOOT_Brotes de Brezomadera|r del suelo
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 918 >>Entrega la misión Semillas de Brezomadera
    .turnin 919 >>Entrega la misión Brotes de Brezomadera
    .accept 922 >>Acepta la misión Rellian Verdeguja
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 930 >>Entrega la misión El fruto resplandeciente
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Acepta la misión Recuerdos nostálgicos
	.target Nyoma
step
    #optional
    .maxlevel 10,Teldskip
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .target Corithras Moonrage
    .accept 7383 >>Acepta la misión Teldrassil: La carga de los Kaldorei
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fidelio.|r
    .turnin 6344 >>Entrega la misión Recuerdos nostálgicos
    .accept 6341 >>Acepta la misión A Darnassus
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .target Rellian Greenspyre
    .turnin 922 >>Entrega la misión Rellian Verdeguja
    .accept 923 >>Acepta la misión Tumores musgosos
step << skip
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .target Sentinel Arynia Cloudsbreak
    .accept 937 >>Acepta la misión El claro encantado
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .target Priestess A'moora
    .accept 2518 >>Acepta la misión Las lágrimas de la Luna
step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob Timberling Mire Beast
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
step
    >>Mata a |cRXP_ENEMY_Lady Sathrah|r. Despójala para obtener la |cRXP_LOOT_Hileras de plata|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob Lady Sathrah
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>Haz clic en la |cRXP_PICK_Planta con extrañas hojas|r
    .accept 931 >>Acepta la misión Fronda fulgurante
step
    #loop
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta|r
    .target Mist
    .accept 938 >>Acepta la misión Niebla
step
    .goto 57,39.199,29.871,5,0
    .goto 57,39.174,29.898
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .target Priestess A'moora
    .turnin 2518 >>Entrega la misión Las lágrimas de la Luna
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .target Sentinel Arynia Cloudsbreak
    .turnin 937 >>Entrega la misión El claro encantado << skip
    .turnin -938 >>Entrega la misión Niebla
step
    .goto 57,40.471,29.942
    .use 18152 >>|cRXP_WARN_Usa la|r |T134798:0|t[Ampolla de amatista] |cRXP_WARN_en la poza de la Luna del Claro del Oráculo |r
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r y |cRXP_FRIENDLY_Denalan|r
    .turnin 923 >>Entrega la misión Tumores musgosos
    .target +Rellian Greenspyre
    .goto 57,43.960,44.161
    .turnin 931 >>Entrega la misión Fronda fulgurante
    .accept 2499 >>Acepta la misión Roblegüello
    .target +Denalan
    .goto 57,43.936,44.196
step
    .goto 57,47.403,35.829,40,0
    .goto 57,47.39,34.47
    >>Mata a |cRXP_ENEMY_Roblegüello|r. Despójalo para obtener el |cRXP_LOOT_Gargantuan Tumor|r
    >>|cRXP_ENEMY_Roblegüello|r |cRXP_WARN_patrulla ligeramente|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .mob Oakenscowl
step
    .goto 57,43.936,44.196
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .target Denalan
    .turnin 2499 >>Entrega la misión Roblegüello
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .target Corithras Moonrage
    .turnin 7383 >>Entrega la misión Teldrassil: La carga de los Kaldorei
    .accept 933 >>Acepta la misión Teldrassil: El alba del mañana << skip

--skipping following chain. very long rp / bad xphr
step << skip
    .goto 57,43.939,58.534
    .use 5621 >>|cRXP_WARN_Usa la|r |T134765:0|t[Ampolla de turmalina] |cRXP_WARN_en la Poza de la Luna de los Estanques de Arlithrien|r
	.complete 933,1
step << skip
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 933 >>Entrega la misión Teldrassil: El alba del mañana
    .accept 14005 >>Acepta la misión La venganza de Elune
step << skip
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step << skip
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .target Tarindrella
    .turnin 14005 >>Entrega la misión La venganza de Elune
    .accept 935 >>Acepta la misión Las aguas de Teldrassil
step << skip
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .target Corithras Moonrage
    .turnin 935 >>Entrega la misión Las aguas de Teldrassil
    .accept 14039 >>Acepta la misión Hogar de los Kaldorei
step
    .goto 89,35.993,50.342
    .zone 89 >> Viaja a Darnassus
    .isOnQuest 6341
step
    #optional
    #label Teldskip
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyoma|r
    .accept 6344 >>Acepta la misión Recuerdos nostálgicos
	.target Nyoma
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fidelio|r
    .turnin 6344 >>Entrega la misión Recuerdos nostálgicos
    .accept 6341 >>Acepta la misión A Darnassus
	.target Fidelio
step
    #completewith end
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fidelio|r
    .fly Darnassus >> Vuela a Darnassus
	.target Fidelio
    .zoneskip 89
step << Warrior
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ariyell Skyshadow
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Ariyell Skyshadow
    .xp >11,1
    .xp <10,1
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T132402:0|t[Hachuela] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ariyell Skyshadow
    .xp >12,1
    .xp <11,1
step << Hunter
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ariyell Skyshadow
step << Warrior
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje] |cRXP_WARN_en tu mano principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipa la|r |T132402:0|t[Hachuela] |cRXP_WARN_en tu mano principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    .goto 89,43.913,76.149
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Centinela Cordressa Brezoguja|r escaleras arriba
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>Acepta la misión Rompen olas de cambio
step
    .isQuestComplete 14039
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tyrande Susurravientos|r
    .target Tyrande Whisperwind
    .turnin 14039 >>Entrega la misión Hogar de los Kaldorei
    .isQuestComplete 14039
step
    .isOnQuest 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Aquinne|r
    .target Sister Aquinne
    .turnin 6341 >>Entrega la misión en Darnassus
    .accept 6342 >>Acepta la misión Un regalo inesperado
step
    .isQuestTurnedIn 6341
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Aquinne|r
    .target Sister Aquinne
    .accept 6342 >>Acepta la misión Un regalo inesperado
step
    .isOnQuest 6342
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Leora|r
    .target Leora
    .turnin 6342 >>Entrega la misión Un regalo inesperado
step
    .goto 89,35.993,50.342
    .subzone 702 >>Entra en el portal púrpura junto al maestro de vuelo
    .zoneskip Darkshore
step
    #label end
    .goto 57,55.406,88.415
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'danel >>Vuela a Lor'danel
    .zoneskip Darkshore
    .target Vesprystus
]])
