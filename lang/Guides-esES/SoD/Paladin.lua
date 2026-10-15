if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpe de cruzado - 4 (Bosque de Elwynn)
#title Golpe de cruzado
#next Inspiración ejemplar - 6 (Bosque de Elwynn)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_DEBES tener al menos nivel 4 para adquirir|r |T133816:0|t[Grabar guantes - Golpe de cruzado] |cRXP_WARN_ya que es el nivel requerido para aprender|r |T135959:0|t[Sentencia]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Golpe de cruzado]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>Viaja hacia el |cRXP_FRIENDLY_Hermano Sammuel|r en el interior
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .target Brother Sammuel
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener el |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135959:0|t[Sentencia] |cRXP_WARN_10 veces para obtener el|r |cRXP_WARN_buff|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpe de cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Golpe de cruzado - 4 (Dun Morogh)
#title Golpe de cruzado
#next Inspiración ejemplar - 6 (Dun Morogh)

step
    +|cRXP_WARN_DEBES tener al menos nivel 4 para adquirir|r |T133816:0|t[Grabar guantes - Golpe de cruzado] |cRXP_WARN_ya que es el nivel requerido para aprender|r |T135959:0|t[Sentencia]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Golpe de cruzado]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Viaja a Dun Morogh
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>Viaja hacia |cRXP_FRIENDLY_Bromos Grummner|r en el interior
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .target Bromos Grummner
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r. Despójalas para obtener el |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135959:0|t[Sentencia] |cRXP_WARN_10 veces para obtener el|r |cRXP_WARN_buff|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre sentencia]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Golpe de cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Mano de expiación - 14 (Loch Modan)
#title Mano de expiación
#next Inspiración ejemplar - 6 (Bosque de Elwynn)


step
    +|cRXP_WARN_Deberías ser al menos nivel 14 para obtener|r |T133816:0|t[Grabar guantes - Mano de expiación] |cRXP_WARN_en Loch Modan en solitario|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 8, ya que es el nivel requerido para equipar el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Mano de expiación]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Deberías ser al menos nivel 14 para obtener|r |T133816:0|t[Grabar guantes - Mano de expiación] |cRXP_WARN_en Loch Modan en solitario|r
    .train 410001,1
    .xp <8,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>Viaja a Forjaz
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .train 853 >> Aprende |T135963:0|t[Martillo de Justicia]
    .target Brandur Ironhammer
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >> Vuela a Loch Modan
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>Viaja hacia la Cueva Rompecantos
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>Viaja hacia el |cRXP_PICK_Relicario sumergido|r dentro de la cueva bajo el agua
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>Abre el |cRXP_PICK_Relicario sumergido|r bajo el agua. Despójalo para obtener el |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>Sal de la cueva
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,31.93,79.12,40,0
    .goto Loch Modan,31.02,80.64,40,0
    .goto Loch Modan,31.56,76.89,40,0
    .goto Loch Modan,30.90,74.35,40,0
    .goto Loch Modan,29.75,72.57,40,0
    .goto Loch Modan,33.43,70.60,40,0
    .goto Loch Modan,35.36,71.21,40,0
    .goto Loch Modan,32.86,79.70,40,0
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >16,1
step
    #loop
    .goto Loch Modan,35.66,83.64,30,0
    .goto Loch Modan,36.86,84.93,30,0
    .goto Loch Modan,36.50,80.01,30,0
    .goto Loch Modan,33.96,81.82,30,0
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <16,1
    .xp >19,1
step
    #loop
    .goto Loch Modan,69.61,67.92,40,0
    .goto Loch Modan,72.12,68.29,40,0
    .goto Loch Modan,72.59,61.75,40,0
    .goto Loch Modan,70.33,59.84,40,0
    .goto Loch Modan,67.37,59.88,40,0
    .goto Loch Modan,67.77,62.99,40,0
    .goto Loch Modan,70.41,62.93,40,0
    .goto Loch Modan,69.69,65.52,40,0
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >> Viaja a Los Humedales
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,50,0
    .goto Wetlands,13.69,41.37,50,0
    .goto Wetlands,13.59,38.04,50,0
    .goto Wetlands,15.30,38.81,50,0
    .goto Wetlands,18.45,39.37,50,0
    .goto Wetlands,19.24,41.29,50,0
    .goto Wetlands,13.69,41.37,50,0
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Mano de expiación]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Mano de expiación - 20 (Páramos de Poniente)
#title Mano de expiación
#next Exorcista - 24 (Bosque del Ocaso)


step
    +|cRXP_WARN_Deberías ser al menos nivel 20 para obtener|r |T133816:0|t[Grabar guantes - Mano de expiación] |cRXP_WARN_en solitario en Páramos de Poniente|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 8, ya que es el nivel requerido para equipar el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Mano de expiación]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_Deberías ser al menos nivel 20 para obtener|r |T133816:0|t[Grabar guantes - Mano de expiación] |cRXP_WARN_en solitario en Páramos de Poniente|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +|cRXP_WARN_Es muy recomendable obtener |T133816:0|t[Grabar guantes - Mano de expiación] en Loch Modan en lugar de hacerlo aquí, ya que es MUCHO más fácil|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>Viaja a Ventormenta
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 853 >> Aprende |T135963:0|t[Martillo de Justicia]
    .target Arthur the Faithful
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>Mata |cRXP_ENEMY_Zánganos Defias|r. Despójalos para obtener el |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zánganos Defias|r patrullan en parejas|r
    >>|cRXP_WARN_Evita al |cRXP_ENEMY_Zángano Defias deforme|r ya que pega MUY fuerte|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Elwynn Forest,24.50,93.99,50,0
    .goto Elwynn Forest,26.07,91.92,50,0
    .goto Elwynn Forest,27.85,88.18,50,0
    .goto Elwynn Forest,27.56,86.21,50,0
    .goto Elwynn Forest,26.43,86.81,50,0
    .goto Elwynn Forest,25.18,89.20,50,0
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >15,1
step
    #loop
    .goto Westfall,69.71,73.41,40,0
    .goto Westfall,64.54,60.81,40,0
    .goto Westfall,62.62,58.29,40,0
    .goto Westfall,60.87,58.71,40,0
    .goto Westfall,58.71,61.21,40,0
    .goto Westfall,61.43,62.17,40,0
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <15,1
    .xp >22,1
step
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,12.65,69.42,50,0
    .goto Duskwood,10.42,66.27,50,0
    .goto Duskwood,10.30,59.05,50,0
    .goto Duskwood,10.75,52.37,50,0
    .goto Duskwood,8.83,45.35,50,0
    .goto Duskwood,8.75,40.20,50,0
    .goto Duskwood,10.99,34.29,50,0
    .goto Duskwood,11.07,29.40,50,0
    .goto Duskwood,14.69,26.22,50,0
    .goto Duskwood,20.93,25.13,50,0
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,14.69,26.22
    .aura 408828 >>|cRXP_WARN_Ataca enemigos hasta dejarlos con poca salud. Lánzales|r |T135963:0|t[Martillo de Justicia] |cRXP_WARN_, luego mátalos mientras estén aturdidos 10 veces para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Green Recluse
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre justicia]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Mano de expiación]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Suelo santo - 4 (Loch Modan)
#title Suelo santo
#next Mano de expiación - 14 (Loch Modan)

step
    +|cRXP_WARN_DEBES ser al menos nivel 4 para obtener|r |T133815:0|t[Grabar pechera - Suelo santo] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135906:0|t[Bendición de poderío]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Suelo santo]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>Viaja a Forjaz
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .train 19740 >> Aprende |T135906:0|t[Bendición de poderío]
    .target Brandur Ironhammer
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >> Vuela a Loch Modan
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>Entra en la Posada de Thelsamar
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #requires Inn1
    .goto Loch Modan,35.43,48.29,8,0
    .goto Loch Modan,35.12,48.98,8,0
    .goto Loch Modan,35.13,49.34,8,0
    .goto Loch Modan,35.19,49.95,8,0
    .goto Loch Modan,35.52,49.40,8,0
    >>Entra en la habitación situada más al este de la planta baja
    .goto Loch Modan,35.80,49.57,8 >>Viaja hacia el |T134916:0|t|cRXP_LOOT_[Tratado sobre bendiciones]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>Despoja el |T134916:0|t|cRXP_LOOT_[Tratado sobre bendiciones]|r de la mesa
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre bendiciones]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_o|r |T135970:0|t[Bendición de sabiduría] |cRXP_WARN_sobre 5 jugadores únicos amistosos (incluyéndote a ti mismo) para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_en 5 jugadores amistosos únicos (incluyéndote a ti) para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_Usa el|r |T134916:0|t[Tratado sobre bendiciones] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Suelo santo]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Cuerno de Lordaeron - 12 (Páramos de Poniente)
#title Cuerno de Lordaeron
#next Mano de expiación - 20 (Páramos de Poniente)


step
    +|cRXP_WARN_Deberías ser al menos nivel 12 para obtener|r |T133815:0|t[Grabar Pechera - Cuerno de Lordaeron] |cRXP_WARN_en Páramos de Poniente en solitario|r
    >>|cRXP_WARN_DEBES ser al menos nivel 4 ya que es el requisito de nivel para aprender|r |T135906:0|t[Bendición de poderío]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar Pechera - Cuerno de Lordaeron]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_Deberías ser al menos nivel 12 para obtener|r |T133815:0|t[Grabar Pechera - Cuerno de Lordaeron] |cRXP_WARN_en Páramos de Poniente en solitario|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp <4,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>Viaja a Ventormenta
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .train 19740 >> Aprende |T135906:0|t[Bendición de poderío]
    .target Arthur the Faithful
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_Es muy recomendable obtener el|r |T134229:0|t[Testamento de Cuerno de Lordaeron] |cRXP_WARN_en Loch Modan, ya que es MUCHO más fácil|r
    >>|cRXP_WARN_NO se recomienda usar el|r |T134229:0|t[Testamento de Cuerno de Lordaeron] |cRXP_WARN_en lugar de la|r |T236250:0|t[Runa de Tormenta divina] |cRXP_WARN_o el|r |T133745:0|t[Testamento de Martirio]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>Viaja a Páramos de Poniente
    .train 425618,1
    .xp <4,1
step
    #label LibramS
    .goto Westfall,44.45,25.76,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,45.35,21.20,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,31.82,43.99,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,29.65,46.18,0 --Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,44.72,23.57,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.39,21.67,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.98,22.33,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.35,21.20,12,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.68,19.94,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,45.65,18.24,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,46.28,18.86,12,0 --Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,31.82,43.99,40,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,30.42,45.81,12,0 --Travel to Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,29.65,46.18,15,0 --Quarry Spawnpoint 5 (Quarry Inside)
--  .goto Westfall,30.54,48.34,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--  .goto Westfall,30.14,49.51,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--   .goto Westfall,28.88,48.92,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
    .goto Westfall,29.65,46.18 --Quarry Spawnpoint 5 (Quarry Inside)
    >>|cRXP_WARN_Ataca al |cRXP_ENEMY_Obrero indestructible|r. Mátalo usando|r |T135920:0|t[Daño Sagrado] |cRXP_WARN_como|r |T135959:0|t[Sentencia] |cRXP_WARN_cuando caiga (tienes 10 segundos para hacerlo). Despójalo para obtener el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre bendiciones]|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Obrero indestructible|r aparece como élite, pero tiene la salud y el daño de un enemigo normal|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Obrero indestructible|r comparte puntos de aparición por toda la Mina de la Costa del Oro y la Mina de Jango. Si no puedes encontrarlo en una ubicación, intenta en la otra|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre bendiciones]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_o|r |T135970:0|t[Bendición de sabiduría] |cRXP_WARN_sobre 5 jugadores únicos amistosos (incluyéndote a ti mismo) para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_en 5 jugadores amistosos únicos (incluyéndote a ti) para obtener el|r |cRXP_WARN_"buff"|r |T136116:0|t[Inspirado]
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre bendiciones]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar Pechera - Cuerno de Lordaeron]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Égida - 8 (Bosque de Elwynn)
#title Égida
#next Reprimenda - 10 (Ventormenta)

step
    +|cRXP_WARN_DEBES ser al menos nivel 8 para adquirir|r |T133815:0|t[Grabar pechera - Égida] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135949:0|t[Purificar]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Égida]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>Viaja a Ventormenta
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 1152 >> Aprende |T135949:0|t[Purificar]
    .target Arthur the Faithful
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>Entra en la Cantera de Jaspe
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Elwynn Forest,61.46,48.17,8,0
    .goto Elwynn Forest,61.31,48.87,8,0
    .goto Elwynn Forest,60.61,49.94,8,0
    .goto Elwynn Forest,60.73,50.83,8,0
    .goto Elwynn Forest,61.22,51.51,8,0
    .goto Elwynn Forest,61.44,52.64,8,0
    .goto Elwynn Forest,61.97,47.31,12 >> Viaja hacia el |cRXP_FRIENDLY_Aventurero herido|r en el suelo dentro de la cueva
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Lanza|r |T135949:0|t[Purificar] |cRXP_WARN_sobre el|r |cRXP_FRIENDLY_Aventurero herido|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Habla con el |cRXP_FRIENDLY_Aventurero herido|r después de lanzar|r |T135949:0|t[Purificar] |cRXP_WARN_en él para recibir la|r |T134419:0|t[Runa de Égida]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Égida] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Égida]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX cast 425589
--XX Rune acquirable if someone else purifies him for you?
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Égida - 8 (Dun Morogh)
#title Égida
#next Reprimenda - 10 (Forjaz)

step
    +|cRXP_WARN_DEBES ser al menos nivel 8 para adquirir|r |T133815:0|t[Grabar pechera - Égida] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135949:0|t[Purificar]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Égida]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>Viaja a Forjaz
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .train 1152 >> Aprende |T135949:0|t[Purificar]
    .target Brandur Ironhammer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >> Viaja a Dun Morogh
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >> Viaja hacia el |cRXP_FRIENDLY_Aventurero herido|r en el suelo
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_Lanza|r |T135949:0|t[Purificar] |cRXP_WARN_sobre el|r |cRXP_FRIENDLY_Aventurero herido|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>|cRXP_WARN_Habla con el |cRXP_FRIENDLY_Aventurero herido|r después de lanzar|r |T135949:0|t[Purificar] |cRXP_WARN_en él para recibir la|r |T134419:0|t[Runa de Égida]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Égida] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Égida]
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Luz divina - 10 (Ventormenta)
#title Luz divina
#next Cuerno de Lordaeron - 12 (Páramos de Poniente)

step
    #completewith LibramS
    +|cRXP_WARN_Deberías ser al menos nivel 10 para adquirir|r |T133815:0|t[Grabar pechera - Luz divina] |cRXP_WARN_en Ventormenta en solitario|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Viaja a Ventormenta
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>Viaja hacia el |cRXP_FRIENDLY_Hermano Romulus|r dentro de la Catedral
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Habla con el |cRXP_FRIENDLY_Hermano Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step
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
step
    .goto StormwindClassic,32.86,24.87
    >>Despoja la |cRXP_LOOT_Nota chamuscada|r junto a las velas
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Viaja hacia |cRXP_FRIENDLY_Ada Gelhardt|r en la isla
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Habla con |cRXP_FRIENDLY_Ada Gelhardt|r para comenzar una pelea
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Derrota a |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en ella|r
    >>|cRXP_WARN_Ten cuidado porque ella lanza|r |T136197:0|t[Choque de Sombras] |cRXP_WARN_(causa instantáneamente 45 de daño de sombra. Le cuesta 75 de maná. Deberías matarla lo suficientemente rápido como para que solo lo lance 3 veces)|r
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Habla con |cRXP_FRIENDLY_Ada Gelhardt|r de nuevo para recibir la |T134419:0|t[Runa de Luz divina]
    .collect 205897,1 --Rune of Divine Light (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >> Elimina la |T134939:0|t[Nota chamuscada] de tu inventario, ya que ya no se necesita
step
    .train 410015 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Luz divina] |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Luz divina]
    .use 205897
    .itemcount 205897,1 --Rune of Divine Light (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Tormenta divina - 25 (Costa Oscura)
#title Tormenta divina
#next Sacrificio divino - 25 (Azeroth)

step
    #completewith LibramS
    +|cRXP_WARN_Deberías ser al menos nivel 25 para adquirir|r |T133815:0|t[Grabar pechera - Tormenta divina] |cRXP_WARN_Y deberías encontrar al menos a otros 2 Paladines de nivel 25 para hacerlo cómodamente|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >> Viaja a Costa Oscura
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>Viaja a la Torre de Althalaxx
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>Abre el |cRXP_PICK_Orbe extraño|r en la mesa en lo alto de la Torre de Althalaxx. Despójalo para obtener el |cRXP_LOOT_Orbe de Althalaxx|r
    >>|cRXP_WARN_Ten cuidado, ya que los enemigos de esta torre son difíciles (nivel 28-31)|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Clamavacíos de la Facción Oscura|r lanzan|r |T136197:0|t[Descarga de las Sombras] |cRXP_WARN_(Lanzamiento a distancia: Causa aproximadamente 175 de daño de Sombra). Asegúrate de romper la línea de visión (LoS) tanto como sea posible|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >> Viaja a Vallefresno
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>Viaja hacia |cRXP_FRIENDLY_Delgren el Purificador|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Habla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 78088 >> Entrega la misión Un Artefacto extraño
    .accept 78089 >> Acepta la misión Consejo en Ventormenta
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>Habla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .accept 78089 >> Acepta la misión Consejo en Ventormenta
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >> Viaja a Ventormenta
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Viaja hacia |cRXP_FRIENDLY_Katherine la Pura|r dentro de la Catedral
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>Habla con |cRXP_FRIENDLY_Katherine la Pura|r
    .turnin 78089 >> Entrega la misión Consejo en Ventormenta
    .accept 78090 >> Acepta la misión Una segunda opinión
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Viaja hacia |cRXP_FRIENDLY_Ursula Deline|r dentro de El Cordero Degollado
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>Habla con |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78090 >> Entrega la misión Una segunda opinión
    .accept 78091 >> Acepta la misión Con un poquito de sal
    .target Ursula Deline
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .zoneskip Redridge Mountains
    .target Dungar Longdrink
    .train 410014,1
step
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>|cRXP_WARN_Si aún no tienes|r |T134596:0|t[Grabar pantalones - Escudo de vengador] |cRXP_WARN_, merece la pena hacerlo ahora. Si no quieres, omite este paso|r
    >>Mata a |cRXP_ENEMY_Dro'zem el Blasfemo|r. Despójalo para obtener la |T134419:0|t[Runa de Vengador]|r
    >>|cRXP_WARN_Tiene 3 puntos de aparición en el exterior: Sureste (Valle de Render), Centro (Campamento fuera de la Torre de Petravista) y norte (Campamento de Render). Reaparece rápido a pesar de ser un "raro"|r
    >>|cRXP_WARN_Pregunta por el chat General si alguien lo ha visto para reducir potencialmente el tiempo de búsqueda (escribe /1 en el chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Vengador] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Escudo de vengador]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
step
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Mata |cRXP_ENEMY_Invocadores Roca Negra|r, |cRXP_ENEMY_Campeones Roca Negra|r, y |cRXP_ENEMY_Rastreadores Roca Negra|r. Despójalos para obtener |cRXP_LOOT_Sal de invocador|r
    >>|cRXP_WARN_|cRXP_LOOT_Sal de invocador|r se distribuye de forma individual (cada enemigo tiene una probabilidad de soltar sales para cada miembro del grupo), por lo que PUEDES hacer grupo fácilmente con otros para esta misión|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >> Viaja a Ventormenta
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Viaja hacia |cRXP_FRIENDLY_Ursula Deline|r dentro de El Cordero Degollado
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>Habla con |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78091 >> Entrega la misión Con un poquito de sal
    .accept 78092 >> Acepta la misión Camino a la destrucción
    .target Ursula Deline
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >> Viaja a Vallefresno
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>Viaja hacia Barranco del Demonio
    .train 410014,1
step
    #label Motes
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>Mata |cRXP_ENEMY_Infernales abrasadores|r, |cRXP_ENEMY_Guardias vil|r, |cRXP_ENEMY_Azotadoras Mannoroc|r, y |cRXP_ENEMY_Canes de la Legión|r. Despójalos para obtener |cRXP_LOOT_Motas de Mannoroth|r
    >>|cRXP_WARN_Las|cRXP_LOOT_ Motas de Mannoroth|r se distribuyen de forma individual (cada enemigo tiene una probabilidad de soltar motas para cada miembro del grupo), por lo que PUEDES hacer grupo fácilmente con otros para esta misión|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Infernales abrasadores|r tienen|r |T135802:0|t[Aura de inmolación] |cRXP_WARN_(AoE cuerpo a cuerpo pasivo: inflige 27-28 de daño de Fuego cada 3 segundos), |cRXP_ENEMY_Guardias vil|r lanzan|r |T132154:0|t[Derribo] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa alrededor de 140 daño y aturde durante 2 segundos), y |cRXP_ENEMY_Azotadoras Mannoroc|r lanzan|r |T135817:0|t[Latigazo de llamas] |cRXP_WARN_(Instantáneo a distancia: inflige alrededor de 45 de daño de Fuego, luego 12-13 de daño de Fuego cada 3 segundos durante 21 segundos) y|r |T136197:0|t[Descarga de las Sombras] |cRXP_WARN_(Lanzamiento a distancia: inflige unos 125 de daño de Sombras)|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>Haz clic en la |cRXP_PICK_Lanza de Mannoroth|r en el aire, luego haz clic en el |cRXP_PICK_Orbe destrozado|r del suelo
    .turnin 78092 >> Entrega la misión Camino a la destrucción
    .goto Ashenvale,89.48,77.03
    .accept 78093 >> Acepta la misión Regresa con Delgren
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>Viaja hacia |cRXP_FRIENDLY_Delgren el Purificador|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Habla con |cRXP_FRIENDLY_Delgren el Purificador|r
    .turnin 78093 >> Entrega la misión Regresa con Delgren
    .train 410014 >> Esto te enseñará |T133815:0|t[Grabar pechera - Tormenta divina]
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Inspiración ejemplar - 6 (Bosque de Elwynn)
#title Inspiración ejemplar
#next Égida - 8 (Bosque de Elwynn)

step
    #completewith LibramS
    +|cRXP_WARN_Deberías ser al menos nivel 6 para adquirir|r |T134596:0|t[Grabar pantalones - Inspiración ejemplar] |cRXP_WARN_en Bosque de Elwynn con otro jugador|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Viaja al Bosque de Elwynn
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>Viaja hacia los |cRXP_FRIENDLY_Restos de un aventurero|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Únete a un grupo con otro Paladín, Sacerdote o Druida que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Paladín, Sacerdote o Druida en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener la|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiración]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiración]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Inspiración ejemplar]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Inspiración ejemplar - 6 (Dun Morogh)
#title Inspiración ejemplar
#next Égida - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_Deberías ser al menos nivel 6 para adquirir|r |T134596:0|t[Grabar pantalones - Inspiración ejemplar] |cRXP_WARN_en Dun Morogh con otro jugador|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Viaja a Dun Morogh
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>Entra en El Cubil Pardo
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>Viaja hacia los |cRXP_FRIENDLY_Restos de un aventurero|r en el suelo dentro de la cueva
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_Únete a un grupo con otro Paladín, Sacerdote o Druida que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Paladín, Sacerdote o Druida en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener la|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiración]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Inspiración]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Inspiración ejemplar]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Reprimenda - 10 (Forjaz)
#title Reprimenda
#next Sello de martirio - 10 (Ventormenta)

step
    #completewith LibramS
    +|cRXP_WARN_Deberías ser al menos nivel 10 para adquirir|r |T134596:0|t[Grabar pantalones - Reprimenda] |cRXP_WARN_en Forjaz en solitario|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>Viaja a Forjaz
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Viaja hacia |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro de la posada
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Bruart|r para empezar un combate
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r
    >>|cRXP_WARN_Kitéalo escaleras arriba hacia el balcón, luego salta fuera de la posada y lanza|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrota a |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r
    >>|cRXP_WARN_Kitéalo escaleras arriba hacia el balcón, luego salta fuera de la posada y lanza|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Bruart|r:|r
    >>Habla con |cRXP_FRIENDLY_Bruuk Barbacebada|r de nuevo para recibir la |T134419:0|t[Runa de Reprimenda]
    >>|cRXP_WARN_Si no te da la|r |T134419:0|t[Runa de Reprimenda]|cRXP_WARN_, es posible que necesites luchar contra |cRXP_ENEMY_Bruart|r de nuevo|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Reprimenda] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Reprimenda]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Reprimenda - 10 (Ventormenta)
#title Reprimenda
#next Sello de martirio - 10 (Ventormenta)

step
    #completewith LibramS
    +|cRXP_WARN_Deberías ser al menos nivel 10 para adquirir|r |T134596:0|t[Grabar pantalones - Reprimenda] |cRXP_WARN_en Ventormenta en solitario|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Viaja a Ventormenta
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>Viaja hacia |cRXP_FRIENDLY_Liv Bradford|r dentro de la Posada de El Parque
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>Habla con |cRXP_FRIENDLY_Liv Bradford|r dentro
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>Habla con |cRXP_FRIENDLY_Stuart|r para iniciar una pelea
    >>Derrota a |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r
    >>|cRXP_WARN_"Kitéalo" subiendo las escaleras, luego déjate caer para lanzar|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>Derrota a |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T132939:0|t[Revés] |cRXP_WARN_(te aturde durante 2 segundos)|r
    >>|cRXP_WARN_Recuerda lanzar previamente|r |T135924:0|t[Sello del cruzado] |cRXP_WARN_en él|r
    >>|cRXP_WARN_NO lances accidentalmente|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre él|r
    >>|cRXP_WARN_"Kitéalo" subiendo las escaleras, luego déjate caer para lanzar|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_si es necesario|r
    >>|cRXP_WARN_Después de derrotar a |cRXP_ENEMY_Stuart|r:|r
    >>Habla con |cRXP_FRIENDLY_Liv Bradford|r de nuevo para recibir la |T134419:0|t[Runa de Reprimenda]
    >>|cRXP_WARN_Si no te da la|r |T134419:0|t[Runa de Reprimenda]|cRXP_WARN_, es posible que necesites luchar contra |cRXP_ENEMY_Stuart|r de nuevo|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Reprimenda] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Reprimenda]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Maestría en auras - 24 (Bosque del Ocaso)
#title Maestría en auras
#next Señal de la Luz - 25 (Reputación)

step
    +|cRXP_WARN_DEBES ser al menos nivel 24 para adquirir|r |T134596:0|t[Grabar pantalones - Maestría en auras] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135983:0|t[Ahuyentar no-muertos]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T134596:0|t[Grabar pantalones - Maestría en auras]
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>Viaja a Ventormenta
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 2878 >> Aprende |T135983:0|t[Ahuyentar no-muertos]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >> Viaja a Bosque del Ocaso
    .train 416037,1
    .xp <24,1
step
    #label LibramS
    #loop
    .goto Duskwood,20.84,63.75,50,0
    .goto Duskwood,20.00,71.10,50,0
    .goto Duskwood,21.58,72.00,50,0
    .goto Duskwood,24.26,71.82,50,0
    .goto Duskwood,22.91,66.62,50,0
    >>Mata |cRXP_ENEMY_Rondanoches Defias|r, |cRXP_ENEMY_Filonocturnos Defias|r, y |cRXP_ENEMY_Encantadores Defias|r. Despójalos para obtener el |T134916:0|t|cRXP_LOOT_[Tratado sobre destierro]|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Rondanoches Defias|r y |cRXP_ENEMY_Filonocturnos Defias|r lanzan|r |T136093:0|t[Veneno ralentizante] |cRXP_WARN_(Reduce la velocidad de movimiento en 35% durante 25 segundos),|r |T132090:0|t[Puñalada] |cRXP_WARN_(inflige el doble de daño por detrás. Los |cRXP_ENEMY_Rondanoches Defias|r están|r |T132320:0|t[En sigilo]|cRXP_WARN_, y los |cRXP_ENEMY_Encantadores Defias|r lanzan|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_(inflige aproximadamente 150 de daño de fuego) y tienen|r |T135843:0|t[Armadura de Escarcha] |cRXP_WARN_(reduce el ataque y la velocidad de movimiento al golpearles)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >> |cRXP_WARN_Equipa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre destierro]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #loop
    .goto Duskwood,22.49,47.91,50,0
    .goto Duskwood,20.41,47.56,50,0
    .goto Duskwood,14.65,47.37,50,0
    .goto Duskwood,16.31,44.96,50,0
    .goto Duskwood,22.95,40.55,50,0
    >>Mata a los |cRXP_ENEMY_Malignos esquelético|r y a los |cRXP_ENEMY_Horrores esquelético|r
    .aura 408828 >>|cRXP_WARN_Lanza|r |T135983:0|t[Ahuyentar no-muertos] |cRXP_WARN_y luego mátalos con|r |T135903:0|t[Exorcismo] |cRXP_WARN_5 veces para obtener el |r"buff"|cRXP_WARN_ |T136116:0|t[Inspirado]|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_Usa el|r |T134916:0|t|cRXP_LOOT_[Tratado sobre destierro]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Maestría en auras]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Escudo de vengador - 25 (Montañas Crestagrana)
#title Escudo de vengador
#next Inspiración ejemplar - 6 (Bosque de Elwynn)

step
    +|cRXP_WARN_Deberías ser al menos nivel 25 para adquirir|r |T134596:0|t[Grabar pantalones - Escudo de vengador] |cRXP_WARN_en Montañas Crestagrana en solitario|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .train 410008,1
step
    #label LibramS
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>Mata a |cRXP_ENEMY_Dro'zem el Blasfemo|r. Despójalo para obtener la |T134419:0|t[Runa de Vengador]|r
    >>|cRXP_WARN_Tiene 3 puntos de aparición en el exterior: Sureste (Valle de Render), Centro (Campamento fuera de la Torre de Petravista) y norte (Campamento de Render). Reaparece rápido a pesar de ser un "raro"|r
    >>|cRXP_WARN_Pregunta por el chat General si alguien lo ha visto para reducir potencialmente el tiempo de búsqueda (escribe /1 en el chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de Vengador] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Escudo de vengador]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#title Protección maleable
#name Protección maleable - 34 (Tierras Altas de Arathi)

step
    #optional
    .train 426175,1
    +|cRXP_WARN_Debes ser al menos nivel 34 antes de poder adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Piedad|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_Debes aprender|r |T135971:0|t[Sello de Justicia] |cRXP_WARN_para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Piedad|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_Debes aprender|r |T135896:0|t[Escudo divino] |cRXP_WARN_para adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Piedad|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_Debes aprender|r |T135971:0|t[Sello de Justicia] |cRXP_WARN_para obtener la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Piedad|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>Viaja a Tierras Altas de Arathi
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|cRXP_WARN_Los trols y ogros de las Tierras Altas de Arathi también pueden soltar cualquiera de las|r |T135261:0|t[|cRXP_LOOT_Cuentas de rezo deslucidas|r]
step
    .train 426175,1
    #completewith Rosary
    #label BeadBoM1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Mata |cRXP_ENEMY_Mercenarios de la Hermandad|r, |cRXP_ENEMY_Acechacaminos de la Hermandad|r y |cRXP_ENEMY_Bandoleros de la Hermandad|r. Despójalos para obtener las |T135261:0|t[|cRXP_LOOT_Cuentas de rezo deslucidas|r]
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_Lanza|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_sobre ti mismo|r
    .aura 19740
    .aura 19834
    .aura 19835
    .aura 19836
    .aura 19837
    .aura 19838
    .aura 25291
    .aura 25782
    .aura 25916
step
    .train 426175,1
    #requires BeadBoM2
    #label BeadBoM3
    #completewith Rosary
    >>|cRXP_WARN_Continúa matando enemigos para recibir los|r |T135260:0|t[|cRXP_LOOT_Abalorios de oración sagrados I|r]
    >>|cRXP_WARN_Debes tener activo el "buff" de|r |T135906:0|t[Bendición de poderío] |cRXP_WARN_|r
    .collect 213448,1 --Divine Prayer Bead I
step
    .train 426175,1
    #completewith Rosary
    #label BeadDS1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Mata |cRXP_ENEMY_Mercenarios de la Hermandad|r, |cRXP_ENEMY_Acechacaminos de la Hermandad|r y |cRXP_ENEMY_Bandoleros de la Hermandad|r. Despójalos para obtener las |T135261:0|t[|cRXP_LOOT_Cuentas de rezo deslucidas|r]
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_Lanza|r |T135896:0|t[Escudo divino] |cRXP_WARN_mientras estés en combate y por debajo del 40% de vida para recibir el|r |T135260:0|t[|cRXP_LOOT_Abalorio de oración sagrado II|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>Mata |cRXP_ENEMY_Mercenarios de la Hermandad|r, |cRXP_ENEMY_Acechacaminos de la Hermandad|r y |cRXP_ENEMY_Bandoleros de la Hermandad|r. Despójalos para obtener las |T135261:0|t[|cRXP_LOOT_Cuentas de rezo deslucidas|r]
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    .collect 213446,1 --Tarnished Prayer Bead III
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadSoJ1
    #label BeadSoJ2
    >>|cRXP_WARN_Lanza|r |T135971:0|t[Sello de Justicia] |cRXP_WARN_seguido de|r |T135959:0|t[Sentencia] |cRXP_WARN_sobre un enemigo que huye para recibir|r |T135260:0|t[|cRXP_LOOT_Abalorio de oración sagrado III|r]
    .collect 213450,1 --Divine Prayer Bead III
    .usespell 20164
    .usespell 20271
step
    .train 426175,1
    #optional
    #requires BeadBoM3
step
    .train 426175,1
    #optional
    #requires BeadDS2
step
    .train 426175,1
    #optional
    #requires BeadSoJ2
step
    .train 426175,1
    #label Rosary
    >>|cRXP_WARN_Usa un|r |T135260:0|t[|cRXP_LOOT_Abalorio de oración sagrado|r] |cRXP_WARN_para combinarlos en el|r |T133289:0|t[|cRXP_LOOT_Rosario de la Luz|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Atticus|r dentro del Castillo de Stromgrade para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Piedad|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Piedad|r] |cRXP_WARN_para aprender|r |T236251:0|t[Protección maleable]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Vaina de Luz - 40 (Azeroth)
#title Vaina de Luz

step
    #completewith next
    .zone Desolace >>Viaja a Desolace
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>Despoja el |cRXP_PICK_Martillo de guerra roto|r del suelo para obtener el |T133041:0|t[|cRXP_LOOT_Martillo roto|r]
    .use 215441 >>|cRXP_WARN_Usa el |T133041:0|t[|cRXP_LOOT_Martillo roto|r] para comenzar la misión|r
    .collect 215441,1
    .accept 79939 >>Acepta la misión El martillo roto
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>Mata |cRXP_ENEMY_Invocadores Filo Ardiente|r. Despójalos para obtener una |T133471:0|t[|cRXP_LOOT_Carta rota|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>Viaja a Ventormenta
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katherine la Pura|r
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>Entrega la misión El martillo roto
    .accept 79940 >>Acepta la misión Un hermano perdido
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katherine la Pura|r
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>Entrega la misión Un hermano perdido
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>Viaja al Puerto de Menethil
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >> Habla con |cRXP_FRIENDLY_Harold Riggs|r. Asegúrate de pasar por todos sus diálogos de conversación
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >> |cRXP_WARN_Nada hacia el sur, rodeando todo hasta llegar a Dun Morogh. Tendrás que matar a un élite de nivel 40 en breve. ¡Considera traer a un amigo para esta parte!|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >> Habla con el |cRXP_FRIENDLY_Cruzado Escarlata caído|r dentro del edificio
    >>|cRXP_WARN_Esto invocará a un|r Asesino de la Cruzada Escarlata|cRXP_ENEMY_ élite de nivel 40|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>Mata al |cRXP_ENEMY_Asesino de la Cruzada Escarlata|r. Despójalo para obtener las |T133471:0|t[|cRXP_LOOT_Órdenes del Gran Cruzado|r]
    .use 215468 >>|cRXP_WARN_Usa las |T133471:0|t[|cRXP_LOOT_Órdenes del Gran Cruzado|r] para comenzar la misión|r
    .collect 215468,1,79945,1
    .accept 79945 >>Acepta la misión Órdenes del Gran Cruzado
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>Viaja a Ventormenta
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katherine la Pura|r
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>Entrega la misión Órdenes del Gran Cruzado
    .accept 79946 >>Acepta la misión Un hermano en apuros
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katherine la Pura|r
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_Ahora tienes que entrar al Monasterio Escarlata y completar la Catedral entera|r
    >>Después de matar a |cRXP_ENEMY_Mograine|r y a |cRXP_ENEMY_Melenablanca|r, habla con |cRXP_FRIENDLY_Aeonas|r en la habitación trasera
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Entrega la misión Un hermano en apuros
    .accept 79963 >>Acepta la misión Por la Gracia de la Luz
    .target Aeonas
step
    .train 426178,1
    >>Cura a |cRXP_FRIENDLY_Aeonas|r al máximo de vida
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeonas|r
    .turnin 79963 >>Entrega la misión Por la Gracia de la Luz
    .accept 79970 >>Acepta la misión Aeonas, el Vindicado
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>Viaja a Ventormenta
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeonas, el Vindicado|r
    .turnin 79970 >> Entrega la misión Aeonas, el Vindicado
    .train 426178 >> Aprende |T236263:0|t[Vaina de Luz]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Custodiado por la Luz - 30 (Montañas de Alterac)
#title Custodiado por la Luz

step
    #optional
    .train 416035,1
    +|cRXP_WARN_Debes ser al menos nivel 30 antes de poder adquirir|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Custodio|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >> |cRXP_WARN_Debes aprender|r |T136106:0|t[Intervención divina] |cRXP_WARN_para adquirir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Custodio|r]
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_Compra al menos un|r |T135259:0|t[Símbolo de Divinidad] |cRXP_BUY_a cualquier Vendedor de componentes|r
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_¡Asegúrate de traer a un amigo |cFFFFFFFFSacerdote|r, |cFFF58CBAPaladín|r o |cFFFF7D0ADruida|r para los siguientes pasos! ¡Esta siguiente parte no se puede completar solo, ya que alguien debe resucitarte!|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>Viaja a Montañas de Alterac
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>Haz clic en los |cRXP_PICK_Restos congelados|r del suelo. Despójalos para obtener la |cRXP_LOOT_Runa sagrada inerte|r
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >> |cRXP_WARN_Lanza|r |T136106:0|t[Intervención divina] |cRXP_WARN_sobre el amigo que te ha acompañado|r
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_Haz que tu amigo se quite el "buff" de|r |T136106:0|t[Intervención divina] |cRXP_WARN_y te resucite|r
    >>|cRXP_WARN_Recibirás la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Custodio|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Custodio|r] |cRXP_WARN_para aprender|r |T237537:0|t[Custodiado por la Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Escudo sacro - 30 (Desolace)
#title Escudo sacro

step
    #optional
    .train 416028,1
    +|cRXP_WARN_Debes ser al menos nivel 18 antes de poder adquirir el grabado de|r |T236249:0|t[Escudo sacro] |cRXP_WARN_|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >> |cRXP_WARN_Debes aprender|r |T135968:0|t[Bendición de libertad] |cRXP_WARN_para adquirir el grabado de|r |T236249:0|t[Escudo sacro] |cRXP_WARN_|r
step
    .train 416028,1
    #completewith Deliverance
    +|cRXP_WARN_¡Asegúrate de traer a un amigo para los siguientes pasos! ¡Esta siguiente parte no se puede completar en solitario!|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>Viaja a Desolace
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>Despoja el |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre salvación|r] de la mesa
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >> |cRXP_WARN_Equipa el|r |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre salvación|r]
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >> |cRXP_WARN_Lanza|r |T135968:0|t[Bendición de libertad] |cRXP_WARN_en otro jugador 5 veces mientras su movimiento esté impedido. Ganarás una acumulación de|r |T237556:0|t[Proceso de inspiración] |cRXP_WARN_cada vez que lo hagas|r
    >>|cRXP_WARN_Una vez que tengas 5 acumulaciones de|r |T237556:0|t[Proceso de inspiración]|cRXP_WARN_, recibirás el "buff"|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_Completa esto justo afuera de Maraudon. Los|r |cRXP_ENEMY_Retadores Maraudine|r |cRXP_WARN_de allí lanzan|r |T132149:0|t[Red]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_Usa el|r |T134916:0|t[|cRXP_FRIENDLY_Tratado sobre salvación|r] |cRXP_WARN_para aprender|r |T236249:0|t[Escudo sacro]
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Hammer of Wrath
-- for phase 3

-- Improved Hammer of Wrath


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Purifying Power
-- for phase 3

-- Purifying Power


-- ]])
RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Fanatismo - 44 (Azeroth)

step
    #optional
    .train 426178 >>|cRXP_WARN_Tienes que aprender primero la runa de|r |T236263:0|t[Vaina de Luz] |cRXP_WARN_antes de poder obtener esta|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>Viaja a Ventormenta
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeonas, el Vindicado|r
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>Acepta la misión Buenas noticias
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katherine la Pura|r
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Entrega la misión Buenas noticias
    .accept 81764 >>Acepta la misión El mercader misterioso
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>Viaja a Marjal Revolcafango/Islas Theramore |cRXP_WARN_(p.ej. toma el barco desde el Puerto de Menethil a Theramore)|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elrick|r dentro de la posada
    *|cRXP_WARN_Dos enemigos de nivel 45 te atacarán después de aceptar la misión|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>Entrega la misión El mercader misterioso
    .accept 81765 >>Acepta la misión Elrick, paladín de la Mano de Plata
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elrick|r
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>Mata a |cRXP_ENEMY_Elrick|r. Despójalo para obtener la |T133471:0|t[|cRXP_LOOT_Misiva sangrienta|r]
    >>|cRXP_WARN_Usa la|r |T133471:0|t[|cRXP_LOOT_Misiva sangrienta|r] |cRXP_WARN_para conseguir la misión|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>Acepta la misión La misiva sangrienta
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>Viaja a Ventormenta
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katherine la Pura|r |cRXP_WARN_para aprender|r |T135905:0|t[Fanatismo]
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Entrega la misión La misiva sangrienta
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#name Gracia de Luz - 40 (Feralas)

step
    #optional
    .train 5599 >>|cRXP_WARN_Debes tener|r |T135964:0|t[Bendición de protección] |cRXP_WARN_aprendida para adquirir la runa|r |T135931:0|t[Gracia de Luz] |cRXP_WARN_|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>Usa el teletransportador a Feralas en Bahía del Botín
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>Viaja a Feralas
    .goto Feralas,85.27,43.66,8 >>Usa el |cRXP_PICK_Transportamundos Piñontástico|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>Llega a la plataforma
    .train 429242,1
step
    .train 429242,1
    >>1) |cRXP_WARN_Marca la facción de Gadgetzan como "En guerra" en tu ventana de Reputación|r
    >>2) Ve a la posición exacta del punto de la ruta
    >>3) Mira el arbusto verde al lado de la casa de madera
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4) |cRXP_WARN_Espera a que el|cRXP_ENEMY_ Autómata defensor de la torre|r esté exactamente entre tú y el arbusto, y atácalo|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_Cura a|r |cRXP_FRIENDLY_Frix Xizzix|r |cRXP_WARN_hasta que se ponga de pie|r.
    .gossip 220930,1 >>Después habla con |cRXP_FRIENDLY_Frix Xizzix|r
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina/Bahía del Botín
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rix Xizzix|r y compra la |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Gracia|r] |cRXP_WARN_para aprender|r |T236249:0|t[Escudo sacro]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#name Cólera - 43 (Tierras del Interior)

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_Debes tener|r |T135974:0|t[Captar no-muertos] |cRXP_WARN_aprendido para adquirir la runa de|r |T236260:0|t[Cólera] |cRXP_WARN_|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_Solo puedes conseguir la runa de|r |T236260:0|t[Cólera] |cRXP_WARN_entre 9pm-6am.|r
step
    #completewith next
    .zone The Hinterlands >>Viaja a Tierras del Interior
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_Usa|r |T135974:0|t[Captar no-muertos] |cRXP_WARN_para poder ver al|r |cRXP_ENEMY_Espíritu vengativo|r
    >>Mata al |cRXP_ENEMY_Espíritu vengativo|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Cólera|r]
    *El |cRXP_ENEMY_Espíritu vengativo|r camina alrededor del lago
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Cólera|r] |cRXP_WARN_para aprender|r |T236260:0|t[Cólera]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#name Martillo del honrado - 50 (Azeroth)

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_Tienes que aprender primero la runa de|r |T236253:0|t[Martillo del honrado] |cRXP_WARN_antes de poder obtener esta|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Viaja a Frondavil
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeonas, el Vindicado|r
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gregory|r
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gregory|r
    .accept 81790,1 >>Acepta la misión Materiales de importancia
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>Mata al |cRXP_ENEMY_Avizor infernal|r, |cRXP_ENEMY_Guardaespaldas Infernal|r, |cRXP_ENEMY_Bestia entrópica|r y |cRXP_ENEMY_Horror entrópico|r. Despójalos para obtener |cRXP_LOOT_|T136030:0|tNúcleo infernal ardiente|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title Maraudon
    .zone Desolace >>Viaja a Maraudon
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_Se recomienda formar un grupo de 5 jugadores.|r
    >>Mata a la |cRXP_ENEMY_Princesa Theradras.|r, el jefe final de Maraudon. Despójala para obtener |cRXP_LOOT_|T134389:0|tPolvo de sepultura resplandeciente|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title Profundidades de Roca Negra
    .zone Searing Gorge >>Viaja a Profundidades de Roca Negra
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_Se recomienda formar un grupo de 5 jugadores y necesitarás 3 de oro.|r
    >>Aventúrate por las Profundidades de Roca Negra hasta llegar al Bar Tragapenas. |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Plugger Aropatoso|r y compra |T135262:0|t[Cerveza fundida de triple filtrado]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valiente Petroantorcha|r
    .target Brave Stonetorch
    .accept 81944,1 >>Acepta la misión Un nuevo propósito...
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valiente Petroantorcha|r
    .target Brave Stonetorch
    .accept 81944,1 >>Acepta la misión Un nuevo propósito...
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>Viaja a La Garganta de Fuego
    .train 410013,1
step << Horde
    >>|cRXP_WARN_Se recomienda formar un grupo de 5 jugadores y necesitarás 3 de oro.|r
    >>Aventúrate por las Profundidades de Roca Negra hasta llegar al Bar Tragapenas. |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Plugger Aropatoso|r y compra |T135262:0|t[Cerveza fundida de triple filtrado]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Viaja a Frondavil
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gregory|r
    .turnin 81790 >>Acepta la misión Materiales de importancia
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeonas, el Vindicado|r
    .accept 81885,1 >>Acepta la misión El ritual
    .target Aeonas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gregory|r
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aeonas, el Vindicado|r
    .turnin 81885 >>Entrega la misión El ritual
    .target Aeonas the Vindicated
    .train 410013,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Escudo de rectitud - 60 (Tierras de la Peste del Este)

--There wasn't very precise info for this available, might need confirmation if it works properly

step
    #completewith next
    >>|cRXP_WARN_Desbloquear esta runa requerirá matar a un jefe en Stratholme (no-muertos). Empieza a buscar grupo para ello si lo deseas|r
    .zone Eastern Plaguelands >> Viaja a Tierras de la Peste del Este
step
    .line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
    >>Busca a un |cRXP_ENEMY_Necrófago de mandíbula floja|r. Mátalo y |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orthas|r, un espíritu enano que aparecerá. Acepta su misión
    >>|cRXP_WARN_El|r |cRXP_ENEMY_Necrófago de mandíbula floja|r |cRXP_WARN_patrulla la zona al sur del camino entre la Subgranja y el Cruce de Corin|r
    .accept 84318 >> Acepta la misión ¡Ey!
    .unitscan Slack-Jawed Ghoul
    .target Orthas
step
    .goto Eastern Plaguelands,61.3,69.3 --Not sure if this is the house or the other one, need more info
    >>Entra en la casa en el Cruce de Corin. Despoja el |T133040:0|t[|cRXP_PICK_Martillo de guerra ornamentado|r] |cRXP_WARN_en el segundo piso|r
    .complete 84318,1
step
    .goto Eastern Plaguelands,61.3,69.3
    >>Usa el |T134566:0|t[Diente de oro favorito de Lorthas] para invocar a |cRXP_FRIENDLY_Orthas|r de nuevo. Habla con él, entrega la misión y acepta la siguiente
    .turnin 84318 >> Entrega la misión ¡Ey!
    .accept 84319 >> Acepta la misión ¡Una cosa más!
    .use 227687
step
    .goto Eastern Plaguelands,59.7,68.7
    >>Mata a cualquier |cRXP_ENEMY_Horror cosido|r y despójalo para obtener la |T133823:0|t[|cRXP_LOOT_Armadura de placas parcialmente digerida|r]
    .complete 84319,1
    .mob Stitched Horror
step
    >>Usa el |T134566:0|t[Diente de oro favorito de Lorthas] para invocar a |cRXP_FRIENDLY_Orthas|r de nuevo. Habla con él, entrega la misión y acepta la siguiente
    .turnin 84319 >> Entrega la misión ¡Una cosa más!
    .accept 84330 >> Acepta la misión Un poquito de nigromancia
step
    >>Encuentra un grupo para Stratholme (no-muertos)
    >>Mata a Maleki el Pálido|cRXP_ENEMY_, uno de los jefes en el lado los no-muertos de la mazmorra, y despójalo para obtener |T134415:0|t[Piedra rúnica necrótica|r]
    .complete 84330,1 --Necrotic Runestone
    .mob Maleki the Pallid
step
    .goto Eastern Plaguelands,22.7,86.1
    >>Regresa a la Subgranja, busca el |cRXP_FRIENDLY_Cadáver de enano en descomposición|r. Interactúa con él para entregar la misión
    .turnin 84330 >> Entrega la misión Un poquito de nigromancia
step
    >>Acepta la misión siguiente del cadáver. Es una entrega instantánea que te enseñará cómo grabar |T236265:0|t[|cRXP_FRIENDLY_Escudo de Rectitud|r]
    .goto Eastern Plaguelands,22.7,86.1
    .accept 84332 >> Acepta la misión La gratitud de un señor feudal
    .turnin 84332 >> Entrega la misión La gratitud de un señor feudal

]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Venganza recta - 55 (Tierras de la Peste del Oeste)
#title Venganza recta
#next Choque y terror - 55 (Tierras de la Peste del Oeste y del Este)

step
    #completewith next
    .zone Western Plaguelands >> Dirígete a Tierras de la Peste del Oeste
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Caballero caído|r
    .gossip 227519,1 >> Lee su diálogo
    .target Fallen Knight
--Not entirely sure if you even need to talk to him or if you do how deep the dialogue is
step
    .goto Western Plaguelands,47.5,50.4
    >>Entra en el granero junto al |cRXP_FRIENDLY_Caballero caído|r y |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Cuthbert|r
    .accept 83808 >> Acepta la misión En aprietos
    .target Squire Cuthbert
step
    .goto Western Plaguelands,47.5,50.4
    .goto Western Plaguelands,45.7,53.9
    >>Despoja la [|cRXP_PICK_Espada del escudero Cuthbert|r] tirada en el campo cercano
    .complete 83808,1
step
    >>Vuelve al granero y |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Cuthbert|r
    .turnin 83808 >> Entrega la misión En aprietos
    .accept 83935 >> Acepta la misión Despejar el camino
    .target Squire Cuthbert
step
    .goto Western Plaguelands,45.7,53.9
    >>Mata |cRXP_ENEMY_Zombis contagiados|r, |cRXP_ENEMY_Terrores esqueléticos|r y |cRXP_ENEMY_Cadáveres en podredumbre|r
    .complete 83935,1 --Blighted Zombie(5)
    .complete 83935,2 --Skeletal Terror(10)
    .complete 83935,3 --Rotting Cadaver(10)
    .mob Blighted Zombie
    .mob Skeletal Terror
    .mob Rotting Cadaver
step
    .goto Western Plaguelands,47.5,50.4
    >>Vuelve al granero y |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Cuthbert|r
    .turnin 83935 >> Entrega la misión Despejar el camino
    .accept 83822,1 >> Acepta la misión El caballero caído
    >>|cRXP_WARN_esta es una misión de escolta|r
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>Escolta al |cRXP_FRIENDLY_Escudero Cuthbert|r de regreso al Caballero caído y ayúdalo a quemar el cadáver
    .complete 83822,1
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Cuthbert|r
    .turnin 83822 >> Entrega la misión El caballero caído
    .accept 83936 >> Acepta la misión La misión de Dalton
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Cuthbert|r y lee su diálogo
    .complete 83936,1
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Escudero Cuthbert|r y pasa su diálogo. Al entregar esta misión aprenderás a grabar |T236260:0|t[|cRXP_FRIENDLY_Venganza recta|r]
    >>Recibirás también el |T237377:0|t[|cFF0070FFCuerno de Dalton|r] que necesitarás para desbloquear la runa de |T252188:0|t[|cRXP_FRIENDLY_Choque y terror|r]
    .turnin 83936 >> Entrega la misión La misión de Dalton
    .target Squire Cuthbert
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#name Choque y terror - 60 (Tierras de la Peste del Oeste y del Este)
#title Choque y terror y Cólera vengativa

step
    #completewith next
    +|cRXP_WARN_Para poder comenzar la misión de esta runa, deberás haber desbloqueado la runa de|r |T236260:0|t[|cRXP_FRIENDLY_Venganza recta|r]. |cRXP_WARN_Ve a la guía de Venganza recta para comenzar|r
    .train 440792,1 --Righteous Vengeance
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Usa el|r |T237377:0|t[|cFF0070FFCuerno de Dalton|r] |cRXP_WARN_para invocar al|r |cRXP_FRIENDLY_Escudero Cuthbert|r |cRXP_WARN_y mata enemigos hasta que suba de nivel. Una vez que lo haga, te dará una misión que entregarás|r
    .accept 83823 >> Acepta la misión Una lección sobre violencia
    .turnin 83823 >> Entrega la misión Una lección sobre violencia
    .use 226122
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Usa el|r |T237377:0|t[|cFF0070FFCuerno de Dalton|r] |cRXP_WARN_para invocar al|r |cRXP_FRIENDLY_Escudero Cuthbert|r |cRXP_WARN_y sigue matando enemigos hasta que suba de nivel de nuevo. Una vez que lo haga, te dará otra misión que entregarás, así como una misión para encontrar a un exánime llamado|r |cRXP_ENEMY_Arkonos el Maldito|r
    .accept 84008 >> Acepta la misión Una lección de gracia
    .turnin 84008 >> Entrega la misión Una lección de gracia
    .accept 84017 >> Acepta la misión Hora de matar
    .use 226523
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Dirígete al Claro Ponzoñoso, un área justo al norte de la Capilla de la Esperanza de la Luz. Una vez que llegues allí, invoca a tu escudero de nuevo. La misión para encontrar a Arkonos debería completarse y recibirás otra misión, acéptala|r
    .turnin 84017 >> Entrega la misión Hora de matar
    .accept 84125 >> Acepta la misión Tan cerca que se puede tocar
    .use 226545
step
    .goto Eastern Plaguelands,83.7,41.9
    >>Mata |cRXP_ENEMY_Magos oscuros|r y |cRXP_ENEMY_Tejedores aterradores|r en el Claro Ponzoñoso. Despójalos para obtener |T135482:0|t[|cRXP_LOOT_Escalpelo sombrío de plaga|r]
    .complete 84125,1
    .mob Shadowmage
    .mob Dread Weaver
step
    >>Usa el |T237377:0|t[|cFF0070FFCuerno de Dalton|r] para invocar al |cRXP_FRIENDLY_Escudero Cuthbert|r si lo has perdido. Habla con él
    .turnin 84125 >> Entrega la misión Tan cerca que se puede tocar
    .accept 84126 >> Acepta la misión Termina la pelea
    .use 226122
    .target Squire Cuthbert
step
    .goto Eastern Plaguelands,86.6,39.8
    >>Usa el |T237490:0|t[|cRXP_LOOT_Escalpelo sombrío modificado|r] que obtuviste para disipar el escudo de |cRXP_ENEMY_Arkonos|r. Mátalo para completar la misión
    .complete 84126,1 --Arkonos the cursed slain
    .use 227685
step
    >>Usa el |T237377:0|t[|cFF0070FFCuerno de Dalton|r] para invocar al |cRXP_FRIENDLY_Escudero Cuthbert|r si lo has perdido. Habla con él
    >>Entregar esta misión te enseñará a grabar |T252188:0|t[Choque y terror] y también te otorgará el |T133745:0|t[|cRXP_FRIENDLY_Testamento de Cólera vengativa|r] que te enseñará |T135875:0|t[Cólera vengativa]
    .turnin 84126 >> Entrega la misión Termina la pelea
    .use 226122
    .target Squire Cuthbert
step
    .train 407788 >> Usa el |T133745:0|t[|cRXP_FRIENDLY_Testamento de Cólera vengativa|r] para aprender |T135875:0|t[Cólera vengativa]
    .use 226399
]])
