if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Penitencia - 3 (Bosque de Elwynn)
#title Penitencia

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Mata |cRXP_ENEMY_Obreros kóbold|r. Despójalos para obtener un |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_Escribe /kneel (arrodillarse) en el chat mientras estés dentro de la Abadía de Villanorte|r
    >>|cRXP_WARN_Recibirás el "buff"|r |T135934:0|t[Meditaciones sobre la Luz] |cRXP_WARN_|r
    .cast 410958 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] |cRXP_WARN_mientras tengas el "buff"|r |T135934:0|t[Meditaciones sobre la Luz] |cRXP_WARN_|r
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Penitencia - 1 (Dun Morogh)
#title Penitencia


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r del suelo. Despójalo para obtener el |T136222:0|t|cRXP_LOOT_[Recuerdo de un acólito atribulado]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Penitencia - 2 (Cañada Umbría)
#title Penitencia

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r arriba
    .accept 77574 >> Acepta la misión Meditaciones sobre Elune
    .target Shanda
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >> Viaja a la poza de la luna en la Cañada Umbría
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_Una vez que estés en la poza de la luna, escribe /kneel (arrodillarse) en el chat|r
    >>|cRXP_WARN_Recibirás el "buff"|r |T136057:0|t[Meditaciones sobre la Luz] |cRXP_WARN_|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] |cRXP_WARN_mientras tengas el "buff"|r |T136057:0|t[Meditaciones sobre la Luz] |cRXP_WARN_|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r arriba
    .turnin 77574 >> Entrega la misión Meditaciones sobre Elune
    .target Shanda
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Penitencia - 2 (Durotar)
#title Penitencia


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Acepta la misión Sabiduría de los loa
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Viaja al |cRXP_PICK_Altar loa|r en el Poblado Sen'jin y escribe /kneel (arrodillarse)
    .use 205951 >>Habla con |cRXP_FRIENDLY_Loa serpiente|r cuando aparezca, luego usa |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Entrega la misión Sabiduría de los loa
    .target Ken'jai
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Penitencia - 2 (Tirisfal)
#title Penitencia


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >>Acepta la misión Meditaciones sobre la no-muerte
    .target Dark Cleric Duesten
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>Entra en el cementerio y escribe /kneel (arrodillarse)
    .use 205951 >>Usa |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] al conseguir el "buff" |T237569:0|t[Meditaciones sobre la no-muerte]
    .complete 77670,1 >>Aprende el hechizo: Grabar guantes - Penitencia
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Entrega la misión Meditaciones sobre la no-muerte
    .target Dark Cleric Duesten

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Homúnculos - 8 (Durotar)
#title Homúnculos

step
    .train 402852,1
    #completewith next
    .zone Durotar >>Viaja a Durotar
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con |cRXP_FRIENDLY_Loa serpiente|r
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>Mata a los |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Ahora tienes que encontrar un Sacerdote no-muerto con un buff de Loa. Tienes que arrodillarte ante él y él tiene que usar /pray contigo.|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>|cRXP_WARN_Arrodíllate en el cementerio de Sen'jin|r para conseguir el "buff" |T237569:0|t[Meditaciones sobre la no-muerte]
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Homúnculos - 7 (Claros de Tirisfal)
#title Homúnculos

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    .train 402852,1
    >>Mata a los |cRXP_ENEMY_Guerreros Escarlata|r o a los |cRXP_ENEMY_Misioneros Escarlata|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Ahora tienes que encontrar a un Sacerdote no-muerto con un "buff" Loa. Tienes que arrodillarte ante él y él tiene que usar /pray (rezar) en ti para obtener el "buff" |T237569:0|t[Meditaciones sobre la no-muerte] .|r
step << Troll
    #completewith next
    .zone Durotar >>Viaja a Durotar (toma el zepelín hacia Orgrimmar)
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
step << Undead
    #completewith next
    .zone Durotar >>Viaja a Durotar (toma el zepelín hacia Orgrimmar)
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    *|cRXP_WARN_También puedes encontrar a un Sacerdote Trol con el "buff"|T136077:0|t[Meditaciones sobre los loa] . Arrodíllate ante él y tendrá que usar /pray (rezar) en ti|r.
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_Arrodíllate en el cementerio de Sen'jin|r para conseguir el "buff" |T237569:0|t[Meditaciones sobre la no-muerte]
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Dolor compartido - 13 (Durotar)
#title Dolor compartido

step
    #completewith next
    .zone Durotar >>Viaja a Durotar
step
    .train 402854,1
    >>Mata a |cRXP_ENEMY_Makasgar|r o a |cRXP_ENEMY_Gazz'uz|r (en la cueva), el que esté más cercano a ti (el punto marcado de la ruta te lleva al más cercano). Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob Gazz'uz
step
    .train 402854,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Dolor compartido - 6 (Claros de Tirisfal)
#title Dolor compartido

step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    .train 402854,1
    >>Mata a los |cRXP_ENEMY_Granjeros de Tirisfal|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Arrodíllate en el cementerio hasta que consigas el "buff" |T237569:0|t[Meditaciones sobre la no-muerte]
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>Viaja a Durotar (toma el zepelín a Orgrimmar)
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .aura -418459
    >>|cRXP_WARN_También puedes encontrar a un Sacerdote no-muerto con un "buff" Loa. Tienes que arrodillarte ante él y él tiene que usar /pray (rezar) en ti para obtener el "buff" |T237569:0|t[Meditaciones sobre la no-muerte] .|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Plaga del Vacío - 5 (Durotar)
#title Plaga del Vacío

step
    #completewith next
    .zone Durotar >>Viaja a Durotar
step
    .train 425216,1
    >>Mata a los |cRXP_ENEMY_Navegantes|r y a los |cRXP_ENEMY_Marinos|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Plaga del Vacío - 6 (Claros de Tirisfal)
#title Plaga del Vacío

step
    #completewith next
    .zone Tirisfal Glades >>Viaja a Claros de Tirisfal
step
    .train 425216,1
    >>Mata a |cRXP_ENEMY_Gillgar|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Arrodíllate en el cementerio hasta que consigas el "buff" |T237569:0|t[Meditaciones sobre la no-muerte]
step << Troll
    #completewith next
    .zone Durotar >>Viaja a Durotar (toma el zepelín a Orgrimmar)
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rezo de alivio - 6 (Durotar)
#title Rezo de alivio

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de aventurero|r dentro del Risco Kolkar
    >>|cRXP_WARN_Otro jugador (Sacerdote o Chamán) necesita hacer clic en el portal. Despoja al|r |cRXP_FRIENDLY_Espíritu del Aventurero|r |cRXP_WARN_después para obtener la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Rezo de alivio]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rezo de alivio - 10 (Mulgore)
#title Rezo de alivio

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de aventurero|r fuera de la Mina de Ventura y Cía.
    >>|cRXP_WARN_Otro jugador (Sacerdote o Chamán) necesita hacer clic en el portal. Despoja al|r |cRXP_FRIENDLY_Espíritu del Aventurero|r |cRXP_WARN_después para obtener la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Rezo de alivio]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Fe distorsionada - 10 (Loch Modan)
#title Fe distorsionada

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalos para obtener una |T237281:0|t[|cRXP_LOOT_Moneda de ofrenda|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Geomancer
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >> |cRXP_WARN_Usa la|r |T237281:0|t[|cRXP_LOOT_Moneda de ofrenda|r] |cRXP_WARN_en el pozo dentro de la Mina de Fuenteplata|r |cRXP_WARN_para recibir el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un Devoto Campeón|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r] |cRXP_WARN_para aprender|r |T237566:0|t[Fe distorsionada]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Fe distorsionada - 14 (Páramos de Poniente)
#title Fe distorsionada

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>Mata al |cRXP_ENEMY_Obrero indestructible|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r]
    >>|cRXP_WARN_Debes usar un hechizo Sagrado para rematar al|r |cRXP_ENEMY_Obrero indestructible|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Obrero indestructible|r puede aparecer en la Mina de la Costa del Oro y la Mina de Jango|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r] |cRXP_WARN_para aprender|r |T237566:0|t[Fe distorsionada]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Fe distorsionada - 18 (Costa Oscura)
#title Fe distorsionada

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Mata |cRXP_ENEMY_Mirmidones Escama Tormentosa|r, |cRXP_ENEMY_Guerreros Escama Tormentosa|r y |cRXP_ENEMY_Hechiceras Escama Tormentosa|r. Despójalos para obtener una |T236364:0|t[|cRXP_LOOT_Ofrenda Rompelanzas|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >> |cRXP_WARN_Usa la|r |T236364:0|t[|cRXP_LOOT_Ofrenda Rompelanzas|r] |cRXP_WARN_en el Ídolo Rompelanzas bajo el agua para recibir el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r] |cRXP_WARN_para aprender|r |T237566:0|t[Fe distorsionada]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Dolor compartido - 10 (Dun Morogh)
#title Dolor compartido

step << Priest
    .goto Loch Modan,77.894,62.236
    >>Mata al |cRXP_ENEMY_Capitán Beld|r abajo dentro del edificio. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Dolor compartido - 6 (Bosque de Elwynn)
#title Dolor compartido

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    .train 402854 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
    >>|cRXP_WARN_Debes tener el buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Homúnculos - 8 (Dun Morogh)
#title Homúnculos

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Debes tener 2 buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Homúnculos - 8 (Bosque de Elwynn)
#title Homúnculos

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>Mata |cRXP_ENEMY_Zahoríes bribones de Defias|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Debes tener 2 buff de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Homúnculos - 8 (Teldrassil)
#title Homúnculos

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>Mata a los |cRXP_ENEMY_Grell sañosos|r, |cRXP_ENEMY_Duendes granujas|r y |cRXP_ENEMY_Duendes sombríos|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Debes tener 2 "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel (arrodillarse) en un área sagrada, como una poza de la luna, Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rezo de alivio - 6 (Bosque de Elwynn)
#title Rezo de alivio

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Únete a un grupo con otro Sacerdote o Paladín que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Paladín o Sacerdote en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r]
    .train 402848 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Rezo de alivio]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rezo de alivio - 8 (Teldrassil)
#title Rezo de alivio

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_Únete a un grupo con otro Sacerdote o Druida que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Druida o Sacerdote en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r]
    .train 402848 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Rezo de alivio]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Rezo de alivio - 6 (Dun Morogh)
#title Rezo de alivio

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_Únete a un grupo con otro Sacerdote o Paladín que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Paladín o Sacerdote en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r]
    .train 402848 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Rezo de alivio]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Palabra de las Sombras: muerte - 10 (Costa Oscura)
#title Palabra de las Sombras: muerte

step << Priest
    .goto Darkshore,30.5,47.5
    >>Haz clic en el |cRXP_PICK_Resto|r en la isla pequeña. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>Debes obtener dos "buffs" de |T135934:0|t|T136057:0|t[Meditaciones]
    >>Debes hacer /kneel (arrodillarte) en uno de los siguientes lugares: Una poza de la luna, Abadía de Villanorte, Catedral de Ventormenta, Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz
    >>Para recibir tu segundo "buff" de |T135934:0|t|T136057:0|t[Meditación] debes hacer /kneel frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray mientras te seleccionan como objetivo
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Palabra de las sombras - Muerte - 12 (Loch Modan)
#title Palabra de las Sombras: muerte

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >> Viaja a la Fortaleza de Mo'grosh en Loch Modan
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_Selecciona como objetivo al |cRXP_FRIENDLY_Ídolo herético|r para hacer /kneel (arrodillarse) automáticamente|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_Recibirás la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>Debes obtener dos "buffs" de |T135934:0|t|T136057:0|t[Meditaciones]
    >>Debes hacer /kneel (arrodillarte) en uno de los siguientes lugares: Una poza de la luna, Abadía de Villanorte, Catedral de Ventormenta, Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz
    >>Para recibir tu segundo "buff" de |T135934:0|t|T136057:0|t[Meditación] debes hacer /kneel frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray mientras te seleccionan como objetivo
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Palabra de las Sombras: muerte - 20 (Los Baldíos)
#title Palabra de las Sombras: muerte

step
    #completewith next
    .zone The Barrens >> Viaja a Los Baldíos
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>Usa |T135894:0|t[Disipar magia] sobre el |cRXP_ENEMY_Espejismo desértico|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r]
    *|cRXP_WARN_Es un fantasma verde que patrulla por la zona. Usa la macro de objetivo de RestedXP para seleccionarlo.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación]
    >>Debes |cRXP_WARN_/kneel (arrodillarte)|r en uno de los siguientes lugares frente al altar y hablar con el espíritu después: Sen'jin o El Cruce |cRXP_WARN_(las ubicaciones de los santuarios están marcadas en tu mapa, también puedes encontrar a cualquier sacerdote con el "buff" para que te lo comparta)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditaciones] , requiere que te |cRXP_WARN_/kneel (arrodilles)|r frente a un Sacerdote no-muerto que tenga |T237569:0|t[Meditaciones sobre la no-muerte], y él debe usar /pray (rezar) seleccionándote como objetivo
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación]
    >>Debes hacer |cRXP_WARN_/kneel (arrodillarse)|r en uno de los siguientes lugares frente al altar y hablar con el espíritu después: Sen'jin o El Cruce
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditaciones] |cRXP_WARN_/kneel (arrodíllate)|r en un cementerio para obtener el "buff" |T237569:0|t[Meditaciones sobre la no-muerte] |cRXP_WARN_(el santuario y un cementerio están marcados en tu mapa, también puedes encontrar a cualquier sacerdote con el "buff" para que te lo comparta)|r
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Palabra de las Sombras: muerte - 24 (Bosque de Argénteos)
#title Palabra de las Sombras: muerte

step
    #completewith next
    .zone Silverpine Forest >> Viaja a Bosque de Argénteos
step
    .goto Silverpine Forest,65.8,23.6
    >>Recoge el |cRXP_PICK_Pergamino|r detrás de |cRXP_ENEMY_Thule Corvozarpa|r (nivel 24 élite) para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r]
    *|cRXP_WARN_El pergamino está en el segundo piso. Es más fácil en grupo.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación]
    >>Debes |cRXP_WARN_/kneel (arrodillarte)|r en uno de los siguientes lugares frente al altar y hablar con el espíritu después: Sen'jin o El Cruce |cRXP_WARN_(las ubicaciones de los santuarios están marcadas en tu mapa, también puedes encontrar a cualquier sacerdote con el "buff" para que te lo comparta)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditaciones] , requiere que te |cRXP_WARN_/kneel (arrodilles)|r frente a un Sacerdote no-muerto que tenga |T237569:0|t[Meditaciones sobre la no-muerte], y él debe usar /pray (rezar) seleccionándote como objetivo
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación]
    >>Debes hacer |cRXP_WARN_/kneel (arrodillarse)|r en uno de los siguientes lugares frente al altar y hablar con el espíritu después: Sen'jin o El Cruce
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditaciones] |cRXP_WARN_/kneel (arrodíllate)|r en un cementerio para obtener el "buff" |T237569:0|t[Meditaciones sobre la no-muerte] |cRXP_WARN_(el santuario y un cementerio están marcados en tu mapa, también puedes encontrar a cualquier sacerdote con el "buff" para que te lo comparta)|r
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Fe distorsionada - 10 (Bosque de Argénteos)
#title Fe distorsionada

step
    #completewith next
    .zone Silverpine Forest >> Viaja a Bosque de Argénteos
step
    .train 425215,1
    >>Mata al Espíritu gemebundo|cRXP_ENEMY_. Despójalo para obtener el |T136222:0|t[|rRecuerdo de un campeón devoto|cRXP_FRIENDLY_]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >> Usa el|cRXP_WARN_ |T136222:0|t[|rRecuerdo de un campeón devoto|cRXP_FRIENDLY_] |cRXP_WARN_para aprender|r |T237566:0|t[Fe distorsionada]
    >>|cRXP_WARN_Debes tener un "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_escribiendo|r /kneel (arrodillarse)|cRXP_WARN_delante del |cRXP_PICK_Santuario de loa|r (en Durotar o Los Baldíos) o arrodillándote enfrente de otro sacerdote con el "buff" cuando use /pray (rezar) en ti|r << Troll
    >>|cRXP_WARN_Debes tener un "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_escribiendo|r /kneel (arrodillarse) |cRXP_WARN_en un cementerio o haciendo /kneel enfrente de otro sacerdote con el "buff" cuando usen /pray (rezar) en ti|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Fe distorsionada - 10 (Los Baldíos)
#title Fe distorsionada

step
    #completewith next
    .zone The Barrens >> Viaja a Los Baldíos
step
    .train 425215,1
    >>Mata a los Crines de Acero|cRXP_ENEMY_. Despójalos para obtener la |T236248:0|t[|rMano servicial|cRXP_FRIENDLY_]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob Razormane Thornweaver
    .mob Razormane Hunter
    .mob Razormane Water Seeker
    .mob Razormane Defender
step
    .train 425215,1
    >>Encuentra a un jugador o mascota muerta que puedas resucitar (con |T135955:0|t[Resurrección]) para obtener el|cRXP_WARN_ |T136222:0|t[|rRecuerdo de un campeón devoto|cRXP_FRIENDLY_]
    .collect 205905,1
step
    .train 425215 >> Usa el|cRXP_WARN_ |T136222:0|t[|rRecuerdo de un campeón devoto|cRXP_FRIENDLY_] |cRXP_WARN_para aprender|r |T237566:0|t[Fe distorsionada]
    >>|cRXP_WARN_Debes tener un "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_escribiendo|r /kneel (arrodillarse)|cRXP_WARN_delante del |cRXP_PICK_Santuario de loa|r (en Durotar o Los Baldíos) o arrodillándote enfrente de otro sacerdote con el "buff" cuando use /pray (rezar) en ti|r << Troll
    >>|cRXP_WARN_Debes tener un "buff" de|r |T237569:0|t|T136077:0|t[Meditación] |cRXP_WARN_escribiendo|r /kneel (arrodillarse) |cRXP_WARN_en un cementerio o haciendo /kneel enfrente de otro sacerdote con el "buff" cuando usen /pray (rezar) en ti|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Plaga del Vacío - 6 (Bosque de Elwynn)
#title Plaga del Vacío

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >> Entra en la Mina Abisal
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Plaga del Vacío - 6 (Dun Morogh)
#title Plaga del Vacío


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Renovar potenciado - 27 (Las Mil Agujas)
#title Renovar potenciado


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>Mata |cRXP_ENEMY_Geománticos Tótem Siniestro|r, |cRXP_ENEMY_Bandidos Tótem Siniestro|r, |cRXP_ENEMY_Atracadores Tótem Siniestro|r y |cRXP_ENEMY_Vapuleadores Tótem Siniestro|r. Despójalos para obtener la |T135975:0|t[|cRXP_LOOT_Profecía de la senda acelerada|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_LOOT_Profecía de la senda acelerada|r] |cRXP_WARN_para aprender|r |T236254:0|t[Renovar potenciado]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Renovar potenciado - 33 (Montañas de Alterac)
#title Renovar potenciado

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>Viaja a |cFFfa9602Montañas de Alterac|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>Mata |cRXP_ENEMY_Ogros Aplastacresta|r y |cRXP_ENEMY_Toscos Aplastacresta|r. Despójalos para obtener la |T135975:0|t[|cRXP_LOOT_Profecía de la senda acelerada|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .train 425309 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_LOOT_Profecía de la senda acelerada|r] |cRXP_WARN_para aprender|r |T236254:0|t[Renovar potenciado]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Esperanza renovada - 31 (Desolace)
#title Esperanza renovada

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >> |cRXP_WARN_Debes tener|r |T136206:0|t[Control mental] |cRXP_WARN_aprendido para obtener la runa|r |T135923:0|t[Esperanza renovada] |cRXP_WARN_|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_Debes ser al menos nivel 31 para lanzar|r |T136206:0|t[Control mental] |cRXP_WARN_sobre una |cRXP_ENEMY_Sacerdotisa de las mareas Filozante|r de nivel 33 más adelante|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>Mata |cRXP_ENEMY_Nagas Filozante|r. Despójalos para obtener la |T136222:0|t[|cRXP_LOOT_Visión angustiante|r]
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +|cRXP_WARN_NOTA: Solo puedes lanzar|r |T136206:0|t[Control mental] |cRXP_WARN_sobre una |cRXP_ENEMY_Sacerdotisa de las mareas Filozante|r de nivel 33. El lanzamiento fallará en las que sean de nivel 34|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >> |cRXP_WARN_Lanza|r |T136206:0|t[Control mental] |cRXP_WARN_en una|r |cRXP_ENEMY_Sacerdotisa de las mareas Filozante|r
    >>|cRXP_WARN_Mientras esté bajo los efectos de|r |T136206:0|t[Control mental]|cRXP_WARN_, seleccionate a TI MISMO como objetivo y lanza|r |T136077:0|t[Meditación en el abismo] |cRXP_WARN_desde la barra de acciones de mascota|r
    >>|cRXP_WARN_Presiona "Escape" después para cancelar el|r |T136206:0|t[Control mental] |cRXP_WARN_y mata a la|r |cRXP_ENEMY_Sacerdotisa de las mareas Filozante|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >> |cRXP_WARN_Usa la|r |T136222:0|t[|cRXP_LOOT_Visión angustiante|r] |cRXP_WARN_para aprender|r |T135923:0|t[Esperanza renovada]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Dispersión 40 (Vega de Tuercespina)
#title Dispersión

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_Encuentra un Pícaro con la runa|r |T132299:0|t[Maestro de la sutileza] |cRXP_WARN_y el abalorio|r |T338666:0|t[Talismán de Jani] |cRXP_WARN_para|r |T133644:0|t[Robar] |cRXP_WARN_a cualquier |cRXP_ENEMY_Trol Sangrapellejo|r en Vega de Tuercespina para obtener el|r |T237446:0|t[Pergamino trol misterioso]|cRXP_WARN_. Un Mago debe entonces usar un|r |T135933:0|t[Talismán de comprensión] |cRXP_WARN_para descifrarlo y que se convierta en un |T134938:0|t[|cRXP_LOOT_Pergamino trol descifrado|r]|r
    >>|cRXP_WARN_Alternativamente compra un|r |T237446:0|t[Pergamino trol misterioso]|r en la Casa de Subastas y haz que un Mago lo descifre, o compra el|cRXP_WARN_ |T134938:0|t[|cRXP_LOOT_Pergamino trol descifrado|r]|r
    .use 216880 >>|cRXP_WARN_Usa el |T134938:0|t[|cRXP_LOOT_Pergamino trol descifrado|r] para empezar la misión|r
    >>|cRXP_WARN_También puedes buscar a un Sacerdote para que comparta la misión contigo|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >> Acepta la misión El pergamino trol
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>Viaja a |cFFfa9602Vega de Tuercespina|r
    >>|cRXP_WARN_Asegúrate de tener 2 "buffs" activos de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_antes dirigirte allí|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>Haz clic en |cRXP_PICK_El manantial sagrado|r. Despójalo para obtener el |T134712:0|t[|cRXP_LOOT_Agua de manantial sagrado|r]
    >>|cRXP_WARN_Puede que necesites matar a|cRXP_ENEMY_ Lord Sakrasis|r (nivel 45 Raro) que custodia frente a|r |cRXP_PICK_El manantial sagrado|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >> Viaja a las Ruinas de Zul'Kunda
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >> |cRXP_WARN_Usa el|r |T134712:0|t[|cRXP_LOOT_Agua de manantial sagrado|r] |cRXP_WARN_en la fuente pequeña|r
    >>|cRXP_WARN_Puede que necesites matar a|cRXP_ENEMY_ Gan'zulah|r (nivel 41) y a un pequeño grupo de |cRXP_ENEMY_Trols|r alrededor de él para llegar a la fuente pequeña|r
    .use 737
    .mob Gan'zulah
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>Haz clic en la |cRXP_PICK_Fuente|r que aparece. Despójala para obtener la |T135975:0|t|cRXP_LOOT_[Profecía de maldad aprisionada]|r
    .collect 213142,1
step
    .train 425314 >> |cRXP_WARN_Usa la|r |T135975:0|t|cRXP_LOOT_[Profecía de maldad aprisionada]|r |cRXP_WARN_para aprender|r |T237563:0|t[Dispersión]
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 79731 >> Entrega la misión El pergamino trol
    .target Hemet Nesingwary
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Supresión de dolor - 32 (Azeroth)
#title Supresión de dolor

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>Viaja a |cFFfa9602Claros de Tirisfal|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >> Entra en la Mazmorra del Monasterio Escarlata : Cementerio
step
    >>Haz clic en la |cRXP_PICK_Lápida|r cerca del punto de aparición del El Jinete decapitado para obtener el |cRXP_LOOT_|T136222:0|t[Eco del cementerio]|r |cRXP_WARN_Es altamente recomendable formar un grupo de 5 jugadores para este paso.|r
    .link https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_Haz clic aquí para ver una imagen de referencia.|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>Viaja a las Tierras Altas de Arathi
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>Haz clic en la |cRXP_PICK_Tumba|r para obtener el |cRXP_LOOT_|T136222:0|t[Eco de Arathi]|r en la Granja Go'Shek junto al edificio más grande.
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>Viaja a Marjal Revolcafango
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>Haz clic en la |cRXP_PICK_Lápida|r para recoger |cRXP_LOOT_|T136222:0|t[Eco de Theramore]|r situada cerca del cementerio de la Alianza.
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>Viaja a |cFFfa9602Pantano de las Penas|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>Haz clic en la |cRXP_PICK_Tumba|r para recoger |cRXP_LOOT_|T136222:0|t[Eco del pantano]|r situada cerca de un lago junto a un árbol.
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>Viaja a |cFFfa9602Claros de Tirisfal|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >> Entra en la mazmorra Monasterio Escarlata: Biblioteca |cRXP_WARN_Se recomienda encarecidamente formar un grupo de 5 jugadores para los siguientes pasos.|r
step
    .train 402855,1
    .cast 437054 >>Usa el |T136222:0|t[Eco del pantano] frente a la Estatua del Guerrero.
    .use 215425
step
    .train 402855,1
    .cast 437053 >>Usa el |T136222:0|t[Eco de Arathi] frente a la Estatua del Mago.
    .use 215428
step
    .train 402855,1
    .cast 436952 >>Usa el |T136222:0|t[Eco de Theramore] frente a la Estatua del Paladín.
    .use 215425
step
    .train 402855,1
    .cast 437055 >>Usa el |T136222:0|t[Eco del cementerio] frente a la Estatua del Sacerdote.
    .use 215426
step
    .train 402855 >>Haz clic en el Remanente Naranja en el centro de la sala para recibir |T135791:0|t|cRXP_FRIENDLY_[Epifanía apócrifa]|r, úsalo para aprender |T135936:0|t[Supresión de dolor]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Ojo del Vacío - 50 (Azeroth)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>Viaja a Tierras del Interior
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo resplandeciente|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>Viaja a Las Tierras Devastadas
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo pulsante|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>Viaja a La Garganta de Fuego
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo vibrante|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo siniestro|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>Viaja a Feralas
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo ardiente|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo supurante|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>Viaja a Frondavil
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>Haz clic en el |cRXP_PICK_|T236407:0|tOjo perforador|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>Viaja a Azshara
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>Selecciona como objetivo el |cRXP_FRIENDLY_Santuario del vigía|r
    .emote KNEEL,223590
    .accept 82316,1 >>Acepta la misión Siete ojos busco...
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Oleada de Luz
#name Oleada de Luz - 40 (Tanaris)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Solo puedes conseguir la runa|r |T135981:0|t[Oleada de Luz] |cRXP_WARN_entre las 9pm-6am en Tanaris.|r
    +Puedes mirar en Vega de Tuercespina si quieres conseguir la runa fuera de este intervalo de tiempo.
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
    .train 431669,1
step
    .train 431669,1
    >>Mata al |cRXP_ENEMY_Eco de un alma perdida|r |cRXP_WARN_con hechizos/varitas de daño Sagrado o Arcano|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Necesitas DOS "buffs" de meditaciones: Busca a un sacerdote con múltiples "buffs", /kneel (arrodíllate) ante él, espera a que use /pray (rezar) contigo.|r
    .train 431669 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Oleada de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Oleada de Luz
#name Oleada de Luz - 40 (Pantano de las Penas)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Solo puedes conseguir la runa|r |T135981:0|t[Oleada de Luz] |cRXP_WARN_entre las 9pm-6am en Pantano de las Penas.|r
    +Puedes mirar en Vega de Tuercespina si quieres conseguir la runa fuera de este intervalo de tiempo.
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja al Pantano de las Penas
    .train 431669,1
step
    .train 431669,1
    >>Mata al |cRXP_ENEMY_Eco de un alma perdida|r |cRXP_WARN_con hechizos/varitas de daño Sagrado o Arcano|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Necesitas DOS "buffs" de meditaciones: Busca a un sacerdote con múltiples "buffs", /kneel (arrodíllate) ante él, espera a que use /pray (rezar) contigo.|r
    .train 431669 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Oleada de Luz]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Oleada de Luz
#name Oleada de Luz - 40 (Tierras del Interior)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Solo puedes conseguir la runa|r |T135981:0|t[Oleada de Luz] |cRXP_WARN_entre las 9pm-6am en Tierras del Interior.|r
    +Puedes mirar en Vega de Tuercespina si quieres conseguir la runa fuera de este intervalo de tiempo.
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>Viaja a Tierras del Interior
    .train 431669,1
step
    .train 431669,1
    >>Mata al |cRXP_ENEMY_Eco de un alma perdida|r |cRXP_WARN_con hechizos/varitas de daño Sagrado o Arcano|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Necesitas DOS "buffs" de meditaciones: Busca a un sacerdote con múltiples "buffs", /kneel (arrodíllate) ante él, espera a que use /pray (rezar) contigo.|r
    .train 431669 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Oleada de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Oleada de Luz
#name Oleada de Luz - 40 (Vega de Tuercespina) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_El alma solo puede aparecer después de un evento de Luna de sangre. También puedes desactivar el evento y correr hacia la ubicación marcada de la ruta|r.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
    .train 431669,1
step
    .train 431669,1
    >>Mata al |cRXP_ENEMY_Eco de un alma perdida|r |cRXP_WARN_con hechizos/varitas de daño Sagrado o Arcano|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Necesitas DOS "buffs" de meditaciones: Busca a un sacerdote con múltiples "buffs", /kneel (arrodíllate) ante él, espera a que use /pray (rezar) contigo.|r
    .train 431669 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Oleada de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Oleada de Luz
#name Oleada de Luz - 40 (Vega de Tuercespina) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Solo puedes conseguir la runa|r |T135981:0|t[Oleada de Luz] |cRXP_WARN_entre las 9pm-6am.|r
    +Puedes mirar en Vega de Tuercespina 2 si quieres conseguir la runa fuera de este intervalo de tiempo.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
    .train 431669,1
step
    .train 431669,1
    >>Mata al |cRXP_ENEMY_Eco de un alma perdida|r |cRXP_WARN_con hechizos/varitas de daño Sagrado o Arcano|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r]
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Necesitas DOS "buffs" de meditaciones: Busca a un sacerdote con múltiples "buffs", /kneel (arrodíllate) ante él, espera a que use /pray (rezar) contigo.|r
    .train 431669 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la tribu perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Oleada de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Sanación conjunta
#name Sanación conjunta - 58 (Tierras de la Peste del Oeste y del Este)
#next Raciales de sacerdote - 60 (Azeroth)

step << Alliance
    #completewith next
    .zone Stormwind City >> Viaja a Ventormenta
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .accept 84320 >> Acepta la misión Reliquias perdidas
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Viaja a Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .accept 84405 >> Acepta la misión Reliquias perdidas
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >> Viaja a Tierras de la Peste del Oeste
step
    .goto Western Plaguelands,51.9,82.4,50 >> Viaja a la gran cripta ubicada junto a la Colina de las Penas
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_Entra en la cripta y ve a la izquierda. Baja las escaleras y busca un pequeño cofre de madera en un pequeño hueco a tu derecha. Despoja la|r |T133299:0|t[|cRXP_PICK_Reliquia familiar|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_Dirígete al fondo de la cripta. Despoja los|r |T133741:0|t[|cRXP_PICK_Registros Familiares|r] |cRXP_WARN_de una Estantería a la derecha y el|r |T133735:0|t[|cRXP_PICK_Diario de un superviviente|r] |cRXP_WARN_de la mesa de la izquierda|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >> Regresa a Ventormenta
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .turnin 84320 >> Entrega la misión Reliquias perdidas
    .accept 84321 >> Acepta la misión Reliquia de la Luz
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Regresa a Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .turnin 84405 >> Entrega la misión Reliquias perdidas
    .accept 84406 >> Acepta la misión Reliquia de la Luz
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_La siguiente misión requerirá que consigas un objeto de una zona élite. Es posible hacerla solo, pero si tienes un nivel más bajo o vas mal equipado, considera buscar a alguien que te ayude|r
    .zone Western Plaguelands >> Regresa a Tierras de la Peste del Oeste
step
    .goto Western Plaguelands,48.2,21.7,50 >> Dirígete a Vega del Amparo, |cRXP_WARN_ten en cuenta que es un área élite|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_Entra en el Ayuntamiento de Vega del Amparo e interactúa con el|r |cRXP_PICK_Registro escarlata|r |cRXP_WARN_situado en el atril. Ten cuidado, ya que la zona está llena de enemigos élites|r
    .turnin 84406 >> Entrega la misión Reliquia de la Luz << Horde
    .turnin 84321 >> Entrega la misión Reliquia de la Luz << Alliance
    .accept 84322 >> Acepta la misión Búsqueda escarlata
step
    #completewith next
    >>|cRXP_WARN_La siguiente misión requerirá que consigas un objeto de una zona élite. Es posible hacerla solo, pero si tienes un nivel más bajo o vas mal equipado, considera buscar a alguien que te ayude|r
    .zone Eastern Plaguelands >> Viaja a Tierras de la Peste del Este
step
    .goto Eastern Plaguelands,77.5,81.7,50 >> Viaja a Mano de Tyr, |cRXP_WARN_ten en cuenta que es un área élite|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_La runa de|r |T237537:0|t[Especialización Sagrada] |cRXP_WARN_también se encuentra en Mano de Tyr, si no quieres obtenerla ahora omite este paso|r
    >>|cRXP_WARN_Si quieres obtenerla, dirígete al ala de la biblioteca del edificio marcado en tu mapa y busca un libro ubicado en la parte superior de una estantería. Despójalo para obtener la runa. Ten en cuenta que no puedes despojarla en combate|r
    >>|cRXP_WARN_Puedes limpiar a todos los enemigos de la sala o morir junto al libro y revivir en un lugar que esté fuera de la línea de visión de los enemigos para despojar la runa sin tener que matar nada|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización Sagrada|r] para aprender |T237537:0|t[Especialización Sagrada]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Entra en el campanario y dirígete al piso superior. Interactúa con el cofre cerrado que hay allí|r
    .turnin 84322 >> Entrega la misión Búsqueda escarlata
    .accept 84323 >> Acepta la misión El premio en el interior
step
    .goto Eastern Plaguelands,83.6,78.2
    >>Mata a cualquier enemigo escarlata en la Mano de Tyr. Despójalos para obtener una |T134245:0|t[|cRXP_LOOT_Llave del depósito de artefactos|r]
    >>|cRXP_WARN_Puedes omitir el "farmeo" de la llave y encontrar a un pícaro con forzar cerraduras a 175+ ya que también pueden abrir la caja por ti. Omite este paso si prefieres buscar a un pícaro en lugar de "farmear" la llave|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>Usa la |T134245:0|t[|cRXP_LOOT_Llave del depósito de artefacto|r] para desbloquear la |T133876:0|t[|cRXP_LOOT_Caja enigmática|r] o haz que un pícaro la abra por ti con forzar cerraduras. Despójala para obtener el |T132874:0|t[|cRXP_LOOT_Fragmento de Luz|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >> Regresa a Ventormenta
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .turnin 84323 >> Entrega la misión El premio en el interior
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Regresa a Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .turnin 84323 >> Entrega la misión El premio en el interior
    .target Dietrich Praice
step
    .train 402853 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía jubilosa|r] para aprender |T135883:0|t[|cRXP_FRIENDLY_Sanación conjunta|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Toque vampírico
#name Toque vampírico - 60 (Mazmorra Barranco del Demonio)

step
    #completewith next
    >>La runa de |T135978:0|t[|cRXP_FRIENDLY_Toque Vampírico|r] cae del último jefe de Barranco del Demonio, la nueva mazmorra añadida en SoD
    .zone Felwood >> |cRXP_WARN_Para poder entrar a la mazmorra, primero necesitas un abalorio que se obtiene como recompensa de una breve misión; dirígete a Frondavil para comenzarla|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Emisaria Diente Oscuro|r
    .accept 84384 >> Acepta la misión Engaños demoníacos
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >> Viaja a Cuna del Invierno
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>Busca a las |cRXP_ENEMY_Lechubestias rabiosas|r al norte de Vista Eterna. Mátalas y despójalas para obtener las |T237413:0|t[|cRXP_LOOT_Glándulas pineales de lechubestia|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >> Regresa a Frondavil
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Emisaria Diente Oscuro|r
    .turnin 84384 >> Entrega la misión Engaños demoníacos
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +Equipa el |T136232:0|t[|cRXP_FRIENDLY_Resguardo de ilusión Diente Oscuro|r] en cualquiera de tus ranuras de abalorio. Lo necesitas equipado para poder entrar a la mazmorra
    .use 228172
    .itemcount 228172,<1
step
    >>|cRXP_WARN_La runa de|r |T135978:0|t[|cRXP_FRIENDLY_Toque Vampírico|r] |cRXP_WARN_cae del último jefe de Barranco del Demonio, la nueva mazmorra añadida en SoD. Comienza a buscar un grupo para ella mientras te diriges a Vallefresno|r
    >>Si vas a volar, dirígete a Punta Talrendis en Azshara en lugar de a Astranaar. Está más cerca de la entrada de la mazmorra << Alliance
    .zone Ashenvale >> Viaja a Vallefresno
step
    .goto Ashenvale,84.5,75.0,50 >> Dirígete a la entrada de la mazmorra Barranco del Demonio
step
    >>Completa la mazmorra. |T135791:0|t[|cRXP_FRIENDLY_Epifanía aperitiva|r] que enseña |T135978:0|t[|cRXP_FRIENDLY_Toque vampírico|r] cae del último jefe de la mazmorra, |cRXP_ENEMY_Fantasma Grito Infernal|r. |cRXP_WARN_¡Asegúrate de despojarlo para obtener la runa!|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía aperitiva|r] para aprender |T135978:0|t[|cRXP_FRIENDLY_Toque vampírico|r]
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Extras
#title Sacerdote Raciales
#name Raciales de sacerdote - 60 (Azeroth)


step
    #completewith next
    >>|cRXP_WARN_La habilidad adicional de sacerdote se desbloquea para todo el servidor. Esto significa que si alguien ya lo ha hecho en tu servidor, puedes saltarte toda la cadena de misiones e ir directamente a Karazhan para aprender tu nueva habilidad racial. ¡Si ese no es el caso, puedes usar la guía a continuación para ser la persona que la desbloquee para tu servidor!|r
    .zone Deadwind Pass >> Viaja al Paso de la Muerte
step
    .goto Deadwind Pass,40.8,78.4
    >>Viaja a un pequeño santuario situado junto a Karazhan
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aprensión divina|r en un santuario junto a Karazhan para elegir qué habilidad racial quieres
    .target Divine Apprehension
step
    #completewith PreQStart
    +Este es el comienzo de la cadena de misiones para desbloquear la habilidad racial adicional de Sacerdote en todo el servidor. |cRXP_WARN_Es muy probable que ya haya sido completada en tu servidor y no necesites hacer lo siguiente. Continúa solo si quieres intentar la cadena o si sabes que aún no ha sido desbloqueada|r
step
    #completewith QStart
    +|cRXP_WARN_Para comenzar esta misión, necesitas haber completado previamente la cadena de misiones que otorga|r |T135883:0|t[|cRXP_FRIENDLY_Sanación conjunta|r]|cRXP_WARN_. Puedes encontrar una guía para esto en la sección de runas de capa|r
    .train 402853,1
step
    #label PreQStart
    .goto Eastern Plaguelands,48.1,24.0
    >>|cRXP_WARN_Para entregar la primera misión en esta cadena necesitarás 4|r |T134855:0|t[|cRXP_LOOT_Agua bendita de Stratholme|r] |cRXP_WARN_además de otros materiales que se pueden comprar en la casa de subastas. Busca un grupo para hacer la mazmorra de Stratholme (lado no-muertos) |r
    >>|cRXP_WARN_Una vez dentro, busca y despoja Cajones de suministros tirados por el suelo repartidos por toda la instancia. Pueden contener Agua bendita, pero también ser señuelos que generan enemigos molestos con los que lidiar|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >> Viaja a Ventormenta
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra 6 |T133682:0|t[|cRXP_LOOT_Vendas de paño rúnico gruesas|r], 4 |T134834:0|t[|cRXP_LOOT_Pociones de sanación sublimes|r] y 8 |T132834:0|t[|cRXP_LOOT_Huevos gigantes|r] en la casa de subastas. Los necesitas para la primera misión de esta cadena junto con el |T134855:0|t[|cRXP_LOOT_Agua bendita de Stratholme|r] que ya recogiste
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Auctioneer Jaxon
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .accept 84324 >> Acepta la misión Propuestas diplomáticas
    .turnin 84324 >> Entrega la misión Propuestas diplomáticas
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Viaja a Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thathung|r
    >>Compra 6 |T133682:0|t[|cRXP_LOOT_Vendas de paño rúnico gruesas|r], 4 |T134834:0|t[|cRXP_LOOT_Pociones de sanación sublimes|r] y 8 |T132834:0|t[|cRXP_LOOT_Huevos gigantes|r] en la casa de subastas. Los necesitas para la primera misión de esta cadena junto con el |T134855:0|t[|cRXP_LOOT_Agua bendita de Stratholme|r] que ya recogiste
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .accept 84408 >> Acepta la misión Propuestas diplomáticas
    .turnin 84408 >> Entrega la misión Propuestas diplomáticas
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Para la siguiente parte de la misión, necesitarás encontrar un sacerdote de la facción opuesta que también esté en la cadena de misiones para progresar|r
    .zone Eastern Plaguelands >> Viaja a Tierras de la Peste del Este
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_Viaja al|r |cRXP_FRIENDLY_Santuario de cooperación|r |cRXP_WARN_ubicado en Tierras de la Peste del Este. Intercambia daño con un sacerdote de la facción contraria y luego usa el|r |T134918:0|t[|cRXP_FRIENDLY_Resguardo altruista|r] |cRXP_WARN_,que recibiste de entregar la misión anterior, para curaros mutuamente|r
    >>Si se hace correctamente, el |cRXP_FRIENDLY_Santuario de cooperación|r te ofrecerá una misión, acéptala
    .accept 84325 >> Acepta la misión Santuario de cooperación << Alliance
    .accept 84410 >> Acepta la misión Santuario de cooperación << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >> Regresa a Ventormenta
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra 2 |T134459:0|t[|cRXP_LOOT_Barras de arcanita|r], 2 |T134086:0|t[|cRXP_LOOT_Sangre de la montaña|r] y 3 |T134132:0|t[|cRXP_LOOT_Zafiros azules|r] en la casa de subastas. Los necesitas para entregar una misión pronto. Estos objetos podrían ser caros
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Auctioneer Jaxon
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .turnin 84325 >> Entrega la misión Santuario de cooperación
    .accept 84326 >> Acepta la misión Anillo de diplomático
    .turnin 84326 >> Entrega la misión Anillo de diplomático
    .accept 84327 >> Acepta la misión Una misión diplomática
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >> Regresa a Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thathung|r
    >>Compra 2 |T134459:0|t[|cRXP_LOOT_Barras de arcanita|r], 2 |T134086:0|t[|cRXP_LOOT_Sangre de la montaña|r] y 3 |T134132:0|t[|cRXP_LOOT_Zafiros azules|r] en la casa de subastas. Los necesitas para entregar una misión pronto. Estos objetos podrían ser caros
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .turnin 84410 >> Entrega la misión Santuario de cooperación
    .accept 84411 >> Acepta la misión Anillo de diplomático
    .turnin 84411 >> Entrega la misión Anillo de diplomático
    .accept 84412 >> Acepta la misión Una misión diplomática
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_Para completar esta misión, necesitarás encontrar nuevamente un sacerdote de la facción opuesta y hacer que use su|r |T133396:0|t[|cFF0070FFAnillo de diplomático|r] |cRXP_WARN_sobre ti mientras estés junto a las puertas de Ventormenta. Esto hará que los guardias de la ciudad no te ataquen y te permitirá entrar de forma segura en la capital enemiga|r
    >>|cRXP_WARN_¡Ten en cuenta que los jugadores de la facción opuesta pueden seguir atacándote en un servidor JcJ!|r
    .zone Elwynn Forest >> Viaja a las puertas de Ventormenta
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Haz que un sacerdote de la facción opuesta use su |T133396:0|t[|cFF0070FFAnillo de diplomático|r] en ti para que los guardias de la ciudad no te ataquen y dirígete a la Catedral de Ventormenta. |cRXP_WARN_¡Los otros jugadores aún pueden atacarte!|r
    >>|cRXP_WARN_El sacerdote de la facción opuesta tiene que escoltarte hasta el PNJ de la misión o perderás el "buff" de inmunidad diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .turnin 84412 >> Entrega la misión Una misión diplomática
    .accept 84413 >> Acepta la misión Reparar el fragmento
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Para completar esta misión, necesitarás encontrar nuevamente un sacerdote de la facción opuesta y hacer que use su|r |T133396:0|t[|cFF0070FFAnillo de diplomático|r] |cRXP_WARN_sobre ti mientras estés junto a las puertas de Orgrimmar. Esto hará que los guardias de la ciudad no te ataquen y te permitirá entrar de forma segura en la capital enemiga|r
    >>|cRXP_WARN_¡Ten en cuenta que los jugadores de la facción opuesta pueden seguir atacándote en un servidor JcJ!|r
    .zone Durotar >> Viaja a las puertas de Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Haz que un sacerdote de la facción opuesta use su |T133396:0|t[|cFF0070FFAnillo de diplomático|r] en ti para que los guardias de la ciudad no te ataquen y dirígete al Valle de los Espíritus. |cRXP_WARN_¡Los otros jugadores aún pueden atacarte!|r
    >>|cRXP_WARN_El sacerdote de la facción opuesta tiene que escoltarte hasta el PNJ de la misión o perderás el "buff" de inmunidad diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .turnin 84327 >> Entrega la misión Una misión diplomática
    .accept 84328 >> Acepta la misión Reparar el fragmento
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Empieza a buscar un grupo para la mazmorra de La Masacre Oeste; para la siguiente misión necesitas matar a|r |cRXP_ENEMY_Magister Kalendris|r |cRXP_WARN_uno de los jefes de la mazmorra|r
    .zone Feralas >> Viaja a Feralas
step
    .goto Feralas,59.1,43.2,100 >> Entra en la zona de La Masacre
step
    .goto Feralas,60.4,30.2
    >>Entra en La Masacre Oeste y mata a |cRXP_ENEMY_Magister Kalendris|r. Despójalo para obtener el libro |T133737:0|t[|cRXP_LOOT_Divinidad aplicada|r]. Se encuentra en la sección de fantasmas de la mazmorra
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_Para completar esta misión, necesitarás encontrar nuevamente un sacerdote de la facción opuesta y hacer que use su|r |T133396:0|t[|cFF0070FFAnillo de diplomático|r] |cRXP_WARN_sobre ti mientras estés junto a las puertas de Ventormenta. Esto hará que los guardias de la ciudad no te ataquen y te permitirá entrar de forma segura en la capital enemiga|r
    >>|cRXP_WARN_¡Ten en cuenta que los jugadores de la facción opuesta pueden seguir atacándote en un servidor JcJ!|r
    .zone Elwynn Forest >> Viaja a las puertas de Ventormenta
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Haz que un sacerdote de la facción opuesta use su |T133396:0|t[|cFF0070FFAnillo de diplomático|r] en ti para que los guardias de la ciudad no te ataquen y dirígete a la Catedral de Ventormenta. |cRXP_WARN_¡Los otros jugadores aún pueden atacarte!|r
    >>|cRXP_WARN_El sacerdote de la facción opuesta tiene que escoltarte hasta el PNJ de la misión o perderás el "buff" de inmunidad diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r en la Catedral de Ventormenta
    .turnin 84413 >> Entrega la misión Reparar el fragmento
    .accept 84329 >> Acepta la misión La convocatoria se reúne
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Para completar esta misión, necesitarás encontrar nuevamente un sacerdote de la facción opuesta y hacer que use su|r |T133396:0|t[|cFF0070FFAnillo de diplomático|r] |cRXP_WARN_sobre ti mientras estés junto a las puertas de Orgrimmar. Esto hará que los guardias de la ciudad no te ataquen y te permitirá entrar de forma segura en la capital enemiga|r
    >>|cRXP_WARN_¡Ten en cuenta que los jugadores de la facción opuesta pueden seguir atacándote en un servidor JcJ!|r
    .zone Durotar >> Viaja a las puertas de Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Haz que un sacerdote de la facción opuesta use su |T133396:0|t[|cFF0070FFAnillo de diplomático|r] en ti para que los guardias de la ciudad no te ataquen y dirígete al Valle de los Espíritus. |cRXP_WARN_¡Los otros jugadores aún pueden atacarte!|r
    >>|cRXP_WARN_El sacerdote de la facción opuesta tiene que escoltarte hasta el PNJ de la misión o perderás el "buff" de inmunidad diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dietrich Praice|r en el Valle de los Espíritus
    .turnin 84328 >> Entrega la misión Reparar el fragmento
    .accept 84329 >> Acepta la misión La convocatoria se reúne
    .target Dietrich Praice
step
    #completewith next
    .zone Deadwind Pass >> Viaja al Paso de la Muerte
step
    .goto Deadwind Pass,40.8,78.4
    >>Viaja a un pequeño santuario situado junto a Karazhan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maethra Coraescoria|r en un santuario junto a Karazhan
    .turnin 84329 >> Entrega la misión La convocatoria se reúne
step
    +Entregar la misión anterior debería completar la cadena de misiones y desbloquear la capacidad de aprender una habilidad de sacerdote racial de otra raza en todo el servidor
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Amparo de alma
#name Amparo de alma - 60 (Stratholme)

step
    #completewith next
    >>|cRXP_WARN_Para completar esta runa tendrás que realizar un par de tareas dentro de la mazmorra de Stratholme (tanto en la parte de los vivos como en la de los muertos). Empieza a buscar un grupo para ella|r
    .zone Eastern Plaguelands >> Viaja a Tierras de la Peste del Este
step
    .goto Eastern Plaguelands,47.8,24.2
    >>Entra en Stratholme
    >>|cRXP_WARN_LEE ESTA SECCIÓN CON ATENCIÓN, YA QUE ESTA MISIÓN DE RUNA ES POCO CONVENCIONAL|r
    >>Para obtener la ruina necesitarás reunir 3 esencias de los jefes en Stratholme. Los jefes que tienen las esencias son |cRXP_WARN_ALEATORIOS Y DIFERENTES CADA "ID" DE MAZMORRA|r. Para saber qué jefes tienen la esencia en tu instancia necesitas encontrar pistas ubicadas en los pilares dentro del Edificio Escarlata en el lado de los vivos de la mazmorra
    >>Para reunir las esencias necesitarás 3 |T134799:0|t[|cRXP_LOOT_Frascos de sombras de Stratholme|r] que caen de los [|cRXP_PICK_Paquetes de correos|r] dentro de la mazmorra, para abrir los [|cRXP_PICK_Paquetes|r] en primer lugar necesitas matar al |cRXP_ENEMY_Mensajero de Stratholme|r para obtener sus |T134237:0|t[|cRXP_LOOT_Llaves de los buzones|r]
    >>Una vez que hayas reunido todas las esencias tienes que volver a los pilares con las pistas y activarlos con la esencia correspondiente a la pista que dieron. Esto hace aparecer un orbe junto a ellos que tienes que despojar para conseguir la runa
    +|cRXP_WARN_Haz clic aquí una vez que hayas leído lo anterior y quieras ver más detalles sobre qué pista corresponde a cada jefe. Siempre puedes volver a este paso si lo necesitas|r
step
    >>|cRXP_WARN_Aquí están las pistas y los jefes a los que corresponden:|r
    >>Entre los muertos este mortal habita con acólitos y hechizos helados = Maleki el Pálido
    >>Un espectro maldito condenado a custodiar una torre; ni la riqueza ni el poder le otorgan consuelo = Baronesa Anastari
    >>El reino antiguo redescubierto. Intercambia un maestro por otro = Nerub'enkan
    >>Construido de carne, un pecado de la ciencia cazado por los mejores de los Renegados = Ramstein el Empachador
    >>El pueblo acudió a él en busca de liderazgo en su hora de mayor necesidad = Magistrado Barthilas
    >>Un campeón de maldad perversa, horrores descomunales guardan su palacio = Barón Osahendido
    >>El furor sagrado purga el pecado y aun así una sombra acecha en su interior. = Balnazzar
    >>El olor del azufre llena la habitación. Este fanático te saluda con estruendo. = Maestro cañonero Willey
    +|cRXP_WARN_Haz clic aquí si quieres ver el orden eficiente recomendado de los pasos que puedes seguir para completar esta misión. Siempre puedes volver a este paso para leer las pistas de nuevo si lo necesitas|r
step
    >>|cRXP_WARN_El orden eficiente de pasos mientras haces esta misión es el siguiente:|r
    >>1. Empieza en la parte de los vivos de la mazmorra
    >>2. Despoja tres [|cRXP_PICK_Paquetes de correos|r] para obtener los |T134799:0|t[|cRXP_LOOT_Frascos de sombras de Stratholme|r], los frascos son únicos, así que haz que un jugador diferente recoja cada uno
    >>3. Ve abriendo camino hasta la sala de los pedestales y descubre qué jefes tienen las esencias en tu ID
    >>4. Recoge todas las esencias mientras avanzas a través de la mazmorra
    >>5. Regresa a la sala de los pedestales y activa cada uno con su esencia correspondiente
    >>6. Despoja el orbe que aparece para conseguir tu runa
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía onírica|r] para aprender |T135948:0|t[|cRXP_FRIENDLY_Amparo de alma|r]
    .use 228124
]])
