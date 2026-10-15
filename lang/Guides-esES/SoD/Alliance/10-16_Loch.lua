if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 12-13 Dun Morogh SoD
#displayname 12-13 Dun Morogh
#next 13-16 Loch Modan SoD
#defaultfor !NightElf

step << Warrior
    #season 2
    >>|cRXP_WARN_Busca al|r |cRXP_FRIENDLY_Espadachín deambulante|r. |cRXP_WARN_Puede estar en cualquier lugar del área pequeña marcada en tu mapa|r
    >>Encuéntralo y rétalo a un duelo. Después de vencerlo, generará un pequeño cofre que te otorgará la runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesí sangriento|r]
    .goto Dun Morogh,52.6,45.0
    .goto Dun Morogh,52.4,47.4,0
    .goto Dun Morogh,52.6,48.8,0
    .goto Dun Morogh,53.6,47.6,0
    .goto Dun Morogh,53.0,46.2,0
    .goto Dun Morogh,55.0,46.6,0
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    #optional
    #completewith next
    .train 403474 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Frenesí sangriento|r] |cRXP_WARN_para aprender|r |T136012:0|t[Frenesí sangriento]
    .use 204441
    .itemcount 204441,1
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
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Viaja a la Cantera de Gol'Bolar
    .subzoneskip 134
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Cómprale hasta 10|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Cómprale hasta 5|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step << Human Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dank Cortefiel|r
    .goto Dun Morogh,69.3,55.5
    .train 2581 >>Aprende Minería, lanza Buscar minerales
    .target Dank Drizzlecut
    .skill mining,1
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r y el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
    .xp >12,1,QuarryEnd
step << !Human Rogue
    #season 2
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
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo superior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] con los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener |T134331:0|t[Nota de Ratanegra] y el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener la |T134331:0|t[Nota de Ratanegra]
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|tUsa [Robar] en los |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T134327:0|t[|cRXP_LOOT_Trozo inferior izquierdo de mapa]|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step <<< !Human Rogue
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
step << !Human Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Usa el|r |T134269:0|t[|cRXP_LOOT_Mapa del tesoro de Dun Morogh|r] |cRXP_WARN_bajo el pequeño puente. Esto causará que un |cRXP_PICK_Tesoro enterrado|r aparezca|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    >>Abre el |cRXP_PICK_Tesoro enterrado|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << !Human Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Desenfunde rápido|r] |cRXP_WARN_para aprender|r |T134536:0|t[Desenfunde rápido]
    .use 203991
    .itemcount 203991,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Habla con |cRXP_FRIENDLY_Rata negra|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << !Human Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step << Dwarf Paladin
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
step << Mage
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Busca a otros Magos o Brujos cerca del |cRXP_ENEMY_Trogg congelado|r o en el Chat General (Escribe /1 en el chat). Aún puedes hacerlo en solitario si no hay nadie allí|r
    >>|cRXP_WARN_Lanza|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_en el |cRXP_ENEMY_Trogg congelado|r para aplicar una carga de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 cargas a la vez para matar al |cRXP_ENEMY_Trogg congelado|r. Despójalo para obtener las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r
    >>|cRXP_WARN_Si no hay nadie allí para ayudarte, acércate hasta estar a distancia cuerpo a cuerpo con el Trogg y usa|r |T135820:0|t[Llama viva] |cRXP_WARN_en él. Mantente a rango cuerpo a cuerpo para permanecer en combate y sigue usando|r |T135820:0|t[Llama viva] |cRXP_WARN_cada vez que esté disponible. Matará al trogg después de 5-6 lanzamientos.|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step << Mage
    .train 401759 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_FRIENDLY_[Notas de hechizo: Incendio]|r |cRXP_WARN_para aprender|r |T132686:0|t[Grabar pechera - Incendio]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
step << Dwarf Paladin
    #optional
    #label RockjawEnd
    #requires PalaCloth
step
    #label RockjawEnd << !Paladin
    #requires Skullthumpers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entrega la misión El servidor público
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #optional
    #completewith next
    #label QuarryEnd
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
    #label enterloch
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>Atraviesa el túnel hacia Loch Modan
    .zoneskip Loch Modan
step
    #optional
    #completewith lochstart1
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>Guarda cualquier |cRXP_LOOT_Carne de araña crujiente|r que encuentres para una misión posterior
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
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
step << Dwarf Paladin
    .xp 12
step
    #label lochstart1
    #optional
    .goto 1432,34.405,48.276
    .subzone 144 >> Viaja a Thelsamar
step
    #completewith lochpatrol3
    .abandon 1338 >> Si todavía tienes la misión |cRXP_FRIENDLY_La tarea del montaraz Pico Tormenta|r en tu registro de misiones, abandónala, de lo contrario no podrás aceptar una misión posterior
step
    #label lochpatrol1
    #completewith lochpatrol2
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
    .subzoneskip 2101
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r en el interior
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step << Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r dentro
    .vendor >> |cRXP_BUY_Vende la chatarra al vendedor, compra hasta cuatro|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si todavía las necesitas|r
    .target Yanni Stoutheart
step << Dwarf/Gnome
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r en el interior
    .home >> Establece tu Piedra de hogar en Thelsamar
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >> Acepta la misión Estudiantes de honor
    .target Brock Stoneseeker
step
    #optional
    #label lochpatrol2
step
    #label lochpatrol3
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
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell

step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Entrega la misión Estudiantes de honor
    .accept 6391 >> Acepta la misión Vuela a Forjaz
    .target Thorgrum Borrelson
step << Hunter
    #sticky
	.goto Loch Modan,33.9,54.0
    .goto Loch Modan,36.6,53.2,0
    .goto Loch Modan,30.0,53.5,0
    .train 172551 >> Domestica a una Rondadora del bosque
    >>|cRXP_WARN_Es la mascota de mayor DPS fácilmente disponible para cazadores enanos; con el tiempo tu objetivo será reemplazarla por un raptor de Los Humedales|r
    .unitscan Forest Lurker
step << Human
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
step << Dwarf/Gnome
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Priest Dwarf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    >>|cRXP_WARN_Debes tener 2 "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /pray junto a un Altar de Luz en la Catedral de Ventormenta, en Loch Modan o en la Sala Mística en Forjaz|r
    >>|cRXP_WARN_El "buff" |T136057:0|t|cRXP_PICK_Meditaciones sobre Elune|r tiene que venir de otro jugador sacerdote, usando el gesto /pray (rezar) sobre ti mientras estés arrodillado con /kneel; si ves a otro sacerdote con otro "buff" de meditación, pídeselo|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Rogue !Human
    #optional
    #completewith next
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Viaja hacia |cRXP_FRIENDLY_Hulfdan Barbanegra|r en el piso de abajo
step << Rogue !Human
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin 2218 >> Entrega la misión El camino hacia la salvación
    .target Hulfdan Blackbeard
step << Rogue !Human
    #season 2
    .goto Ironforge,51.913,13.383
    >>Abre el |cRXP_PICK_Cofre Polvoriento|r fuera. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Al hacer esto aparecerán dos |cRXP_ENEMY_Atracadores despiadados|r de nivel 10 que te atacarán|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
    .zoneskip Ironforge,1
step << Rogue !Human
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
---------pt1
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Viaja hacia el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
step << Dwarf/Gnome
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .turnin 291 >> Entrega la misión Los informes
    .target Senator Barin Redstone
step << !Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra una|r |135640:0|t[Jambiya] |cRXP_BUY_a esta vendedora|r
    .collect 2207,1 --Jambiya
    .target Brenwyn Wintersteel
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.0
step << Dwarf/Gnome
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Golnir Dedorroca|r en el interior
    .turnin 6391 >> Entrega la misión Vuela a Forjaz
    .accept 6388 >> Acepta la misión Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf/Gnome
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_NO vueles a ningún lado|r
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,24.2,6.8,12 >>Viaja hacia |cRXP_FRIENDLY_Brandur Martiyerro|r
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .accept 2999 >>Acepta la misión Escrito sobre divinidad
    .trainer >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Viaja hacia |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 2999 >>Entrega la misión Escrito sobre divinidad
    .accept 1645 >>Acepta la misión Escrito sobre divinidad
    .turnin 1645 >>Entrega la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Usa el |T133739:0|t|cRXP_LOOT_[Escrito sobre divinidad]|r para iniciar la misión|r
    .accept 1646 >>Acepta la misión Escrito sobre divinidad
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .turnin 1646 >>Entrega la misión Escrito sobre divinidad
    .accept 1647 >>Acepta la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
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
    --.accept 1778 >>Accept The Tome of Divinity
    .unitscan John Turner
step << Gnome Mage
    .goto Ironforge,27.0,8.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bink|r
    .trainer >> Aprende tus hechizos de clase
    .target Bink
step << Gnome Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Compra al menos 2|r |T135933:0|t[Talismanes de comprensión] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Estos son necesarios para aprender runas|r
    .collect 211779,2
    .target Barim Jurgenstaad
step << Dwarf/Gnome
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
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    >>Aprende Armas arrojadizas y Mazas de 2 manos si no lo hiciste antes
    .train 2567 >> Aprende el uso de Armas arrojadizas
    .goto Ironforge,62.237,89.628
    .train 199 >> Aprende Mazas de 2 manos
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior !Human
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior !Human
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
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
step << Warrior !Human
    #season 2
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
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Asalto frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r |cRXP_WARN_con|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .train 425447,3
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
step << Paladin Dwarf
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425621,1
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin Dwarf
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
step << Paladin Dwarf
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
step << Paladin Dwarf
    #season 2
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Reprimenda] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Reprimenda]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin Dwarf
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r con|r |T134596:0|t[Grabar pantalones - Reprimenda]
    >>|cRXP_WARN_Recuerda poner|r |T134919:0|t[Reprimenda] |cRXP_WARN_en tus barras de acciones|r
    .train 425621,3
-- step << Dwarf/Gnome
--     #label Ride
--     .goto Ironforge,51.521,26.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
--     .fly Loch >> Fly to Loch modan
--     .target Golnir Bouldertoe
step << Dwarf/Gnome
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step << Dwarf/Gnome
    >>Usa la |T133942:0|t[Flauta cazarratas] en las |cRXP_FRIENDLY_Ratas del subterráneo|r en el Tranvía Subterráneo
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del Tranvía Subterráneo
    >>Él hará un "roleplay" durante un par de segundos después de entregar la primera misión. |cRXP_WARN_Omite la continuación si esperar hiciera que pierdas el tranvía|r
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .timer 11,A por las ratas del tranvía subterráneo RP
    .accept 6662 >> Acepta la misión Mi hermano Niblis
    .target Monty
step << Dwarf/Gnome
    #label TramEnd
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Ventormenta|r
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a la Ciudad de Ventormenta si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niblis|r en el andén central del Tranvía Subterráneo en el lado de Ventormenta
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    .isOnQuest 6662
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << Dwarf/Gnome
    #optional
    #completewith Order
    .zone Stormwind City >> Entra en Ventormenta
    .isOnQuest 1338
step << !Human
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step << Dwarf Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Priest Dwarf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .trainer >> Aprende tus hechizos de clase
    .turnin 5634 >> Entrega la misión Oración desesperada
    .target High Priestess Laurena
step << Priest Dwarf
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .train 13908 >> Aprende Rezo desesperado
    .target High Priestess Laurena
step << Warrior !Human
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Ilsa Corbin
step << Warrior !Human
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Entra en la Taberna
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Entrega la misión Instrucción de guerrero
    .accept 1639 >> Acepta la misión Bartleby, el borracho
    .target Harry Burlguard
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Entrega la misión Bartleby, el borracho
    .accept 1640 >> Acepta la misión Vence a Bartleby
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>Derrota a |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Entrega la misión Vence a Bartleby
    .accept 1665 >> Acepta la misión La jarra de Bartleby
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Entrega la misión La jarra de Bartleby
    .target Harry Burlguard
step << Warlock !Human
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock !Human
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock !Human
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step << Warlock !Human
    #softcore
    .deathskip >> Muere y resucita en el Ángel de la Resurrección usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .target Ángel de la Resurrección
    .isOnQuest 1688
step << Warlock !Human
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
    .isOnQuest 1688
step << Warlock !Human
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock !Human
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << Warlock !Human
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step << Warlock !Human
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_Ten cuidado con los enemigos de alto nivel en el camino|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step << Warlock !Human
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step << !Human
    .hs >> Usa tu Piedra de hogar para ir a Loch Modan
    .cooldown item,6948,>0,1 << !Warlock
step << !Warlock !Human
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    >>Cómprale el |T133745:0|t|cRXP_LOOT_[Testamento de Martirio]|r, úsalo para aprender |T135961:0|t[Sello de martirio] << Paladin
    >>Cómprale el |T133739:0|t|cRXP_LOOT_[Tratado sobre el Corazón del león]|r, úsalo para aprender |T132185:0|t[Corazón del león] << Hunter
    .collect 226401,1 << Hunter
    .collect 226398,1 << Paladin
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r
    >>Si dispones de mucho dinero de sobra, puedes comprarle los otros dos testamentos a Milton para usarlos más adelante << Paladin
    >>Si tienes mucho dinero de sobra cómprale el |T133739:0|t|cRXP_LOOT_[Tratado sobre Aspecto de la víbora]|r también << Hunter
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .money <5
step << !Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r dentro
    .vendor >> |cRXP_BUY_Vende la chatarra al vendedor, compra hasta cuatro|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si todavía las necesitas|r
    .target Yanni Stoutheart
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 13-16 Loch Modan SoD
#displayname 13-16 Loch Modan
#next 16-17 Páramos de Poniente SoD
#defaultfor !NightElf

step << Hunter
#optional
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrok Rayobestial|r
    >>|cRXP_BUY_Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >> Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
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

step
#completewith next
    .goto Loch Modan,30.0,68.4,0
    .goto Loch Modan,30.0,68.4,30,0 >> Dirígete al Valle Rompecantos
    .subzoneskip 923
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>Mata |cRXP_ENEMY_Troggs|r. Despójalos para obtener una |cRXP_LOOT_Geoda con forma de cráneo|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    #season 2
    #sticky
    #label geode2
    #requires Geode
    .goto Loch Modan,33.2,73.8,0,0
    >>Ataca a un |cRXP_ENEMY_Aplastacráneos Rompecantos|r
    >>|cRXP_WARN_Durante el combate te golpeará, transformando la |cRXP_LOOT_Geoda con forma de cráneo|r en una|r |T236489:0|t[|cRXP_LOOT_Geoda con forma de cráneo partida|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8,0,0
    #season 2
    #sticky
    #requires geode2
    .use 208848 >>|cRXP_WARN_Usa la|r |T236489:0|t[|cRXP_LOOT_Geoda con forma de cráneo partida|r] |cRXP_WARN_para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe rápido|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Mage
    #sticky
    #completewith next
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes de trogg de piedra|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Mage
    #season 2
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Mata |cRXP_ENEMY_Videntes Rompecantos|r y despójalos para obtener |cRXP_LOOT_|T134939:0|t[Notas de hechizo masticadas]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo masticadas|r] para aprender |T236220:0|t[Bomba viva]
    .train 415936,1
    .use 208854
step
#loop
    .goto Loch Modan,34.7,71.6,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes de trogg de piedra|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #requires geode2 << Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step << !Human
    #completewith Algaz
    .hs >> Usa tu Piedra de Hogar para ir a Thelsamar
    .cooldown item,6948,>0
    .subzoneskip 924,1--valley of kings

step
    #optional
    #completewith Algaz2
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>Guarda cualquier |cRXP_LOOT_Carne de araña crujiente|r que encuentres para una misión posterior
    .collect 1081,5,92,1
    .disablecheckbox
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
    .turnin -353 >> Entrega la misión Una entrega a Pico Tormenta
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #label Algaz2
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .disablecheckbox
    .complete 307,1 -- Miners' Gear (4)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith RatEar
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    >>Guarda cualquier |cRXP_LOOT_Carne de araña crujiente|r que encuentres para una misión posterior
    .collect 1081,5,92,1
    .disablecheckbox
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
step << Mage
    #season 2
    #sticky
    #completewith next
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,35.48,16.82,0
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    >>|cRXP_ENEMY_Ratatúneles|r |cRXP_WARN_pueden aparecer por todo Loch Modan. Revisa tu Mapa del Mundo para localizar sus ubicaciones|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #season 2
    #label Loch1
    .goto Loch Modan,50.7,23.9,200 >>Viaja a la isla en la parte norte del lago
    .train 401767,1
step << Mage
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >> Entra en la tienda en el lado este de la isla
    .train 401767,1
step << Mage
    #season 2
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Abre la |cRXP_PICK_Pila de libros robados|r dentro. Despójalos para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: RANGE CERNEIO|r] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Regeneración]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Paladin/Warrior
    #label BuyMace
    #optional
    #completewith RatEar
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Cómprale la|r |T133476:0|t[Maza con pinchos pesada] |cRXP_BUY_(si está disponible)|r
    >>|cRXP_WARN_NO COMPRES LA|r |T133053:0|t[Gran maza de maderaférrea] |cRXP_WARN_si|r |T133476:0|t[Maza con pinchos pesada] |cRXP_WARN_no está allí. Obtendrás un arma mejor en Ventormenta pronto|r
    >>|cRXP_WARN_Si no puedes permitártelo, pero no estás muy lejos, farmea dinero matando a las |cRXP_ENEMY_Ratatúneles|rcercanas hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    >>|cRXP_WARN_Si no deseas hacer esto, omite este paso|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
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
    .mob +Forest Lurker
step
    #season 2
    .xp 16-4650
step
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
step
    #label ratcatching
    #sticky
    #loop
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step << Human
    #requires ratcatching
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
step << !Human
    #requires ratcatching
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regnus Tronagranito|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
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
step << Warrior !Human
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
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Asalto frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graba tus|r |T134596:0|t|cRXP_LOOT_[Pantalones]|r |cRXP_WARN_con|r |T134596:0|t[Grabar pantalones - Asalto frenético]
    .train 425447,3
step << !Human
    .goto Ironforge,78.00,51.40
    .zone Stormwind City >>Entra en el Tranvía Subterráneo y toma el Tranvía hacia Ventormenta
    .isQuestTurnedIn 6662
step << !Human
    .goto Ironforge,78.00,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el lado de Forjaz del tranvía y luego con |cRXP_FRIENDLY_Niblis|r en el lado de Ventormenta
    .zone Stormwind City >>Entra en el Tranvía Subterráneo y toma el Tranvía hacia Ventormenta
    .accept 6662 >> Acepta la misión Mi hermano Niblis
    >>antes de tomar el tranvía
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    >>después de tomar el tranvía
    .isQuestAvailable 6662
    .target Monty
    .target Nipsy
]])
