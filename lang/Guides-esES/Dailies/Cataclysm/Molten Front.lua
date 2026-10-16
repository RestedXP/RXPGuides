if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group Frente de Magma
#name A_1_TMF_Start
#next B_1_TSOM_Iniciar
#displayname |cRXP_LOOT_1.0|r - La Invasión

step
    #completewith OpeningtheDoor
	.zone 85 >> Viaja a Orgrimmar << Horde
	.zone 84 >> Viaja a Ventormenta << Alliance
	.zoneskip 198
step
    #completewith OpeningtheDoor
    .goto 85,51.000,38.221 << Horde
    .goto 84,76.178,18.695 << Alliance
	.zone 198 >> Usa el portal hacia Hyjal
step
    #label OpeningtheDoor
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29145 >>Acepta la misión Abrir la puerta
step
    .goto 198/1,-2079.100,4653.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arch Druida Hamuul Tótem de Runa|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29145 >>Entrega la misión Abrir la puerta
    .accept 29195 >>Acepta la misión Un ritual de llamas
step
    .goto 198/1,-2092.900,4621.800
    >>Mata a los |cRXP_ENEMY_Invasores Calcinados|r hasta que se complete tu barra de progreso. Esto hará que |cRXP_ENEMY_Leyara|r atraviese el portal
    >>Mata a |cRXP_ENEMY_Leyara|r
    >>|cRXP_WARN_No necesitas etiquetarla|r
    .complete 29195,1 -- Open the portal to the Firelands (1)
    .mob Charred Invader
    .mob Leyara
step
    .goto 198/1,-2092.900,4621.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 29195 >>Entrega la misión Un ritual de llamas
    .accept 29196 >>Acepta la misión ¡Al santuario!
step
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29196 >>Entrega la misión ¡Al santuario!
    .accept 29197 >>Acepta la misión Desprevenidos
step
    .goto 198/1,-1980.300,4628.000
    >>Mata a los |cRXP_ENEMY_Invasores Enfurecidos|r cerca de |cRXP_FRIENDLY_Thisalee Cuervo|r
    .complete 29197,2 --|Kill elementals near Thisalee: 6/6
    .mob Raging Invader
    .target Thisalee Crow
step
    .goto 198/1,-2373.900,4560.100
    >>Mata a los |cRXP_ENEMY_Invasores Enfurecidos|r cerca de |cRXP_FRIENDLY_Tallosaúco|r
    .complete 29197,1 --|Kill elementals near Elderlimb: 6/6
    .mob Raging Invader
    .target Elderlimb
step
    .goto 198/1,-2699.000,4584.200
    >>Mata a los |cRXP_ENEMY_Invasores Enfurecidos|r cerca de |cRXP_FRIENDLY_Tholo|r y |cRXP_FRIENDLY_Anren|r
    .complete 29197,3 --|Kill elementals near Tholo and Anren: 6/6
    .mob Raging Invader
    .target Tholo
    .target Anren
step
    .goto 198/1,-2082.200,4423.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arch Druida Hamuul Tótem de Runa|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29197 >>Entrega la misión Desprevenidos
    .accept 29198 >>Acepta la misión El santuario no debe caer
step
    .goto 198/1,-2080.200,4421.700
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29198,1
step
    .goto 198/1,-2080.200,4421.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 29198 >>Entrega la misión El santuario no debe caer
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Hamuul Tótem de Runa|r
    .target Arch Druid Hamuul Runetotem
    .accept 29199 >>Acepta la misión Petición de refuerzos
step
    .goto 198/1,-2082.700,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .daily 29123,29149,29127,29163,29166 >>Acepta cualquier misión diaria aleatoria que se ofrezca
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Haz clic en un |cRXP_FRIENDLY_Hijo de Tortolla|r
    >>|cRXP_WARN_Apunta hacia el agua y lanza|r |T132219:0|t[Puntapié a tortuga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .use 69235 >> |cRXP_WARN_Usa los|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_en sus cadáveres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_para transformarte en|r |cRXP_FRIENDLY_Alas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Usa la habilidad|r |T132172:0|t[Reunir la bandada] (1) |cRXP_WARN_cerca de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r y |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Colócate frente a un |cRXP_FRIENDLY_Espíritu de Malorne|r
    >>|cRXP_WARN_Estos son los ciervos fantasma que cargan aleatoriamente por la zona|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Haz clic en el |cRXP_PICK_Escalar Árbol|r para empezar a treparlo
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Haz clic en un |cRXP_FRIENDLY_Hyjal Osezno|r mientras estés en el árbol
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lanza|r |T450907:0|t[Trepar] (1) |cRXP_WARN_hasta que estés en la cima, apunta la flecha hacia el trampolín junto a |cRXP_FRIENDLY_Vigilante Taldros|r, luego lanza|r |T446127:0|t[Lanzar oso] (4)|cRXP_WARN_. Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_y repite el proceso|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    .isOnQuest 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29161 >>Entrega la misión Esos osos de ahí arriba
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isQuestTurnedIn 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29162 >>Acepta la misión Bendición de la Naturaleza
step
    .isOnQuest 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29125 >>Entrega la misión Entre los árboles
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isOnQuest 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29147 >>Entrega la misión Reunir la bandada
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isQuestTurnedIn 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isOnQuest 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29164 >>Entrega la misión Perfecciona a tu lobo
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isQuestTurnedIn 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isOnQuest 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29101 >>Entrega la misión Temporada de patadas
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    .isQuestTurnedIn 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Piroaraña|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Mata a la |cRXP_ENEMY_Piroaraña|r
    >>|cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para también eliminar el|r |T136016:0|t[Descarga de veneno hirviente] |cRXP_WARN_perjuicio de ti mismo que |cRXP_ENEMY_Piroaraña|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Usa|r el |T135139:0|t[Bastón de guardián] |cRXP_WARN_en la|cRXP_PICK_ |rPile of Cenizas|r para invocar |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Mata al |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_cerca del portal de fuego occidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Mata a |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Usa el|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Mata a |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Habla con |cRXP_FRIENDLY_Tooga|r para invocar a |cRXP_ENEMY_Némesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mata a |cRXP_ENEMY_Némesis|r
    >>|cRXP_WARN_Colócate debajo del caparazón de |cRXP_FRIENDLY_Tooga|r para protegerte del|r |cRXP_ENEMY_Némesis|r |T135830:0|t[Furia de arrabio] |cRXP_WARN_lanzamiento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entrega la misión Bendición de la Naturaleza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entrega la misión Ecos de Némesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entrega la misión El poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entrega la misión La llamada de la manada
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entrega la misión Alas ardientes
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entrega la misión Suministros for the Otro Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entrega la misión Ira Contra las Llamas
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arch Druida Hamuul Tótem de Runa|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29199 >>Entrega la misión Petición de refuerzos
    .accept 29200 >>Acepta la misión Leyara
step
    .goto 198/1,-1214.200,5236.700
    >>Habla con |cRXP_ENEMY_Leyara|r
    .complete 29200,1 --|Find Leyara: 1/1
    .mob Leyara
step
    .goto 198/1,-2082.700,4424.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29200 >>Entrega la misión Leyara
step
    .goto 198/1,-2076.300,4420.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .accept 29201 >>Acepta la misión Tras las puertas del infierno
step
    #completewith GatesofHell
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    >>Mata al |cRXP_ENEMY_Señor de la escoria obsidiana|r
    .complete 29201,1 --|Secure a foothold in the Firelands: 1/1
    .mob Obsidian Slaglord
step
    #label GatesofHell
    .goto 338,47.151,90.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 29201 >>Entrega la misión Tras las puertas del infierno
]])


RXPGuides.RegisterGuide([[
#cata
#version 1
#group Frente de Magma
#name B_1_TSOM_Iniciar
#next C_1_TSOM_Druids
#displayname |cRXP_FRIENDLY_2.0|r - The Magma Front

--Molten Front quests

step
    #completewith WispAway
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .daily 29139,29143 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Troncoferro|r
    .daily 29138 >>Acepta la misión Víctimas de las quemaduras
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .daily 29179 >>Acepta la misión Elementales hostiles
    .daily 29304,29141,29142,29137 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >> |cRXP_WARN_Usa el|r |T463860:0|t[Bálsamo encantado] |cRXP_WARN_en|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mata a los |cRXP_ENEMY_Charred Vanquishers|r y a los |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier


step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Charhounds|r y a los |cRXP_ENEMY_Ancient Charhounds|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Mata a los |cRXP_ENEMY_Druids of the Llama|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Haz clic en los |cRXP_PICK_Ash Piles|r en el suelo
    .complete 29139,1 -- Smothervine planted (5)
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Toma al |cRXP_FRIENDLY_Hyjal Fuego fatuo|r siguiéndote a un Portal de fuego
    >>|cRXP_WARN_Mata|cRXP_FRIENDLY_ los mobs que salen de él. Asegúrate de que el |rHyjal Fuego fatuo|r ¡no muera!
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29179 >>Entrega la misión Elementales hostiles
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29304 >> Entrega la misión The Dogs of Guerra
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29141 >> Entrega la misión Cuanto más grandes, más fuerte caen
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29142 >> Entrega la misión El regreso de los traidores
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29137 >> Entrega la misión Una brecha en las defensas
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Troncoferro|r
    .dailyturnin 29138 >>Entrega la misión Víctimas de las quemaduras
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .dailyturnin 29139 >>Entrega la misión Crecimiento agresivo
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .dailyturnin 29143 >>Entrega la misión Aléjate, fuego fatuo
    .target Rayne Feathersong




--Hyjal quests

step
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Soren Puestaluna|r
    .target Captain Soren Moonfall
    .daily 29128 >>Acepta la misión Los Protectores de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Haz clic en un |cRXP_FRIENDLY_Hijo de Tortolla|r
    >>|cRXP_WARN_Apunta hacia el agua y lanza|r |T132219:0|t[Puntapié a tortuga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .use 69235 >> |cRXP_WARN_Usa los|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_en sus cadáveres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_para transformarte en|r |cRXP_FRIENDLY_Alas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Usa la habilidad|r |T132172:0|t[Reunir la bandada] (1) |cRXP_WARN_cerca de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r y |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Colócate frente a un |cRXP_FRIENDLY_Espíritu de Malorne|r
    >>|cRXP_WARN_Estos son los ciervos fantasma que cargan aleatoriamente por la zona|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Haz clic en el |cRXP_PICK_Escalar Árbol|r para empezar a treparlo
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Haz clic en un |cRXP_FRIENDLY_Hyjal Osezno|r mientras estés en el árbol
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lanza|r |T450907:0|t[Trepar] (1) |cRXP_WARN_hasta que estés en la cima, apunta la flecha hacia el trampolín junto a |cRXP_FRIENDLY_Vigilante Taldros|r, luego lanza|r |T446127:0|t[Lanzar oso] (4)|cRXP_WARN_. Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_y repite el proceso|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    .isOnQuest 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29161 >>Entrega la misión Esos osos de ahí arriba
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isQuestTurnedIn 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isOnQuest 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29125 >>Entrega la misión Entre los árboles
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isOnQuest 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29147 >>Entrega la misión Reunir la bandada
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isQuestTurnedIn 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isOnQuest 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29164 >>Entrega la misión Perfecciona a tu lobo
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isQuestTurnedIn 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isOnQuest 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29101 >>Entrega la misión Temporada de patadas
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    .isQuestTurnedIn 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Piroaraña|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Mata a la |cRXP_ENEMY_Piroaraña|r
    >>|cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para también eliminar el|r |T136016:0|t[Descarga de veneno hirviente] |cRXP_WARN_perjuicio de ti mismo que |cRXP_ENEMY_Piroaraña|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Usa|r el |T135139:0|t[Bastón de guardián] |cRXP_WARN_en la|cRXP_PICK_ |rPile of Cenizas|r para invocar |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Mata al |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_cerca del portal de fuego occidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Mata a |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Usa el|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Mata a |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Habla con |cRXP_FRIENDLY_Tooga|r para invocar a |cRXP_ENEMY_Némesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mata a |cRXP_ENEMY_Némesis|r
    >>|cRXP_WARN_Colócate debajo del caparazón de |cRXP_FRIENDLY_Tooga|r para protegerte del|r |cRXP_ENEMY_Némesis|r |T135830:0|t[Furia de arrabio] |cRXP_WARN_lanzamiento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Mata a los |cRXP_ENEMY_Charred Flamewakers|r. Despójalos para obtener sus |cRXP_LOOT_Flamewaker Escamas|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r y a los |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r. Despójalos para obtener sus |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Seething Pyrelords|r. Despójalos para obtener sus |cRXP_LOOT_Flame-Wreathed Corazones|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r y a los |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entrega la misión Bendición de la Naturaleza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entrega la misión Ecos de Némesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entrega la misión El poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entrega la misión La llamada de la manada
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entrega la misión Alas ardientes
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entrega la misión Suministros for the Otro Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Entrega la misión Relieving the Dolor
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Entrega la misión Tratando the Wounds
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Entrega la misión Liberando the Pressure
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29128 >>Entrega la misión Los Protectores of Hyjal
    .target General Taldris Moonfall
step
    #completewith FinishDruids
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .accept 29181 >>Acepta la misión Druidas de la Garfa
    --.accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
step
    .isQuestComplete 29181
    .goto 198,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Señor del Cielo Omnuron|r
    .turnin 29181 >>Entrega la misión Druidas de la Garfa
    .target Skylord Omnuron
step
    #label FinishDruids
    .isQuestAvailable 29181
    +|cRXP_WARN_Has completado todas las misiones diarias disponibles de hoy. Recarga esta misma guía mañana (|r|cRXP_FRIENDLY_2.0|r - The Magma Front|cRXP_WARN_) para seguir completando las misiones diarias hasta que hayas conseguido suficientes|r |T513195:0|t[Marks of the World Árbol]

-- Beginning of Druids questline if turned in
step
    .isQuestTurnedIn 29181
    .goto 198/1,-2740.000,4902.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isara Zancarrío|r
    .target Isara Riverstride
    .accept 29182 >>Acepta la misión El vuelo de los cuervos de la tormenta
step
    #completewith next
    .isOnQuest 29182
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isQuestComplete 29181
    .goto 338,43.028,80.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Señor del Cielo Omnuron|r
    .turnin 29182 >>Entrega la misión El vuelo de los cuervos de la tormenta
    .target Skylord Omnuron
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .daily 29206 >>Acepta la misión Al fuego
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escolta y protege al |cRXP_FRIENDLY_Windcaller|r a través del fuego
    >>Mata al |cRXP_ENEMY_Piroseñor|r al final
    >>Habla con |cRXP_FRIENDLY_Señor del Cielo Omnuron|r justo antes de los fuegos si un |cRXP_FRIENDLY_Windcaller|r no está presente
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Baja por el gran agujero. Dirígete hacia|r |cRXP_FRIENDLY_Thisalee Cuervo|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thisalee Cuervo|r
    .dailyturnin 29206 >>Entrega la misión Into the Fuego
    .daily 29264 >>Acepta la misión Despiertallamas de La Corriente de Magma
    .daily 29265 >>Acepta la misión Flores de fuego
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #completewith AnrenEscort
    >>Mata a los |cRXP_ENEMY_Flamewaker Sentinels|r, a los |cRXP_ENEMY_Flamewaker Hunters|r y a los |cRXP_ENEMY_Flamewaker Chamán|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #completewith AnrenEscort
    >>Despoja los |cRXP_LOOT_Luciferns|r en el suelo
    .complete 29265,1 -- Lucifern (5)
step
    .isQuestTurnedIn 29181
    .goto 338,51.897,30.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anren Buscasombras|r
    .accept 29272 >>Acepta la misión Necesito… Agua… Ya…
    .target Anren Shadowseeker
step
    .isOnQuest 29272
    .goto 338,51.897,30.965
    .gossip 53233 >> Habla con |cRXP_FRIENDLY_Anren Buscasombras|r de nuevo para comenzar la escolta
    .skipgossip
    .target Anren Shadowseeker
step
    #label AnrenEscort
    .isOnQuest 29272
    .goto 338,42.59,59.85
    >>Escolta a |cRXP_FRIENDLY_Anren Buscasombras|r
    >>|cRXP_WARN_Sigue de cerca y salta hacia|r |T514278:0|t[Thermal Correntadas] |cRXP_WARN_junto a él|r
    .complete 29272,1 -- Escort Anren Shadowseeker to the front of the cave 1/1
    .target Anren Shadowseeker
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Mata a los |cRXP_ENEMY_Flamewaker Sentinels|r, a los |cRXP_ENEMY_Flamewaker Hunters|r y a los |cRXP_ENEMY_Flamewaker Chamán|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Despoja los |cRXP_LOOT_Luciferns|r en el suelo
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thisalee Cuervo|r
    .dailyturnin 29264 >>Entrega la misión Flamewakers of the Magma Flujo
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Dirígete de vuelta a la gran abertura donde bajaste. De pie en|r |T514278:0|t[Corriente térmica]|cRXP_WARN_, luego salta para volver a la superficie del Frente de Magma|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    +|cRXP_WARN_Salta para volver a la superficie del Frente de Magma|r
    .subzoneskip 5746,1
step
    .isQuestComplete 29272
    .goto 338,35.983,58.988
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r
    .turnin 29272 >>Entrega la misión Necesito… Agua… Ya…
    .target Tholo Whitehoof
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r u |cRXP_FRIENDLY_Anren Buscasombras|r
    .daily 29273,29274 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Entrega la misión Fuego Flores
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .daily 29290,29287,29288 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    #label DruidDailies
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthorn Son del viento|r
    .daily 29293,29296 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Monta el |cRXP_FRIENDLY_Trained Halcón de fuego|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Lanza|r |T135821:0|t[Semilla de llamas]|cRXP_WARN|(1) y|r |T451164:0|t[Ráfaga de llamas]|cRXP_WARN|(2) para matar a|r |cRXP_ENEMY_Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r y |cRXP_ENEMY_Magma Lords|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_Lanza|r |T514278:0|t[Volver al Horno]|cRXP_WARN|(6) para volver|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >> |cRXP_WARN_Usa los Peldaños para subir a Fireplume Risco. Intenta usar una corriente de aire al final de los Peldaños, ya que hacerlo te concederá|r |T236222:0|t[Convalecencia de los vientos]|cRXP_WARN_una mejora que aumenta tu velocidad de ataque y prisa en 100% y te permite saltar mucho más alto y lejos de lo Normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Usa|r |T135155:0|t[Termómetro de Tholo]|cRXP_WARN_en Fireplume Peak en|r |cRXP_PICK_Charcos de lava|r
    >>|cRXP_WARN_Puedes usar|r |T135155:0|t[Termómetro de Tholo]|cRXP_WARN_mientras sigues en tu montura|r
    >>|cRXP_WARN_Salta hacia arriba usando|r |T514278:0|t[Thermal Correntadas] |cRXP_WARN_ubicadas en todo Fireplume Peak para llegar a la cima|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>Despoja un |cRXP_LOOT_Huevo de halcón de fuego|r de la cima de Fireplume Peak
    >>|cRXP_WARN_Salta hacia arriba usando|r |T514278:0|t[Thermal Correntadas] |cRXP_WARN_ubicadas en todo Fireplume Peak para llegar a la cima|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Haz clic en los |cRXP_FRIENDLY_Injured Druidas de la Garfa|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Druid of the Talon
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Mata a los |cRXP_ENEMY_Fire Hawks|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Haz clic en los |cRXP_FRIENDLY_Fire Halcón Hatchlings|r
    >>|cRXP_WARN_La cima de Fireplume Peak tiene una gran cantidad de ellos|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
 step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .dailyturnin 29290 >> Entrega la misión Fuego in the Skies
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .dailyturnin 29287 >> Entrega la misión Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .dailyturnin 29288 >> Entrega la misión Comenzando Young
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthorn Son del viento|r
    .dailyturnin 29293 >> Entrega la misión Chamuscado Alas
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthorn Son del viento|r
    .dailyturnin 29296 >> Entrega la misión Territorial Birds
    .target Arthorn Windsong
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anren Buscasombras|r
    .dailyturnin 29273 >> Entrega la misión How Caliente
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r
    .dailyturnin 29274 >> Entrega la misión Hounds of Shannox
    .target Tholo Whitehoof
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    --.accept 29181 >>Accept Druids of the Talon
    .accept 29214 >>Acepta la misión Las celadoras de las Sombras
    .target Malfurion Stormrage
step
    .isQuestTurnedIn 29181
    +|cRXP_WARN_Has completado todas las misiones diarias disponibles hoy. Recarga la (|r|cRXP_ENEMY_2.5|r - The Magma Front + Druids|cRXP_WARN_) guía mañana para continuar completando las misiones diarias hasta que hayas adquirido suficientes|r |T513195:0|t[Marks of the World Árbol]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group Frente de Magma
#name C_1_TSOM_Druids
--#next D_1_TSOM_Wardens
--Making guide not auto change so user has choice of which daily quests they want to do out of Druids/Wardens
#displayname |cRXP_ENEMY_2.5|r - The Magma Front + Druids

step
    #optional
    .isQuestAvailable 29181
    +|cRXP_WARN_Primero debes reunir 150|r |T513195:0|t[Marks of the World Árbol] |cRXP_WARN_y entrega la misión [Druidas de la Garfa] para poder completar las misiones diarias para ellos|r
    >>|cRXP_WARN_Continúa completando la (|r|cRXP_FRIENDLY_2.0|r - The Magma Front|cRXP_WARN_) guía hasta que tengas suficientes|r |T513195:0|t[Marks of the World Árbol]
    .goto 198,47.017,91.361
    .turnin 29181 >>Entrega la misión Druidas de la Garfa
    .target Skylord Omnuron
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Viaja a Orgrimmar << Horde
	.zone 84 >> Viaja a Ventormenta << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Usa el portal hacia Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Soren Puestaluna|r
    .target Captain Soren Moonfall
    .daily 29128 >>Acepta la misión Los Protectores de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Haz clic en un |cRXP_FRIENDLY_Hijo de Tortolla|r
    >>|cRXP_WARN_Apunta hacia el agua y lanza|r |T132219:0|t[Puntapié a tortuga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .use 69235 >> |cRXP_WARN_Usa los|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_en sus cadáveres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_para transformarte en|r |cRXP_FRIENDLY_Alas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Usa la habilidad|r |T132172:0|t[Reunir la bandada] (1) |cRXP_WARN_cerca de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r y |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Colócate frente a un |cRXP_FRIENDLY_Espíritu de Malorne|r
    >>|cRXP_WARN_Estos son los ciervos fantasma que cargan aleatoriamente por la zona|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Haz clic en el |cRXP_PICK_Escalar Árbol|r para empezar a treparlo
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Haz clic en un |cRXP_FRIENDLY_Hyjal Osezno|r mientras estés en el árbol
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lanza|r |T450907:0|t[Trepar] (1) |cRXP_WARN_hasta que estés en la cima, apunta la flecha hacia el trampolín junto a |cRXP_FRIENDLY_Vigilante Taldros|r, luego lanza|r |T446127:0|t[Lanzar oso] (4)|cRXP_WARN_. Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_y repite el proceso|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    .isOnQuest 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29161 >>Entrega la misión Esos osos de ahí arriba
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isQuestTurnedIn 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isOnQuest 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29125 >>Entrega la misión Entre los árboles
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isOnQuest 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29147 >>Entrega la misión Reunir la bandada
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isQuestTurnedIn 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isOnQuest 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29164 >>Entrega la misión Perfecciona a tu lobo
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isQuestTurnedIn 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isOnQuest 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29101 >>Entrega la misión Temporada de patadas
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    .isQuestTurnedIn 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Piroaraña|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Mata a la |cRXP_ENEMY_Piroaraña|r
    >>|cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para también eliminar el|r |T136016:0|t[Descarga de veneno hirviente] |cRXP_WARN_perjuicio de ti mismo que |cRXP_ENEMY_Piroaraña|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Usa|r el |T135139:0|t[Bastón de guardián] |cRXP_WARN_en la|cRXP_PICK_ |rPile of Cenizas|r para invocar |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Mata al |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_cerca del portal de fuego occidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Mata a |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Usa el|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Mata a |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Habla con |cRXP_FRIENDLY_Tooga|r para invocar a |cRXP_ENEMY_Némesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mata a |cRXP_ENEMY_Némesis|r
    >>|cRXP_WARN_Colócate debajo del caparazón de |cRXP_FRIENDLY_Tooga|r para protegerte del|r |cRXP_ENEMY_Némesis|r |T135830:0|t[Furia de arrabio] |cRXP_WARN_lanzamiento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Mata a los |cRXP_ENEMY_Charred Flamewakers|r. Despójalos para obtener sus |cRXP_LOOT_Flamewaker Escamas|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r y a los |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r. Despójalos para obtener sus |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Seething Pyrelords|r. Despójalos para obtener sus |cRXP_LOOT_Flame-Wreathed Corazones|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r y a los |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entrega la misión Bendición de la Naturaleza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entrega la misión Ecos de Némesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entrega la misión El poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entrega la misión La llamada de la manada
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entrega la misión Alas ardientes
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entrega la misión Suministros for the Otro Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Entrega la misión Relieving the Dolor
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Entrega la misión Tratando the Wounds
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Entrega la misión Liberando the Pressure
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isQuestTurnedIn 29215 -- If turned in quest to unlock Wardens
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .daily 29139,29143 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    >>|cRXP_WARN_Omitir este paso si |cRXP_FRIENDLY_Ricket|r no te ofrece una misión aquí hoy|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Troncoferro|r
    .daily 29138 >>Acepta la misión Víctimas de las quemaduras
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .daily 29179 >>Acepta la misión Elementales hostiles
    .daily 29304,29141,29142,29137 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29128 >>Entrega la misión Los Protectores of Hyjal
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >> |cRXP_WARN_Usa el|r |T463860:0|t[Bálsamo encantado] |cRXP_WARN_en|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mata a los |cRXP_ENEMY_Charred Soldiers|r y a los |cRXP_ENEMY_Charred Vanquishers|r. Despójalos para obtener su |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mata a los |cRXP_ENEMY_Charred Vanquishers|r y a los |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Charhounds|r y a los |cRXP_ENEMY_Ancient Charhounds|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Mata a los |cRXP_ENEMY_Druids of the Llama|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Haz clic en los |cRXP_PICK_Ash Piles|r en el suelo
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Despojar la |cRXP_LOOT_Magmolia|r dentro de los pequeños charcos de lava
    >>|cRXP_WARN_Si aparece un |cRXP_ENEMY_Tronamagma|r después de despojar uno, mátalo y despójalo para obtener la|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Toma a tu |cRXP_FRIENDLY_Azotador carmesí|r y pelea contra los|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lanza|r |T135834:0|t[Trampa congelante] |cRXP_WARN_sobre un|cRXP_ENEMY_ Escorpión escupeascuas|r. Lanzará|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuamente mientras tu |cRXP_FRIENDLY_Azotador carmesí|r se los bebe, lo que te permitirá completar esta diaria con solo un|r |cRXP_ENEMY_Escorpión escupeascuas|r << Hunter
    >>|cRXP_WARN_Los |cRXP_ENEMY_Emberspit Scorpions|r lanzarán|r |T135826:0|t[Ember Pools] |cRXP_WARN_que tu |cRXP_FRIENDLY_Azotador carmesí|r beberá|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Haz clic en las |cRXP_PICK_Lava Burbujas|r dentro de los charcos de lava para invocar a un |cRXP_ENEMY_Gusano de magma subterráneo|r
    .use 69759 >>|cRXP_WARN_Cuando veas el mensaje de advertencia: "¡El gusano está a punto de morder! ¡Coloca la bomba ahora mismo!" usa|r |T133710:0|t[El mal trago]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Haz clic en las |cRXP_PICK_Magnetic Stones|r y luego recoge los |cRXP_LOOT_Obsidium Meteorites|r que caigan
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Toma al |cRXP_FRIENDLY_Hyjal Fuego fatuo|r siguiéndote a un Portal de fuego
    >>|cRXP_WARN_Mata|cRXP_FRIENDLY_ los mobs que salen de él. Asegúrate de que el |rHyjal Fuego fatuo|r ¡no muera!
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Entrega la misión Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Entrega la misión Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Entrega la misión Some Like It Caliente
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .dailyturnin 29139 >>Entrega la misión Crecimiento agresivo
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .dailyturnin 29143 >>Entrega la misión Aléjate, fuego fatuo
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29263 >> Entrega la misión A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29278 >> Entrega la misión Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29295 >> Entrega la misión The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29297 >> Entrega la misión Adiós Adiós Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29179 >>Entrega la misión Elementales hostiles
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29304 >> Entrega la misión The Dogs of Guerra
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29141 >> Entrega la misión Cuanto más grandes, más fuerte caen
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29142 >> Entrega la misión El regreso de los traidores
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29137 >> Entrega la misión Una brecha en las defensas
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Troncoferro|r
    .dailyturnin 29138 >>Entrega la misión Víctimas de las quemaduras
    .target Captain Irontree

-- Checking if can turn in The Shadow Wardens before starting Druids quests for the day
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .accept 29214 >>Acepta la misión Las celadoras de las Sombras
    .target Malfurion Stormrage
step
    #completewith THB
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
step
    .isQuestComplete 29214
    .goto 198,26.799,62.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitana Saynna Corretormenta|r
    .turnin 29214 >>Entrega la misión Las celadoras de las Sombras
    .target Captain Saynna Stormrunner

-- Beginning of Wardens questline if turned in
step
    #label THB
    .isQuestTurnedIn 29214
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    >>|cRXP_WARN_NOTA: Si acabas de entregar la misión [Las celadoras de las Sombras] y |cRXP_FRIENDLY_Matogarra|r aún no te ofrece esta misión, solo puedes aceptarla después de que se reestablezcan las misiones diarias del día. Vuelve a revisar mañana|r
    .target Matoclaw
    .accept 29215 >>Acepta la misión Empieza la caza
step
    #completewith ITF
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29215
    .goto 338,47.584,90.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitana Saynna Corretormenta|r
    .turnin 29215 >>Entrega la misión Empieza la caza
    .target Captain Saynna Stormrunner
step
    #completewith next
    .goto 338,57.02,66.92,40,0
    .goto 338,71.30,38.43
    .subzone 5744 >> Viaja al Punto Llamasalvaje
step
    .isQuestTurnedIn 29215
    .goto 338,71.309,38.430
    >>Mata a un |cRXP_ENEMY_Druida de la llama|r. Soltará una |cRXP_PICK_Bellota seca|r en el suelo
    >>|cRXP_WARN_Debes matar a |cRXP_ENEMY_Druida de la Llama|r en el Punto Llamasalvaje. Los de los Campos Cenicientos no cuentan|r
    >>Haz clic en la |cRXP_PICK_Bellota seca|r en el suelo
    .accept 29245 >> Acepta la misión La semilla misteriosa
    .mob Druid of the Flame
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .turnin 29245 >> Entrega la misión La semilla misteriosa
    .accept 29249 >> Acepta la misión Época de siembra
    .target Avrilla
step
    .isOnQuest 29249
    .goto 338,53.527,90.736
    .cast 8386,6477,6478 >> Haz clic en la |cRXP_PICK_Tierra de Un'Goro|r en el suelo
    .timer 10,Época de siembra RP
step
    .isQuestTurnedIn 29215
    .goto 338,53.527,90.736
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29249,1 -- Acorn Planted 1/1
step
    .isQuestTurnedIn 29215
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29249 >> Entrega la misión Época de siembra
    .accept 29254 >> Acepta la misión Pequeño azotador
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .turnin 29254 >> Entrega la misión Pequeño azotador
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Avrilla
step -- Embergris 29255
    .isOnQuest 29255
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mata a los |cRXP_ENEMY_Charred Soldiers|r y a los |cRXP_ENEMY_Charred Vanquishers|r. Despójalos para obtener su |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Despojar la |cRXP_LOOT_Magmolia|r dentro de los pequeños charcos de lava
    >>|cRXP_WARN_Si aparece un |cRXP_ENEMY_Tronamagma|r después de despojar uno, mátalo y despójalo para obtener la|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Toma a tu |cRXP_FRIENDLY_Azotador carmesí|r y pelea contra los|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lanza|r |T135834:0|t[Trampa congelante] |cRXP_WARN_sobre un|cRXP_ENEMY_ Escorpión escupeascuas|r. Lanzará|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuamente mientras tu |cRXP_FRIENDLY_Azotador carmesí|r se los bebe, lo que te permitirá completar esta diaria con solo un|r |cRXP_ENEMY_Escorpión escupeascuas|r << Hunter
    >>|cRXP_WARN_Los |cRXP_ENEMY_Emberspit Scorpions|r lanzarán|r |T135826:0|t[Ember Pools] |cRXP_WARN_que tu |cRXP_FRIENDLY_Azotador carmesí|r beberá|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Entrega la misión Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Entrega la misión Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Entrega la misión Some Like It Caliente
    .target Avrilla
step
    #label ITF
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .daily 29206 >>Acepta la misión Al fuego
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escolta y protege al |cRXP_FRIENDLY_Windcaller|r a través del fuego
    >>Mata al |cRXP_ENEMY_Piroseñor|r al final
    >>Habla con |cRXP_FRIENDLY_Señor del Cielo Omnuron|r justo antes de los fuegos si un |cRXP_FRIENDLY_Windcaller|r no está presente
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Windcaller Nordrala
    .target Windcaller Voramus
    .skipgossip
step << skip
    .goto 338,34.400,66.213
    .subzone 5746 >> Haz clic en la |cRXP_PICK_Cuerda de descenso|r para descender al Flujo de Magma
step
    #completewith next
    .subzone 5746 >> |cRXP_WARN_Baja por el gran agujero. Dirígete hacia|r |cRXP_FRIENDLY_Thisalee Cuervo|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thisalee Cuervo|r
    .dailyturnin 29206 >>Entrega la misión Into the Fuego
    .daily 29264 >>Acepta la misión Despiertallamas de La Corriente de Magma
    .daily 29265 >>Acepta la misión Flores de fuego
    .target Thisalee Crow
step
    .isQuestTurnedIn 29272
    .goto 338,41.772,61.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anren Buscasombras|r
    >>|cRXP_WARN_NOTA: Si |cRXP_FRIENDLY_Anren Buscasombras|r no aparece aquí bajo tierra, omite este paso|r
    .daily 29274 >>Acepta la misión Hounds of Shannox
    .target Anren Shadowseeker
    .questcount <1,29273,29274
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Mata a los |cRXP_ENEMY_Flamewaker Sentinels|r, a los |cRXP_ENEMY_Flamewaker Hunters|r y a los |cRXP_ENEMY_Flamewaker Chamán|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step
    .isOnQuest 29274
    #sticky
    #label Houndbones
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Mata a los |cRXP_ENEMY_Charhounds|r. Despoja la |cRXP_LOOT_Houndbone Cenizas|r
    .complete 29274,1 -- Houndbone Ash (6)
    .mob Charhound
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Despoja los |cRXP_LOOT_Luciferns|r en el suelo
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    #optional
    #requires Houndbones
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thisalee Cuervo|r
    .dailyturnin 29264 >>Entrega la misión Flamewakers of the Magma Flujo
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    .aura 98833 >> |cRXP_WARN_Dirígete de vuelta a la gran abertura donde bajaste. De pie en|r |T514278:0|t[Corriente térmica]|cRXP_WARN_, luego salta para volver a la superficie del Frente de Magma|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    +|cRXP_WARN_Salta para volver a la superficie del Frente de Magma|r
    .subzoneskip 5746,1
step
    .isQuestTurnedIn 29272
    .goto 338,35.985,58.974
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r
    .daily 29273 >>Acepta la misión ¿Cómo de caliente?
    .disablecheckbox
    .target Tholo Whitehoof
    .questcount <1,29273,29274
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Entrega la misión Fuego Flores
    .target Choluna
step -- Ricket @ DRUIDS
    .isQuestTurnedIn 29282
    .goto 338,36.251,56.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Omite este paso si ella no está aquí|r
    .daily 29263,29278,29295,29297 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Ricket
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .daily 29290,29287,29288 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthorn Son del viento|r
    .daily 29293,29296 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >> Monta el |cRXP_FRIENDLY_Trained Halcón de fuego|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Lanza|r |T135821:0|t[Semilla de llamas]|cRXP_WARN|(1) y|r |T451164:0|t[Ráfaga de llamas]|cRXP_WARN|(2) para matar a|r |cRXP_ENEMY_Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r y |cRXP_ENEMY_Magma Lords|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_Lanza|r |T514278:0|t[Volver al Horno]|cRXP_WARN|(6) para volver|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296,29273
    .subzone 5748 >> |cRXP_WARN_Usa los Peldaños para subir a Fireplume Risco. Intenta usar una corriente de aire al final de los Peldaños, ya que hacerlo te concederá|r |T236222:0|t[Convalecencia de los vientos]|cRXP_WARN_una mejora que aumenta tu velocidad de ataque y prisa en 100% y te permite saltar mucho más alto y lejos de lo Normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Usa|r |T135155:0|t[Termómetro de Tholo]|cRXP_WARN_en Fireplume Peak en|r |cRXP_PICK_Charcos de lava|r
    >>|cRXP_WARN_Puedes usar|r |T135155:0|t[Termómetro de Tholo]|cRXP_WARN_mientras sigues en tu montura|r
    >>|cRXP_WARN_Salta hacia arriba usando|r |T514278:0|t[Thermal Correntadas] |cRXP_WARN_ubicadas en todo Fireplume Peak para llegar a la cima|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>Despoja un |cRXP_LOOT_Huevo de halcón de fuego|r de la cima de Fireplume Peak
    >>|cRXP_WARN_Salta hacia arriba usando|r |T514278:0|t[Thermal Correntadas] |cRXP_WARN_ubicadas en todo Fireplume Peak para llegar a la cima|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Haz clic en los |cRXP_FRIENDLY_Injured Druidas de la Garfa|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Injured Druid of the Talon
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #sticky
    #label ObsidiumChips
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Mata a los |cRXP_ENEMY_Obsidium Punishers|r. Despoja sus escombros de |cRXP_LOOT_Living Obsidium Esquirla|r en el suelo después
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Mata a los |cRXP_ENEMY_Fire Hawks|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Haz clic en los |cRXP_FRIENDLY_Fire Halcón Hatchlings|r
    >>|cRXP_WARN_La cima de Fireplume Peak tiene una gran cantidad de ellos|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    #optional
    #requires ObsidiumChips
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .dailyturnin 29290 >> Entrega la misión Fuego in the Skies
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .dailyturnin 29287 >> Entrega la misión Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morthis Alasusurro|r
    .dailyturnin 29288 >> Entrega la misión Comenzando Young
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthorn Son del viento|r
    .dailyturnin 29293 >> Entrega la misión Chamuscado Alas
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthorn Son del viento|r
    .dailyturnin 29296 >> Entrega la misión Territorial Birds
    .target Arthorn Windsong
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Acepta la misión Golpe en el corazón
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Mata a uno de los |cRXP_ENEMY_Lieutenants of Llama|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Señor del Cielo Omnuron|r
    .dailyturnin 29305 >>Entrega la misión Golpear en el Corazón
    .target Skylord Omnuron
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29295 >> Entrega la misión The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anren Buscasombras|r
    .dailyturnin 29273 >> Entrega la misión How Caliente
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r
    .dailyturnin 29274 >> Entrega la misión Hounds of Shannox
    .target Tholo Whitehoof

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varlan Ramaalta|r
    .accept 29283 >>Acepta la misión Llamando a los ancestros
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallosaúco|r
    .turnin 29283 >>Entrega la misión Llamando a los ancestros
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29284 >>Acepta la misión La ayuda de los ancestros
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallosaúco|r
    .turnin 29284 >>Entrega la misión La ayuda de los ancestros
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Acepta la misión Golpe en el corazón
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Mata a uno de los |cRXP_ENEMY_Lieutenants of Llama|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Señor del Cielo Omnuron|r
    .dailyturnin 29305 >>Entrega la misión Golpear en el Corazón
    .target Skylord Omnuron
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .accept 29281 >>Acepta la misión Armamento adicional
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29281 >>Entrega la misión Armamento adicional
    .accept 29282 >>Acepta la misión Bien armados
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29282 >>Acepta la misión Bien armados
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Entrega la misión Bien armado
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Haz clic en las |cRXP_PICK_Lava Burbujas|r dentro de los charcos de lava para invocar a un |cRXP_ENEMY_Gusano de magma subterráneo|r
    .use 69759 >>|cRXP_WARN_Cuando veas el mensaje de advertencia: "¡El gusano está a punto de morder! ¡Coloca la bomba ahora mismo!" usa|r |T133710:0|t[El mal trago]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Haz clic en las |cRXP_PICK_Magnetic Stones|r y luego recoge los |cRXP_LOOT_Obsidium Meteorites|r que caigan
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Mata a los |cRXP_ENEMY_Obsidium Punishers|r. Despoja sus escombros de |cRXP_LOOT_Living Obsidium Esquirla|r en el suelo después
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Usa el|r |T135129:0|t[Aguijón de indeseadas] |cRXP_WARN_en |cRXP_ENEMY_Druida de la Llama|r que estén volando en el aire|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29263 >> Entrega la misión A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29278 >> Entrega la misión Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29295 >> Entrega la misión The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29297 >> Entrega la misión Adiós Adiós Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayla Ventiscaumbría|r
    .accept 29279 >>Acepta la misión Llenar la Poza de la Luna
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .turnin 29279 >> Entrega la misión Llenar la Poza de la Luna
    .accept 29280 >> Acepta la misión Aguas nutritivas
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .accept 29280 >> Acepta la misión Aguas nutritivas
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayla Ventiscaumbría|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Entrega la misión Aguas nutritivas
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .accept 29203 >> Acepta la misión En las profundidades
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Entra en Igneous Depths
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Mata a |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Sal de Igneous Depths
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 29203 >> Entrega la misión En las profundidades
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Ahora habrás recibido correo de |cRXP_FRIENDLY_Theresa Piel de Corteza|r con un|r |T514925:0|t[|cRXP_LOOT_Guardapelo manchado de humo|r]
    .use 69854 >>|cRXP_WARN_Usa el|r |T514925:0|t[|cRXP_LOOT_Guardapelo manchado de humo|r] |cRXP_WARN_para comenzar la misión|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Acepta la misión Un guardapelo manchado de humo
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Viaja a Claro de la Luna
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Entrega la misión Un guardapelo manchado de humo
    .accept 29302 >> Acepta la misión Desentrañar los secretos
    .timer 42,Roleplay de Desentrañar los secretos
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Entrega la misión Desentrañar los secretos
    .accept 29303 >> Acepta la misión Tragedia y familia
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Haz clic en la |cRXP_PICK_Tumba de elfo de la noche|r
    .timer 48,Tragedia y familia RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29303 >> Entrega la misión Tragedia y familia
    .accept 29310 >> Acepta la misión Solo la punta del asunto
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Viaja a Monte Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Haz clic en la |cRXP_PICK_Lápida pequeña|r
    .timer 59,Solo la punta del asunto RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29310 >> Entrega la misión Solo la punta del asunto
    .accept 29311 >> Acepta la misión El resto es historia
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .turnin 29311 >> Entrega la misión El resto es historia
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +¡Felicidades por desbloquear todo del Frente Magma! Continúa completando ya sea (|cRXP_ENEMY_2.5|r - Frente Magma + Druidas) o (|cRXP_PICK_2.5|r - Frente Magma + Guardianes) para ganar más |T513195:0|t[Marks of the World Árbol]
    >>|cRXP_FRIENDLY_Zen'Vorka|r vende |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka's Cache|r] por 30 |T513195:0|t[Marks of the World Árbol] que puede contener un objeto verde aleatorio o el compañero raro |T294481:0|t[|cFF0070FFScorched Piedra|r]
    .target Zen'Vorka
step
    .isQuestAvailable 29214
    #label DruidEnd
    +|cRXP_WARN_Has completado todas las misiones diarias disponibles para hoy. Recarga esta misma guía mañana (|r|cRXP_ENEMY_2.5|r - The Magma Front + Druidas|cRXP_WARN_) para continuar completando las misiones diarias hasta que hayas adquirido suficiente|r |T513195:0|t[Marks of the World Árbol]
step
    .isQuestTurnedIn 29214
    +|cRXP_WARN_Has desbloqueado misiones diarias de [Las celadoras de las Sombras]. Tienes la opción de completar misiones para Druidas de la Garfa o Las celadoras de las Sombras. Si deseas completar misiones para Druidas de la Garfa, recarga esta misma guía mañana (|r|cRXP_ENEMY_2.5|r - The Magma Front + Druidas|cRXP_WARN_) o (|r|cRXP_PICK_2.5|r - The Magma Front + Guardianes|cRXP_WARN_) mañana si deseas completar misiones de Las celadoras de las Sombras. Ambos generan la misma cantidad de|r |T513195:0|t[Marks of the World Árbol]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group Frente de Magma
#name D_1_TSOM_Guardianes
#displayname |cRXP_PICK_2.5|r - Magma Front + Guardianes

step
    #optional
    .isQuestAvailable 29214
    +|cRXP_WARN_Primero debes reunir 150|r |T513195:0|t[Marks of the World Árbol] |cRXP_WARN_y entregar la misión [Las celadoras de las Sombras] para poder completar sus misiones diarias|r
    .turnin 29214 >>Entrega la misión Las celadoras de las Sombras
    .target Captain Saynna Stormrunner
    .goto 198,26.799,62.157
step
    #optional
    #completewith HyjalQuests
	.zone 85 >> Viaja a Orgrimmar << Horde
	.zone 84 >> Viaja a Ventormenta << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Usa el portal hacia Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Soren Puestaluna|r
    .target Captain Soren Moonfall
    .daily 29128 >>Acepta la misión Los Protectores de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r o |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Haz clic en un |cRXP_FRIENDLY_Hijo de Tortolla|r
    >>|cRXP_WARN_Apunta hacia el agua y lanza|r |T132219:0|t[Puntapié a tortuga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .use 69235 >> |cRXP_WARN_Usa los|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_en sus cadáveres|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_para transformarte en|r |cRXP_FRIENDLY_Alas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >> |cRXP_WARN_Usa la habilidad|r |T132172:0|t[Reunir la bandada] (1) |cRXP_WARN_cerca de |cRXP_FRIENDLY_Alpine Songbirds|r, |cRXP_FRIENDLY_Forest Owls|r y |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Colócate frente a un |cRXP_FRIENDLY_Espíritu de Malorne|r
    >>|cRXP_WARN_Estos son los ciervos fantasma que cargan aleatoriamente por la zona|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >> Haz clic en el |cRXP_PICK_Escalar Árbol|r para empezar a treparlo
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Haz clic en un |cRXP_FRIENDLY_Hyjal Osezno|r mientras estés en el árbol
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lanza|r |T450907:0|t[Trepar] (1) |cRXP_WARN_hasta que estés en la cima, apunta la flecha hacia el trampolín junto a |cRXP_FRIENDLY_Vigilante Taldros|r, luego lanza|r |T446127:0|t[Lanzar oso] (4)|cRXP_WARN_. Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_y repite el proceso|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >> |cRXP_WARN_Lanza|r |T450905:0|t[Bajar] (2) |cRXP_WARN_para salir del árbol|r
step
    .isOnQuest 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29161 >>Entrega la misión Esos osos de ahí arriba
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isQuestTurnedIn 29161
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29162 >>Acepta la misión La bendición de la naturaleza
step
    .isOnQuest 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29125 >>Entrega la misión Entre los árboles
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29126 >>Acepta la misión El poder de Malorne
step
    .isOnQuest 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29147 >>Entrega la misión Reunir la bandada
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isQuestTurnedIn 29147
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29148 >>Acepta la misión Alas ardientes
step
    .isOnQuest 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29164 >>Entrega la misión Perfecciona a tu lobo
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isQuestTurnedIn 29164
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29165 >>Acepta la misión La llamada de la manada
step
    .isOnQuest 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29101 >>Entrega la misión Temporada de patadas
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    .isQuestTurnedIn 29101
    >>Haz clic en la ventana emergente para entregar la misión
    .accept 29122 >>Acepta la misión Ecos de Némesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >> |cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Piroaraña|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >> Mata a la |cRXP_ENEMY_Piroaraña|r
    >>|cRXP_WARN_Usa la|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para también eliminar el|r |T136016:0|t[Descarga de veneno hirviente] |cRXP_WARN_perjuicio de ti mismo que |cRXP_ENEMY_Piroaraña|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >> |cRXP_WARN_Usa|r el |T135139:0|t[Bastón de guardián] |cRXP_WARN_en la|cRXP_PICK_ |rPile of Cenizas|r para invocar |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >> Mata al |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >> |cRXP_WARN_Usa la|r |T135992:0|t[Pluma de la Reina pájaro] |cRXP_WARN_cerca del portal de fuego occidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >> Mata a |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >> |cRXP_WARN_Usa el|r |T134298:0|t[Colmillos of the Lobo] |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >> Mata a |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Habla con |cRXP_FRIENDLY_Tooga|r para invocar a |cRXP_ENEMY_Némesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mata a |cRXP_ENEMY_Némesis|r
    >>|cRXP_WARN_Colócate debajo del caparazón de |cRXP_FRIENDLY_Tooga|r para protegerte del|r |cRXP_ENEMY_Némesis|r |T135830:0|t[Furia de arrabio] |cRXP_WARN_lanzamiento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Despoja los |cRXP_LOOT_Blueroot Vines|r en el suelo
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mata a los |cRXP_ENEMY_Invaders de las Tierras de Fuego|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Mata a los |cRXP_ENEMY_Charred Flamewakers|r. Despójalos para obtener sus |cRXP_LOOT_Flamewaker Escamas|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r y a los |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r. Despójalos para obtener sus |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Seething Pyrelords|r. Despójalos para obtener sus |cRXP_LOOT_Flame-Wreathed Corazones|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mata a los |cRXP_ENEMY_Fiery Behemoths|r y a los |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entrega la misión Bendición de la Naturaleza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entrega la misión Ecos de Némesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entrega la misión El poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entrega la misión La llamada de la manada
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entrega la misión Alas ardientes
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entrega la misión Suministros for the Otro Side
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entrega la misión Ira Contra las Llamas
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Entrega la misión Relieving the Dolor
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Entrega la misión Tratando the Wounds
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorda'en Tejenoche|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Entrega la misión Liberando the Pressure
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .daily 29139,29143 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    >>|cRXP_WARN_Omitir este paso si |cRXP_FRIENDLY_Ricket|r no te ofrece una misión aquí hoy|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Troncoferro|r
    .daily 29138 >>Acepta la misión Víctimas de las quemaduras
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .daily 29179 >>Acepta la misión Elementales hostiles
    .daily 29304,29141,29142,29137 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29128 >>Entrega la misión Los Protectores of Hyjal
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >> |cRXP_WARN_Usa el|r |T463860:0|t[Bálsamo encantado] |cRXP_WARN_en|r |cRXP_FRIENDLY_Wounded Hyjal Defenders|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mata a los |cRXP_ENEMY_Charred Soldiers|r y a los |cRXP_ENEMY_Charred Vanquishers|r. Despójalos para obtener su |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mata a los |cRXP_ENEMY_Charred Vanquishers|r y a los |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Charhounds|r y a los |cRXP_ENEMY_Ancient Charhounds|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Mata a los |cRXP_ENEMY_Druids of the Llama|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Mata a los |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Haz clic en los |cRXP_PICK_Ash Piles|r en el suelo
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Despojar la |cRXP_LOOT_Magmolia|r dentro de los pequeños charcos de lava
    >>|cRXP_WARN_Si aparece un |cRXP_ENEMY_Tronamagma|r después de despojar uno, mátalo y despójalo para obtener la|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Toma a tu |cRXP_FRIENDLY_Azotador carmesí|r y pelea contra los|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lanza|r |T135834:0|t[Trampa congelante] |cRXP_WARN_sobre un|cRXP_ENEMY_ Escorpión escupeascuas|r. Lanzará|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuamente mientras tu |cRXP_FRIENDLY_Azotador carmesí|r se los bebe, lo que te permitirá completar esta diaria con solo un|r |cRXP_ENEMY_Escorpión escupeascuas|r << Hunter
    >>|cRXP_WARN_Los |cRXP_ENEMY_Emberspit Scorpions|r lanzarán|r |T135826:0|t[Ember Pools] |cRXP_WARN_que tu |cRXP_FRIENDLY_Azotador carmesí|r beberá|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Haz clic en las |cRXP_PICK_Lava Burbujas|r dentro de los charcos de lava para invocar a un |cRXP_ENEMY_Gusano de magma subterráneo|r
    .use 69759 >>|cRXP_WARN_Cuando veas el mensaje de advertencia: "¡El gusano está a punto de morder! ¡Coloca la bomba ahora mismo!" usa|r |T133710:0|t[El mal trago]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Haz clic en las |cRXP_PICK_Magnetic Stones|r y luego recoge los |cRXP_LOOT_Obsidium Meteorites|r que caigan
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Toma al |cRXP_FRIENDLY_Hyjal Fuego fatuo|r siguiéndote a un Portal de fuego
    >>|cRXP_WARN_Mata|cRXP_FRIENDLY_ los mobs que salen de él. Asegúrate de que el |rHyjal Fuego fatuo|r ¡no muera!
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Entrega la misión Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Entrega la misión Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Entrega la misión Some Like It Caliente
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .dailyturnin 29139 >>Entrega la misión Crecimiento agresivo
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rayne Cantapluma|r
    .dailyturnin 29143 >>Entrega la misión Aléjate, fuego fatuo
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29263 >> Entrega la misión A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29278 >> Entrega la misión Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29295 >> Entrega la misión The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29297 >> Entrega la misión Adiós Adiós Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29179 >>Entrega la misión Elementales hostiles
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29304 >> Entrega la misión The Dogs of Guerra
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29141 >> Entrega la misión Cuanto más grandes, más fuerte caen
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29142 >> Entrega la misión El regreso de los traidores
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .dailyturnin 29137 >> Entrega la misión Una brecha en las defensas
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Troncoferro|r
    .dailyturnin 29138 >>Entrega la misión Víctimas de las quemaduras
    .target Captain Irontree
step
    .isQuestTurnedIn 29214
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_General Taldris Puestaluna|r
    .daily 29205 >>Acepta la misiónLa Cumbre Inhóspita
    .target General Taldris Moonfall
step
    .isOnQuest 29205
    .goto 338,54.503,70.816,10,0
    .goto 338,66.301,65.137
    >>Protege a uno de los |cRXP_FRIENDLY_Druidas|r mientras toma The Forlorn Spire
    >>Mata al |cRXP_ENEMY_Piroseñor|r y a los |cRXP_ENEMY_Flamewatch Sentinels|r al final
    .complete 29205,1 -- Druid Assault Group Protected
    .target Keeper Taldros
    .target Turak Runetotem
    .target Deldren Ravenelm
    .mob Pyrelord
    .mob Flamewatch Sentinel
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marin Alacuchilla|r
    .dailyturnin 29205 >>Entrega la misión The Forlorn Spire
    .daily 29211,29192 >>Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Marin Bladewing
step
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    .goto 338,66.259,66.141
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r
    >>|cRXP_WARN_Omite este paso si no te ofrece esta misión|r
    .daily 29276 >>Acepta la misión La reina de las arañas de llamas
    .target Tholo Whitehoof
step -- Ricket @ WARDENS
    .isQuestTurnedIn 29282
    .goto 338,66.429,65.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Omite este paso si ella no está aquí|r
    .daily 29263,29278,29295,29297 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Ricket
step
    .goto 338,66.100,63.908
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deldren Olmo de Cuervos|r
    .daily 29189,29159,29160 >> Acepta cualquiera de las dos misiones diarias aleatorias que te ofrezcan
    .disablecheckbox
    .target Deldren Ravenelm
    .questcount <2,29189,29159,29160
step -- Solar Core Destruction 29211
    .isOnQuest 29211
    #label SolarCore
    #sticky
    .goto 338,70.815,38.196
    >>Haz clic en el |cRXP_PICK_Núcleo solar|r
    .complete 29211,1 -- Solar Core detonated 1/1
step -- The Wardens are Watching 29192
    .isOnQuest 29192
    #label WardensWatching
    #sticky
    #loop
    .goto 338,71.6,44.6,30,0
    .goto 338,72.0,37.4,30,0
    .goto 338,68.8,41.4,30,0
    >>Ataca al |cRXP_ENEMY_Druida de la Llama|r hasta debilitarlo y luego llévalo a la trampa de los |cRXP_FRIENDLY_Shadow Wardens|r
    .complete 29192,1 -- Druid of the Flame captured 1/1
    .mob Druid of the Flame
step -- The Flame Spider Queen 29276
    .isOnQuest 29276
    #label FlameSpider
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Mata a los |cRXP_ENEMY_Cinderweb Creepers|r. Despójalos para obtener su |cRXP_LOOT_Flame Veneno|r
    >>Mata a los |cRXP_ENEMY_Cinderweb Spinners|r. Despójalos para obtener su |cRXP_LOOT_Searing Telaraña Fluid|r
    >>|cRXP_WARN_También obtendrás su |cRXP_LOOT_Flame Veneno|r y el |cRXP_LOOT_Searing Telaraña Fluid|r de forma pasiva mientras les haces daño|r
    .complete 29276,1 -- Flame Venom (8)
    .mob +Cinderweb Creeper
    .complete 29276,2 -- Searing Web Fluid (8)
    .mob +Cinderweb Spinner
step -- Wicked Webs 29189
    .isOnQuest 29189
    #label WickedWebs
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Destruye los |cRXP_ENEMY_Cinderweb Cocoons|r
    .complete 29189,1 -- Victims freed  (8)
    .mob Cinderweb Cocoon
step -- Pyrorachnophobia 29159
    .isOnQuest 29159
    #label Pyrorachnophobia
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Mata a los |cRXP_ENEMY_Cinderweb Creepers|r y a los |cRXP_ENEMY_Cinderweb Spinners|r
    .complete 29159,1 -- Cinderweb spider slain  (8)
    .mob Cinderweb Creeper
    .mob Cinderweb Spinner
step -- Egg-stinction 29160
    .isOnQuest 29160
    #label Eggstinction
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Abre los |cRXP_PICK_Cinderweb Huevo Sacs|r. Despójalos para obtener los |cRXP_LOOT_Cinderweb Eggs|r
    .complete 29160,1 -- Cinderweb Egg (20)
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #label ByeByeBurdy
    #sticky
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Usa el|r |T135129:0|t[Aguijón de indeseadas] |cRXP_WARN_en |cRXP_ENEMY_Druida de la Llama|r que estén volando en el aire|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    #optional
    #requires SolarCore
step
    #optional
    #requires WardensWatching
step
    #optional
    #requires FlameSpider
step
    #optional
    #requires WickedWebs
step
    #optional
    #requires Pyrorachnophobia
step
    #optional
    #requires Eggstinction
step
    #optional
    #requires ByeByeBurdy
step
    .isQuestComplete 29160
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deldren Olmo de Cuervos|r
    .dailyturnin 29160 >> Entrega la misión Huevo-stinction
    .target Deldren Ravenelm
step
    .isQuestComplete 29159
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deldren Olmo de Cuervos|r
    .dailyturnin 29159 >> Entrega la misión Pyrorachnophobia
    .target Deldren Ravenelm
step
    .isQuestComplete 29189
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deldren Olmo de Cuervos|r
    .dailyturnin 29189 >> Entrega la misión Wicked Telaranas
    .target Deldren Ravenelm
step
    .isQuestComplete 29192
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marin Alacuchilla|r
    .dailyturnin 29192 >>Entrega la misión Las Celadoras are Watching
    .target Marin Bladewing
step
    .isQuestComplete 29211
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marin Alacuchilla|r
    .dailyturnin 29211 >>Entrega la misión Solar Núcleo Destrucción
    .target Marin Bladewing
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marin Alacuchilla|r
    .daily 29210 >> Acepta la misión Soportando el calor
    .target Marin Bladewing
step -- this step will autoskip if they completed 29276 earlier
    .goto 338,65.959,66.093
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anren Buscasombras|r
    >>|cRXP_WARN_Omite este paso si él no está aquí|r
    .daily 29275 >>Acepta la misión Los métodos de Fandral
    .disablecheckbox
    .target Anren Shadowseeker
    .questcount <1,29275,29276
step -- Enduring the Heat 29210
    .isOnQuest 29210
    .goto 338,57.491,49.532
    >>|cRXP_WARN_Botín en Igneous Depths|r
    .complete 29210,1 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #completewith next
    >>Despoja la |cRXP_LOOT_Llama Druida Bastón|r, la |cRXP_LOOT_Llama Druida Spellbook|r, la |cRXP_LOOT_Llama Druida Reagent Pouch|r y la |cRXP_LOOT_Llama Druida Ídolo|r
    >>|cRXP_WARN_Están dispersos en Igneous Depths|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step -- Enduring the Heat 29210
    .isOnQuest 29210
    #loop
    .goto 338,61.620,52.938,8,0
    .goto 338,66.330,52.184,8,0
    .goto 338,61.386,48.457,8,0
    .goto 338,64.718,59.267,8,0
    .goto 338,68.854,58.329,8,0
    .goto 338,68.109,66.500,8,0
    .goto 338,64.165,66.062,8,0
    .goto 338,60.547,59.997,8,0
    >>|cRXP_WARN_Sigue la flecha alrededor y haz clic en la |cRXP_PICK_Llama Protección Runas|r en el suelo|r
    >>|cRXP_WARN_Hacer clic en una |cRXP_PICK_Llama Protección Runas|r matará todos los |cRXP_ENEMY_Inestable Flameragers|r que te atacan|r
    .complete 29210,2 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #loop
    .goto 338,61.620,52.938,20,0
    .goto 338,66.330,52.184,20,0
    .goto 338,61.386,48.457,20,0
    .goto 338,64.718,59.267,20,0
    .goto 338,68.854,58.329,20,0
    .goto 338,68.109,66.500,20,0
    .goto 338,64.165,66.062,20,0
    .goto 338,60.547,59.997,20,0
    >>Despoja la |cRXP_LOOT_Llama Druida Bastón|r, la |cRXP_LOOT_Llama Druida Spellbook|r, la |cRXP_LOOT_Llama Druida Reagent Pouch|r y la |cRXP_LOOT_Llama Druida Ídolo|r
    >>|cRXP_WARN_Están dispersos en Igneous Depths|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step
    .isQuestComplete 29210
    .goto 338,57.742,49.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theresa Piel de corteza|r
    .dailyturnin 29210 >> Entrega la misión Enduring the Calor
    .target Theresa Barkskin
step
    .isQuestTurnedIn 29284
    .goto 338,57.518,49.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalis Cazasombras|r
    .daily 29243 >>Acepta la misión Golpe en el corazón
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Mata a uno de los |cRXP_ENEMY_Lieutenants of Llama|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
step
    .isQuestComplete 29276
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anren Buscasombras|r
    .dailyturnin 29276 >> Entrega la misión The Llama Araña Reina
    .target Anren Shadowseeker
step
    .isQuestComplete 29275
    .goto 338,51.547,85.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tholo Pezuña Blanca|r
    .dailyturnin 29275 >> Entrega la misión Fandral's Methods
    .target Tholo Whitehoof
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29297 >> Entrega la misión Adiós Adiós Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitana Saynna Corretormenta|r
    .dailyturnin 29243 >>Entrega la misión Golpear en el Corazón
    .target Captain Saynna Stormrunner

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varlan Ramaalta|r
    .accept 29283 >>Acepta la misión Llamando a los ancestros
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallosaúco|r
    .turnin 29283 >>Entrega la misión Llamando a los ancestros
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29284 >>Acepta la misión La ayuda de los ancestros
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallosaúco|r
    .turnin 29284 >>Entrega la misión La ayuda de los ancestros
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,51.713,81.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalis Cazasombras|r
    .daily 29243 >>Acepta la misión Golpe en el corazón
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Mata a uno de los |cRXP_ENEMY_Lieutenants of Llama|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitana Saynna Corretormenta|r
    .dailyturnin 29243 >>Entrega la misión Golpear en el Corazón
    .target Captain Saynna Stormrunner
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .accept 29281 >>Acepta la misión Armamento adicional
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29281 >>Entrega la misión Armamento adicional
    .accept 29282 >>Acepta la misión Bien armado
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29282 >>Acepta la misión Bien armado
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Entrega la misión Bien armado
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >> Acepta cualquier misión diaria aleatoria que se ofrezca
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Haz clic en las |cRXP_PICK_Lava Burbujas|r dentro de los charcos de lava para invocar a un |cRXP_ENEMY_Gusano de magma subterráneo|r
    .use 69759 >>|cRXP_WARN_Cuando veas el mensaje de advertencia: "¡El gusano está a punto de morder! ¡Coloca la bomba ahora mismo!" usa|r |T133710:0|t[El mal trago]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Haz clic en las |cRXP_PICK_Magnetic Stones|r y luego recoge los |cRXP_LOOT_Obsidium Meteorites|r que caigan
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Mata a los |cRXP_ENEMY_Obsidium Punishers|r. Despoja sus escombros de |cRXP_LOOT_Living Obsidium Esquirla|r en el suelo después
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >> |cRXP_WARN_Usa el|r |T135129:0|t[Aguijón de indeseadas] |cRXP_WARN_en |cRXP_ENEMY_Druida de la Llama|r que estén volando en el aire|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29263 >> Entrega la misión A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29278 >> Entrega la misión Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29295 >> Entrega la misión The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Damek Barbaflorida|r
    .dailyturnin 29297 >> Entrega la misión Adiós Adiós Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayla Ventiscaumbría|r
    .accept 29279 >>Acepta la misión Llenar la Poza de la Luna
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .turnin 29279 >> Entrega la misión Llenar la Poza de la Luna
    .accept 29280 >> Acepta la misión Aguas nutritivas
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Matogarra|r
    .accept 29280 >> Acepta la misión Aguas nutritivas
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayla Ventiscaumbría|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Entrega la misión Aguas nutritivas
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .accept 29203 >> Acepta la misión En las profundidades
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Entra en Igneous Depths
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Mata a |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Sal de Igneous Depths
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .target Malfurion Stormrage
    .turnin 29203 >> Entrega la misión En las profundidades
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Ahora habrás recibido correo de |cRXP_FRIENDLY_Theresa Piel de Corteza|r con un|r |T514925:0|t[|cRXP_LOOT_Guardapelo manchado de humo|r]
    .use 69854 >>|cRXP_WARN_Usa el|r |T514925:0|t[|cRXP_LOOT_Guardapelo manchado de humo|r] |cRXP_WARN_para comenzar la misión|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >> Acepta la misión Un guardapelo manchado de humo
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >> Usa el portal al Monte Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >> Viaja a Claro de la Luna
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29298 >> Entrega la misión Un guardapelo manchado de humo
    .accept 29302 >> Acepta la misión Desentrañar los secretos
    .timer 42,Roleplay de Desentrañar los secretos
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rabine Saturna|r
    .turnin 29302 >> Entrega la misión Desentrañar los secretos
    .accept 29303 >> Acepta la misión Tragedia y familia
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >> Haz clic en la |cRXP_PICK_Tumba de elfo de la noche|r
    .timer 48,Tragedia y familia RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29303 >> Entrega la misión Tragedia y familia
    .accept 29310 >> Acepta la misión Solo la punta del asunto
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >> Viaja a Monte Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >> Haz clic en la |cRXP_PICK_Lápida pequeña|r
    .timer 59,Solo la punta del asunto RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_Espera al Roleplay|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Haz clic en la ventana emergente para entregar la misión
    .turnin 29310 >> Entrega la misión Solo la punta del asunto
    .accept 29311 >> Acepta la misión El resto es historia
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >> Pasa a través del Portal a las Tierras de Fuego
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfurion Tempestira|r
    .turnin 29311 >> Entrega la misión El resto es historia
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +¡Felicidades por desbloquear todo del Frente Magma! Continúa completando ya sea (|cRXP_ENEMY_2.5|r - Frente Magma + Druidas) o (|cRXP_PICK_2.5|r - Frente Magma + Guardianes) para ganar más |T513195:0|t[Marks of the World Árbol]
    >>|cRXP_FRIENDLY_Zen'Vorka|r vende |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka's Cache|r] por 30 |T513195:0|t[Marks of the World Árbol] que puede contener un objeto verde aleatorio o el compañero raro |T294481:0|t[|cFF0070FFScorched Piedra|r]
    .target Zen'Vorka

step
    #label WardenEnd
    +|cRXP_WARN_Has completado todas las misiones diarias disponibles para hoy. Recarga esta misma guía mañana (|r|cRXP_PICK_2.5|r - Frente Magma + Guardianes|cRXP_WARN_) para continuar completando las misiones diarias hasta que hayas adquirido lo suficiente|r |T513195:0|t[Marks of the World Árbol]
]])
