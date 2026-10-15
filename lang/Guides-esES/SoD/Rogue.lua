if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpesombra - 3 (Bosque de Elwynn)
#title Golpesombra

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Abre el|cRXP_PICK_Alijo de los Defias|r del suelo. Despójalo para obtener la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T132291:0|t[Golpesombra]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpesombra - 3 (Dun Morogh)
#title Golpesombra

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Entra en la Cueva Peloescarcha
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Viaja hacia el |cRXP_PICK_Alijo de botín Peloescarcha|r que hay dentro
step
    .goto Dun Morogh,30.773,80.063
    >>Abre el |cRXP_PICK_Alijo de botín Peloescarcha|r del suelo en el interior. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpesombra - 3 (Cañada Umbría)
#title Golpesombra

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_Sube por la rampa en el árbol Aldrassil y salta al tejado|r
    >>|cRXP_WARN_El |cRXP_PICK_Ídolo|r se encuentra en la parte alta del tejado|r
    >>Abre el |cRXP_PICK_Ídolo|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r
    >>|cRXP_WARN_Si tienes dificultades para saltar al tejado, intenta saltar por encima de la barandilla mientras corres hacia abajo por la rampa en la que estás|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Desenfunde rápido - 8 (Bosque de Elwynn)
#title Desenfunde rápido

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>|T133644:0|tLanza[Robar] a los |cRXP_ENEMY_Avanzados Zarparrío|r y |cRXP_ENEMY_Cachorros Zarparrío|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Mineros kóbold|r y con los |cRXP_ENEMY_Tuneleros kóbold|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Defias|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_Nota: Esto también lo puede soltar cualquier otro miembro |cRXP_ENEMY_Defias|r en el Bosque de Elwynn|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Batidores múrloc|r y |cRXP_ENEMY_Rondadores múrloc|r. Despójalos para obtener el |T134269:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_Nota: Esto también lo puede soltar cualquier otro |cRXP_ENEMY_Múrloc|r en el Bosque de Elwynn|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Elwynn|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Elwynn|r] |cRXP_WARN_donde marca la flecha. Esto hará que un |cRXP_PICK_Tesoro enterrado|r aparezca|r
    .use 203750
    .itemcount 203750,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Desenfunde rápido - 8 (Dun Morogh)
#title Desenfunde rápido

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Trols Peloescarcha|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Headhunter
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>|T133644:0|t[Roba] a los |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T134269:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Desenfunde rápido - 8 (Teldrassil)
#title Desenfunde rápido

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Mata |cRXP_ENEMY_Grell sañoso|r, a los |cRXP_ENEMY_Duendes granujas|r y a los |cRXP_ENEMY_Duendes sombrío|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Fúrbolgs Tuercepinos|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Mata o |T133644:0|t[Roba] a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Usa cualquiera de los|r |T134327:0|t[|cRXP_LOOT_Trozos de Mapa]|r |cRXP_WARN_para combinarlos en el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Toma el portal morado a la Aldea Rut'theran
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Teldrassil|r] |cRXP_WARN_dentro del tronco del árbol en la Aldea Rut'theran. Esto hará que un |cRXP_PICK_Tesoro enterrado|r aparezca|r
    .use 208605
    .itemcount 208605,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Matanza desde las Sombras - 1 (Bosque de Elwynn)
#title Matanza desde las Sombras

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_Usando las cajas fuera de la casa, salta al tejado y corre detrás de la chimenea|r
    >>Abre el |cRXP_PICK_Arcón oxidado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T236280:0|t[Matanza desde las Sombras]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Matanza desde las Sombras - 1 (Dun Morogh)
#title Matanza desde las Sombras

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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Entre los ojos - 8 (Ventormenta)
#title Entre los ojos

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> Entra en el Callejón Degolladores en la Ciudad de Ventormenta en el Distrito de los Enanos
    .train 400081,1
step << Rogue
    #season 2
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Sube las escaleras dentro de la casa|r
    >>Abre el |cRXP_PICK_Cofre polvoriento|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Al hacer esto aparecerán dos |cRXP_ENEMY_Atracadores despiadados|r de nivel 10 que te atacarán|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Entre los ojos - 8 (Forjaz)
#title Entre los ojos

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>Abre el |cRXP_PICK_Cofre polvoriento|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Al hacer esto aparecerán dos |cRXP_ENEMY_Atracadores despiadados|r de nivel 10 que te atacarán|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Entre los ojos - 8 (Teldrassil)
#title Entre los ojos

step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Abrecaminos Tuercepinos|r y |cRXP_ENEMY_Vengadores Tuercepinos|r. Despójalos para obtener una |T134241:0|t[|cRXP_LOOT_Llave de alijo tuercepinos]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    .goto Teldrassil,37.836,82.588
    >>Abre el |cRXP_PICK_Alijo tuercepinos|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Danza de hojas - 10 (Páramos de Poniente)
#title Danza de hojas

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Defias|r en Páramos de Poniente. Despójalos para obtener un |T133463:0|t[|cRXP_LOOT_Sobre discreto]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>Abre el |cRXP_PICK_Sobre discreto|r. Despójalo para obtener la |T134237:0|t[|cRXP_LOOT_Llave de alijo con equipamiento]|r
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>Dirígete a la entrada trasera de las Minas de la Muerte
    >>Abre el |cRXP_PICK_Alijo con equipamiento|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r] |cRXP_WARN_para aprender|r |T132350:0|t[Danza de hojas]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Danza de hojas - 16 (Dun Morogh)
#title Danza de hojas

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener un |T133875:0|t[|cRXP_LOOT_Arcón de Hierro Negro]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob Dark Iron Spy
    .train 400099,1
step << Rogue
    #season 2
    >>Abre el |T133875:0|t[|cRXP_LOOT_Arcón de Hierro Negro]|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r]
    >>|cRXP_WARN_Nota: Debes tener|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_aprendido de tu instructor para abrirlo|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r] |cRXP_WARN_para aprender|r |T132350:0|t[Danza de hojas]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Danza de hojas - 16 (Costa Oscura)
#title Danza de hojas

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >> Entra en la cueva de los naga de Fonroca
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>Mata |cRXP_ENEMY_Sirenas Escama Tormentosa|r y |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r. Despójalos para obtener una |T134242:0|t[|cRXP_LOOT_Llave Fonroca]|r
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>Abre el |cRXP_PICK_Cofre de Fonroca|r dentro de la cueva. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r] |cRXP_WARN_para aprender|r |T132350:0|t[Danza de hojas]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Mutilar - 5 (Bosque de Elwynn)
#title Mutilar

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>|T133644:0|t[Roba]  a |cRXP_ENEMY_Garrick Piesuaves|r para obtener |T134331:0|t[Nota de Navajín]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Habla con |cRXP_FRIENDLY_Navajín|r justo al sur del muro del Valle de Villanorte
    >>Te dará la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Mutilar - 8 (Dun Morogh)
#title Mutilar

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener la |T134331:0|t[Nota de Ratanegra]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208205,1 --Blackrat's Note (1)
    .mob Dark Iron Spy
    .train 400094,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Sablazo - 12 (Páramos de Poniente)
#title Sablazo

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Explorador Defias|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Sablazo - 12 (Loch Modan)
#title Sablazo

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >> |cRXP_WARN_Sube al muro de la presa de Loch Modan y déjate caer con cuidado por el saliente del centro de la presa. Sigue la flecha|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>Abre la |cRXP_PICK_Caja de herramientas de albañil|r en el saliente. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >> Haz clic en la |cRXP_PICK_Cuerda de escape|r para volver a lo alto
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Sablazo - 1 (Costa Oscura)
#title Sablazo

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >> Nada hacia la pequeña isla con el Faro
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>Abre el |cRXP_PICK_Alijo de faro|r dentro del tronco del árbol. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpesombra - 2 (Durotar)
#title Golpesombra


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .accept 77592 >>Acepta la misión En la cima de los riscos << Troll
    .accept 77583 >>Acepta la misión En la cima de los riscos << Orc
    .target Rwag
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Abre el |cRXP_PICK_Alijo escondido|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r
    >>|cRXP_WARN_Rodea y pasa de largo a|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_, salta abajo para llegar al cofre|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 77592 >>Entrega la misión En la cima de los riscos << Troll
    .turnin 77583 >>Entrega la misión En la cima de los riscos << Orc
    .target Rwag
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpesombra - 2 (Tirisfal)
#title Golpesombra


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .accept 77669 >>Acepta la misión La runa escarlata
    .target David Trias
step
    #season 2
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
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
    >>Mata o roba a los |cRXP_ENEMY_Conversos Escarlata|r. Despójalos para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob Scarlet Convert
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Golpesombra]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpesombra]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Entrega la misión La runa escarlata
    .target David Trias
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Brebaje letal - 25 (Bosque de Argénteos)
#title Brebaje letal


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>Haz clic en el |cRXP_PICK_Punto de entrega|r en Bosque de Argénteos
    .accept 78261 >> Acepta la misión El Cuerno de Xelthos
step
    #season 2
    #completewith next
    .zone 209 >> Entra en el Castillo de Colmillo Oscuro
    >>|cRXP_WARN_¡Tienes que hacer la siguiente parte en solitario! Ir en grupo te impedirá obtener las llaves que necesitas|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>Avanza en sigilo pasando a |cRXP_ENEMY_Rethilgore|r, habla con el |cRXP_FRIENDLY_Mortacechador Adamant|r y lanza |T132331:0|t[Esfumarse] después. Él te abrirá la puerta
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>Avanza en sigilo pasando a |cRXP_ENEMY_Rethilgore|r, habla con el |cRXP_FRIENDLY_Hechicero Ashcrombe|r y lanza |T132331:0|t[Esfumarse] después. Él abrirá la puerta por ti
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>Usa |T133644:0|t[Robar] en |cRXP_ENEMY_Gemel|r para obtener |T134243:0|t[|cRXP_LOOT_Media llave de hermana|r]
    >>|cRXP_WARN_Ella se encuentra en el comedor de la planta baja|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>Usa |T133644:0|t[Robar] en |cRXP_ENEMY_Gefel|r para obtener |T134244:0|t[|cRXP_LOOT_Media llave de hermano|r]
    >>|cRXP_WARN_Él se encuentra encima del comedor en el segundo piso|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>Usa |T133644:0|t[Robar] en |cRXP_ENEMY_Gemel|r para obtener |T134243:0|t[|cRXP_LOOT_Media llave de hermana|r]
    >>|cRXP_WARN_Ella se encuentra en el comedor de la planta baja|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>Vuelve al patio exterior y entra en los Establos. Combina las dos llaves para obtener la |T237379:0|t[|cRXP_LOOT_Llave gemela|r]
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>Abre el |cRXP_PICK_Cofre ornamentado|r en los establos para obtener el |cRXP_LOOT_Cuerno de Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Haz clic en el |cRXP_PICK_Punto de entrega|r en Bosque de Argénteos
    .turnin 78261 >> Entrega la misión El Cuerno de Xelthos
step
    #season 2
    #completewith next
    +|cRXP_WARN_Ahora necesitas entrar a una capital para recibir correo de *C*|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Vuela a Entrañas
    .target Karos Razok
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>Corre a Costasur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Vuela a Forjaz
    .target Darla Harris
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Entra en Entrañas. Revisa tu buzón para ver la carta de *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Entra en Forjaz. Revisa tu buzón para ver la carta de *C*. Omite este paso si ya lo estás haciendo en otra ciudad principal|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Abre tu buzón para leer el correo de *C* una vez que haya llegado. Vuela de regreso a Bosque de Argénteos cuando estés listo|r << Horde
    +|cRXP_WARN_Abre tu buzón para leer el correo de *C* una vez que haya llegado. Vuela de regreso a Costasur y luego dirígete a Bosque de Argénteos cuando estés listo|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Vuela a El Sepulcro
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Vuela a Costasur
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Haz clic en el |cRXP_PICK_Punto de entrega|r en Bosque de Argénteos para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Brebaje letal|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Brebaje letal|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Desenfunde rápido - 10 (Durotar)
#title Desenfunde rápido


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .train 400095,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Jabaespínes Crines de Acero|r y |cRXP_ENEMY_Exploradores Crines de Acero|r.  Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa|r]
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >> Viaja hacia Roca del Cráneo
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .train 400095,1
step
    #season 2
    .use 207108 >>Usa los |T134327:0|t[|cRXP_LOOT_Trozos de Mapa|r] para crear |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Durotar|r]
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>Usa el |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Durotar|r] en la Isla del Eco más al sur
    >>Despoja el |cRXP_PICK_Tesoro enterrado|r que aparece para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Desenfunde rápido - 10 (Tirisfal)
#title Desenfunde rápido


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Granjeros de Tirisfal|r y |cRXP_ENEMY_Mozos de labranza de Tirisfal|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
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
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Guerreros Escarlata|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo superior derecho de mapa|r]
    >>|cRXP_WARN_Cualquiera de los Humanoides Escarlata en Tirisfal puede soltar el Trozo de Mapa|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Gnolls Putrepellejo|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Mata o usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Múrlocs|r. Despójalos para obtener |T134327:0|t[|cRXP_LOOT_Trozo inferior derecho de mapa|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>Usa los |T134327:0|t[|cRXP_LOOT_Trozos de Mapa|r] para crear el |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Tirisfal|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>Usa el |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Tirisfal|r] debajo del puente
    >>Despoja el |cRXP_PICK_Tesoro enterrado|r que aparece para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Matanza desde las Sombras - 10 (Durotar)
#title Matanza desde las Sombras


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>Viaja al punto de salto situado justo al este de la Cueva Viento Seco
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>Despoja el |cRXP_PICK_Arcón oxidado|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r]
    >>|cRXP_WARN_Tendrás que dar un pequeño salto para poder alcanzar el cofre|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T236280:0|t[Matanza desde las Sombras]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Matanza desde las Sombras - 10 (Tirisfal)
#title Matanza desde las Sombras


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Viaja a la cripta en los Molinos de Agamand
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Mata |cRXP_ENEMY_Ancestros gemebundos|r y |cRXP_ENEMY_Ancestros en podredumbre|r. Despójalos para obtener una |T134245:0|t[|cRXP_LOOT_Llave de cofre de reliquias de Agamand|r]
    >>|cRXP_WARN_¡Ten cuidado! Los enemigos en esta cripta reaparecen dinámicamente|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>Abre el |cRXP_PICK_Arca de reliquias|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T236280:0|t[Matanza desde las Sombras]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Mutilar - 8 (Tirisfal)
#title Mutilar


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Capitán Perrine|r para obtener un |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>Viaja al Ayuntamiento de Rémol
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Usa el |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r] para crear |T134328:0|t[|cRXP_LOOT_Memorándum Escarlata falsificado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jamie Nore|r para recibir de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Mutilar - 10 (Durotar)
#title Mutilar


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >> Viaja hacia la Cueva Viento Seco
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>Usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Matones Filo Ardiente|r para obtener la |T134331:0|t[|cRXP_LOOT_Nota de Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ba'so|r para recibir |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    >>|cRXP_WARN_¡Está en sigilo!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Entre los ojos - 8 (Tirisfal)
#title Entre los ojos


    --Rune of Between the Eyes

step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Múrlocs Anca Vil|r para obtener |T134241:0|t[|cRXP_LOOT_Llave de alijo de naufragio|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Despojar el |cRXP_PICK_Alijo de náufrago|r para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Entre los ojos - 8 (Orgrimmar)
#title Entre los ojos


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Despoja el |cRXP_PICK_Cofre polvoriento|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Se encuentra en La Calle Mayor en el piso superior|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Danza de hojas - 15 (Los Baldíos)
#title Danza de hojas


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>Usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Salteadores de los Mares del Sur|r para obtener |T132761:0|t[|cRXP_LOOT_Caja de fósforos de bucanero|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>Haz clic en el Barril de pólvora. Despójalo el |cRXP_PICK_Alijo de botín de los Mares del Sur|r que aparece para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r]
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Danza de hojas|r] |cRXP_WARN_para aprender|r |T132350:0|t[Danza de hojas]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Sablazo - 15 (Los Baldíos)
#title Sablazo


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_¡Tu habilidad en Forzar cerraduras debe ser al menos 80 para obtener esta runa!|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>Despoja el |cRXP_PICK_Baúl de mozo de cuadra|r en lo alto del establo para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    >>|cRXP_WARN_Corre cuesta arriba por la colina y salta encima del muro del castillo. Desde allí puedes saltar encima del establo|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] |cRXP_WARN_para aprender|r |T132375:0|t[Sablazo]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Sablazo - 15 (Bosque de Argénteos)
#title Sablazo

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Despoja el |cRXP_PICK_Cofre oxidado|r junto a la entrada del Castillo de Colmillo Oscuro para obtener |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    >>|cRXP_WARN_Usa|r |T132307:0|t[Sprint] |cRXP_WARN_y luego salta desde el puente hacia el cofre|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] |cRXP_WARN_para aprender|r |T132375:0|t[Sablazo]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#title Paso de las Sombras
#name Paso de las Sombras - 30 (Bosque de Argénteos)

step
    #completewith next
    .zone Silverpine Forest >>Viaja al Bosque de Argénteos
step
    .train 400101,1
    >>Haz clic en el cofre |cRXP_PICK_Punto de entrega|r en el suelo
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>Acepta la misión El ojo de Bhossca
step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal al Monasterio Escarlata
step
    >>|cRXP_WARN_Abre el|r |cRXP_PICK_Casillero de suministros||r |cRXP_WARN_dentro del establo para obtener el|r |T132665:0|t[Uniforme de iniciado Escarlata]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >> Entra en el Monasterio Escarlata: mazmorra del |cRXP_WARN_Cementerio|r |cRXP_WARN_SOLO|r
step
    >>Usa |T133644:0|t[Robar] en un |cRXP_ENEMY_Arúspice Escarlata|r para conseguir la |T134241:0|t[Llave del arúspice]
    >>|cRXP_WARN_Usa|r |T132289:0|t[Distraer] |cRXP_WARN_para evitar ser detectado|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Entra en el Monasterio Escarlata: mazmorra de la |cRXP_WARN_Biblioteca|r |cRXP_WARN_SOLO|r
step
    #completewith next
    +|cRXP_WARN_Corre hacia el pasillo antes del último jefe|r
step
    >>Despoja el |cRXP_PICK_Buzón personal|r a la izquierda para obtener el |T134331:0|t[|cRXP_LOOT_Mensaje confidencial|r]
    .use 210955 >>|cRXP_WARN_Usa el|r |T132665:0|t[Uniforme de iniciado Escarlata] |cRXP_WARN_para hacer que los PNJs sean neutrales|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >> Entra en el Monasterio Escarlata: mazmorra del |cRXP_WARN_Cementerio|r |cRXP_WARN_SOLO|r
step
    >>|cRXP_WARN_Ve a la zona exterior dentro de la mazmorra y busca un banco entre dos estatuas en las paredes derecha e izquierda|r
    *|cRXP_WARN_En ambos lados|r usa /sit (sentarse) (se puede hacer mientras estés en sigilo) en los bancos hasta que el "emote" |cRXP_WARN_"Escuchas el sonido de piedras moviéndose"|r aparezca en el chat.
    *Después ve a la Tumba junto a |cRXP_WARN_la pared derecha|r y abre el |cRXP_PICK_Cofre de piedra|r para obtener la |T134242:0|t[Llave de relicario]
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Entra en el Monasterio Escarlata: mazmorra de la |cRXP_WARN_Biblioteca|r |cRXP_WARN_SOLO|r
step
    #completewith next
    +|cRXP_WARN_Corre hacia la "Galería de los Tesoros"|r
step
    >>Despoja el |cRXP_PICK_Relicario cerrado con candado|r en la primera sala a la izquierda para obtener el |T134331:0|t[|cRXP_LOOT_Ojo de Bhossca|r]
    .use 210955 >>|cRXP_WARN_Usa el|r |T132665:0|t[Uniforme de iniciado Escarlata] |cRXP_WARN_para hacer que los PNJs sean neutrales|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>Viaja al Bosque de Argénteos
step
    .train 400101,1
    >>Haz clic en el cofre |cRXP_PICK_Punto de entrega|r en el suelo
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>Entrega la misión El ojo de Bhossca
step
    #completewith next
    +|cRXP_WARN_Ahora necesitas entrar a una capital para recibir correo de *C*|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Vuela a Entrañas
    .target Karos Razok
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>Corre a Costasur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Vuela a Forjaz
    .target Darla Harris
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Entra en Entrañas. Revisa tu buzón para ver la carta de *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Entra en Forjaz. Revisa tu buzón para ver la carta de *C*. Omite este paso si ya lo estás haciendo en otra ciudad principal|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_Abre tu buzón para leer el correo de *C* una vez que haya llegado. Vuela de regreso a Bosque de Argénteos cuando estés listo|r << Horde
    +|cRXP_WARN_Abre tu buzón para leer el correo de *C* una vez que haya llegado. Vuela de regreso a Costasur y luego dirígete a Bosque de Argénteos cuando estés listo|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Vuela a El Sepulcro
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Vuela a Costasur
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>Haz clic en el cofre |cRXP_PICK_Punto de entrega|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Paso de las sombras|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Paso de las Sombras|r] |cRXP_WARN_para aprender|r |T132303:0|t[Paso de las Sombras]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Lanzamiento de shuriken - 30 (Pantano de las Penas)
#title Lanzamiento de shuriken

step
    .train 400096,1
    .train 1842 >>|cRXP_WARN_Tienes que aprender|r |T136162:0|t[Desactivar trampa] |cRXP_WARN_antes de poder obtener|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asesino|r]
    .collect 5060,1 >>|cRXP_WARN_También necesitas|r |T134065:0|t[Herramientas de ladrón]
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja al Pantano de las Penas
step
    .goto Swamp of Sorrows,41.48,29.97
    .train 400096,1
    .cast 1842 >>|cRXP_WARN_Lanza|r |T136162:0|t[Desactivar trampa] |cRXP_WARN_en la|r |cRXP_PICK_Trampa de dardos|r |cRXP_WARN_del árbol|r
step
    .goto Swamp of Sorrows,42.76,30.77
    >>Despoja el |cRXP_PICK_Alijo llamativo|r que apareció para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asesino|r]
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Asesino|r] |cRXP_WARN_para aprender|r |T132330:0|t[Lanzamiento de shuriken]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Maestro de la sutileza - 34 (Vega de Tuercespina)
#title Maestro de la sutileza

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_Debes subir tu nivel de habilidad de|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_a 125 como mínimo para obtener la runa|r |T132299:0|t[Bravura ante los golpes] |cRXP_WARN_|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >> Entra en Las Reservas (la Cueva de Kurzen)
step
    .train 425103,1
    #completewith next
    >>Lanza |T133644:0|t[Robar] en los |cRXP_ENEMY_Élites de Kurzen|r y |cRXP_ENEMY_Subjefes de Kurzen|r para obtener la |cRXP_LOOT_Llave de jaula de la base|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Abre el |cRXP_PICK_Cajón de suministros Kurzen|r. Despójalo para obtener el |cRXP_LOOT_Uniforme de luchador de Kurzen|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>Usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Élites de Kurzen|r y |cRXP_ENEMY_Subjefes de Kurzen|r para obtener la |cRXP_LOOT_Llave de jaula de la base|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Sal de la cueva. Viaja hacia |cRXP_FRIENDLY_Wendel Mathers|r en la torre de fuera
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wendel Mathers|r en la torre
    >>|cRXP_WARN_Tiene un tiempo de reaparición de alrededor de 3 minutos|r
    .destroy 216616 >> Entrégale la |cRXP_LOOT_Llave de jaula de la base|r
    .destroy 216617 >> Entrégale el |cRXP_LOOT_Uniforme de luchador de Kurzen|r
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>Viaja a Bahía del Botín
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Capitana Aransas|r
    >>Te dará |T133640:0|t[|cRXP_LOOT_Recompensa de la capitana Aransas|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>Abre la |T133640:0|t[|cRXP_LOOT_Recompensa de la capitana Aransas|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sutileza|r] y el |T338666:0|t[|cRXP_FRIENDLY_Talismán de Jani|r]
    >>|cRXP_WARN_NO destruyas el|r |T338666:0|t[|cRXP_FRIENDLY_Talismán de Jani|r] |cRXP_WARN_ya que se usa para obtener runas futuras|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sutileza|r] |cRXP_WARN_para aprender|r |T132299:0|t[Maestro de la sutileza]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#title Bravura ante los golpes
#name Bravura ante los golpes - 27 (Las Mil Agujas)


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_Debes subir tu nivel de habilidad de|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_a 45 como mínimo para obtener la runa|r |T134919:0|t[Bravura ante los golpes] |cRXP_WARN_|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >> Entra en la tienda grande del Campamento E'thok
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>Abre la |cRXP_PICK_Caja fuerte robada de gran tamaño|r. Despójala para obtener la |T132597:0|t[|cRXP_LOOT_Caja fuerte grande|r]
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lanza|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_en la|r |T132597:0|t[|cRXP_LOOT_Caja fuerte grande|r] |cRXP_WARN_para desbloquearla|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >> Abre la |T132597:0|t[|cRXP_LOOT_Caja fuerte grande|r]. Despójala para obtener la |T132597:0|t[|cRXP_LOOT_Caja fuerte mediana|r]
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lanza|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_en la|r |T132597:0|t[|cRXP_LOOT_Caja fuerte mediana|r] |cRXP_WARN_para desbloquearla|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >> Abre la |T132597:0|t[|cRXP_LOOT_Caja fuerte mediana|r]. Despójala para obtener la |T132597:0|t[|cRXP_LOOT_Caja fuerte pequeña|r]
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lanza|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_en la|r |T132597:0|t[|cRXP_LOOT_Caja fuerte pequeña|r] |cRXP_WARN_para desbloquearla|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >> Abre la |T132597:0|t[|cRXP_LOOT_Caja fuerte pequeña|r]. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Pata izquierda|r]
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Pata izquierda|r] |cRXP_WARN_para aprender|r |T134919:0|t[Bravura ante los golpes]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group RestedXP Guía de Runas y Libros
 #subgroup Casco
 #title Ataques centrados
 #name Ataques centrados - 34 (Tierras del Interior)

 step
    >>|cRXP_WARN_Necesitarás|r |T136175:0|t[Ceguera] |cRXP_WARN_y|r |T133587:0|t[Partículas cegadoras] |cRXP_WARN_para obtener la runa|r |T236274:0|t[Ataques centrados] |cRXP_WARN_|r
    .train 2094 >>Aprende |T136175:0|t[Ceguera]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>Viaja a |cFFfa9602Tierras del Interior|r
step
    .goto The Hinterlands,72.76,52.91
    >>Usa |T136175:0|t[Ceguera] en la |cRXP_ENEMY_Máscara Vilrama|r, luego despoja el cofre del |cRXP_PICK_Tesoro del Murciélago|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Enfoque|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Enfoque|r] |cRXP_WARN_para aprender|r |T236274:0|t[Ataques centrados]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Ventaja injusta
#name Ventaja injusta - 40 (Tanaris)

step
    .train 921 >>|cRXP_WARN_Debes aprender|r |T133644:0|t[Robar] |cRXP_WARN_para obtener la runa|r |T236285:0|t[Ventaja injusta] |cRXP_WARN_|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_Viaja a|r |cFFfa9602Tanaris|r
step
    #completewith next
    .subzone 1336 >>Viaja a la Cala del Aparejo Perdido
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_Lanza|r |T133644:0|t[Robar] |cRXP_WARN_en los|r |cRXP_ENEMY_Piratas de los Mares del Sur|r |cRXP_WARN_y|r |cRXP_ENEMY_Filibusteros de los Mares del Sur|r |cRXP_WARN_hasta que recibas un|r |T133639:0|t|cRXP_LOOT_Monedero de secuestrador|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>Abre la |T133639:0|t|cRXP_LOOT_Kidnapper's Moneda Purse|r y despójala para obtener un |T133302:0|t|cRXP_LOOT_Precious Medallion|r
    .collect 221370,1 -- Precious Medallion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>Habla con |cRXP_FRIENDLY_Jabbey|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Juego sucio|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Juego sucio|r] |cRXP_WARN_para aprender|r |T236285:0|t[Ventaja injusta]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Carnicería
#name Carnicería - 45 (Las Tierras Devastadas)

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_Debes subir tu nivel de habilidad de|r |T136058:0|t[Forzar cerraduras] |cRXP_WARN_a 225 como mínimo para obtener la runa|r |T236268:0|t[Carnicería] |cRXP_WARN_|r
step
    #completewith next
    .zone Blasted Lands >>Viaja a |cFFfa9602Las Tierras Devastadas|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52,10 >>Viaja a lo alto de la torre frente al Bastión Machacamiedo
step
    .goto Blasted Lands,45.27,16.52
    >>Abre el |cRXP_PICK_Alijo abandonado|r. Mata al |cRXP_ENEMY_Perdido asesino|r (nivel 46) que aparece
    >>Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Carnicería|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
    .train 432299,1
step
    .use 221461
    .itemcount 221461,1
    .train 432299 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Carnicería|r] |cRXP_WARN_para aprender|r |T236268:0|t[Carnicería]

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#title Honor entre ladrones
#name Honor entre ladrones - 45 (Azeroth)

step
    #optional
    .xp 45 >>|cRXP_WARN_Necesitas alcanzar el nivel 45 para obtener esta runa|r
step
    #optional
    .train 400101 >>|cRXP_WARN_Debes haber aprendido|r |T132303:0|t[Paso de las Sombras] |cRXP_WARN_para obtener esta runa|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_Debes haber aprendido|r |T236270:0|t[Brebaje letal] |cRXP_WARN_para obtener esta runa|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_Para comenzar la misión de esta runa, necesitas haber completado la misión "Mansión Ravenholdt" que te presenta a la facción de pícaros de Ravenholdt. Para recibirla, habla con|r |cRXP_FRIENDLY_Osborne el Nocturno|r |cRXP_WARN_en Ventormenta|r << Alliance
    +|cRXP_WARN_ara comenzar la misión de esta runa, necesitas haber completado la misión "Mansión Ravenholdt" que te presenta a la facción de pícaros de Ravenholdt. Para recibirla, habla con|r |cRXP_FRIENDLY_Ormok|r |cRXP_WARN_en Orgrimmar|r << Horde
    .accept 6681 >>Acepta la misión Mansión Ravenholdt << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>Habla con |cRXP_FRIENDLY_Ormok|r para recibir una |T133460:0|t[|cRXP_LOOT_Carta elegante|r]. Úsala para aceptar la misión
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>Acepta la misión Mansión Ravenholdt
    .target Ormok
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entra en la Mansión Ravenholdt
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>Muévete hacia el |cRXP_PICK_Cofre|r
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fahrad|r arriba
    .turnin 6681 >> Entrega la misión Mansión Ravenholdt
    .target Fahrad
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_Viaja a cualquier Ciudad Principal|r
    >>Darnassus
    >>Forjaz
    >>Ciudad de Ventormenta
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .train 432295,1
step << Horde
    +|cRXP_WARN_Viaja a cualquier Ciudad Principal|r
    >>Entrañas
    >>Cima del Trueno
    >>Orgrimmar
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
    .train 432295,1
step
    #label letterC
    +|cRXP_WARN_Revisa tu buzón para ver la carta de *Fahrad*|r
    >>|cRXP_WARN_Omite este paso cuando esté listo|r
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entra en la Mansión Ravenholdt
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fahrad|r arriba
    .accept 80526 >>Acepta la misión Hora de resarcirse
    .turnin 80526 >>Entrega la misión Hora de resarcirse
    .accept 80411 >>Acepta la misión El talismán de Kazdor
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
step
    #completewith next
    .goto Tanaris,38.69,20.20
    .subzone 1176 >>Entra en Zul'Farrak
    >>|cRXP_WARN_No puedes estar en un grupo para poder completar la misión de esta runa|r
step
    .goto Tanaris,38.69,20.20
    >>Abre los |cRXP_PICK_Recipientes de arcilla|r para obtener |T134799:0|t[|cRXP_LOOT_Brebajes vil|r]
    >>|cRXP_WARN_Se encuentran en las tiendas de los trols por todo Zul'Farrak|r
    .collect 217716,2
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Dirígete hacia la cueva de|r |cRXP_ENEMY_Antu'sul|r |cRXP_WARN_|r
step
    >>Usa un |T134799:0|t[|cRXP_LOOT_Brebaje vil|r] en la caldera. |cRXP_WARN_No romperá tu sigilo|r
    >>Mientras el jefe está distraído, despoja la |cRXP_PICK_Cartera de Antu'Sul|r para obtener una |T133724:0|t[|cRXP_LOOT_Ofrenda de hueso|r]
    .collect 217721,1 --Offering of Bone
    .use 217716
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Dirígete hacia el |cRXP_ENEMY_Médico brujo Zum'rah|r en la zona del cementerio|r
step
    >>Usa tu segundo |T134799:0|t[|cRXP_LOOT_Brebaje vil|r] en la caldera que está al lado del |cRXP_ENEMY_Médico brujo Zum'rah|r. |cRXP_WARN_No romperá tu sigilo|r
    >>Mientras está distraído, despoja la |cRXP_PICK_Cartera de Zum'rah|r para obtener el |T136232:0|t|cRXP_LOOT_Resguardo de los muertos|r
    .collect 217727,1 --ward of the dead
    .use 217716
    .train 432295,1
step
    #completewith next
    .equip 13,217727 >>Equipa el abalorio |T136232:0|t|cRXP_LOOT_Resguardo de los muertos|r que acabas de despojar
    >>|cRXP_WARN_Esto revelará qué|r |cRXP_PICK_Tumba poco profunda|r |cRXP_WARN_necesita ser despojada|r
step
    >>Despoja la |cRXP_PICK_Tumba poco profunda|r que se reveló con un aura azul para obtener la |T236304:0|t|cRXP_LOOT_Ofrenda de carne|r
    .collect 217720,1 --offering of flesh
    .use 217727
    .train 432295,1
step
    >>Usa la |T236304:0|t[|cRXP_LOOT_Ofrenda de carne|r] que acabas de recoger para combinarla con la |T133724:0|t[|cRXP_LOOT_Ofrenda de hueso|r] y obtener una |T236305:0|t[|cRXP_LOOT_Esencia de magia de sangre|r]
    .collect 217719,1 --Blood Magic Essence
    .use 217720
    .train 432295,1
step
    >>Ve a la base de la escalera de la pirámide y mira hacia la derecha. En el lateral del muro verás un pequeño bloque de piedra. Súbete a él y luego camina hacia el borde
    >>En el segundo balcón de madera a la derecha encontrarás un |cRXP_PICK_Alijo de Furiarena|r. Despójalo para obtener el |T237274:0|t[|cRXP_LOOT_Emblema hueco|r]
    .collect 217717,1 --Hollow Emblem
    .train 432295,1
step
    >>Usa el |T237274:0|t|cRXP_LOOT_Emblema hueco|r que acabas de despojar para combinarlo con la |T236305:0|t[|cRXP_LOOT_Esencia de magia de sangre|r] y obtener un |T133572:0|t[|cRXP_LOOT_Emblema de magia de sangre|r]
    .collect 217718,1 --Emblem of Blood Magic
    .use 217717
    .train 432295,1
step
    >>Sube las escaleras hasta la cúspide de la pirámide y despoja el |cRXP_PICK_Cofre de guerra vinculado|r para obtener el |T133313:0|t[|cRXP_LOOT_Talismán de Kazdor|r]
    .collect 217609,1 --Talisman of Kazdor
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entra en la Mansión Ravenholdt
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fahrad|r arriba
    .turnin 80411 >>Entrega la misión El talismán de Kazdor
    .accept 80453 >>Acepta la misión Plan infalible
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zan Chafadento|r abajo en el sótano
    .turnin 80453 >>Entrega la misión Plan infalible
    .accept 80454 >>Acepta la misión Una última entrega
    .target Zan Shivsproket
step
    #completewith next
    .zone Silverpine Forest >>Viaja al Bosque de Argénteos
step
    .goto Silverpine Forest,47.114,70.974
    >>Haz clic en el cofre |cRXP_PICK_Punto de entrega|r
    .turnin 80454 >>Entrega la misión Una última entrega
    .accept 80455 >>Acepta la misión Hora de esperar
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entra en la Mansión Ravenholdt
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fahrad|r arriba
    .turnin 80455 >>Entrega la misión Hora de esperar
    .target Fahrad
step
    .train 432295 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Conventículo|r] |cRXP_WARN_para aprender|r |T236275:0|t[Honor entre ladrones]
    .use 217736
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Tempestad carmesí
#name Tempestad carmesí - 60 (Tierras de la Peste del Oeste)

step
    .train 415918,1
    .zone Western Plaguelands >>Viaja a Tierras de la Peste del Oeste
step
    .train 415918,1
    #completewith next
    .subzone 190 >> Viaja a Vega del Amparo
step
    #label ToolboxKey
    .train 415918,1
    .goto Western Plaguelands,45.0,13.6
    >>Mata o lanza |T133644:0|t[Robar] a los |cRXP_ENEMY_Trabajadores Escarlata|r. Despójalos para obtener la |cRXP_LOOT_Llave de caja de herramientas|r
    .collect 227928,1 -- Toolbox Key 1/1
    .mob Scarlet Worker
step
    .train 415918,1
    .goto Western Plaguelands,45.0,14.2
    >>Abre la |cRXP_PICK_Caja de herramientas escarlata|r. Despójala para obtener la |cRXP_LOOT_Palanqueta oxidada|r
    .collect 227932,1 -- Rusty Crowbar 1/1
step
    .goto Western Plaguelands,49.5,18.5
    >>Dirígete a la parte superior de la torre en el centro de Vega del Amparo. Abre el |cRXP_PICK_Cajón marcado|r que hay allí. Despójalo para obtener el |T133640:0|t[|cRXP_LOOT_Fardo oculto|r] y ábrelo para despojar una |T134237:0|t[|cRXP_LOOT_Llave de caja fuerte|r]
    .collect 227930,1
step
    .goto Western Plaguelands,46.3,14.6
    >>Dirígete al piso intermedio de la segunda torre en Vega del Amparo, situada en el lado norte de la ciudad. Usa la |T134237:0|t[|cRXP_LOOT_Llave de caja fuerte|r] para abrir la [|cRXP_PICK_Caja fuerte de Belavus|r] y despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Tempestad carmesí|r]
    .collect 227456,1 --Rune of the crimson tempest
step
    .use 227456
    .itemcount 227456,1
    .train 415918 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la Tempestad carmesí|r] |cRXP_WARN_para aprender|r |T135315:0|t[Tempestad carmesí]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Abanico de cuchillos
#name Abanico de cuchillos - 55 (Cuna del Invierno)

step
    .train 436609,1
    .zone Winterspring >>Viaja a Cuna del Invierno
step
    .train 436609,1
    .goto Winterspring,67.7,35.4
    >>Abre el |cRXP_PICK_Cofre de madera|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillos|r]
    >>|cRXP_WARN_Mientras abres el |cRXP_PICK_Cofre de madera|r, elige las siguientes opciones en este orden:|r
    >>|cRXP_WARN_Sable de hielo|r
    >>|cRXP_WARN_Lechuza|r
    >>|cRXP_WARN_Oso|r
    >>|cRXP_WARN_Lechuza|r
    .collect 227921,1
step
    .use 227921
    .itemcount 227921,1
    .train 436609 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Cuchillos|r] |cRXP_WARN_para aprender|r |T236273:0|t[Abanico de cuchillos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Trabuco
#name Trabuco - 60 (Tierras de la Peste del Este)

step
    .train 415922,1
    .zone Eastern Plaguelands >>Viaja a Tierras de la Peste del Este
step
    .train 415922,1
    .goto Eastern Plaguelands,83,85
    >>Abre los |cRXP_LOOT_Baúles Escarlata|r en Mano de Tyr hasta que despojes un |cRXP_LOOT_Sigilo de envío|r
    .collect 227451,1
step
    .train 415922,1
    #completewith FinalPillar
    >>|cRXP_WARN_Para los siguientes pasos debes hacer clic en CUATRO |cRXP_PICK_Pilares de envío|r en el orden correcto. Después de hacer clic en uno serás teletransportado ALEATORIAMENTE a otro diferente. ¡Asegúrate de estar en la ubicación correcta antes de hacer clic en otro!|r
step
    .train 415922,1
    .goto Eastern Plaguelands,82,57
    .cast 6477,6478 >>Haz clic en el primer |cRXP_PICK_Pilar de envío|r |cRXP_WARN_detrás de la Capilla de la Esperanza de la Luz|r
step
    .train 415922,1
    .goto Eastern Plaguelands,40,92
    .cast 6477,6478 >>Haz clic en el segundo |cRXP_PICK_Pilar de envío|r |cRXP_WARN_en Villa Darrow|r
step
    .train 415922,1
    .goto Eastern Plaguelands,70,34
    .cast 6477,6478 >>Haz clic en el tercer |cRXP_PICK_Pilar de envío|r |cRXP_WARN_en Vallenorte|r
step
    .train 415922,1
    #label FinalPillar
    .goto Eastern Plaguelands,14,30
    .cast 6477,6478 >>Haz clic en el cuarto |cRXP_PICK_Pilar de envío|r |cRXP_WARN_en el Valle del Terror|r
step
    .train 415922,1
    >>|cRXP_WARN_Entra en la Casa|r
    >>Abre el |cRXP_PICK_Baúl de Adon|r en el suelo. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa del Espadachín|r]
    .collect 227922,1
step
    .use 227922
    .itemcount 227922,1
    .train 415922 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Espadachín|r] |cRXP_WARN_para aprender|r |T134538:0|t[Trabuco]
]])
