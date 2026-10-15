if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Poseer - 3 (Bosque de Elwynn)
#title Poseer

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Abre el |cRXP_PICK_Alijo de los Defias|r del suelo. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r]
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r] |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Poseer]
    .use 205230
    .itemcount 205230,1
    .train 403919,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Poseer - 1 (Dun Morogh)
#title Poseer

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r del suelo. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Tormento]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Tormento]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Poseer]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Poseer - 2 (Durotar)
#title Poseer


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Acepta la misión Poder robado
    .target Nartok
    .train 403919,1
step
    #season 2
    .goto Durotar,42.99,54.43
    >>Despoja el |cRXP_PICK_Alijo calado|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r] dentro de la cueva
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .train 403919 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Tormento]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Poseer]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77586 >>Entrega la misión Poder robado
    .target Nartok
    .isOnQuest 77586
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Poseer - 2 (Claros de Tirisfal)
#title Poseer


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Acepta la misión La runa perdida
    .target Maximillion
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Despoja el |cRXP_PICK_Alijo perdido|r dentro de la cueva para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: ALZO EN HIELAD|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Entrega la misión La runa perdida
    .target Maximillion


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Succión de alma - 13 (Durotar)
#title Succión de alma

step
    #completewith next
    .zone Durotar >>Viaja a Durotar
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>Usa |T136163:0|t[Drenar alma] en una alimaña para obtener un |T134095:0|t[Fragmento de alma pura]
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>Usa |T136163:0|t[Drenar alma] en |cRXP_ENEMY_Gazz'uz|r (dentro de la cueva) para obtener un |T134085:0|t[Fragmento de alma contaminado]. |cRXP_WARN_No tienes que matarlo y puedes drenarlo desde abajo|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob Gazz'uz
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darmak Aullasangre|r
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Succión de alma|r] |cRXP_WARN_para aprender|r |T136169:0|t[Succión de alma]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Succión de alma - 9 (Claros de Tirisfal)
#title Succión de alma

step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>Usa |T136163:0|t[Drenar alma] en una alimaña para obtener un |T134095:0|t[Fragmento de alma pura]
step
    .train 403920,1
    >>Usa |T136163:0|t[Drenar alma] en |cRXP_ENEMY_Ojo de cresa|r para obtener un |T134085:0|t[Fragmento de alma contaminado]. |cRXP_WARN_No tienes que matarlo.|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denton Sendaoscura|r en Entrañas
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Succión de alma|r] |cRXP_WARN_para aprender|r |T136169:0|t[Succión de alma]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Tácticas demoníacas - 4 (Claros de Tirisfal)
#title Tácticas demoníacas

step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteractúa con el |cRXP_FRIENDLY_Acólito muerto|r. Abre el |T133625:0|t[Morral de acólito]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert Boch|r en el piso de arriba de la posada.
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target Rupert Boch
step
    .train 416009,1
    >>Usa el |T133447:0|t[Artefacto sin energía] junto a la piedra rúnica. |cRXP_WARN_Después tienes 10 minutos para llegar a Entrañas (mira tu perjuicio)|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin Halgar|r en Entrañas
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target Carendin Halgar
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r] |cRXP_WARN_para aprender|r |T136150:0|t[Tácticas demoníacas]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Gracia demoníaca - 8 (Durotar)
#title Gracia demoníaca

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>Viaja a Durotar
step
    #completewith DemonicGraceDurotarSkull
    >>Mata |cRXP_ENEMY_Makrura|r. Despójalos para obtener la |T133571:0|t[Pata de makrura]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>Mata a los |cRXP_ENEMY_Trols embrujados|r y a los |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener el |T133733:0|t[Escrito ominoso]
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>Mata a los |cRXP_ENEMY_Humanos Kul Tiras |r. Despójalos para obtener el |T133730:0|t[Cráneo kultirano]
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>Mata |cRXP_ENEMY_Makrura|r. Despójalos para obtener la |T133571:0|t[Pata de makrura]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_CUIDADO: Otros pueden robarte (tag) tu demonio, lo que significa que tendrías que reunir los componentes de nuevo|r
    >>Entra en las Cloacas. Usa los |T133733:0|t[Escritos ominosos] en el Círculo de Invocación. Mata al |cRXP_WARN_ÉLITE (quizá necesites ayuda)|r |cRXP_ENEMY_Soboz|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r] |cRXP_WARN_para aprender|r |T236293:0|t[Gracia demoníaca]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Gracia demoníaca - 8 (Claros de Tirisfal)
#title Gracia demoníaca

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>Mata |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener el |T133726:0|t[Hueso de mandíbula de sabueso]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>Mata a los |cRXP_ENEMY_Tirahuesos Ojosombra|r. Despójalos para obtener el |T133733:0|t[Escrito ominoso]
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>Mata a los |cRXP_ENEMY_Putrepellejos|r. Despójalos para obtener la |T133730:0|t[Sangre de gnoll]
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>Mata |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener el |T133726:0|t[Hueso de mandíbula de sabueso]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_CUIDADO: Otros pueden robarte (tag) tu demonio, lo que significa que tendrías que reunir los componentes de nuevo|r
    >>Entra en las Cloacas. Usa los |T133733:0|t[Escritos ominosos] en el Círculo de Invocación. Mata al |cRXP_WARN_ÉLITE (quizá necesites ayuda)|r |cRXP_ENEMY_Soboz|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r] |cRXP_WARN_para aprender|r |T236293:0|t[Gracia demoníaca]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
-- #subgroup Chest << Mage
#subgroup Guantes << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name Descarga de Caos - 8 (Claros de Tirisfal) << Warlock
#title Descarga de Caos << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>Compra uno (o varios) |T135933:0|t[Talismán de comprensión] a un Vendedor de componentes
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>Libera al |cRXP_ENEMY_Múrloc congelado|r |cRXP_WARN_usando hechizos de fuego|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Incendio|r] << Mage
    >>Libera al |cRXP_ENEMY_Múrloc congelado|r |cRXP_WARN_usando hechizos de fuego|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Descarga de caos|r] << Warlock
    *|cRXP_WARN_A niveles bajos no podrás liberarlo solo, busca a otro Brujo o Mago|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un Vendedor de componentes para usar el objeto << Mage
    .train 403925 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Descarga de caos|r] |cRXP_WARN_para aprender|r |T236291:0|t[Descarga de caos]  << Warlock
    .train 401759 >>Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Incendio|r] |cRXP_WARN_para aprender|r |T236207:0|t[Incendio] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Lago de fuego - 25 (Laderas de Trabalomas)
#title Lago de fuego

step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas (p.ej. desde Entrañas a través de Bosque de Argénteos) << Horde
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas (p.ej. dirígete al norte desde Los Humedales) << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Busca a |cRXP_FRIENDLY_Zixil|r. Patrulla entre Molino Tarren y Costasur. Cómprale los |T133709:0|t[Explosivos para demoliciones] |cRXP_WARN_por 1 oro|r
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>Usa los |T133709:0|t[Explosivos para demoliciones] para destruir los |cRXP_PICK_Escombros|r. Despoja la |cRXP_PICK_Taquilla de almacenamiento|r del suelo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Estela de fuego|r]
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Estela de fuego|r] |cRXP_WARN_para aprender|r |T135826:0|t[Lago de fuego]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#name Incinerar - 22 (Montañas Crestagrana)
#title Incinerar

step
    #completewith next
    .zone Redridge Mountains >>Viaja a las Montañas Crestagrana
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>Mata al |cRXP_ENEMY_Incinerador Gar'im|r |cRXP_WARN_(nivel 23 élite)|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r] |cRXP_WARN_para aprender|r |T135789:0|t[Incinerar]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Canalización maestra - 12 (Los Baldíos)
#title Canalización maestra

step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
step
    .train 403932,1
    >>|cRXP_WARN_Ve al Altar de espinas|r. Lanza |T136126:0|t[Transfusión de vida] hasta estar a punto de morir. Luego lanza |T136168:0|t[Cauce de salud] en tu mascota para morir y obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r]
    *|cRXP_WARN_Te revivirán inmediatamente después de morir|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r] |cRXP_WARN_para aprender|r |T136168:0|t[Canalización maestra]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Canalización maestra - 14 (Bosque de Argénteos)
#title Canalización maestra

step
    #completewith next
    .zone Silverpine Forest >>Viaja a Bosque de Argénteos
step
    .train 403932,1
    >>Entra en la cueva por la ubicación marcada. Usa la |T136225:0|t[Maldición de temeridad] en el |cRXP_ENEMY_Maligno sádico|r. Mátalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r] |cRXP_WARN_para aprender|r |T136168:0|t[Canalización maestra]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Salva de descarga de las Sombras - 16 (Los Baldíos)
#title Salva de descarga de las Sombras

step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
step
    .train 403936,1
    >>Usa |T136163:0|t[Drenar alma] en el |cRXP_ENEMY_Supervisor Palarrastre|r (el |cRXP_ENEMY_Sobrestante Glibby|r también podría servir) hasta obtener el |T134105:0|t[Alma de codicia]
    *|cRXP_WARN_No hace falta que le des el primer golpe (tag)|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob Supervisor Lugwizzle
    .mob Overseer Glibby
step
    .train 403936,1
    >>Haz clic en el |cRXP_PICK_Ídolo hambriento||r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Descargas de las Sombras|r]
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Descargas de las Sombras|r] |cRXP_WARN_para aprender|r |T136195:0|t[Salva de descarga de las Sombras]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Salva de descarga de las Sombras - 18 (Bosque de Argénteos)
#title Salva de descarga de las Sombras

step
    #completewith next
    .zone Silverpine Forest >>Viaja a Bosque de Argénteos
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>Mata |cRXP_ENEMY_Bracero Corvozarpa|r y |cRXP_ENEMY_Guardianes Corvozarpa|r |cRXP_WARN_dentro de la cueva|r. Despójalos para obtener el |T236295:0|t[Alma torturada]
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>Usa |T136126:0|t[Transfusión de vida] una vez y después el |T236295:0|t[Alma torturada]. Mata al |cRXP_ENEMY_Alma torturada|r. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Descargas de las Sombras|r]
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Descargas de las Sombras|r] |cRXP_WARN_para aprender|r |T136195:0|t[Salva de descarga de las Sombras]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Metamorfosis - 25 (Azeroth)
#title Metamorfosis

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_Se recomienda hacer todos estos pasos en grupo. Algunos pasos pueden completarse solo.|r
step
    #completewith next
    .zone Redridge Mountains >>Viaja a Montañas Crestagrana (p.ej. toma el barco de Trinquete a Bahía del Botín, corre hacia el norte) << Horde
    .zone Redridge Mountains >>Viaja a Montañas Crestagrana << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>Despoja el |cRXP_PICK_Relicario demoníaco|r en lo alto de la torre para obtener el |T134337:0|t[Orbe de Des]
    *|cRXP_WARN_Ten cuidado, ya que está custodiado por un élite. Despoja el cofre mientras tu Abisario tanquea a los enemigos|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doan Karhan|r
    *|cRXP_WARN_Omite este paso si estás viajando a través de Los Baldíos|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Acepta la misión El orbe de Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>Viaja a Costa Oscura (toma el barco de Puerto de Menethil) << Alliance
    .zone Darkshore >>Viaja a Costa Oscura (cruza Vallefresno) << Horde
step
    .train 403938,1
    >>Despoja la |cRXP_PICK_Rama de Altek|r en lo alto de la torre para obtener la |T135153:0|t[Rama de Altek]
    *|cRXP_WARN_Ten cuidado. Una opción es morir cerca, saltar detrás de la estantería, resucitar (quizá lanzar miedo al primer taumaturgo que te ataque) y despojarlo.|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Acepta la misión El orbe de Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Viaja a Vallefresno
step
    .train 403938,1
    >>Mata a los |cRXP_ENEMY_Acólitos Crepuscular|r cerca de la entrada de la banda de Cavernas de Brazanegra. Despójalos para obtener los |cRXP_LOOT_Trozos Soran'ruk|r
    *|cRXP_WARN_El |cRXP_WARN_Acólito Crepuscular|r dentro de la banda antes del 5º jefe también los sueltan|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>Mata |cRXP_ENEMY_Almanegras Colmillo Oscuro|r dentro de la |cRXP_WARN_mazmorra Castillo de Colmillo Oscuro (ve a la derecha después del |cRXP_ENEMY_Barón Filargenta|r)|r. Despójalos para obtener el |cRXP_LOOT_Trozo de Soran'ruk grande|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>Entrega la misión El orbe de Soran'ruk
    .accept 78680 >>Acepta la misión Abundancia de rumores
    .turnin 78680 >>Entrega la misión Abundancia de rumores
    .accept 78681 >>Acepta la misión La conjuración
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Viaja a Vallefresno
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>Mata a los |cRXP_ENEMY_Demonios|r de la zona. Despójalos para obtener la |cRXP_LOOT_Sangre de la Legión|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_Si estás en un grupo de brujos, el primer brujo (el que tenga el perjuicio) que entregue la misión debe darle el golpe de gracia al |cRXP_ENEMY_Infernal abrasador|r mientras permanezca dentro de la runa|r
step
    .train 403938,1
    >>Interactúa con la |cRXP_PICK_Piedra de ritual oscuro|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Entrega la misión La conjuración
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>Mata a los |cRXP_ENEMY_Demonios|r que aparecen. |cRXP_WARN_Mata al |cRXP_ENEMY_Infernal abrasador|r MIENTRAS CANALIZAS|r |T136163:0|t[Drenar alma] |cRXP_WARN_y MIENTRAS PERMANECES DENTRO DE LA RUNA|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Acepta la misión Viajero misterioso
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doan Karhan|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Metamorfosis|r]
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>Entrega la misión Viajero misterioso
    .turnin 78702 >>Entrega la misión Raszel Ander
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Metamorfosis|r] |cRXP_WARN_para aprender|r |T237558:0|t[Metamorfosis]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Grimorio de sinergia - 40 (Azeroth)
#title Grimorio de sinergia

step
    #optional
    #completewith next
    .train 426445,1
    +|cRXP_WARN_Debes ser al menos de nivel 30 antes de poder obtener la runa de|r |T133738:0|t[Grimorio de sinergia] |cRXP_WARN_|r
    .xp >30,1
step
    .train 403938 >> |cRXP_WARN_Primero debes obtener la runa de|r |T237558:0|t[Metamorfosis] |cRXP_WARN_antes de conseguir la runa de|r |T133738:0|t[Grimorio de sinergia] |cRXP_WARN_|r
step
    #optional
    .train 426445,1
    +|cRXP_WARN_Debes ser al menos de nivel 30 antes de poder obtener la runa de|r |T133738:0|t[Grimorio de sinergia] |cRXP_WARN_|r
    .xp >30,1
step
    .train 426445,1
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Debes estar en|r |T237558:0|t[Metamorfosis] |cRXP_WARN_para ver a|r |cRXP_FRIENDLY_Raszel Ander|r
    .accept 78994 >> Acepta la misión Una base sólida
    .target Raszel Ander
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    .home >> Establece tu Piedra de hogar en Trinquete
    .target Innkeeper Wiley
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >> Establece tu Piedra de hogar en el Campamento Taurajo
    .target Innkeeper Byula
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Azshara >> Vuela a Azshara
    .target Bragok
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Splintertree Post >>Vuela al Puesto del Hachazo
    .target Omusa Thunderhorn
step
    .train 426445,1
    .train 126,3 -- skips step if they don't have eye of killrog trained
    .isOnQuest 78994
    .goto Ashenvale,88.82,41.52
    >>|cRXP_WARN_Viaja a la ubicación de la flecha en Vallefresno|r
    .cast 126 >> |cRXP_WARN_Lanza|r |T136155:0|t[Ojo de Kilrogg] |cRXP_WARN_y dirígete con él a Talloumbrío (la zona con todos los élites de nivel 60+) y busca un árbol |cRXP_PICK_Rama de las sombras|r. Puede aparecer en varios puntos a lo largo de Talloumbrío, y lo ideal es que encuentres uno que no tenga muchos élites cerca para poder despojarlo|r
step
    .train 426445,1
    .isOnQuest 78994
    #completewith next
    .goto Ashenvale,88.82,41.52
    .cast 440505 >> |cRXP_WARN_Usa la|r |T236874:0|t[Poción de invisibilidad] |cRXP_WARN_y busca uno de los árboles |cRXP_PICK_Rama de las sombras|r a lo largo de Talloumbrío. La zona tiene muchos élites de nivel 60+ patrullando|r
    .use 217693
step
    .train 426445,1
    .isOnQuest 78994
    .goto Ashenvale,90.9,38.6,20,0
    .goto Ashenvale,91,37,0
    >>|cRXP_WARN_Antes de despojar la |cRXP_PICK_Rama de las sombras|r, quítate todo tu equipo y lanza|r |T136121:0|t[Resguardo contra las Sombras]|cRXP_WARN_. Vas a recibir un perjuicio que inflige un daño masivo basado en un porcentaje de tu salud. Prepárate para usar tu Piedra de hogar inmediatamente después de despojar|r
    >>Despoja cualquiera de las |cRXP_PICK_Rama de las sombras|r por todo Talloumbrío
    .complete 78994,1
step
    #completewith next
    .train 426445,1
    .isOnQuest 78994
    .hs >> Usa tu Piedra de hogar para ir a Trinquete << Alliance
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo << Horde
    .zoneskip The Barrens
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Debes estar en|r |T237558:0|t[Metamorfosis] |cRXP_WARN_para ver a|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 78994 >> Entrega la misión Una base sólida
    .accept 78914 >> Acepta la misión Recipiente de alma
    .target Raszel Ander
step
    .train 426445,1
    >>|cRXP_WARN_Consigue los siguientes materiales y haz que un Ingeniero fabrique un|r |T133254:0|t[Recipiente de alma] |cRXP_WARN_para ti. Ten en cuenta que el|r |T134133:0|t[Vitriolo negro] |cRXP_WARN_y la|r |T134074:0|t[Gema de las Sombras] |cRXP_WARN_se pueden comprar en la Casa de Subastas y la|r |T134337:0|t[Figurilla demoníaca] |cRXP_WARN_a un|r |cRXP_FRIENDLY_Vendedor de componentes|r
    .collect 9262,1,78914,1,1 -- Black Vitriol
    .collect 1210,4,78914,1,1 -- Shadowgem
    .collect 16583,1,78914,1,1 -- Demonic Figurine
    >>|cRXP_WARN_Alternativamente puedes comprar un|r |T133254:0|t[Recipiente de alma] |cRXP_WARN_directamente en la Casa de Subastas|r
    .collect 211427,1,78914,1
step
    #completewith next
    .train 426445,1
    .zone Desolace >> Viaja a Desolace
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Debes estar en|r |T237558:0|t[Metamorfosis] |cRXP_WARN_para ver a|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 78914 >> Entrega la misión Recipiente de alma
    .accept 79298 >> Acepta la misión Tentar al destino
    .target Raszel Ander
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    .gossip 215850,1 >> Habla con |cRXP_FRIENDLY_Raszel Ander|r para comenzar el ritual
    .timer 14,Tentar al destino "Roleplay"
    .skipgossip
step
    .train 426445,1
    .goto Desolace,51.195,82.465
    >>Haz clic en el |cRXP_PICK_Bastón de Des'Altek reconstruido|r para invocar a |cRXP_ENEMY_Des'Altek|r
    >>|cRXP_WARN_Asegúrate de tener la salud al máximo con|r |T136121:0|t[Resguardo contra las Sombras] |cRXP_WARN_activo, ya que recibirás daño mientras canalizas y durante todo el combate|r
    >>Mata a |cRXP_ENEMY_Des'Altek|r
    .complete 79298,1
    .mob Des'Altek
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Debes estar en|r |T237558:0|t[Metamorfosis] |cRXP_WARN_para ver a|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 79298 >> Entrega la misión Tentar al destino
    .target Raszel Ander
step
    .train 426445 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sinergia|r] |cRXP_WARN_para aprender|r |T133738:0|t[Grimorio de sinergia]
    .use 213090
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Canalización Maestra - 10 (Loch Modan)
#title Canalización maestra

step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Busca a |cRXP_FRIENDLY_Greishan Calefacero|r patrullando por el camino a través de Loch Modan. Su ruta de patrulla está marcada en tu mapa|r
    >>|cRXP_BUY_Compra un|r |T237359:0|t[Pastel malévolo] |cRXP_BUY_a este vendedor|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Usa el|r |T237359:0|t[Pastel malévolo] |cRXP_WARN_para comerlo. Una vez que el perjuicio|r |T132108:0|t[Indigestión infernal] |cRXP_WARN_se te quite, recibirás la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r] |cRXP_WARN_para aprender|r |T136168:0|t[Canalización maestra]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Canalización Maestra - 15 (Costa Oscura)
#title Canalización maestra

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r] |cRXP_WARN_para aprender|r |T136168:0|t[Canalización maestra]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Succión de alma - 10 (Dun Morogh)
#title Succión de alma

step << Warlock
    #completewith next
    >>|cRXP_WARN_Lanza|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre cualquier alimaña para recibir un|r |T134095:0|t[|cRXP_LOOT_Fragmento de alma pura|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>Mata al |cRXP_ENEMY_Capitán Beld|r en el piso inferior del edificio. Despójalo para obtener un |T134085:0|t[|cRXP_LOOT_Fragmento de alma contaminado|r]
    >>|cRXP_WARN_Asegúrate de que muera mientras mantienes|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre él|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Lanza|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre cualquier alimaña para recibir un|r |T134095:0|t[|cRXP_LOOT_Fragmento de alma pura|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gaklik Tuercevacío|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Succión de alma|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Succión de alma|r] |cRXP_WARN_para aprender|r |T136169:0|t[Succión de alma]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Succión de alma - 10 (Bosque de Elwynn)
#title Succión de alma

step << Warlock
    #completewith next
    >>|cRXP_WARN_Lanza|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre cualquier alimaña para recibir un|r |T134095:0|t[|cRXP_LOOT_Fragmento de alma pura|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener un |T134085:0|t[|cRXP_LOOT_Fragmento de alma contaminado|r]
    >>|cRXP_WARN_Asegúrate de que muera mientras mantienes|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre él|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Hogger
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Lanza|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre cualquier alimaña para recibir un|r |T134095:0|t[|cRXP_LOOT_Fragmento de alma pura|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damien Kane|r en el sótano de la posada para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Succión de alma|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Succión de alma|r] |cRXP_WARN_para aprender|r |T136169:0|t[Succión de alma]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Tácticas demoníacas - 1 (Bosque de Elwynn)
#title Tácticas demoníacas

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>Despoja al |cRXP_FRIENDLY_Acólito muerto|r para obtener el |T133625:0|t[|cRXP_LOOT_Morral de acólito|r]
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_Usa el|r |T133625:0|t[|cRXP_LOOT_Morral de acólito|r] |cRXP_WARN_para recibir un|r |T133447:0|t[|cRXP_LOOT_Artefacto sin identificar|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>Habla con |cRXP_FRIENDLY_Maximillian Crowe|r en el sótano de la posada de Villadorada para recibir el |T133447:0|t[|cRXP_LOOT_Artefacto sin energía|r]
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target Maximillian Crowe
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_Usa el|r |T133447:0|t[|cRXP_LOOT_Artefacto sin energía|r] |cRXP_WARN_en la ubicación del |cRXP_FRIENDLY_Acólito muerto|r para recibir el perjuicio|r |T136008:0|t[Ofrenda de sangre] |cRXP_WARN_|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Viaja a Ventormenta
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r]
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target Gakin the Darkbinder
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r] |cRXP_WARN_para aprender|r |T136150:0|t[Tácticas demoníacas]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Gracia demoníaca - 10 (Bosque de Elwynn)
#title Gracia demoníaca

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>Mata |cRXP_ENEMY_Geománticos kóbold|r. Despójalos para obtener un |T133733:0|t[|cRXP_LOOT_Escrito ominoso|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
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
    >>Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener su |cRXP_LOOT_Sangre de gnoll|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>Mata |cRXP_ENEMY_Lobos sarnosos|r, |cRXP_ENEMY_Lobos grisáceos del bosque|r y |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener una |cRXP_LOOT_Mandíbula de lobo|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >> Viaja a Ventormenta
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .cast 418065 >> |cRXP_WARN_Usa el|r |T133733:0|t[|cRXP_LOOT_Escrito ominoso|r] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Soboz|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >> Mata a |cRXP_ENEMY_Soboz|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r] |cRXP_WARN_para aprender|r |T236293:0|t[Gracia demoníaca]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Gracia demoníaca - 10 (Dun Morogh)
#title Gracia demoníaca

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>Mata |cRXP_ENEMY_Taumaturgos umbríos Peloescarcha|r. Despójalos para obtener un |T133733:0|t[|cRXP_LOOT_Escrito ominoso|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Mata |cRXP_ENEMY_Wendigos jóvenes|r y |cRXP_ENEMY_Wendigos|r. Despójalos para obtener su |cRXP_LOOT_Sangre de wendigo|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>Mata a cualquier |cRXP_ENEMY_Lobo|r en Dun Morogh. Despójalos para obtener su |cRXP_LOOT_Mandíbula de lobo|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob Winter Wolf
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >> |cRXP_WARN_Usa el|r |T133733:0|t[|cRXP_LOOT_Escrito ominoso|r] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Soboz|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >> Mata a |cRXP_ENEMY_Soboz|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r] |cRXP_WARN_para aprender|r |T236293:0|t[Gracia demoníaca]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Salva de descarga de las Sombras - 16 (Costa Oscura)
#title Salva de descarga de las Sombras

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>Mata a |cRXP_ENEMY_Delmanis el Odiado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Descargas de las Sombras|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Descargas de las Sombras|r] |cRXP_WARN_para aprender|r |T136195:0|t[Salva de descarga de las Sombras]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Descarga de caos - 8 (Dun Morogh)
#title Descarga de Caos

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>Mata al |cRXP_ENEMY_Trogg congelado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Descarga de caos|r]
    >>|cRXP_WARN_Nota: Para romper el bloque de hielo debes atacarlo con múltiples hechizos de fuego en una sucesión muy rápida|r
    >>|cRXP_WARN_Lanza|r |T135817:0|t[Inmolar] |cRXP_WARN_y usa tu Diablillo para que también lo ataque. Necesitarás la ayuda de otro Brujo o Mago para romperlo|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Descarga de caos|r] |cRXP_WARN_para aprender|r |T236291:0|t[Descarga de caos]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Descarga de Caos - 8 (Bosque de Elwynn)
#title Descarga de Caos

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>Mata al |cRXP_ENEMY_Múrloc congelado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Descarga de caos|r]
    >>|cRXP_WARN_Nota: Para romper el bloque de hielo debes atacarlo con múltiples hechizos de fuego en una sucesión muy rápida|r
    >>|cRXP_WARN_Lanza|r |T135817:0|t[Inmolar] |cRXP_WARN_y usa tu Diablillo para que también lo ataque. Necesitarás la ayuda de otro Brujo o Mago para romperlo|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Descarga de caos|r] |cRXP_WARN_para aprender|r |T236291:0|t[Descarga de caos]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Invocación - 35 (Tierras Altas de Arathi)
#title Invocación

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_Se recomienda que busques miembros adicionales para el grupo para obtener la|r |T134419:0|t[|cRXP_LOOT_Runa de Invocación|r] |cRXP_WARN_ya que requiere matar élites en el Castillo de Stromgarde|r
step
    .train 426443,1
    .zone Arathi Highlands >> Viaja a las Tierras Altas de Arathi
step
    .train 426443,1
    #completewith next
    .subzone 324 >> Viaja al Castillo de Stromgarde
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>Mata |cRXP_ENEMY_Conjuradores de la Hermandad|r. Despójalos para obtener sus |T348282:0|t[|cRXP_LOOT_Pendientes de conjurador|r]
    >>Mata a un |cRXP_ENEMY_Esbirro abisario|r mientras estés canalizando |T136163:0|t[Drenar alma] en él para obtener un |T132885:0|t[|cRXP_LOOT_Alma del Vacío|r]
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >> |cRXP_WARN_Entra en la casa grande en el nivel inferior del Castillo de Stromgarde, y sube al 2º piso|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >> |cRXP_WARN_Usa los|r |T348282:0|t[|cRXP_LOOT_Pendientes de conjurador|r] |cRXP_WARN_en el piso de arriba junto al|r |cRXP_PICK_Prisma del Vacío|r |cRXP_WARN_para invocar a un |cRXP_ENEMY_Buscador del vacío|r élite de nivel 36
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>Mata al |cRXP_ENEMY_Buscador del vacío|r. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa de Invocación|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_LOOT_Runa de Invocación|r] |cRXP_WARN_para aprender|r |T136133:0|t[Invocación]
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Danza de los malvados - 35 (Desolace)
#title Danza de los malvados

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>Viaja a Desolace
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>Haz clic en el |cRXP_ENEMY_Brujo temerario|r del suelo. Despójalo para obtener |T236297:0|t[Tallado de azufre]
    >>|cRXP_WARN_Este es un enemigo raro y es posible que no esté presente|r
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Lanza|r |T135818:0|t[Llamas infernales] |cRXP_WARN_para infligirte daño por debajo del 70% de salud. Después, el|r |T236297:0|t[Tallado de azufre] |cRXP_WARN_se transformará en la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Perversidad|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Perversidad|r] |cRXP_WARN_para aprender|r |T236295:0|t[Danza de los malvados]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Danza de los malvados - 35 (Vega de Tuercespina)
#title Danza de los malvados

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>Viaja a Vega de Tuercespina
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>Haz clic en el |cRXP_ENEMY_Brujo temerario|r del suelo. Despójalo para obtener |T236297:0|t[Tallado de azufre]
    >>|cRXP_WARN_Este es un enemigo raro y es posible que no esté presente|r
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Lanza|r |T135818:0|t[Llamas infernales] |cRXP_WARN_para infligirte daño por debajo del 70% de salud. Después, el|r |T236297:0|t[Tallado de azufre] |cRXP_WARN_se transformará en la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Perversidad|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Perversidad|r] |cRXP_WARN_para aprender|r |T236295:0|t[Danza de los malvados]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Llama de las Sombras - 40 (Desolace)
#title Llama de las Sombras


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>Viaja a Desolace |cRXP_WARN_Se recomienda encarecidamente formar un grupo de al menos 3 jugadores.|r
step
    .train 426467,1
    .train 19028,3 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Haz clic en el altar para invocar a la|r |cRXP_ENEMY_Seductora Ceeyna|r |cRXP_WARN_pero asegúrate de usar|r |T136121:0|t[Resguardo contra las Sombras]|cRXP_WARN_,|r |T136190:0|t[Sacrificio] |cRXP_WARN_y|r |T136160:0|t[Enlace de alma]|r |cRXP_WARN_previamente|r |cFFFF0000ya que recibirás mucho daño durante la canalización y no se puede sanar|r
step
    .train 426467,1
    .train 19028,1 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >> |cRXP_WARN_Haz clic en el altar para invocar a la|r |cRXP_ENEMY_Seductora Ceeyna|r |cRXP_WARN_pero asegúrate de usar|r |T136121:0|t[Resguardo contra las Sombras] |cRXP_WARN_y|r |T136190:0|t[Sacrificio] |cRXP_WARN_de antemano|r |cFFFF0000ya que recibirás mucho daño durante la canalización y no se puede sanar|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>Mata a la |cRXP_ENEMY_Seductora Ceeyna|r. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Llamas de las sombras|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Llamas de las sombras|r] |cRXP_WARN_para aprender|r |T236302:0|t[Llama de las Sombras]
    .use 213101
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Aura de inmolación
#name Aura de inmolación - 40 (Vallefresno)

step
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
step
    .goto Ashenvale,93.5,38.0,100 >> Dirígete a la zona de la Incursión de Pesadilla en Vallefresno marcada en tu mapa
    .train 431758,1
step
    >>Mata a los demonios fuera del portal hasta que despojes los tres objetos de la lista de abajo
    .collect 221972,1 >>|T132839:0|t|cRXP_LOOT_Fuego de diablillo oniripira|r obtenido de |cRXP_ENEMY_Diablillos oniripira|r
    .collect 221971,1 >>|T237396:0|t|cRXP_LOOT_Cuerno de jurasueños|r obtenido de |cRXP_ENEMY_Jurasueños chispa de ascuas|r
    .collect 221973,1 >>|T133724:0|t|cRXP_LOOT_Colmillo de cazasueños|r obtenido de |cRXP_ENEMY_Sabuesos cazasueños|r
    .mob Dreampyre Imp
    .mob Emberspark Dreamsworn
    .mob Dreamhunter Hound
    .train 431758,1
step
    .cast 447537 >> Haz clic derecho en cualquiera de los objetos de tu bolsa para combinarlos y recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Aura de inmolación|r]
    .collect 220618,1 --Rune of Immolation Aura
    .use 221972
    .train 431758,1
step
    .train 431758 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aura de inmolación|r] |cRXP_WARN_para aprender|r |T135802:0|t[Aura de inmolación]
    .use 220618
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Invocar guardia vil
#name Invocar guardia vil - 10 (Azeroth)

step
    #completewith next
    +|cRXP_WARN_Para recibir esta runa necesitarás haber encontrado un|r |T236294:0|t|cRXP_FRIENDLY_Diablillo explorador|r. |cRXP_WARN_Si todavía no tienes uno, lanza|r |T136163:0|t|cRXP_FRIENDLY_[Drenar alma]|r |cRXP_WARN_en enemigos. En cada pulso del hechizo tendrás la posibilidad de obtener un|r |T133257:0|t|cRXP_LOOT_Alma de expedicionario|r. |cRXP_WARN_Úsala para aprender a invocar a tu|r |T236294:0|t|cRXP_FRIENDLY_Diablillo explorador|r
step
    +Ve a una de las zonas de abajo. La runa se puede conseguir en cualquiera de ellas; sin embargo, las zonas de mayor nivel te ofrecerán mejores recompensas de tu Diablillo explorador
    >>Los Baldíos
    >>Páramos de Poniente
    >>Costa Oscura
    >>Bosque de Argénteos
    >>Vallefresno
    >>Montañas Crestagrana
    >>Pantano de las Penas
    >>Desolace
    >>Feralas
    >>Azshara
    >>Las Tierras Devastadas
    .zoneskip The Barrens
    .zoneskip Westfall
    .zoneskip Darkshore
    .zoneskip Silverpine Forest
    .zoneskip Ashenvale
    .zoneskip Redridge Mountains
    .zoneskip Swamp of Sorrows
    .zoneskip Desolace
    .zoneskip Feralas
    .zoneskip Azshara
    .zoneskip Blasted Lands
step
    >>Busca |cRXP_FRIENDLY_Portales viles|r en las ubicaciones marcadas en tu mapa. Una vez que encuentres uno, invoca a tu |T236294:0|t|cRXP_FRIENDLY_Diablillo explorador|r y completa su diálogo mientras permaneces junto al portal. El Diablillo comenzará a explorarlo y recibirás el "buff" |T136164:0|t|cRXP_FRIENDLY_Diablillo con una misión|r. En aproximadamente 10-20 minutos tu Diablillo regresará a ti o podrás invocarlo nuevamente y hablar con él para entregar una misión repetible que recompensa con un |T133639:0|t|cRXP_LOOT_Tesoro sobrenatural|r. Al abrirlo recibirás botín y tendrás la posibilidad de recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa del Guardia vil|r]. Sigue buscando fallas y despojando tesoros hasta que la encuentres
    .goto Westfall,28.6,44.0,0
    .goto Westfall,29.0,47.8,0
    .goto Westfall,29.0,58.2,0
    .goto Westfall,29.6,69.4,0
    .goto Westfall,29.8,34.4,0
    .goto Westfall,31.4,39.2,0
    .goto Westfall,31.4,65.6,0
    .goto Westfall,32.2,76.0,0
    .goto Westfall,32.2,80.2,0
    .goto Westfall,32.4,29.2,0
    .goto Westfall,34.0,82.2,0
    .goto Westfall,37.4,85.0,0
    .goto Westfall,41.4,15.4,0
    .goto Westfall,44.8,46.6,0
    .goto Westfall,47.0,39.4,0
    .goto Westfall,47.4,79.2,0
    .goto Westfall,47.6,22.0,0
    .goto Westfall,47.6,67.2,0
    .goto Westfall,47.8,13.8,0
    .goto Westfall,51.0,32.2,0
    .goto Westfall,51.6,71.4,0
    .goto Westfall,57.0,10.6,0
    .goto Westfall,62.6,26.0,0
    .goto The Barrens,39.6,13.8,0
    .goto The Barrens,40.0,18.4,0
    .goto The Barrens,40.8,14.4,0
    .goto The Barrens,42.0,14.2,0
    .goto The Barrens,44.4,50.0,0
    .goto The Barrens,45.8,51.2,0
    .goto The Barrens,46.4,52.6,0
    .goto The Barrens,47.6,49.4,0
    .goto The Barrens,51.6,53.4,0
    .goto The Barrens,53.0,50.8,0
    .goto The Barrens,54.2,52.6,0
    .goto The Barrens,54.4,48.6,0
    .goto The Barrens,55.6,25.6,0
    .goto The Barrens,55.8,51.0,0
    .goto The Barrens,56.0,24.8,0
    .goto The Barrens,57.6,23.6,0
    .goto The Barrens,58.2,49.6,0
    .goto The Barrens,58.8,25.8,0
    .goto The Barrens,59.0,29.2,0
    .goto The Barrens,59.0,32.0,0
    .goto The Barrens,59.2,36.4,0
    .goto The Barrens,59.8,27.6,0
    .goto The Barrens,60.2,36.0,0
    .goto The Barrens,60.8,29.0,0
    .goto The Barrens,61.8,32.0,0
    .goto Silverpine Forest,38.8,18.4,0
    .goto Silverpine Forest,38.8,23.4,0
    .goto Silverpine Forest,44.6,25.2,0
    .goto Silverpine Forest,45.4,31.8,0
    .goto Silverpine Forest,49.8,13.4,0
    .goto Silverpine Forest,50.2,56.8,0
    .goto Silverpine Forest,50.2,65.2,0
    .goto Silverpine Forest,55.6,24.6,0
    .goto Darkshore,37.6,63.8,0
    .goto Darkshore,43.2,27.0,0
    .goto Darkshore,44.0,82.0,0
    .goto Darkshore,45.0,26.2,0
    .goto Darkshore,46.2,46.8,0
    .goto Darkshore,47.4,28.8,0
    .goto Darkshore,49.8,36.8,0
    .goto Darkshore,56.4,24.8,0
    .goto Darkshore,59.8,21.8,0
    .goto Ashenvale,24.4,63.4,0
    .goto Ashenvale,27.6,62.6,0
    .goto Ashenvale,30.2,30.2,0
    .goto Ashenvale,33.6,28.4,0
    .goto Ashenvale,44.6,64.2,0
    .goto Ashenvale,51.2,47.0,0
    .goto Ashenvale,52.6,62.8,0
    .goto Ashenvale,55.6,40.2,0
    .goto Ashenvale,67.0,46.0,0
    .goto Ashenvale,67.2,51.0,0
    .goto Ashenvale,77.4,73.0,0
    .goto Ashenvale,80.4,70.6,0
    .goto Ashenvale,84.8,70.2,0
    .goto Redridge Mountains,29.8,30.4,0
    .goto Redridge Mountains,31.2,21.8,0
    .goto Redridge Mountains,42.8,16.8,0
    .goto Redridge Mountains,71.4,57.8,0
    .goto Redridge Mountains,71.4,83.6,0
    .goto Redridge Mountains,72.0,57.8,0
    .goto Redridge Mountains,79.0,33.4,0
    .goto Redridge Mountains,81.6,60.4,0
    .goto Redridge Mountains,83.2,44.4,0
    .goto Redridge Mountains,86.2,52.6,0
    .goto The Barrens,42.8,81.8,0
    .goto The Barrens,43.2,80.2,0
    .goto The Barrens,46.2,85.6,0
    .goto The Barrens,47.8,83.6,0
    .goto The Barrens,48.4,81.2,0
    .goto The Barrens,50.2,80.6,0
    .goto Swamp of Sorrows,10.4,59.4,0
    .goto Swamp of Sorrows,12.4,29.8,0
    .goto Swamp of Sorrows,16.4,63.0,0
    .goto Swamp of Sorrows,22.8,64.0,0
    .goto Swamp of Sorrows,27.0,48.8,0
    .goto Swamp of Sorrows,34.2,28.8,0
    .goto Swamp of Sorrows,36.2,50.6,0
    .goto Swamp of Sorrows,49.0,38.8,0
    .goto Swamp of Sorrows,56.6,65.0,0
    .goto Swamp of Sorrows,60.2,27.6,0
    .goto Swamp of Sorrows,69.4,78.4,0
    .goto Swamp of Sorrows,72.4,10.4,0
    .goto Swamp of Sorrows,77.4,89.6,0
    .goto Swamp of Sorrows,81.2,34.0,0
    .goto Swamp of Sorrows,83.2,66.6,0
    .goto Swamp of Sorrows,87.6,26.0,0
    .goto Swamp of Sorrows,90.8,65.2,0
    .goto Swamp of Sorrows,91.4,57.0,0
    .goto Desolace,47.4,22.2,0
    .goto Desolace,48.8,82.2,0
    .goto Desolace,49.4,75.0,0
    .goto Desolace,52.0,85.4,0
    .goto Desolace,52.2,72.4,0
    .goto Desolace,52.8,81.0,0
    .goto Desolace,54.4,19.2,0
    .goto Desolace,56.0,74.8,0
    .goto Desolace,71.6,18.4,0
    .goto Desolace,72.6,21.8,0
    .goto Desolace,73.4,24.6,0
    .goto Desolace,74.4,10.6,0
    .goto Desolace,76.4,19.2,0
    .goto Desolace,80.4,17.0,0
    .goto Blasted Lands,35.0,55.0,0
    .goto Blasted Lands,41.2,33.4,0
    .goto Blasted Lands,43.6,25.0,0
    .goto Blasted Lands,46.8,39.2,0
    .goto Blasted Lands,48.8,48.6,0
    .goto Blasted Lands,56.0,36.6,0
    .goto Blasted Lands,60.2,46.0,0
    .goto Blasted Lands,62.0,39.2,0
    .goto Feralas,68.2,58.8,0
    .goto Feralas,70.4,62.6,0
    .goto Feralas,72.4,63.8,0
    .goto Feralas,73.2,54.4,0
    .goto Feralas,74.2,50.4,0
    .goto Feralas,74.2,60.0,0
    .goto Feralas,76.2,56.4,0
    .goto Feralas,76.6,63.4,0
    .goto Azshara,16.4,51.0,0
    .goto Azshara,17.6,58.4,0
    .goto Azshara,21.2,54.0,0
    .goto Azshara,24.8,47.8,0
    .goto Azshara,25.0,81.4,0
    .goto Azshara,30.2,79.8,0
    .goto Azshara,33.0,81.4,0

    .collect 221499,1 --Rune of the felguard
    .use 223148 --Otherworldy Treasure
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step
    .train 431756 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Guardia vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Invocar guardia vil]
    .use 221499

]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#title Pandemia
#name Pandemia - 40 (Feralas)

step
    #completewith next
    .zone Feralas >> Viaja a Feralas
step
    .goto Feralas,69.6,43.3
    >>Dirígete a la ubicación marcada al oeste del Campamento Mojache. Busca a un |cRXP_ENEMY_Chamán Tótem Siniestro enfermo muerto|r tumbado junto a un árbol. Al lado del cadáver encontrarás un |cRXP_PICK_Cofre Tótem Siniestro|r, despójalo para obtener el |T133291:0|t|cRXP_LOOT_Collar Tótem Siniestro|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step
    .goto 1444/1,695.400,-4920.300,20 >>Ve al camino que sube por la colina hacia el cúbil Zarpaleña
    .train 431743,1
step
    .goto 1444/1,831.200,-4851.000,20 >>Sube el camino marcado por antorchas
    .train 431743,1
step
    .goto 1444/1,826.500,-4725.100
    >>Mantente en el borde derecho del campamento y ve al |cRXP_ENEMY_Místico Zarpaleña enfermo muerto|r. Junto a él encontrarás una |cRXP_PICK_Bolsa Zarpaleña|r, despójala para obtener un |T135139:0|t|cRXP_LOOT_Bastón de Zarpaleña roto|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
    .train 431743,1
step
    >>Usa el |T135139:0|t|cRXP_LOOT_Bastón de Zarpaleña roto|r para combinarlo con el |T133291:0|t|cRXP_LOOT_Collar Tótem Siniestro|r y crear un |T135153:0|t|cRXP_LOOT_Bastón de naturaleza enfermiza|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
    .train 431743,1
step
    .goto Feralas,72.6,50.8
    >>Busca a un |cRXP_ENEMY_Caminabosques enfermo|r dormido, usa tu |T135153:0|t|cRXP_LOOT_Bastón de naturaleza enfermiza|r para despertarlo. Derrótalo y despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Pandemia|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
    .train 431743,1
step
    .train 431743 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Pandemia|r] |cRXP_WARN_para aprender|r |T136227:0|t[Pandemia]
    .use 220617
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Exterminación
#name Exterminación - 55 (Azeroth)

step
    #completewith next
    .zone Burning Steppes >> Viaja a Las Estepas Ardientes
step
    #loop
    .goto Burning Steppes,93.2,59.0,55,0
    .goto Burning Steppes,72.2,31.6,55,0
    .goto Burning Steppes,69.0,26.4,55,0
    .goto Burning Steppes,59.8,65.0,55,0
    .goto Burning Steppes,36.4,60.8,55,0
    .goto Burning Steppes,24.2,64.6,55,0
    .goto Burning Steppes,37.6,42.2,55,0
    >>|cRXP_WARN_Busca |cRXP_PICK_Fallas vil|r. Estos son portales que pueden aparecer por toda la zona|r
    >>|cRXP_WARN_Habla con la |cRXP_PICK_Falla|r para enviar a tu |cRXP_FRIENDLY_Diablillo explorador|r a través de la |cRXP_PICK_Falla|r y espera a que regrese con un|r |T135222:0|t[|cRXP_LOOT_Ajustador del portal de la Legión|r]
    >>|cRXP_WARN_Puede que tengas que repetir esto varias veces hasta que regrese con el|r |T135222:0|t[|cRXP_LOOT_Ajustador del portal de la Legión|r]
    .collect 224806,1
    .train 440922,1
    .skipgossip
step
    #completewith next
    .zone Blasted Lands >> Viaja a Las Tierras Devastadas
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224806 >> |cRXP_WARN_Usa el|r |T135222:0|t[|cRXP_LOOT_Ajustador del portal de la Legión|r] |cRXP_WARN_en una |cRXP_PICK_Cicatriz vil|r, lo que la convertirá en un|r |cRXP_PICK_Portal sobrenatural|r
    >>|cRXP_WARN_Habla con el |cRXP_PICK_Portal sobrenatural|r y envía a tu |cRXP_FRIENDLY_Diablillo explorador|r a través de él y espera a que regrese con un|r |T134429:0|t[|cRXP_LOOT_Ajustador de ajustador de portales|r]
    >>|cRXP_WARN_Puede que tengas que repetir esto varias veces hasta que regrese con el|r |T134429:0|t[|cRXP_LOOT_Ajustador de ajustador de portales|r]
    .collect 224912,1
    .train 440922,1
    .skipgossip
step
    .use 224912 >> |cRXP_WARN_Usa el|r |T134429:0|t[|cRXP_LOOT_Ajustador de ajustador de portales|r] |cRXP_WARN_para convertirlo en un|r |T135224:0|t[|cRXP_LOOT_Ajustador de portales sobrecargado|r]
    .collect 224893,1
    .train 440922,1
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224893 >> |cRXP_WARN_Usa el|r |T135224:0|t[|cRXP_LOOT_Ajustador de portales sobrecargado|r] |cRXP_WARN_en una |cRXP_PICK_Cicatriz vil|r, lo que hará que se vuelva roja|r
    >>|cRXP_WARN_Habla con ella y envía a tu |cRXP_FRIENDLY_Diablillo explorador|r a través de ella y espera a que regrese con la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Exterminación|r]
    .collect 225686,1
    .train 440922,1
    .skipgossip
step
    .train 440922 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Exterminación|r] |cRXP_WARN_para aprender|r |T135808:0|t[Exterminación]
    .use 225686
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Marca del caos
#name Marca del caos - 50 (Tierras de la Peste del Oeste)

step
    #completewith next
    .zone Western Plaguelands >> Viaja a Tierras de la Peste del Oeste
step
    #loop
    .goto Western Plaguelands,50.6,77.6
    >>|cRXP_WARN_Lanza|r |T136163:0|t[Drenar alma] |cRXP_WARN_sobre los |cRXP_ENEMY_Despellejadores esqueléticos|r hasta que hayas recibido 3|r |cRXP_LOOT_Fragmentos de alma apestados|r
    .collect 225929,3
    .mob Skeletal Flayer
    .train 440924,1
step
    .goto Western Plaguelands,43.361,84.143 << Alliance
    .goto Tirisfal Glades,83.035,72.631 << Horde
    >>|cRXP_WARN_Entrega tus |cRXP_LOOT_Fragmentos de alma apestados|r a |cRXP_FRIENDLY_Pixi robaesquirlas|r en el Campamento del Orvallo para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Marca del caos|r] << Alliance
    >>|cRXP_WARN_Entrega tus |cRXP_LOOT_Fragmentos de alma apestados|r a |cRXP_FRIENDLY_Prazik robaesquirlas|r en El Baluarte para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Marca del caos|r] << Horde
    .collect 225688,1
    .target Pixi Pilfershard << Alliance
    .target Prazik Pilfershard << Horde
    .train 440924,1
step
    .train 440924 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Marca de caos|r] |cRXP_WARN_para aprender|r |T136226:0|t[Marca del caos]
    .use 225688
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Armadura infernal
#name Armadura infernal - 55 (Las Tierras Devastadas)

step
    #completewith next
    .zone Blasted Lands >> Viaja a Las Tierras Devastadas
    >>|cRXP_WARN_Asegúrate de que tienes las siguientes habilidades aprendidas, y considera traer un sanador, ya que necesitas matar a un elite de nivel 56|r
    >>|T134131:0|t[Piedra de hechizo superior]
    >>|T136121:0|t[Resguardo contra las Sombras]
    >>|T136190:0|t[Sacrificio] |cRXP_WARN_para tu|r |T136221:0|t[Abisario]
step
    .train 440926,1
    #loop
    .goto Blasted Lands,65.31,32.63,20,0
    .goto Blasted Lands,68.050,28.667
    >>Mata a cualquier |cRXP_ENEMY_Sombra Jurada|r. Despójalos para obtener la |cRXP_LOOT_Nota de Sombra Jurada|r
    .collect 227658,1
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
    .mob Shadowsworn Enforcer
    .mob Shadowsworn Warlock
    .mob Shadowsworn Dreadweaver
step
    .train 440926,1
    .goto Blasted Lands,68.050,28.667
    >>Dirígete al |cRXP_PICK_Altar|r al fondo de la cueva
    >>|cRXP_WARN_Antes de hacer clic en el |cRXP_PICK_Altar|r, asegúrate de haber usado tu|r |T134131:0|t[Piedra de hechizo superior]|cRXP_WARN_,|r |T136121:0|t[Resguardo contra las Sombras] |cRXP_WARN_y|r |T136190:0|t[Sacrificio] |cRXP_WARN_ya que estás a punto de recibir un daño considerable al hacer clic en el |cRXP_PICK_Altar|r, e invocar a |cRXP_ENEMY_Heliath|r en el proceso. |cRXP_ENEMY_Heliath|r es un élite de nivel 56|r
    >>Mata a |cRXP_ENEMY_Heliath|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Armadura infernal|r]
    .collect 225687,1
    .mob Heliath
step
    .train 440926 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Armadura infernal|r] |cRXP_WARN_para aprender|r |T236418:0|t[Armadura infernal]
    .use 225687
]])
