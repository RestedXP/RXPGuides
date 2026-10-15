if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Lacerar - 12 (Costa Oscura) << Druid
#name Maestría de bestias - 12 (Costa Oscura) << Hunter
#title Lacerar << Druid
#title Maestría de bestias << Hunter

step << Druid/Hunter
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r. Despójalos para obtener sus |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .goto Darkshore,35.8,55.6
    .use 209027 >> |cRXP_WARN_Usa los|r |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r] |cRXP_WARN_en un |cRXP_ENEMY_Reptador de arrecife joven|r para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] << Druid
    .use 209027 >> |cRXP_WARN_Usa los|r |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r] |cRXP_WARN_en un |cRXP_ENEMY_Reptador de arrecife joven|r para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r] << Hunter
    .collect 208687,1 << Druid -- Rune of Lacerate (1)
    .collect 208701,1 << Hunter -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .train 416049 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para aprender|r |T132131:0|t[Lacerar] << Druid
    .use 208687 << Druid
    .itemcount 208687,1 << Druid
    .train 410110 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r] |cRXP_WARN_para aprender|r |T132270:0|t[Maestría de bestias] << Hunter
    .use 208701 << Hunter
    .itemcount 208701,1 << Hunter
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Destrozar - 8 (Teldrassil) << Druid
#name Disparo explosivo - 8 (Teldrassil) << Hunter
#title Destrozar << Druid
#title Disparo explosivo << Hunter

step
    +|cRXP_WARN_Deberías ser al menos nivel 8 para obtener|r |T133816:0|t[Grabar guantes - Destrozar] |cRXP_WARN_en Teldrassil en solitario|r << Druid
    +|cRXP_WARN_Deberías tener al menos nivel 8 para adquirir|r |T133816:0|t[Grabar guantes - Disparo explosivo] |cRXP_WARN_en Teldrassil solo|r << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .xp >8,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >> Viaja a Teldrassil
    .subzoneskip 262
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,44.197,58.040
    .subzone 262 >> Entra en el Túmulo de Ban'ethil
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >> Viaja hacia |cRXP_ENEMY_Garrafuria|r en el interior
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #loop
    #label Rune
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>Mata a |cRXP_ENEMY_Garrafuria|r en la planta baja del interior. Despójalo para obtener el |T136061:0|t|cRXP_LOOT_[Ídolo de cólera osuna]|r << Druid
    >>Mata a |cRXP_ENEMY_Garrafuria|r en la planta baja del interior. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r << Hunter
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .unitscan Rageclaw
step << Hunter
    .train 410123 >> |cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Disparo explosivo]
    .use 206169
    .itemcount 206169,1
step << Druid
    .equip 18,206954 >> |cRXP_WARN_Equipa el|r |T136061:0|t|cRXP_LOOT_[Ídolo de cólera osuna]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #loop
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_Mientras estés en|r |T132276:0|t[Forma de oso]|cRXP_WARN_, mantén 50 o más de Ira durante 60 segundos|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid
    .train 410025 >>|cRXP_WARN_Usa el|r |T136061:0|t|cRXP_LOOT_[Ídolo de cólera osuna]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Destrozar]
    .use 206954
    .aura -414824
    .train 410025,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Warrior SoD/Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera << Rogue/Priest
#subgroup Piernas << Warrior
#name Matanza desde las Sombras - 8 (Teldrassil) << Rogue
#name Rayo furioso - 8 (Teldrassil) << Warrior
#name Plaga del Vacío - 8 (Teldrassil) << Priest
#title Matanza desde las Sombras << Rogue
#title Rayo furioso << Warrior
#title Plaga del Vacío << Priest

step
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> Entra en el Túmulo de Ban'ethil
    .train 424992,1 << Rogue
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step << Rogue
    .goto Teldrassil,44.155,61.182
    >>Abre el |cRXP_PICK_Alijo tuercepinos|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r]
    >>|cRXP_WARN_Nota: El |cRXP_PICK_Alijo tuercepinos|r aparece en algún lugar aleatorio dentro del Túmulo de Ban'ethil|r
    .collect 203993 -- Rune of Slaughter (1)
    .train 424992 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T236280:0|t[Matanza desde las Sombras]
    .use 203993
step << Warrior
    .goto Teldrassil,44.401,60.655
    >>Abre el |cRXP_PICK_Alijo Tuercepinos|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r]
    >>|cRXP_WARN_Nota: El |cRXP_PICK_Alijo Tuercepinos|r puede tener múltiples ubicaciones de aparición dentro del Túmulo de Ban'ethil|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .train 403476 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Rayo furioso|r] |cRXP_WARN_para aprender|r |T136048:0|t[Rayo furioso]
    .use 204809
step << Priest
    .goto Teldrassil,44.401,60.655
    >>Abre el |cRXP_PICK_Alijo Tuercepinos|r. Despójalo para obtener |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un oscuro propósito|r]
    >>|cRXP_WARN_Nota: El |cRXP_PICK_Alijo Tuercepinos|r puede tener múltiples ubicaciones de aparición dentro del Túmulo de Ban'ethil|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes << Rogue
#subgroup Piernas << Priest
#name Mutilar - 8 (Teldrassil) << Rogue
#name Dolor compartido - 8 (Teldrassil) << Priest
#title Mutilar << Rogue
#title Dolor compartido << Priest

step << Rogue/Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue/Priest
    .goto Teldrassil,51.2,50.6
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] << Rogue
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] << Priest
    >>|cRXP_ENEMY_Lord Melenas|r |cRXP_WARN_puede estar ubicado en muchos lugares diferentes en Roca Mácula|r
    .collect 203990,1 << Rogue
    .collect 205945,1 << Priest
    .unitscan Lord Melenas
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue
    .train 400094 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step << Priest
    .train 402854 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un salvador encerrado|r] |cRXP_WARN_para aprender|r |T136160:0|t[Dolor compartido]
    >>|cRXP_WARN_Debes tener el "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como un pozo lunar, Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205945
    .itemcount 205945,1
]])
