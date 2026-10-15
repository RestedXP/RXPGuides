if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Explosión de arrabio - 8 (Mulgore)
#title Explosión de arrabio
#next Latigazo de lava - 10 (Mulgore)


step
    +|cRXP_WARN_Deberías ser al menos de nivel 8 para obtener|r |T133816:0|t[Grabar guantes - Explosión de arrabio] |cRXP_WARN_en Mulgore en solitario|r
    >>|cRXP_WARN_DEBES ser al menos nivel 3 para equipar el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Explosión de arrabio]
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_Deberías ser al menos de nivel 8 para obtener|r |T133816:0|t[Grabar guantes - Explosión de arrabio] |cRXP_WARN_en Mulgore en solitario|r
    .train 425344,1
    .xp <3,1
    .xp >8,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Mata |cRXP_ENEMY_Cavadores de Bael'dun|r y |cRXP_ENEMY_Tasadores de Bael'dun|r. Despójalos para obtener la |cRXP_LOOT_Llave del depósito de artefactos|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Tasadores de Bael'duns|r lanzan|r |T135929:0|t[Sanación inferior] |cRXP_WARN_(Lanzamiento a distancia: Sanan a sí mismos o a una criatura cercana por debajo de 50% de salud por aproximadamente 75 de salud)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>Abre el |cRXP_PICK_Depósito de Artefactos|r. Despójalo para obtener el |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >> Viaja a Los Baldíos
    .train 425344,1
    .xp <13,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <13,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes: Explosión de arrabio]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Explosión de arrabio - 10 (Durotar)
#title Explosión de arrabio
#next Tradición de tierra - 12 (Los Baldíos)


    --Rune of Molten Blast
step
    +|cRXP_WARN_DEBES ser al menos de nivel 10 para adquirir|r |T133816:0|t[Grabar guantes - Explosión de arrabio] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135813:0|t[Choque de llamas]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133816:0|t[Grabar guantes - Explosión de arrabio]
    >>|cRXP_WARN_Alternativamente, puedes obtener|r |T133816:0|t[Grabar guantes - Explosión de arrabio] |cRXP_WARN_en Mulgore a partir del nivel 3+|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >> Viaja a Durotar
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>Viaja hacia |cRXP_FRIENDLY_Swart|r en el interior
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .target Swart
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>Viaja hacia el |cRXP_ENEMY_Makrura congelado|r
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Busca a otros Chamanes, Brujos, o Magos cerca del |cRXP_ENEMY_Makrura congelado|r o en el canal General (escribe /1 en el chat)|r
    >>|cRXP_WARN_Lanza|r |T135813:0|t[Choque de llamas] |cRXP_WARN_en el |cRXP_ENEMY_Makrura congelado|r para aplicar una acumulación de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 acumulaciones a la vez para matar al |cRXP_ENEMY_Makrura congelado|r. Despójalo para obtener el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    >>|cRXP_WARN_Alternativamente, puedes conseguir|r |T133816:0|t[Grabar guantes - Explosión de arrabio] |cRXP_WARN_en Mulgore en solitario|r
    >>|cRXP_WARN_NOTA:|r |T135813:0|t[Arma Lengua de Fuego] |cRXP_WARN_NO aplica ninguna acumulación de|r |T135805:0|t[Aplicando calor] |r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Busca a otros Chamanes, Brujos, o Magos cerca del |cRXP_ENEMY_Makrura congelado|r o en el canal General (escribe /1 en el chat)|r
    >>|cRXP_WARN_Lanza|r |T135813:0|t[Choque de llamas] |cRXP_WARN_en el |cRXP_ENEMY_Makrura congelado|r para aplicar una acumulación de|r |T135805:0|t[Aplicando calor]|cRXP_WARN_. Aplica 5 acumulaciones a la vez para matar al |cRXP_ENEMY_Makrura congelado|r. Despójalo para obtener el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    >>|cRXP_WARN_Alternativamente, puedes conseguir|r |T133816:0|t[Grabar guantes - Explosión de arrabio] |cRXP_WARN_en Mulgore en solitario|r
    >>|cRXP_WARN_NOTA:|r |T135813:0|t[Arma Lengua de Fuego] |cRXP_WARN_y|r |T135824:0|t[Tótem Nova de Fuego] |cRXP_WARN_NO aplican ninguna acumulación de|r |T135805:0|t[Aplicando calor] |r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Viaja a Los Baldíos
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes: Explosión de arrabio]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Latigazo de lava - 10 (Mulgore)
#title Latigazo de lava
#next Guía ancestral - 10 (Mulgore)


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_Deberías ser al menos de nivel 10 para adquirir|r |T133816:0|t[Grabar guantes - Latigazo de lava] |cRXP_WARN_y|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_en Mulgore en solitario|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 4, ya que es el requisito de nivel para iniciar la cadena de misiones|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar adquirir|r |T133816:0|t[Grabar guantes - Latigazo de lava] |cRXP_WARN_y|r |T132147:0|t[Doble empuñadura]
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_Deberías ser al menos de nivel 10 para adquirir|r |T133816:0|t[Grabar guantes - Latigazo de lava] |cRXP_WARN_y|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_en Mulgore en solitario|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar adquirir|r |T133816:0|t[Grabar guantes - Latigazo de lava] |cRXP_WARN_y|r |T132147:0|t[Doble empuñadura]
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >> Viaja a Cima del Trueno
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .accept 76156 >>Acepta la misión Acechanzas con la Madre Tierra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>Entra en la Mina Ventura y Cía.
    >>|cRXP_WARN_NOTA: el|r |T132288:0|t[Disfraz de Ventura y Cía.] |cRXP_WARN_NO funciona|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abre los |cRXP_PICK_Suministros explosivos|r dentro de la mina y fuera en el otro lado. Despójalos para obtener las |cRXP_LOOT_Cargas mineras de seforio|r
    >>|cRXP_WARN_Permanece en los niveles superiores de la cueva si es posible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>Sal de la Mina Ventura y Cía. por el otro lado
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>Viaja hacia los |cRXP_FRIENDLY_Restos de un aventurero|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Si no tienes|r |T134596:0|t[Grabar pantalones - Guía ancestral]|cRXP_WARN_, ahora es un buen momento para hacerlo|r
    >>|cRXP_WARN_Si no quieres conseguir esta Runa, omite este paso|r
    >>|cRXP_WARN_Únete a un grupo con otro Chamán, Sacerdote o Druida que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Chamán, Sacerdote o Druida en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Guía ancestral]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >> Viaja a Cima del Trueno
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 76156 >>Entrega la misión Acechanzas con la Madre Tierra
    .accept 76160 >>Acepta la misión Acechanzas con la Madre Tierra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>Toma el elevador del norte hasta Mulgore
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>Despoja los |cRXP_LOOT_Conos de viento furioso|r del suelo
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>Usa el |T133748:0|t[Mortero y majadero] para crear |T133213:0|t[Bálsamo de pino]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 76160 >>Entrega la misión Acechanzas con la Madre Tierra
    .accept 76240 >>Acepta la misión Acechanzas con la Madre Tierra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    >>|cRXP_BUY_Compra un|r |T133894:0|t[Pececito luminoso crudo] |cRXP_BUY_en la Casa de Subastas|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Viaja hacia |cRXP_FRIENDLY_Seua Correbruma|r
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kah Correbruma|r
    .train 7734 >>Aprende |T136245:0|t[Pesca]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seua Correbruma|r
    >>|cRXP_BUY_Compra una|r |T132932:0|t[Caña de pescar] |cRXP_BUY_y|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_a esta vendedora|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Equipa la|r |T132932:0|t[Caña de pescar]
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Pon el|r |T134335:0|t[Adorno lustroso] |cRXP_WARN_a tu|r |T132932:0|t[Caña de pescar]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesca en el estanque hasta que obtengas un |T133894:0|t[|cRXP_LOOT_Pececito luminoso crudo|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>Usa el |T132147:0|t[Conjunto de cuchillos] para crear |T134007:0|t[Trozos de pescado]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 76240 >>Entrega la misión Acechanzas con la Madre Tierra
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Escudo de agua - 20 (Los Baldíos)
#title Escudo de agua
#next Lobo fantasmal superior - 25 (Sierra Espolón)


step
    +|cRXP_WARN_Debes ser al menos nivel 20 para adquirir|r |T133816:0|t[Grabar guantes - Escudo de agua] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135849:0|t[Choque de Escarcha]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar adquirir|r |T133816:0|t[Grabar guantes - Escudo de agua]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Viaja a Orgrimmar o Cima del Trueno
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Viaja a Orgrimmar o Cima del Trueno
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Viaja hacia |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Wabang|r
    >>|cRXP_BUY_Compra una|r |T134237:0|t[Llave del botín de Kolkar] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Esto te ahorrará unos minutos más adelante|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Viaja hacia |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    >>|cRXP_BUY_Compra una|r |T134237:0|t[Llave del botín de Kolkar] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Esto te ahorrará unos minutos más adelante|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Mata |cRXP_ENEMY_Retadores Kolkar|r y |cRXP_ENEMY_Agitadoras Kolkar|r. Despójalos para obtener una |T134237:0|t[Llave del botín de Kolkar]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>Abre el |cRXP_PICK_Botín de Kolkar|r en el suelo. Despójalo para obtener el |T135832:0|t|cRXP_LOOT_[Ícono de tempestad]|r
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Equipa el|r |T135832:0|t|cRXP_LOOT_[Ícono de tempestad]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Mata enemigos habiéndoles infligido daño con un hechizo de Naturaleza (|r|T136026:0|t[Choque de tierra]|cRXP_WARN_), un hechizo de Escarcha (|r|T135849:0|t[Choque de Escarcha]|cRXP_WARN_), y un hechizo de Fuego (|r|T135813:0|t[Choque de llamas]|cRXP_WARN_) al menos una vez. Hazlo 10 veces para obtener el "buff"|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .train 410097,1
    .xp <22,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Mata enemigos habiéndoles infligido daño con un hechizo de Naturaleza (|r|T136026:0|t[Choque de tierra]|cRXP_WARN_), un hechizo de Escarcha (|r|T135849:0|t[Choque de Escarcha]|cRXP_WARN_), y un hechizo de Fuego (|r|T135813:0|t[Choque de llamas]|cRXP_WARN_) al menos una vez. Hazlo 10 veces para obtener el "buff"|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T135832:0|t|cRXP_LOOT_[Ícono de tempestad]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Escudo de agua]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Escudo de agua - 20 (Bosque de Argénteos)
#title Escudo de agua
#next Lobo fantasmal superior - 25 (Sierra Espolón)

step
    +|cRXP_WARN_Debes ser al menos nivel 20 para adquirir|r |T133816:0|t[Grabar guantes - Escudo de agua] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T135849:0|t[Choque de Escarcha]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar adquirir|r |T133816:0|t[Grabar guantes - Escudo de agua]
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>Viaja a Orgrimmar o Cima del Trueno
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>Viaja a Orgrimmar o Cima del Trueno
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Viaja hacia |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>Viaja hacia |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 8050 >> Aprende |T135813:0|t[Choque de llamas]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 8056 >> Aprende |T135849:0|t[Choque de Escarcha]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>Viaja al Bosque de Argénteos
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>Entra en la Mina de Elem
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>Viaja hacia |cRXP_ENEMY_Grimson el Pálido|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>Mata a |cRXP_ENEMY_Grimson el Pálido|r dentro. Despójalo para obtener el |T135832:0|t|cRXP_LOOT_[Ícono de tempestad]|r
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >> |cRXP_WARN_Equipa el|r |T135832:0|t|cRXP_LOOT_[Ícono de tempestad]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_Mata enemigos habiéndoles infligido daño con un hechizo de Naturaleza (|r|T136026:0|t[Choque de tierra]|cRXP_WARN_), un hechizo de Escarcha (|r|T135849:0|t[Choque de Escarcha]|cRXP_WARN_), y un hechizo de Fuego (|r|T135813:0|t[Choque de llamas]|cRXP_WARN_) al menos una vez. Hazlo 10 veces para obtener el "buff"|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T135832:0|t|cRXP_LOOT_[Ícono de tempestad]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Escudo de agua]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_Si todavía no tienes|r |T133816:0|t[Grabar guantes - Ráfaga de lava] |cRXP_WARN_, vale la pena hacerlo ahora. Si no quieres, omite este paso|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas
    .train 410095,1
    .xp <25,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Mata |cRXP_ENEMY_Chamanes Morrobarro|r. Despójalos para obtener el |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >> |cRXP_WARN_Equipa el|r |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >> Viaja a Orgrimmar
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entra en Sima Ígnea dentro del Circo de las Sombras
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Mantente pegado al lado derecho de la pared. Después de bajar la rampa (justo después del 5º enemigo), camina hacia la piscina de lava poco profunda a tu derecha|r
    >>|cRXP_WARN_El Daño recibido de|r |T135805:0|t[Lava] |cRXP_WARN_se reduce a 91 mientras el|r |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r |cRXP_WARN_esté equipado|r
    .aura 408828 >>Recibe daño de |cRXP_WARN_ |T135805:0|t[Lava] |cRXP_WARN_5 veces|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_Sal de la|r |T135805:0|t[Lava]
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Ráfaga de lava]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Ráfaga de lava - 25 (Laderas de Trabalomas)
#title Ráfaga de lava
#next Escudo de tierra - 25 (Azeroth)


step
    +|cRXP_WARN_Deberías ser al menos de nivel 25 para obtener|r |T133816:0|t[Grabar guantes - Ráfaga de lava] |cRXP_WARN_en Laderas de Trabalomas en solitario|r
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas
    .train 410095,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>Mata |cRXP_ENEMY_Chamanes Morrobarro|r. Despójalos para obtener el |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >> |cRXP_WARN_Equipa el|r |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >> Viaja a Orgrimmar
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entra en Sima Ígnea dentro del Circo de las Sombras
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Mantente pegado al lado derecho de la pared. Después de bajar la rampa (justo después del 5º enemigo), camina hacia la piscina de lava poco profunda a tu derecha|r
    >>|cRXP_WARN_El Daño recibido de|r |T135805:0|t[Lava] |cRXP_WARN_se reduce a 91 mientras el|r |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r |cRXP_WARN_esté equipado|r
    .aura 408828 >>Recibe daño de |cRXP_WARN_ |T135805:0|t[Lava] |cRXP_WARN_5 veces|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_Sal de la|r |T135805:0|t[Lava]
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134920:0|t|cRXP_LOOT_[Ícono kajárico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Ráfaga de lava]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Sobrecarga - 3 (Durotar)
#title Sobrecarga
#next Maestría con escudos - 6 (Durotar)

    --Rune of Overload
step
    +|cRXP_WARN_DEBES ser al menos de nivel 3 para obtener|r |T133815:0|t[Grabar pechera - Sobrecarga] |cRXP_WARN_ya que es el requisito de nivel para equipar el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Sobrecarga]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >> Viaja a Durotar
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .accept 77587 >>Acepta la misión Iconos de poder << Troll Shaman
    .accept 77585 >>Acepta la misión Iconos de poder << Orc Shaman
    .target Shikrik
    .train 410094,1
    .xp <3,1
step
    #label IconS
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Mata |cRXP_ENEMY_Escórpidos obrero|r. Despójalos para obtener el |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>|cRXP_WARN_Deja que los |cRXP_ENEMY_Escórpidos obreros|r lancen|r |T136016:0|t[Veneno débil] |cRXP_WARN_sobre ti, luego recibe daño de éste 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    .mob Scorpid Worker
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Sobrecarga]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 77587 >>Entrega la misión Iconos de poder << Troll Shaman
    .turnin 77585 >>Entrega la misión Iconos de poder << Orc Shaman
    .target Shikrik
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Sobrecarga - 3 (Mulgore)
#title Sobrecarga
#next Maestría con escudos - 6 (Mulgore)


    --Rune of Overload
step
    +|cRXP_WARN_DEBES ser al menos de nivel 3 para obtener|r |T133815:0|t[Grabar pechera - Sobrecarga] |cRXP_WARN_ya que es el requisito de nivel para equipar el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Sobrecarga]
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >> Viaja a Mulgore
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .accept 77652 >>Acepta la misión Iconos de poder
    .target Meela Dawnstrider
    .xp <3,1
step
    #label IconS
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    >>Mata |cRXP_ENEMY_Chamanes Erizapúas|r. Despójalos para obtener el |T134918:0|t[|cRXP_FRIENDLY_Ícono diádico|r]
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>|cRXP_WARN_Deja que los |cRXP_ENEMY_Chamanes Erizapúas|r te lancen|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_y recibe daño así 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    .mob Bristleback Shaman
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Sobrecarga]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Entrega la misión Iconos de poder
    .target Meela Dawnstrider
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Maestría con escudos - 6 (Durotar)
#title Maestría con escudos
#next Explosión de arrabio - 10 (Durotar)

step
    +|cRXP_WARN_Debes ser al menos de nivel 6 para adquirir|r |T133815:0|t[Grabar pechera - Maestría con escudos] |cRXP_WARN_en Durotar en solitario|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 3, ya que es el requisito de nivel para equipar el|r |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Maestría con escudos]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Debes ser al menos de nivel 6 para adquirir|r |T133815:0|t[Grabar pechera - Maestría con escudos] |cRXP_WARN_en Durotar en solitario|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >> Viaja a Durotar
    .train 410098,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,52.06,62.49,0
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,57.03,46.66,0
    .goto Durotar,52.06,62.49,50,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,57.03,46.66,50,0
    .goto Durotar,59.00,58.00
    >>Haz clic en el Tótem |cRXP_PICK_Ícono galvánico|r . Despójalo para obtener el |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r
    >>|cRXP_WARN_El |cRXP_PICK_Ícono galvánico|r tiene al menos 15 puntos de aparición, con al menos 2 activos al mismo tiempo. Desaparece <2 minutos después de ser despojado|r
    >>|cRXP_WARN_Si te encuentras a menos de 1000 yardas, emite el sonido de|r |T136051:0|t[Escudo de relámpagos] |cRXP_WARN_cada 5 minutos, y si estás a menos de 300 yardas y mirando hacia él, también caerá un rayo en su ubicación|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >> Viaja a Los Baldíos
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Maestría con escudos]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Maestría con escudos - 6 (Mulgore)
#title Maestría con escudos
#next Explosión de arrabio - 8 (Mulgore)


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_Debes ser al menos de nivel 6 para adquirir|r |T133815:0|t[Grabar pechera - Maestría con escudos] |cRXP_WARN_en Mulgore en solitario|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 3, ya que es el requisito de nivel para equipar el|r |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T133815:0|t[Grabar pechera - Maestría con escudos]
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_Debes ser al menos de nivel 6 para adquirir|r |T133815:0|t[Grabar pechera - Maestría con escudos] |cRXP_WARN_en Mulgore en solitario|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >> Viaja a Mulgore
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.45,52.55,0
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,56.24,22.06,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,36.33,9.79,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.45,52.55,20,0
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,56.24,22.06,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,36.33,9.79,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>Haz clic en el Tótem |cRXP_PICK_Ícono galvánico|r . Despójalo para obtener el |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r
    >>|cRXP_WARN_El |cRXP_PICK_Ícono galvánico|r tiene al menos 15 puntos de aparición, con al menos 2 activos al mismo tiempo. Desaparece <2 minutos después de ser despojado|r
    >>|cRXP_WARN_Si te encuentras a menos de 1000 yardas, emite el sonido de|r |T136051:0|t[Escudo de relámpagos] |cRXP_WARN_cada 5 minutos, y si estás a menos de 300 yardas y mirando hacia él, también caerá un rayo en su ubicación|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,54.24,66.98,30,0
    .goto Mulgore,54.12,65.67,30,0
    .goto Mulgore,53.40,65.49,30,0
    .goto Mulgore,53.19,66.51,30,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Hireling
    .mob Venture Co. Laborer
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #loop
    .goto Mulgore,59.86,48.74,30,0
    .goto Mulgore,60.85,49.04,30,0
    .goto Mulgore,61.83,48.28,30,0
    .goto Mulgore,61.40,47.23,30,0
    .goto Mulgore,62.02,45.84,30,0
    .goto Mulgore,62.85,45.30,30,0
    .goto Mulgore,64.87,43.32,30,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >> Viaja a Los Baldíos
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <14,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_Ataca a los enemigos hasta dejarlos con poca salud, luego lánzales|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_para matarlos. Haz esto 10 veces para obtener el "buff" de|r |T136116:0|t[Inspirado] |cRXP_WARN_|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono galvánico]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Maestría con escudos]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Guía ancestral - 6 (Durotar)
#title Guía ancestral
#next Explosión de arrabio - 10 (Durotar)

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_Debes ser al menos de nivel 6 para adquirir|r |T134596:0|t[Grabar pantalones - Guía ancestral] |cRXP_WARN_en Durotar con otro jugador|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 3 ya que es el requisito de nivel para usar el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Debes ser al menos de nivel 6 para adquirir|r |T134596:0|t[Grabar pantalones - Guía ancestral] |cRXP_WARN_en Durotar con otro jugador|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >> Viaja a Durotar
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>Viaja hacia los |cRXP_FRIENDLY_Restos de un aventurero|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_Únete a un grupo con otro Chamán, Sacerdote o Druida que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Chamán, Sacerdote o Druida en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Guía ancestral]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Guía ancestral - 10 (Mulgore)
#title Guía ancestral
#next Tradición de tierra - 12 (Los Baldíos)


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_Deberías ser al menos de nivel 10 para obtener|r |T134596:0|t[Grabar pantalones - Guía ancestral] |cRXP_WARN_en Mulgore con otro jugador|r
    >>|cRXP_WARN_DEBES ser al menos de nivel 3 ya que es el requisito de nivel para usar el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_Deberías ser al menos de nivel 10 para obtener|r |T134596:0|t[Grabar pantalones - Guía ancestral] |cRXP_WARN_en Mulgore con otro jugador|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >> Viaja a Mulgore
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>Entra en la Mina Ventura y Cía.
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave1
    #label Cave2
    .goto Mulgore,62.52,45.37,25,0
    .goto Mulgore,62.56,44.48,25,0
    .goto Mulgore,61.50,42.54,25,0
    .goto Mulgore,61.66,41.45,25,0
    .goto Mulgore,63.08,39.33,25,0
    .goto Mulgore,62.69,38.01,25,0
    .goto Mulgore,60.05,35.82,20 >>Sal de la Mina Ventura y Cía. por el otro lado
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>Viaja hacia los |cRXP_FRIENDLY_Restos de un aventurero|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_Únete a un grupo con otro Chamán, Sacerdote o Druida que esté cerca de los |cRXP_FRIENDLY_Restos de un aventurero|r, o busca ayuda de un Chamán, Sacerdote o Druida en el chat General (Escribe /1 en el chat)|r
    >>|cRXP_WARN_Habla con los |cRXP_FRIENDLY_Restos de un aventurero|r del suelo para comenzar el ritual, O haz clic en el|r |T136223:0|t[Ritual de espíritu] |cRXP_WARN_de otro jugador (mientras estés en su grupo)|r
    >>|cRXP_WARN_Un |cRXP_FRIENDLY_Espíritu de aventurero|r aparecerá y morirá después de completar el ritual. Despójalo para obtener el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_Usa el|r |T237571:0|t|cRXP_LOOT_[Eco de los ancestros]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Guía ancestral]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Tradición de tierra - 12 (Los Baldíos)
#title Tradición de tierra
#next Escudo de agua - 20 (Los Baldíos)



step
    +|cRXP_WARN_Debes ser al menos de nivel 12 para obtener|r |T134596:0|t[Grabar pantalones - Tradición de la tierra] |cRXP_WARN_ya que es el requisito de nivel para aprender|r |T136075:0|t[Purgar]
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T134596:0|t[Grabar pantalones - Tradición de la tierra]
    >>|cRXP_WARN_Alternativamente, puedes conseguir|r |T134596:0|t[Grabar pantalones - Tradición de la tierra] |cRXP_WARN_en Bosque de Argénteos a partir del nivel 1+|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>Viaja a Orgrimmar o Cima del Trueno
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>Viaja hacia |cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 370 >> Aprende |T136075:0|t[Purgar]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>Viaja hacia |cRXP_FRIENDLY_Siln|r
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Siln|r
    .train 370 >> Aprende |T136075:0|t[Purgar]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
    .train 410107,1
    .xp <12,1
step
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>Lanza |T136075:0|t[Purgar] en el |cRXP_ENEMY_Espejismo desértico|r para matarlo. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa terránea]|r
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa terránea]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Tradición de la tierra]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Tradición de tierra - 14 (Bosque de Argénteos)
#title Tradición de tierra
#next Escudo de agua - 20 (Bosque de Argénteos)

step
    +|cRXP_WARN_Deberías ser al menos de nivel 14 para obtener|r |T134596:0|t[Grabar pantalones - Tradición de la tierra] |cRXP_WARN_en Bosque de Argénteos en solitario|r
    >>|cRXP_WARN_Necesitas subir más de nivel antes de intentar obtener|r |T134596:0|t[Grabar pantalones - Tradición de la tierra]
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>Viaja a Bosque de Argénteos
    .train 410107,1
step
    #loop
    .goto Silverpine Forest,45.68,22.63,30,0
    .goto Silverpine Forest,45.09,23.63,30,0
    .goto Silverpine Forest,44.16,22.47,30,0
    .goto Silverpine Forest,44.05,21.66,30,0
    .goto Silverpine Forest,45.05,20.75,30,0
    .goto Silverpine Forest,45.07,19.79,30,0
    .goto Silverpine Forest,45.59,19.29,30,0
    .goto Silverpine Forest,46.18,19.74,30,0
    .goto Silverpine Forest,46.62,20.44,30,0
    .goto Silverpine Forest,46.07,21.92,30,0
    >>Mata |cRXP_ENEMY_Místicos Putrepellejo|r. Despójalos para obtener el |T136008:0|t|cRXP_LOOT_[Tótem de podredumbre]|r
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >> |cRXP_WARN_Usa el|r |T136008:0|t|cRXP_LOOT_[Tótem de podredumbre]|r |cRXP_WARN_para invocar al |cRXP_ENEMY_Elemental descompuesto|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >> |cRXP_WARN_Usa el|r |T136008:0|t|cRXP_LOOT_[Tótem de podredumbre]|r |cRXP_WARN_para invocar al |cRXP_ENEMY_Elemental descompuesto|r
    >>|cRXP_WARN_Ten cuidado, ya que lanza|r |T135848:0|t[Nova de Escarcha] |cRXP_WARN_(Instantáneo a distancia: Causa aproximadamente 50 de daño y enraíza durante 8 segundos) y es de nivel 15|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>Mata al |cRXP_ENEMY_Elemental descompuesto|r. Despójalo para obtener la |T134419:0|t|cRXP_LOOT_[Runa terránea]|r
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa terránea]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Tradición de la tierra]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Lobo fantasmal superior - 25 (Sierra Espolón)
#title Lobo fantasmal superior
#next Especialización en doble empuñadura - 25 (Trinquete)


step
    +|cRXP_WARN_Deberías ser al menos de nivel 25 para obtener|r |T134596:0|t[Grabar pantalones - Lobo fantasmal superior] |cRXP_WARN_en Sierra Espolón en solitario|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>Viaja a Sierra Espolón
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,0
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>Mata a la |cRXP_ENEMY_Anomalía primordial|r. Despójala para obtener la |T134419:0|t|cRXP_LOOT_[Runa de Furia primordial]|r
    >>|cRXP_WARN_Asegúrate de comprobar su forma (perjuicios). Si está en|r |T136074:0|t[Forma de naturaleza]|cRXP_WARN_, inflige|r |T135824:0|t[Daño de Fuego]|cRXP_WARN_. Si está en|r |T135819:0|t[Forma de Fuego]|cRXP_WARN_, inflige|r |T135865:0|t[Daño de Escarcha]|cRXP_WARN_. Si está en|r |T135861:0|t[Forma acuática]|cRXP_WARN_, inflige|r |T136085:0|t[Daño de Naturaleza]
    >>Ten cuidado, lanza|cRXP_WARN_ |T132939:0|t[Empujar] |cRXP_WARN_(Instantáneo cuerpo a cuerpo: Lanza al objetivo por los aires e inflige 80 de daño)|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición de 5-8 minutos y suelta un objeto verde aleatorio cada vez que se liga al equiparse (BoE)|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Furia primordial]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Lobo fantasmal superior]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Escudo de tierra - 25 (Azeroth)
#title Escudo de tierra
#next Sobrecarga - 3 (Durotar) << Orc Shaman/Troll Shaman
#next Sobrecarga - 3 (Mulgore) << Tauren Shaman


step
    +|cRXP_WARN_Debes ser al menos de nivel 25 para obtener|r |T134596:0|t[Grabar pantalones - Escudo de tierra] |cRXP_WARN_ya que es el requisito de nivel para entrar en Cavernas de Brazanegra|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>Viaja a Orgrimmar o Cima del Trueno
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Wabang|r
    >>|cRXP_BUY_Compra un|r |T134797:0|t[Elixir de respiración acuática] |cRXP_BUY_y un|r |T134717:0|t[Elixir de sabiduría] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Alternativamente, compra los materiales para crearlos tú mismo: 2|r |T132799:0|t[Aceite de bocanegra] |cRXP_WARN_(o 4|r |T134302:0|t[Bocanegra graso] |cRXP_WARN_para crear el aceite), 1|r |T134191:0|t[Alga estranguladora]|cRXP_WARN_, 1|r |T133436:0|t[Marregal]|cRXP_WARN_, y 2|r |T134412:0|t[Brezospina]
    >>|cRXP_WARN_Necesitas esto para una misión más adelante. NO los uses antes|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
	.skill alchemy,<90,1
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Wabang|r
    >>|cRXP_BUY_Compra un|r |T134797:0|t[Elixir de respiración acuática] |cRXP_BUY_y un|r |T134717:0|t[Elixir de sabiduría] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Necesitas esto para una misión más tarde. NO los uses antes|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    >>|cRXP_BUY_Compra un|r |T134797:0|t[Elixir de respiración acuática] |cRXP_BUY_y un|r |T134717:0|t[Elixir de sabiduría] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Alternativamente, compra los materiales para crearlos tú mismo: 2|r |T132799:0|t[Aceite de bocanegra] |cRXP_WARN_(o 4|r |T134302:0|t[Bocanegra graso] |cRXP_WARN_para crear el aceite), 1|r |T134191:0|t[Alga estranguladora]|cRXP_WARN_, 1|r |T133436:0|t[Marregal]|cRXP_WARN_, y 2|r |T134412:0|t[Brezospina]
    >>|cRXP_WARN_Necesitas esto para una misión más adelante. NO los uses antes|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
	.skill alchemy,<90,1
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    >>|cRXP_BUY_Compra un|r |T134797:0|t[Elixir de respiración acuática] |cRXP_BUY_y un|r |T134717:0|t[Elixir de sabiduría] |cRXP_BUY_en la Casa de Subastas|r
    >>|cRXP_WARN_Necesitas esto para una misión más adelante. NO los uses antes|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_Únete o crea un nuevo (0/7) grupo de banda (10 jugadores) para Cavernas de Brazanegra|r
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    .train 410101,1
    .xp <25,1
step
    >>Mata al |cRXP_ENEMY_Barón Aquanis|r en Cavernas de Brazanegra. Despójalo para obtener el |T136222:0|t|cRXP_LOOT_[Globo de agua extraño]|r
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob Baron Aquanis
    .train 410101,1
    .xp <25,1
step
    >>Usa el |T136222:0|t|cRXP_LOOT_[Globo de agua extraño]|r para iniciar la misión
    .accept 78920 >>Acepta la misión Barón Aquanis
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_Termina la banda si quieres, luego sal de Cavernas de Brazanegra|r
    .zone Ashenvale >> Viaja a Vallefresno
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78920 >>Entrega la misión Barón Aquanis
    .accept 78506 >>Acepta la misión Perturbación elemental
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>Mata |cRXP_ENEMY_Elementales de agua podrida|r. Despójalos para obtener la |T132844:0|t|cRXP_LOOT_[Mota de ira torrencial]|r
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob Befouled Water Elemental
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>Viaja a Sierra Espolón
    .train 410101,1
    .xp <25,1
step
    #loop
    #completewith next
    .goto Stonetalon Mountains,45.60,44.18,50,0 --NE Rogue Flame Shared Spawn Cluster (NE Spawnpoints)
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
--
    .goto Stonetalon Mountains,37.09,46.62,50,0 --Path Rogue Flame Shared Spawn Cluster (Middle Spawnpoints)
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
--
    .goto Stonetalon Mountains,35.22,65.79,50,0 --Start of Burning Destroyers and Ravagers
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Mata |cRXP_ENEMY_Espíritus flameantes huidos|r, |cRXP_ENEMY_Destructores ardientes|r, y |cRXP_ENEMY_Devastadores ardientes|r. Despójalos para obtener la |T132839:0|t|cRXP_LOOT_[Mota de ira infernal]|r
    >>Los |cRXP_ENEMY_Espíritus flameantes huidos|r |cRXP_WARN_comparten apariciones con los|r |cRXP_ENEMY_Basiliscos ennegrecidos|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
--XX Did waypoints in WOTLK, may be slightly off but i'd put more money on it being accurate than not
step
    #loop
    .goto Stonetalon Mountains,34.07,65.61,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.88,72.31,50,0
    .goto Stonetalon Mountains,32.49,73.81,50,0
    .goto Stonetalon Mountains,32.64,67.42,50,0
    .goto Stonetalon Mountains,28.99,65.18,50,0
    >>Mata |cRXP_ENEMY_Espíritus de piedra iracundos|r y |cRXP_ENEMY_Espíritus de piedra furiosos|r. Despójalos para obtener la |T132838:0|t|cRXP_LOOT_[Mota de ira sísmica]|r |cRXP_WARN_, ten cuidado con los enemigos peligrosos de la zona.|r
    .complete 78506,1 --Mote of Seismic Rage (1)
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
    .train 410101,1
    .xp <25,1
--XX Not totally sure if any of the elementals in the charred vale do/don't share spawns? It's a total clown fiesta
step
    #loop
    .goto Stonetalon Mountains,45.60,44.18,50,0
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
    .goto Stonetalon Mountains,37.09,46.62,50,0
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
    .goto Stonetalon Mountains,35.22,65.79,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>Mata |cRXP_ENEMY_Espíritus flameantes huidos|r, |cRXP_ENEMY_Destructores ardientes|r, y |cRXP_ENEMY_Devastadores ardientes|r. Despójalos para obtener la |T132839:0|t|cRXP_LOOT_[Mota de ira infernal]|r
    >>Los |cRXP_ENEMY_Espíritus flameantes huidos|r |cRXP_WARN_comparten apariciones con los|r |cRXP_ENEMY_Basiliscos ennegrecidos|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>Viaja a Vallefresno
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78506 >>Entrega la misión Perturbación elemental
    .accept 78537 >>Acepta la misión Elixir de conocimiento
    .accept 78537 >>Entrega la misión Elixir de conocimiento
    .accept 78561 >>Acepta la misión Elixir de conocimiento
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>Usa el |T134791:0|t[Elixir de conocimiento] cerca de la Fogata
    >>|cRXP_WARN_NO necesitas esperar a que termine el "Roleplay"|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78561 >>Entrega la misión Elixir de conocimiento
    .accept 78575 >>Acepta la misión Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>Mata a |cRXP_ENEMY_Hirzek|r. Despójalo para obtener el |T135146:0|t|cRXP_LOOT_[Bastón de Hirzek]|r
    >>|cRXP_WARN_Ten cuidado ya que |cRXP_ENEMY_Hirzek|r lanza|r |T135805:0|t[Descarga de relámpagos] |cRXP_WARN_(Lanzamiento a distancia: Causa aproximadamente 110 de daño Naturaleza) y es un élite de nivel 25. Se puede hacer solo, pero es posible que quieras buscar a alguien que te ayude|r
    >>|cRXP_WARN_Ten cuidado ya que el |cRXP_ENEMY_Elemental atado|r tiene un rango de persecución infinito, si matas a |cRXP_ENEMY_Hirzek|r y dejas el |cRXP_ENEMY_Elemental atado|r vivo (te seguirá hasta que desaparezca de tu vista o lo mates)|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>Viaja a Vallefresno
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 78575 >>Entrega la misión Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Escudo de tierra]|r |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Escudo de tierra]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step << skip
    +¡Enhorabuena! Has adquirido todas las |T134419:0|t|cRXP_LOOT_[Runas]|r disponibles actualmente.
    .train 410094,3 --Overload
    .train 410095,3 --Lava Burst
    .train 410096,3 --Dual Wield Specialization
    .train 410097,3 --Water Shield
    .train 410098,3 --Shield Mastery
    .train 410099,3 --Ancestral Guidance
    .train 410101,3 --Earth Shield
    .train 410104,3 --Lava Lash
    .train 410107,3 --Way of Earth
    .train 416057,3 --Healing Rain
    .train 425343,3 --Shamanistic Rage
    .train 425344,3 --Molten Blast
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Nova de Fuego - 35 (Azeroth)
#title Nova de Fuego

-- Fire Nova

step
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
step
    .goto Desolace,56.6,21.8
    >>Mata al |cRXP_ENEMY_Vidente de llamas Dubelen|r. Despójalo para obtener el |T136008:0|t|cRXP_LOOT_Tótem de fuego corrupto|r
    .collect 213451,1
    .mob Flameseer Dubelen
step
    .goto 1443,38.23,61,25,0
    .goto 1443,37.13,60.41,25,0
    .goto 1443,35.38,58.25,25,0
    .goto 1443,33.03,55.4,25,0
    .goto 1443,30.87,57.86,25,0
    .goto 1443,29.85,62.5,25,0
    .goto 1414,38.38,57.98,25,0
    .goto 1414,38.42,57.98,25,0
    .goto 1414,38.35,58.14,25,0
    .goto 1414,38.28,58.17,25,0
    .goto 1414,38.24,58.03,25,0
    .goto 1414,38.31,58.02,25,0
    .goto 1414,38.47,58.17,25,0
    .goto 1414,38.6,58.24,25,0
    .goto 1414,38.73,58.18,25,0
    .goto 1414,38.83,58.31,25,0
    .goto 1414,39.01,58.3,25,0
    .goto 1414,39.17,58.09,25,0
    .goto 1414,39.01,57.87,25,0
    .goto 1414,39.26,57.69
    >>Haz clic en el |cRXP_PICK_Cristal azul |r entre los cristales naranjas para recoger |T134088:0|t[Lágrima de Theradras]
    >>|cRXP_WARN_Ten cuidado, ya que los enemigos de esta zona son élites y pueden aturdir|r |cFFFF0000probablemente vas a morir varias veces|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>Haz clic en el |cRXP_PICK_Cristal azul |r entre los cristales morados para recoger |T134088:0|t[Lágrima de Theradras]
    >>|cRXP_WARN_Ten cuidado, ya que los enemigos de esta zona son élites y pueden aturdir|r |cFFFF0000probablemente vas a morir varias veces|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zor Árbol Solitario|r y selecciona la opción de diálogo
    -- .gossipoption --x insert id
    .target Zor Lonetree
step
    #completewith next
    .zone Thunder Bluff >>Viaja a |cFFfa9602Cima del Trueno|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Hamuul Tótem de Runa|r y selecciona la opción de diálogo
    -- .gossipoption --x insert id
    .target Arch Druid Hamuul Runetotem
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r y selecciona la opción de diálogo para volar a Claro de la Luna
    .target Tal
step
    #completewith next
    .zone Moonglade >>Viaja a |cFFfa9602Claro de la Luna|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardián Remulos|r
    .collect 213558,1
    .target Keeper Remulos
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Arma vorágine - 40 (Azeroth)
#title Arma vorágine

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>Viaja a |cFFfa9602Los Baldíos|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >> Entra en Horado Rajacieno
step
    .train 410100,1
    >>Mata a |cRXP_ENEMY_Charlga Filonavaja|r. Despójalo para obtener la |T134944:0|t|cRXP_LOOT_Nota raída|r. Úsala para aceptar la misión
    >>|cRXP_WARN_Es muy recomendable formar un grupo de 5 jugadores para esto|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>Acepta la misión Nota raída
    .mob Charlga Razorflank
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rau Abiscorredor|r
    .turnin 79358 >>Entrega la misión Nota raída
    .accept 79360 >>Acepta la misión Ayuda elemental
    .target Rau Cliffrunner
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Compra un|r |T132793:0|t[Vial de cristal] |cRXP_BUY_a esta vendedora|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bath'rah el Vigía del viento|r
    .turnin 79360 >>Entrega la misión Ayuda elemental
    .accept 79361 >>Acepta la misión El poder del viento
    .accept 79362 >>Acepta la misión El poder de la tierra
    .accept 79363 >>Acepta la misión El poder del agua
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Desolace >>Viaja a |cFFfa9602Desolace|r
step
    .train 410100,1
    #loop
    .goto Desolace,48.0,27.2,0
    .goto Desolace,40.6,37.0,0
    .goto Desolace,50.8,42.0,0
    .goto Desolace,64.4,39.4,0
    .goto Desolace,68.4,48.4,0
    .goto Desolace,69.4,64.6,0
    .goto Desolace,58.8,65.6,0
    .waypoint Desolace,48.0,27.2,25,0
    .waypoint Desolace,40.6,37.0,25,0
    .waypoint Desolace,50.8,42.0,25,0
    .waypoint Desolace,64.4,39.4,25,0
    .waypoint Desolace,68.4,48.4,25,0
    .waypoint Desolace,69.4,64.6,25,0
    .waypoint Desolace,58.8,65.6,25,0
    >>Mata |cRXP_ENEMY_Elementales espirálicos|r por todo Desolace. Despójalos para obtener sus |T132845:0|t|cRXP_LOOT_Esencias arremolinadas|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>Viaja a |cFFfa9602Marjal Revolcafango|r
step
    .train 410100,1
    #loop
    .goto Dustwallow Marsh,42.6,30.0,0
    .goto Dustwallow Marsh,35.2,44.6,0
    .goto Dustwallow Marsh,42.6,62.0,0
    .goto Dustwallow Marsh,50.0,54.0,0
    .waypoint Dustwallow Marsh,42.6,30.0,25,0
    .waypoint Dustwallow Marsh,35.2,44.6,25,0
    .waypoint Dustwallow Marsh,42.6,62.0,25,0
    .waypoint Dustwallow Marsh,50.0,54.0,25,0
    >>Mata |cRXP_ENEMY_Elementales Parramustia|r por todo Marjal Revolcafango. Despójalos para obtener sus |T132846:0|t|cRXP_LOOT_Esencias impetuosas|r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>Viaja a |cFFfa9602Tierras Inhóspitas|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>Mata |cRXP_ENEMY_Elemental de roca inferior|r y |cRXP_ENEMY_Elementales de roca|r. Despójalos para obtener sus |T132846:0|t|cRXP_LOOT_Esencias temblorosas|r
    .complete 79362,1 -- Power of da Earth
    .mob Rock Elemental
    .mob Lesser Rock Elemental
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bath'rah el Vigía del viento|r
    .turnin 79361 >>Entrega la misión El poder del viento
    .turnin 79362 >>Entrega la misión El poder de la tierra
    .turnin 79363 >>Entrega la misión El poder del agua
    .accept 79364 >>Acepta la misión Un simple contenedor
    .turnin 79364 >>Entrega la misión Un simple contenedor
    .accept 79365 >>Acepta la misión Con el viento bajo tus alas
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rau Abiscorredor|r
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target Rau Cliffrunner
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyse|r y selecciona la 2ª opción de diálogo
    .target Nyse
step
    .train 410100,1
    >>Mata a la |cRXP_ENEMY_Tempestad devastadora|r. Despójala para obtener su |cRXP_LOOT_Ojo de la tempestad|r
    >>|cRXP_WARN_Si mueres en el proceso habla con el|r |cRXP_FRIENDLY_Ángel de la Resurrección|r |cRXP_WARN_para teletransportarte a tu cadáver|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >> Interactúa con el |cRXP_FRIENDLY_Dracoleón del Poblado Viento Libre|r
    .timer 9,Vuelo RP
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rau Abiscorredor|r
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target Rau Cliffrunner
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a |cFFfa9602Laderas de Trabalomas|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bath'rah el Vigía del viento|r
    .turnin 79442 --Catching up
    .target Bath'rah the Windwatcher
step
    .train 410100 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la tormenta|r] para aprender |T136032:0|t[Arma vorágine]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón
#name Oleada de poder - 30 (Tierras Altas de Arathi)
#title Oleada de poder

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>Viaja a |cFFfa9602Tierras Altas de Arathi|r |cRXP_WARN_|cRXP_WARN_Se recomienda encarecidamente formar un grupo de al menos 3 jugadores.|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>Mata |cRXP_ENEMY_Ogros Puño de Roca|r y |cRXP_ENEMY_Toscos Puño de Roca|r. Despójalos para obtener un |T134921:0|t|cRXP_LOOT_[Pararrayos de ogro]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>Haz clic en la |cRXP_PICK_Tierra blanda|r para insertar el |T134921:0|t|cRXP_LOOT_[Pararrayos]|r en el suelo.
step
    .train 416054,1
    >>Lanza |T136048:0|t[Descarga de relámpagos] 10 veces en el |cRXP_ENEMY_Pararrayos|r
    >>Mata a |cRXP_ENEMY_Tamkar|r o "kitéalo" cuando aparezca. Despójalo para obtener la |T134419:0|t[Runa de poder]
    >>|cRXP_WARN_Morirá automáticamente después de 30 segundos, así que puedes "kitearlo" en lugar de matarlo|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_Usa la|r |T134419:0|t[Runa de poder] |cRXP_WARN_para aprender|r |T134337:0|t[Oleada de poder]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#title Tótem señuelo
#name Tótem señuelo - 27 (Las Mil Agujas)

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jandia|r
    >>|cRXP_BUY_Compra un|r |T132906:0|t[Hilo de seda] |cRXP_BUY_a esta vendedora|r
    .collect 4291,1 --Silken Thread (1)
    .target Jandia
step
    .train 425882,1
    #loop
    .goto Thousand Needles,55.42,51.96,0
    .waypoint Thousand Needles,55.42,51.96,40,0
    .waypoint Thousand Needles,56.68,49.88,40,0
    .waypoint Thousand Needles,55.97,45.97,40,0
    .waypoint Thousand Needles,54.29,48.10,40,0
    >>Mata |cRXP_ENEMY_Serpientes nubosas|r. Despójalas para obtener sus |cRXP_LOOT_Colmillos de serpiente nubosa|r
    .collect 213709,3 --Cloud Serpent Fang (3x)
    .mob Cloud Serpent
    .mob Venomous Cloud Serpent
    .mob Elder Cloud Serpent
step
    .train 425882,1
    #loop
    .goto Thousand Needles,27.65,49.47,0
    .goto Thousand Needles,26.55,55.77,0
    .waypoint Thousand Needles,27.65,49.47,40,0
    .waypoint Thousand Needles,27.16,51.62,15,0
    .waypoint Thousand Needles,26.29,52.79,15,0
    .waypoint Thousand Needles,27.23,54.04,15,0
    .waypoint Thousand Needles,26.55,55.77,15,0
    >>Mata a las |cRXP_ENEMY_Screeching Harpies|r. Despójalas para obtener sus |cRXP_LOOT_Plumas de Arpía Fuertes|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_Usa tus|r |T133723:0|t[Colmillos de serpiente nubosa] |cRXP_WARN_para crear una|r |T133291:0|t[Ofrenda al espíritu de viento]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >> Dirígete a la Cumbre de la Nube Negra
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >> Viaja hacia la Cumbre de la Nube Negra
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_Usa la|r |T133291:0|t[Ofrenda al espíritu de viento] |cRXP_WARN_cerca del|r |cRXP_PICK_Altar del Espíritu de viento|r
    >>|cRXP_WARN_El Altar se encuentra detrás de la cabaña en el pináculo más oriental|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>Salta al vacío para demostrar tu fe al Espíritu de viento para recibir la |T134419:0|t|cRXP_FRIENDLY_Runa de Señuelos|r
    >>|cRXP_WARN_Asegúrate de que tu|r |T133291:0|t[Ofrenda al espíritu de viento] |cRXP_WARN_no desaparezca. Dura 30 segundos|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_FRIENDLY_Runa de Señuelos|r |cRXP_WARN_para aprender|r |T134508:0|t[Tótem señuelo]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#title Espíritu del alfa
#name Espíritu del alfa - 27 (Las Mil Agujas)

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>Viaja a |cFFfa9602Las Mil Agujas|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>Viaja al inicio del puente inferior justo al sur del Poblado Vientolibre
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_Usa|r |T136095:0|t[Lobo fantasmal] |cRXP_WARN_para saltar cuidadosamente hacia el|r |cRXP_PICK_Alijo deteriorado|r
    >>Haz clic en el |cRXP_PICK_Alijo deteriorado|r para despojar el |T136095:0|t|cRXP_FRIENDLY_Eco del alfa|r
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_Usa el|r |T136095:0|t|cRXP_FRIENDLY_Eco del alfa|r |cRXP_WARN_para aprender|r |T408696:0|t[Espíritu del alfa]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Trueno ensordecedor
#name Trueno ensordecedor - 41 (Tanaris)

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_Haz clic en el|r |cRXP_PICK_Tótem raro|r. Esto te transformará en un Lobo fantasmal |cRXP_WARN_e incrementará el daño que recibes en un 50%|r
step
    .train 432236,1
    >>|cRXP_WARN_Corre hacia el otro tótem mientras evitas a los enemigos.|r Despoja el cofre que aparece para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Trueno ensordecedor|r]
    *|cRXP_WARN_Recibes un 50% de daño adicional. ¡Ten cuidado!|r. También puedes eliminar previamente a los enemigos en el camino hacia el otro tótem
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Trueno ensordecedor|r] |cRXP_WARN_para aprender|r |T136111:0|t[Trueno ensordecedor]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Choque estático
#name Choque estático - 44 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_Tienes que estar en grupo con otro jugador que pueda ayudarte para conseguir esta runa|r
step
    #completewith next
    .zone Feralas >>Viaja a Feralas
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>Haz clic en el |cRXP_PICK_Tótem cargado|r para obtener el "buff" |T136075:0|t[Aire cargado]
step
    #label ChargedAir
    .train 432238,1
    >>|cRXP_WARN_Quédate cerca del tótem y mata a los |cRXP_ENEMY_Ogros Gordunni|r cercanos con DAÑO DE RAYOS (p. ej. Escudo de relámpagos) hasta que aparezca la |cRXP_ENEMY_Tempestad arremolinada|r.
    >>Mata a la |cRXP_ENEMY_Tempestad arremolinada|r. Despójala para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Choque estático|r]
    *|cRXP_WARN_Todos los jugadores del grupo tienen que permanecer dentro del rango del tótem|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Choque estático|r] |cRXP_WARN_para aprender|r |T237587:0|t[Choque estático]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#title Maremotos
#name Maremotos - 42 (Feralas)

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>Viaja a Feralas
    .train 432234,1
step
    .train 432234,1
    >>Haz clic en el |cRXP_PICK_Cajón viejo|r detrás de la tienda para despojar la |T134239:0|t[Llave vieja]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>Haz clic en el |cRXP_PICK_Cofre viejo|r en el fondo del mar para despojar la |T134419:0|t[|cRXP_FRIENDLY_Runa de Maremotos|r]
    *|cRXP_WARN_¡Ten cuidado! Esto invocará CUATRO |cRXP_ENEMY_Elementales hirvientes|r (nivel 42, inmune a Escarcha)|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maremotos|r] |cRXP_WARN_para aprender|r |T237590:0|t[Maremotos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#title Maremotos
#name Maremotos - 45 (Azeroth)

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>Mata a |cRXP_ENEMY_Hiena Llagapata|r, |cRXP_ENEMY_Furibundo de la tierra|r y |cRXP_ENEMY_Observador Cristaldermo.|r Despójalos para obtener |cRXP_LOOT_|T134327:0|tNotas de chamán borroneadas|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>Haz clic en las |cRXP_PICK_|T134327:0|tNotas de chamán borroneadas|r para iniciar la misión.
    .accept 82072,1 >>Acepta la misión Tierra purificadora
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>Usa la |T134743:0|t[Sapta de tierra turbia] cerca del Tótem de tierra corrupto.
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>Mata a la |cRXP_ENEMY_Manifestación de tierra moderada corrupta|r luego >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifestación de tierra moderada.|r
    .turnin 82072 >>Entrega la misión Tierra purificadora
    .accept 82075 >>Acepta la misión El llamado de la tierra
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>Viaja a Azshara
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>Mata |cRXP_ENEMY_Sátiro Haldarr|r, |cRXP_ENEMY_Tramposo Haldarr|r y |cRXP_ENEMY_Jurapenas Haldarr.|r Despójalos para obtener |cRXP_LOOT_|T134331:0|tNotas de chamán empapadas|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>Haz clic en las |cRXP_PICK_|T134331:0|tNotas de chamán empapadas|r para iniciar la misión.
    .accept 82073,1 >>Acepta la misión Agua purificadora
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>Usa la |T134743:0|t[Sapta de tierra turbia] cerca del Tótem de agua corrupto.
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>Mata |cRXP_ENEMY_Manifestación de agua moderada corrupta|r luego >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifestación de agua moderada|r
    .turnin 82073 >>Entrega la misión Agua purificadora
    .accept 82076 >>Acepta la misión El llamado del agua
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>Viaja a Tierras del Interior
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>Mata a los |cRXP_ENEMY_Lodo verde|r y a los |cRXP_ENEMY_Moco de jade.|r Despójalos para obtener |cRXP_LOOT_|T134332:0|tNotas de chamán rasgadas|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>Haz clic en las |cRXP_PICK_|T134332:0|tNotas de chamán rasgadas|r para empezar la misión.
    .accept 81960,1 >>Acepta la misión Aire purificador
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>Usa la |T134743:0|t[Sapta de tierra turbia] cerca del tótem de aire corrupto.
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>Mata |cRXP_ENEMY_Corrupt NO TRANSLATION FOUND TO THIS ELEMENT|r luego >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moderate Manifestación of Aire.|r
    .turnin 81960 >>Entrega la misión Aire purificador
    .accept 81968 >>Acepta la misión El llamado del viento
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>Viaja a La Garganta de Fuego
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>Mata a los |cRXP_ENEMY_Elemental de magma|r y a los |cRXP_ENEMY_Elemental del infierno.|r Despójalos para obtener |cRXP_LOOT_|T134327:0|tNotas de chamán chamuscadas|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>Haz clic en las |cRXP_PICK_|T134329:0|tNotas de chamán chamuscadas|r para empezar la misión.
    .accept 82071,1 >>Acepta la misión Fuego purificador
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>Usa la |T134743:0|t[Sapta de tierra turbia] cerca del tótem de fuego corrupto.
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>Mata a la |cRXP_ENEMY_Manifestación de fuego moderada corrupta|r luego >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manifestación de fuego moderada.|r
    .turnin 82071 >>Entrega la misión Fuego purificado
    .accept 82074 >>Acepta la misión El llamado del fuego
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>Viaja a Feralas
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Mata |cRXP_ENEMY_Rocíos del mar|r y |cRXP_ENEMY_Elementales de mar.|r Despójalos para obtener |cRXP_LOOT_|T132849:0|tEsencia elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>Usa el |T134118:0|t[Fragmento de tierra]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación de tierra moderada|r
    .turnin 82075 >> El llamado de la tierra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Mata |cRXP_ENEMY_Rocíos del mar|r y |cRXP_ENEMY_Elementales de mar.|r Despójalos para obtener |cRXP_LOOT_|T132849:0|tEsencia elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>Usa el |T134130:0|t[Fragmento de fuego]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación de tierra moderada|r
    .turnin 82075 >> El llamado de la tierra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>Mata |cRXP_ENEMY_Rocíos del mar|r y |cRXP_ENEMY_Elementales de mar.|r Despójalos para obtener |cRXP_LOOT_|T132849:0|tEsencia elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>Usa el |T134133:0|t[Fragmento de aire]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación de tierra moderada|r
    .turnin 82075 >> El llamado de la tierra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>Mata |cRXP_ENEMY_Rocíos del mar|r y |cRXP_ENEMY_Elementales de mar.|r Despójalos para obtener |cRXP_LOOT_|T132849:0|tEsencia elemental|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>Usa |T134089:0|t[Fragmento de agua]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación de tierra moderada|r
    .turnin 82075 >> El llamado de la tierra
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>Mata al |cRXP_ENEMY_Chamán Oscuro Crepuscular.|r Despójalo para obtener la |cRXP_LOOT_|cRXP_FRIENDLY_|T134419:0|tRuna de Sobrecarga|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sobrecarga|r] |cRXP_WARN_para aprender|r |T132213:0|t[Sobrecarga]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Tormenta, Tierra y Fuego
#name Tormenta, Tierra y Fuego - 52 (Frondavil)

step
    .train 440634,1
    #completewith next
    .zone Felwood >>Viaja a Frondavil
step
    .goto Felwood,62.4,9.0
    .train 440634,1
    >>Mata |cRXP_ENEMY_Chamanes Muertobosque|r, |cRXP_ENEMY_Vengadores Muertobosque|r y |cRXP_ENEMY_Vigías del cubil Muertobosque|r. Despójalos para obtener el |T134918:0|t[|cRXP_LOOT_Ícono voltaico|r]
    .goto Feralas,76.6,48.0
    .collect 225838,1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
    .mob Deadwood Den Watcher
step
    .train 440634,1
    .equip 18,225838 >> |cRXP_WARN_Equipa el|r |T134918:0|t[|cRXP_LOOT_Ícono voltaico|r]
    .use 225838
step
    .train 440634,1
    .aura 408828 >>|cRXP_WARN_Ahora debes matar 3 enemigos con un único lanzamiento de|r |T136015:0|t[Cadena de relámpagos]
    >>|cRXP_WARN_Atrae 3 enemigos y reduce su salud al 5% aproximadamente a cada uno, luego lanza|r |T136015:0|t[Cadena de relámpagos]
step
    .itemcount 225838,1
    .use 225838
    .train 440634 >>|cRXP_WARN_Usa el|r |T134918:0|t[|cRXP_LOOT_Ícono voltaico|r] |cRXP_WARN_para aprender|r |T237588:0|t[Tormenta, Tierra y Fuego]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Coherencia
#name Coherencia - 55 (Las Estepas Ardientes)

step
    .train 416062,1
    #completewith next
    .zone Burning Steppes >>Viaja a Las Estepas Ardientes
step
    .train 416062,1
    #loop
    .goto Burning Steppes,62.4,9.0,60,0
    .goto Burning Steppes,69.4,31.8,60,0
    .goto Burning Steppes,61.4,31.8,60,0
    .goto Burning Steppes,51.2,35.6,60,0
    .goto Burning Steppes,55.6,49.2,60,0
    .goto Burning Steppes,54.8,62.2,60,0
    .goto Burning Steppes,35.6,61.6,60,0
    .goto Burning Steppes,41.6,43.6,60,0
    >>Mata |cRXP_ENEMY_Elementales obsidianos superiores|r. Despójalos para obtener el |cRXP_LOOT_Núcleo obsidiano fundido|r
    .collect 225676,1
    .mob Greater Obsidian Elemental
step
    .train 416062,1
    .goto Redridge Mountains,44.6,50.0
    >>|cRXP_WARN_Ahora tienes 10 minutos para saltar al agua en cualquier parte del mundo|r
    >>|cRXP_WARN_Viaja a Montañas Crestagrana y salta al lago|r
    >>|cRXP_WARN_Si tu Piedra de hogar está cerca del agua, también puedes hacer eso en su lugar|r
    >>|cRXP_WARN_Saltar al agua transformará el |cRXP_LOOT_Núcleo obsidiano fundido|r en un|r |T237477:0|t[|cRXP_LOOT_Núcleo de obsidiana tiznado|r]
    .collect 225675,1
step
    .train 416062,1
    .use 225675 >> |cRXP_WARN_Abre el|r |T237477:0|t[|cRXP_LOOT_Núcleo de obsidiana tiznado|r] |cRXP_WARN_para recibir la|r |T134419:0|t[|cRXP_LOOT_Runa de Compostura|r]
    .collect 225740,1
step
    .itemcount 225740,1
    .use 225740
    .train 416062 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_LOOT_Runa de Compostura|r] |cRXP_WARN_para aprender|r |T237586:0|t[Coherencia]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Capa
#title Espíritu feral
#name Espíritu feral - 60 (Cuna del Invierno)

step
    .train 440630,1
    #completewith next
    .zone Winterspring >>Viaja a Cuna del Invierno
    >>|cRXP_WARN_Nota: debes matar a un élite de nivel 60. Considera traer a un amigo|r
step
    #completewith next
    .goto Winterspring,67.93,41.44,50 >> Entra en la cueva Yeti
step
    .goto Winterspring,69.87,37.92
    >>|cRXP_WARN_Viaja al fondo de la cueva Yeti y habla con el elemental encadenado|r |cRXP_FRIENDLY_Frijidar|r
    >>|cRXP_WARN_Se volverá hostil en unos pocos segundos|r
    >>Mata a |cRXP_ENEMY_Frijidar|r. Despójalo para obtener la |T134419:0|t[|cRXP_LOOT_Runa del Espíritu vinculado|r]
    .collect 225914,1
    .mob Frijidar
    .skipgossip
step
    .itemcount 225914,1
    .use 225914
    .train 440630 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_LOOT_Runa del Espíritu vinculado|r] |cRXP_WARN_para aprender|r |T237577:0|t[Espíritu feral]
]])
