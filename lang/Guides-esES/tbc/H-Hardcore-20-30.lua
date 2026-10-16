if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 21-24 Stonetalon/The Barrens
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next 24-25 Laderas de Trabalomas

step
    #completewith MeetingTW
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
    .zoneskip Orgrimmar
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Viaja hacia |cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Viaja hacia |cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Compra|r |T134419:0|t[Runas de teletransporte] |cRXP_BUY_a este vendedor|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Viaja por la torre, luego hacia la Fortaleza Grommash
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Sube la torre hacia |cRXP_FRIENDLY_Doras|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Sube la torre hacia |cRXP_FRIENDLY_Doras|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar
    .target Doras
step << !Shaman !Warrior
    .goto Orgrimmar,31.62,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 9626 >> Entrega la misión Encuentro con el Jefe de Guerra << BloodElf
    --.accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >> Entrega la misión Encuentro con el Jefe de Guerra << !BloodElf
    .target Thrall
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
    .group
step << BloodElf
    .goto Orgrimmar,31.62,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cantoalba|r
    .accept 9428 >> Acepta la misión "Misión en Puesto del Hachazo"
    .target Ambassador Dawnsinger
    .isQuestTurnedIn 9626
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pyreanor|r
    .train 879 >> Aprende tus hechizos de clase
    .target Master Pyreanor
step
    #label MeetingTW
    .goto Orgrimmar,38.93,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zor|r
    .accept 1061 >> Acepta la misión Los espíritus del Espolón
    .target Zor Lonetree
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Aprende tus hechizos de clase
    .target Pephredo
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Thuul|r en lo alto de la cabaña
    .train 3567 >> Aprende |T135759:0|t[Teletransporte a: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Aprende tus hechizos de clase
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >> Entrega la misión Pícaros de la Mano Destrozada
    .accept 2460 >> Acepta la misión El saludo de los Mano Destrozada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Selecciona |cRXP_FRIENDLY_Shenthul|r y hazle un saludo|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >> Entrega la misión El saludo de los Mano Destrozada
    .accept 2458 >> Acepta la misión Agente encubierto
    .target Shenthul
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grol'dar|r
    .train 1094 >> Aprende tus hechizos de clase
    .target Grol'dar
step << Warlock
    #optional
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandona la misión Carendin Summons
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r y |cRXP_FRIENDLY_Cazul|r
    .accept 1507 >>Acepta la misión Devoradora de almas
    .target +Gan'rul Bloodeye
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >> Entrega la misión Devoradora de almas
    .accept 1508 >> Acepta la misión Cazul, el ciego
    --.accept 65601 >> Accept Love Hurts
    .target +Cazul
    .goto Orgrimmar,47.05,46.43
    --TODO: Add 65601 on Black Temple release
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >> Viaja hacia |cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entrega la misión Cazul, el ciego
    .accept 1509 >>Acepta la misión Noticias de Dogran
    .target Zankaja
step << skip --Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >> Viaja hacia |cRXP_FRIENDLY_Magar|r
step << skip --Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magar|r
    .turnin 65601 >> Entrega la misión El amor duele
    .accept 65610 >> Acepta la misión Ojalá estuvieras aquí
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Sube las escaleras hacia |cRXP_FRIENDLY_Thuul|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thuul|r
    .train 3567 >> Aprende |T135759:0|t[Teletransporte a: Orgrimmar]
    .money <0.2000
    .target Thuul
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
step << Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >> Viaja hacia |cRXP_FRIENDLY_Hanashi|r
step << Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende Hachas de 2 manos
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step
    #completewith FlyXroads1
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Vuela a El Cruce
    .target Doras
    .zoneskip The Barrens
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acepta la misión Consumido por el odio
    .accept 4921 >>Acepta la misión Perdida en la batalla
    .target Mankrik
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entrega la misión Las Charcas del Olvido
    .accept 877 >>Acepta la misión El Oasis Estancado
    .target Tonga Runetotem
    .isQuestComplete 870
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>Acepta la misión El Oasis Estancado
    .target Tonga Runetotem
    .isQuestTurnedIn 870
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .accept 905 >>Acepta la misión Los segadores furiosos
    .target Sergra Darkthorn
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entrega la misión Noticias de Dogran
    .accept 1510 >>Acepta la misión Noticias de Dogran
    .target Gazrog
step
    #label FlyXroads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
step
    #optional
    #completewith TestSeeds
    >>Kill |cRXP_ENEMY_Zancudo de llanura ornario|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>Mata a los |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r y sus |cRXP_LOOT_Plumas|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Haz clic en la |cRXP_PICK_Fisura burbujeante|r bajo el agua
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .subzone 380 >>Regresa a El Cruce
    .dungeon WC
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .turnin 877 >>Entrega la misión El Oasis Estancado
    .accept 880 >>Acepta la misión Seres alterados
    .target Tonga Runetotem
    .dungeon WC
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Mata |cRXP_ENEMY_Quijafortes de oasis|r en y alrededor del lago. Despójalos para obtener sus |cRXP_LOOT_Caparazones|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
    .dungeon WC
step
    #optional
    #completewith LostmyWife
    >>Kill |cRXP_ENEMY_Zancudo de llanura ornario|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith Nest
    >>Mata a los |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r y sus |cRXP_LOOT_Plumas|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Mata a |cRXP_ENEMY_Verog|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Tiene probabilidad de aparecer cada vez que un |cRXP_ENEMY_Kolkar|r muere|r
    >>|cRXP_WARN_En un servidor muy poblado o en un lanzamiento nuevo, tu mejor opción es acampar en su punto de aparición|r
    >>|cRXP_WARN_Omite este paso si no puedes obtenerlo|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Despoja la |cRXP_PICK_Plata robada|r del suelo
    .complete 3281,1 --Stolen Silver (1)
step
    .goto The Barrens,52.60,46.10
    >>Haz clic en el |cRXP_PICK_Nido de raptor azul|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Haz clic en el |cRXP_PICK_Nido de raptor rojo|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Haz clic en el |cRXP_PICK_Nido de raptor amarillo|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Termina de matar |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver apaleado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno de truenagarto|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
	>>Mata a |cRXP_ENEMY_Lakota'mani|r. Despójalo para obtener la |T132318:0|t[|cRXP_LOOT_Pezuña de Lakota'mani|r]
    >>Usa la |T132318:0|t[|cRXP_WARN_Pezuña de Lakota'mani|cRXP_LOOT_] |rpara iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    >>|cRXP_WARN_Omite este paso si no puedes encontrarlo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r. No es necesario completar esto ahora
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label CampTArrive
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> Viaja al Campamento Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 883 >>Entrega la misión Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 878 >>Acepta la misión Tribus en guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Vuela a El Cruce
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r y |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entrega la misión Perdida en la batalla
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Entrega la misión Seres alterados
    .accept 1489 >>Acepta la misión Hamuul Tótem de Runa
    .accept 3301 >>Acepta la misión Mura Tótem de Runa
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entrega la misión Los segadores furiosos
    .accept 3261 >>Acepta la misión Jorn Vidente del Cielo
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entrega la misión La plata robada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r y |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entrega la misión Perdida en la batalla
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Entrega la misión El Oasis Estancado
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entrega la misión Los segadores furiosos
    .accept 3261 >>Acepta la misión Jorn Vidente del Cielo
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entrega la misión La plata robada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon !WC
step
    #label Xroadsturnins2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Entrega la misión Verog el Derviche
    .accept 852 >>Acepta la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Acepta la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith BloodFeeders
    .zone Stonetalon Mountains >>Viaja a Sierra Espolón
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r y |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Entrega la misión Los espíritus del Espolón
    .accept 1062 >>Acepta la misión Los invasores goblin
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Acepta la misión Venga mi aldea
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .maxlevel 20
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >>Entrega la misión Los espíritus del Espolón
    .accept 1062 >>Acepta la misión Los invasores goblin
    .target +Seereth Stonebreak
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Mata |cRXP_ENEMY_Rufianes Tótem Siniestro|r y |cRXP_ENEMY_Mercenarios Tótem Siniestro|r en la zona
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >>Entrega la misión Venga mi aldea
    .accept 6629 >>Acepta la misión Mata a Grundig Nube Negra
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Makaba|r
    .accept 6629 >>Acepta la misión Mata a Grundig Nube Negra
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith BloodFeeders
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Sigue el camino de la izquierda hacia arriba
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entrega la misión Noticias de Dogran
    .accept 1511 >>Acepta la misión Jarabe de Ken'zigla
    .target Ken'zigla
step
    #label BloodFeeders
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acepta la misión Chupasangres
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Sube por el camino hacia la hoguera
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Mata a |cRXP_ENEMY_Grundig Nube Negra|r y a los |cRXP_ENEMY_Toscos Tótem Siniestro|r
    >>|cRXP_WARN_Asegúrate de matar a los seis|r |cRXP_ENEMY_Tosco Tótem Siniestro|r |cRXP_WARN_antes de iniciar la misión adentro|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Acepta la misión Protege a Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escolta a |cRXP_FRIENDLY_Kaya|r y permanece cerca de ella
    >>|cRXP_WARN_¡Ten cuidado! Tres|r |cRXP_ENEMY_Tótem Siniestro|r |cRXP_WARN_aparecerán cuando llegues a la hoguera en el Campamento Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Mata a cada |cRXP_ENEMY_Trepador Musgondo|r que veas
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 6284 >>Acepta la misión Aracnofobia
step
    #completewith Besseleth1
    >>Mata |cRXP_ENEMY_Escupetósigos Musgondo|r y |cRXP_ENEMY_Trepadores Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
step
    #completewith next
    >>Despoja los |cRXP_PICK_Huevos de araña|r cerca de los árboles
    >>|cRXP_WARN_¡Ten cuidado! Las|r Proles de Musgondo|cRXP_ENEMY_ tienen probabilidad de invocar a una|r |cRXP_WARN_Matriarca Musgondo |r |cRXP_ENEMY_de nivel 22|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Mata a |cRXP_ENEMY_Besseleth|r. Despójala para obtener su |cRXP_LOOT_Colmillo|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Mata |cRXP_ENEMY_Trepadores Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Viaja hacia |cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Entrega la misión Ziz Fizziks
    .accept 1093 >>Acepta la misión Súper Segadora 6000
    .target Ziz Fizziks
step
    #completewith BluePrints
    >>Despoja los |cRXP_PICK_Huevos de araña|r cerca de los árboles
    >>|cRXP_WARN_¡Ten cuidado! Las|r Proles de Musgondo|cRXP_ENEMY_ tienen probabilidad de invocar a una|r |cRXP_WARN_Matriarca Musgondo |r |cRXP_ENEMY_de nivel 22|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #completewith BluePrints
    >>Mata a los |cRXP_ENEMY_Madereros de Ventura y Cía.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Mata a los |cRXP_ENEMY_Escupetósigo Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compra una|r |T135423:0|t[Hacha de batalla] |cRXP_BUY_a este vendedor|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_a este vendedor.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Mata a los |cRXP_ENEMY_Operadores de Ventura y Cía.|r. Despójalos para obtener sus |cRXP_LOOT_Planos|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Mata a los |cRXP_ENEMY_Madereros de Ventura y Cía.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Despoja los |cRXP_PICK_Huevos de araña|r cerca de los árboles
    >>|cRXP_WARN_¡Ten cuidado! Las|r Proles de Musgondo|cRXP_ENEMY_ tienen probabilidad de invocar a una|r |cRXP_WARN_Matriarca Musgondo |r |cRXP_ENEMY_de nivel 22|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_Si tienes más de 15 |cRXP_LOOT_Huevos de Musgondo|r|cRXP_WARN_, separa el montón de los que te sobren (shift + clic), y elimínalos|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Entrega la misión Súper Segadora 6000
    .accept 1094 >> Acepta la misión Más instrucciones
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Mata a los |cRXP_ENEMY_Trepadores Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 5221 >>Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Byula
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 3261 >>Entrega la misión Jorn Vidente del Cielo
    .accept 882 >>Acepta la misión Ishamuhale
    .target Jorn Skyseer
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Entrega la misión Jarabe de Ken'zigla
    .accept 1515 >>Acepta la misión El cautiverio de Dogran
    .target Grunt Logmar
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 878 >>Acepta la misión Tribus en guerra
    .target Mangletooth
step << Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Entrega la misión El cautiverio de Dogran
    .accept 1512 >>Acepta la misión Un regalo de amor
    .target Grunt Dogran
step
    #loop
    .goto The Barrens,45.16,53.98,0
    .goto The Barrens,44.85,51.73,0
    .goto The Barrens,43.32,48.08,0
    .goto The Barrens,40.91,45.33,0
    .goto The Barrens,43.40,52.22,0
    .goto The Barrens,43.00,55.21,0
    .goto The Barrens,45.16,53.98,60,0
    .goto The Barrens,44.85,51.73,60,0
    .goto The Barrens,43.32,48.08,60,0
    .goto The Barrens,40.91,45.33,60,0
    .goto The Barrens,43.11,48.70,60,0
    .goto The Barrens,43.40,52.22,60,0
    .goto The Barrens,43.00,55.21,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Zancudo de llanura ornario|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Kill |cRXP_ENEMY_Zancudo de llanura ornario|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    .goto The Barrens,44.55,59.27
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener una |T134128:0|t[|cRXP_LOOT_Esquirla de sangre|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 878 >>Entrega la misión Tribus en guerra
    .accept 5052 >>Acepta la misión Esquirlas de sangre de Agamaggan
    .turnin 5052 >>Entrega la misión Esquirlas de sangre de Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .aura 16618 >>|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r |cRXP_WARN_to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Quebrantadientes|r
    >>|cRXP_WARN_Omite este paso si tienes la ruta de vuelo de Cima del Trueno|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skip step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << skip
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .accept 6382 >>Acepta la misión La Caza de Vallefresno
    .target Jorn Skyseer
step << !Tauren
    #completewith Zamah
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Viaja a Mulgore
    .zoneskip Thunder Bluff
step << !Tauren
    #completewith Zamah
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Toma el ascensor hacia Cima del Trueno
step << Tauren
    #completewith Zamah
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    #completewith TBvisit1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asaltaviento Correbrisa|r
	>>|cRXP_WARN_Patrulla por las terrazas, así que es posible que tengas que buscarlo por los alrededores|r
    .accept 742 >>Acepta la misión La Caza de Vallefresno
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step << !Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Aprende el uso de Bastones
    .target Ansekhwa
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Viaja al Alto de los Ancestros
    .dungeon WC << !Druid
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Entrega la misión Hamuul Tótem de Runa
    .accept 1490 >> Acepta la misión Nara Ferocrín
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
    .accept 914 >> Acepta la misión Líderes del Colmillo
    .target Nara Wildmane
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .trainer >> Aprende tus hechizos de clase
    .accept 27 >> Acepta la misión Una lección que aprender
    .target Turak Runetotem
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entrega la misión La vuelta de la cartera perdida
    .turnin 5723 >>Entrega la misión Midiendo fuerzas con el enemigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entrega la misión La vuelta de la cartera perdida
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Entrega la misión Midiendo fuerzas con el enemigo
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Viaja al Alto de los Espíritus y entra en las pozas de las visiones
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Patrulla por los alrededores|r
    .accept 264 >> Acepta la misión Hasta que la muerte nos separe
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acepta la misión Reptilia
    .target Apothecary Zamah
    .dungeon WC
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 14914 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <20,1
    .xp >22,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 8103 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <22,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <22,1
step
    #label Zamah
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Patrulla por los alrededores|r
    .accept 264 >> Acepta la misión Hasta que la muerte nos separe
    .target Clarice Foster
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Acepta la misión La llamada del agua
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Crea|r |T133688:0|t[Vendas de lino gruesa] |cRXP_WARN_hasta que tu habilidad sea 80 o superior|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Omite este paso si no tuviste suficiente|r |T132889:0|t[Paño de lino] |cRXP_WARN_para llegar a 80 de habilidad|r
    .train 3277 >> Aprende |T133684:0|t[Venda de lana]
    .train 7934 >> Aprende |T134437:0|t[Contraveneno] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Crea|r |T134437:0|t[Contraveneno] |cRXP_WARN_si encontraste alguna|r |T134339:0|t[Glándula de veneno pequeña]
    >>|cRXP_WARN_Guárdalos para más adelante|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Viaja al Alto de los Cazadores
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melor|r
    .accept 1131 >> Acepta la misión Metaleador
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 845 >> Aprende tus hechizos de clase
    .accept 1823 >> Acepta la misión Habla con Ruga
    .target Torm Ragetotem
step
    #label TBvisit1
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acepta la misión La llama sacra
    .target Zangen Stonehoof
step
    #loop
    .goto Thunder Bluff,41.54,57.87,70,0
    .goto Thunder Bluff,52.76,62.07,30,0
    .goto Thunder Bluff,55.63,50.08,70,0
    .goto Thunder Bluff,41.54,57.87,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asaltaviento Correbrisa|r
	>>|cRXP_WARN_Patrulla por las terrazas, así que es posible que tengas que buscarlo por los alrededores|r
    .accept 742 >>Acepta la misión La Caza de Vallefresno
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >> Vuela a Trinquete
    .target Tal
    .zoneskip The Barrens
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y |cRXP_FRIENDLY_Mebok|r
    .turnin 1094 >>Entrega la misión Más instrucciones
    .accept 1095 >>Acepta la misión Más instrucciones
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entrega la misión Cuernos de raptor
    .turnin 1069 >>Entrega la misión Huevos de araña musgondo
    .accept 1491 >>Acepta la misión Bebidas de inteligencia
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    .home >>Establece tu Piedra de hogar en Trinquete
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Cómprale |T134583:0|t[|cRXP_FRIENDLY_Pantalones de anillas poderosos|r] si está disponible
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vexeje|r
    .vendor >> Cómprale |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r] si están disponibles
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipa los|r |T134583:0|t[|cRXP_FRIENDLY_Pantalones de anillas poderosos|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipa los|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drohn|r
    .turnin 821 >>Entrega la misión El barril vacío de Chen
    .target Brewmaster Drohn
    .isQuestComplete 821
step << Rogue
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Salta al barco, baja al 2.º piso y sube tu habilidad de Forzar cerraduras al menos hasta 70|r
    .skill lockpicking,70,1
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Ahora debes buscar un grupo para Cuevas de los Lamentos
    .dungeon WC
step
    #completewith next
    >>Mata cualquier |cRXP_ENEMY_Zhebra|r. Despójala para obtener un |cRXP_LOOT_Cadáver reciente de zhebra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>Usa el |T134368:0|t[|cRXP_LOOT_Cadáver reciente de zhebra|r] en el árbol muerto para invocar a |cRXP_ENEMY_Ishamuhale|r. Mata y despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_¡El cadáver solo tiene una duración de 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #label FlytoXroads
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >> Entrega la misión Consumido por el odio
    .target Mankrik
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acepta la misión ¡A cazar huevos!
    .target Korran
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>|cRXP_WARN_Destruye los restantes|r |T133721:0|t[Colmillo de jabaespín Erizapúas] |cRXP_WARN_pues ya no se necesitan|r
step
    #completewith IshamuhaleTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Vuela al Campamento Taurajo
    .subzoneskip 378
    .target Devrak
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .turnin 883 >>Entrega la misión Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Mata a |cRXP_ENEMY_Owatanka|r. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]
    >>|cRXP_WARN_Usa la |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r] para iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    >>Mata a los |cRXP_ENEMY_Truenagartos|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Entrega la misión Owatanka
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
    .accept 913 >>Acepta la misión El chillido del halcón trueno
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
    .accept 913 >>Acepta la misión El chillido del halcón trueno
    .target Jorn Skyseer
step
    #completewith next
    >>Mata a |cRXP_ENEMY_Owatanka|r. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]
    >>|cRXP_WARN_Usa la |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r] para iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    >>|cRXP_WARN_Omite este paso por ahora si no lo encuentras|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Mata a una |cRXP_ENEMY_Prole de Halcón Trueno|r o a un |cRXP_ENEMY_Desechanube Halcón Trueno|r. Despójalo para obtener |cRXP_LOOT_Alas de halcón trueno|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 884 >>Entrega la misión Owatanka
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .target Jorn Skyseer
step
    #loop
    #label Hezrul
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    >>Encuentra y mata a |cRXP_ENEMY_Hezrul Marcasangre|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulla alrededor del lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >> Viaja a Cuevas de los Lamentos
    .subzoneskip 718
    .isOnQuest 1491
step
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Sube por la montaña hasta la roca de encuentro de Las Cavernas de los Lamentos
    >>|cRXP_WARN_Sigue de cerca la flecha para llegar a la cueva oculta|r
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .accept 1486 >>Acepta la misión Pellejos descarriados
    .target Nalpak
    .maxlevel 22
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentran arriba de la entrada de las Cuevas de los Lamentos|r
    .accept 1486 >> Acepta la misión Pellejos descarriados
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Acepta la misión Erradicación de descarriados
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #optional
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Ocultar|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
step
    #completewith EnterWC
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
step
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_WARN_Está oculto y tiene múltiples ubicaciones de aparición|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición largo. Omite este paso si no puedes encontrarlo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .maxlevel 23
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Entra por el portal de la instancia a las Cuevas de los Lamentos. Entra en la mazmorra
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
    .dungeon WC
step
    #completewith GlowingShard
    >>Mata |cRXP_ENEMY_Devastadores descarriados|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Arrastrapiés|r y |cRXP_ENEMY_Colminfernos|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Mata a |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r y a |cRXP_ENEMY_Lord Serpentis|r. Despójalos para obtener sus |cRXP_LOOT_Gemas|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Discípulo de Naralex|r en la entrada de Cuevas de los Lamentos. Escóltalo a salvo hasta |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Una vez que hayas llegado a |cRXP_FRIENDLY_Naralex|r, serás atacado por dos oleadas de enemigos y finalmente por |cRXP_ENEMY_Mutanus el Devorador|r
    >>Mátalo y despójalo para obtener el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r] y úsalo para iniciar la misión
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Acepta la misión El fragmento resplandeciente
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Mata |cRXP_ENEMY_Devastadores descarriados|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Arrastrapiés|r y |cRXP_ENEMY_Colminfernos|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_El resto de estas misiones pueden completarse fuera de Cuevas de los Lamentos|r
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Ocultar|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
    .maxlevel 23
    .dungeon !WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Ocultar|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
    .dungeon WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >> Usa tu Piedra de hogar para ir a Trinquete
    .use 6948
    .cooldown item,6948,>2,1
    .bindlocation 392,1
    .subzoneskip 392
    .dungeon WC
step
    #optional
    #completewith GShard
    .subzone 392 >>|cRXP_WARN_Realiza una 'Ghetto Hoguera' en Cuevas de los Lamentos|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copia y pega esta macro dentro de Cuevas de los Lamentos para hacer ghetto Hoguera y volver a Trinquete|r
    .cooldown item,6948,<0
    .bindlocation 392,1
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entrega la misión Bebidas de inteligencia
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Vuela a El Cruce
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Sube por la montaña
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala|r
    .turnin 6981 >> Entrega la misión El fragmento resplandeciente
    .accept 3369 >> Acepta la misión En las pesadillas
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala|r
    .accept 3369 >> Acepta la misión En las pesadillas
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #label WCTurnins
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1486 >>Entrega la misión Pellejos descarriados
    .target Nalpak
    .isQuestComplete 1486
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entrega la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acepta la misión ¡Contraataca!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
    .group 2
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Mata al |cRXP_ENEMY_Señor de la guerra Krom'zar|r una vez que aparece. Despoja el |cRXP_PICK_Estandarte|r que deja en el suelo
    >>|cRXP_WARN_¡Ten cuidado! Es un élite fuerte y está custodiado por al menos dos|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enemigos|r
    >>|cRXP_WARN_Puede tardar hasta 3 minutos en reaparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
    .group 2
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entrega la misión ¡Contraataca!
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .zoneskip Stonetalon Mountains
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r y |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entrega la misión Los invasores goblin
    .timer 4,Los invasores goblin RP
    .accept 1063 >>Acepta la misión La bruja anciana
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entrega la misión Mata a Grundig Nube Negra
    .turnin 6523 >>Entrega la misión Protege a Kaya
    .accept 6401 >>Acepta la misión Kaya está viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r y |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entrega la misión Los invasores goblin
    .timer 4,Los invasores goblin RP
    .accept 1063 >>Acepta la misión La bruja anciana
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entrega la misión Mata a Grundig Nube Negra
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r y |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entrega la misión Los invasores goblin
    .timer 4,Los invasores goblin RP
    .accept 1063 >>Acepta la misión La bruja anciana
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>Entrega la misión Protege a Kaya
    .accept 6401 >>Acepta la misión Kaya está viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #label STMturnins1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Entrega la misión Los invasores goblin
    .timer 4,Los invasores goblin RP
    .accept 1063 >>Acepta la misión La bruja anciana
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Sigue el camino de la izquierda hacia arriba
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entrega la misión Chupasangres
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Viaja al Refugio Roca del Sol
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Jayka|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeeda|r en el segundo piso de la posada
    .vendor >>|cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_si están disponibles|r << !Warrior
    .vendor >>|cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134413:0|t[Vidarraíz] |cRXP_BUY_si están disponibles|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maggran|r
    .accept 5881 >> Acepta la misión La sustitución
    .target Maggran Earthbinder
    .xp <23,1
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Entrega la misión Aracnofobia
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Entrega la misión Kaya está viva
    .target Tammra Windfield
    .isOnQuest 6401
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Consigue la ruta de vuelo del Refugio Roca del Sol
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Sube por el camino hacia la derecha
step
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acepta la misión Problemas en las profundidades
    .target Tsunaman
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entrega la misión Más instrucciones
    .target Ziz Fizziks
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entra en El Paso del Espolón
step
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Viaja hacia la Avanzada de Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Asegúrate de evitar a los guardias de Astranaar en el camino. Sigue la ruta marcada para mayor seguridad|r
    .unitscan Astranaar Sentinel
step
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Consigue la ruta de vuelo de la Avanzada de Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r y |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entrega la misión Problemas en las profundidades
    .accept 6563 >>Acepta la misión La esencia de Aku'Mai
    .accept 6921 >>Acepta la misión Entre ruinas
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acepta la misión Entre una roca y un Piel de Cardo
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acepta la misión El talismán trol
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acepta la misión Nagas en la Ensenada de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r y |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entrega la misión Problemas en las profundidades
    .accept 6563 >>Acepta la misión La esencia de Aku'Mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acepta la misión Entre una roca y un Piel de Cardo
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acepta la misión El talismán trol
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acepta la misión Nagas en la Ensenada de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta. ¡Ten MUCHO cuidado! |cRXP_ENEMY_Vorsha|r golpea muy fuerte|r
    .accept 6641,1 >> Acepta la misión Vorsha la Azotadora
    .target Muglash
    .group 2
step
    #completewith next
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
    .group 0
step
    .goto Ashenvale,9.63,27.63
    >>Haz clic en el |cRXP_PICK_Blandón|r cuando llegues allí
    >>|cRXP_WARN_Habrá olas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecen. Ten cuidado cuando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_salga, pega muy fuerte|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .group 2
    .mob Vorsha the Lasher
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Ahora deberías buscar un grupo para Cavernas de Brazanegra
    .dungeon BFD
step
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Viaja a la entrada de las Cavernas de Brazanegra
step
    #completewith next
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Mata a las |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalas para obtener una |T134332:0|t[|cRXP_LOOT_Nota mojada|r] y úsala para iniciar la misión
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acepta la misión Lealtad a los dioses antiguos
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :esMX YET)
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .accept 6565 >>Acepta la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Thaelrid|r
    .accept 6561 >>Acepta la misión La vileza de Brazanegra
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Mata a |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Despoja la |cRXP_PICK_Piedra de las profundidades|r en el suelo del agua para obtener el |cRXP_LOOT_Núcleo de las profundidades|r
    >>|cRXP_WARN_Despojando esto hará aparecer al|r |cRXP_ENEMY_Barón Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mata al |cRXP_ENEMY_Barón Aquanis|r. Despójalo para obtener un |T136222:0|t[|cRXP_LOOT_Globo de agua extraño|r]. Úsalo para aceptar la misión
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acepta la misión Barón Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Despoja la |cRXP_PICK_Piedra de las profundidades|r en el suelo del agua para obtener el |cRXP_LOOT_Núcleo de las profundidades|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mata al |cRXP_ENEMY_Señor Crepuscular Kelris|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Exit the dungeon (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Mata|r a |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_primero si quieres. Este es el jefe final de la mazmorra|r
    .dungeon BFD
step
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :esMX YET)
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Corredor Grito de Guerra|r
    .turnin 6641 >>Entrega la misión Vorsha la Azotadora
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Entrega la misión Nagas en la Ensenada de Zoram
    .target Marukai
    .isQuestComplete 6641
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entrega la misión La esencia de Aku'Mai
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Entrega la misión Entre ruinas
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Entrega la misión Barón Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step
    #completewith Zoram2
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :esMX YET)
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Corredor Grito de Guerra|r
    .turnin 6641 >>Entrega la misión Vorsha la Azotadora
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Entrega la misión Nagas en la Ensenada de Zoram
    .target Marukai
    .isQuestComplete 6641
step
    #label Zoram2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entrega la misión La esencia de Aku'Mai
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .turnin 27 >> Entrega la misión Una lección que aprender
    .accept 28 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Loot the |cRXP_PICK_Adorno contenedor|r at the bottom of the lake for a |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_NO te sumerjas hasta que estés justo encima del Adorno|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el Santuario de Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Entrega la misión La prueba del lago
    .accept 30 >> Acepta la misión La prueba del león marino
    .target Tajarri
step
    #completewith JourneytoTM
    .destroy 16784>>|cRXP_WARN_Delete your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :esMX YET)
step
    #completewith JourneytoTM
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Viaja al Alto de los Ancestros
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Entrega la misión La bruja anciana
    .accept 1064 >>Acepta la misión La ayuda de los Renegados
    .timer 6,La bruja anciana RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Entrega la misión Líderes del Colmillo
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Entrega la misión En las pesadillas
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Entrega la misión La vileza de Brazanegra
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r en los pozos de visión
    .turnin 1064 >>Entrega la misión La ayuda de los Renegados
    .accept 1065 >>Acepta la misión Viaje a Molino Tarren
    .target Apothecary Zamah
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r en los pozos de visión
    .turnin 962 >>Entrega la misión Reptilia
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    --.dungeon WC
step
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Vuela a Trinquete
    .target Tal
    .zoneskip The Barrens
    .dungeon !WC << !Shaman
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entrega la misión Bebidas de inteligencia
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon !WC
step
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .turnin 1529 >>Entrega la misión La llamada del agua
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .turnin 1528 >>Entrega la misión La llamada del agua
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Bragok
    .subzoneskip 378
step << skip --Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1530 >>Entrega la misión La llamada del agua
    .accept 1535 >>Acepta la misión La llamada del agua
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> |cRXP_WARN_Llena tu|r |T132825:0|t[Odre de agua marrón vacío] |cRXP_WARN_en la charca debajo de la cabaña de Salmuera|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1535 >>Entrega la misión La llamada del agua
    .accept 1536 >>Acepta la misión La llamada del agua
    .target Brine
step << Shaman
    #completewith FlyOrg
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Viaja de vuelta al Campamento Taurajo
    .subzoneskip 378
    .cooldown item,6948,<0
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Druid !Shaman
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    --.dungeon !WC
step << !Shaman
    #optional
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .zoneskip Orgrimmar
    --.dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Entrega la misión Un regalo de amor
    .accept 1513 >>Acepta la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Usa el|r |T133290:0|t[Colgante de Dogran] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Mata a la |cRXP_ENEMY_Súcubo invocada|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Entrega la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Cómprale una|r |T135640:0|t[Jambiya] |cRXP_BUY_si no tienes una daga|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Aprende |T133644:0|t[Robar]
    .train 8676 >> Aprende |T132282:0|t[Emboscada]
    .train 1943 >> Aprende |T132302:0|t[Ruptura]
    .train 1856 >> Aprende |T132331:0|t[Esfumarse]
    .train 1725 >> Aprende |T132289:0|t[Distraer]
    .train 1785 >> Aprende |T132320:0|t[Sigilo Rango 2]
    .accept 2460 >>Acepta la misión El saludo de los Mano Destrozada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Después de que |cRXP_FRIENDLY_Shenthul|r haga su saludo, escribe /Salute mientras lo tienes seleccionado como objetivo
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entrega la misión El saludo de los Mano Destrozada
    .accept 2458 >>Acepta la misión Agente encubierto
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra |r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_a este vendedor|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_a esta vendedora|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Thuul|r en lo alto de la cabaña
    .train 3567 >> Aprende |T135759:0|t[Teletransporte a: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Entra en Los Baldíos a través de la salida occidental
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen (NOT TRANSLATED IN :esMX YET)
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133443:0|t[|cRXP_LOOT_Medio colgante de Agilidad acuática|r]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Selecciona al |cRXP_FRIENDLY_Capataz Fizzule|r, luego usa tu |T134536:0|t[Pistola de bengalas] DOS VECES y escribe /Salute
    >>|cRXP_WARN_¡Ten cuidado! ¡NO te acerques a él hasta que se vuelva amistoso o te atacará!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Capataz Fizzule|r
    .turnin 2458 >>Entrega la misión Agente encubierto
    .accept 2478 >>Acepta la misión Misión: Posible, pero no probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Supervisor Silixiz|r para obtener su |cRXP_LOOT_Llave de la torre|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Cada enemigo aquí recibirá más daño de ciertas habilidades|r
    >>Usa |T132282:0|t[Emboscada] sobre los |cRXP_ENEMY_Zánganos mutados de Ventura y Cía.|r
    >>Usa |T132302:0|t[Ruptura] sobre las |cRXP_ENEMY_Patrullas de Ventura y Cía.|r
    >>Usa |T132292:0|t[Eviscerar] sobre los |cRXP_ENEMY_Oteadores de Ventura y Cía.|r una vez (1 punto de combo)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Corre hacia la Torre del Pícaro y mata a los |cRXP_ENEMY_Zánganos|r, |cRXP_ENEMY_Patrullas|r y |cRXP_ENEMY_Oteadores|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>En la cima de la torre encontrarás a |cRXP_ENEMY_Gallywix|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Usa|r |T132282:0|t[Emboscada] |cRXP_WARN_para reducir su vida a la mitad. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_para restaurar energía y usa|r |T136205:0|t[Evasión]
	>>|cRXP_WARN_Recuerda usar una Poción y|r |T132819:0|t[Té de cardo] |cRXP_WARN_si es necesario|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Usa tu Forzar cerraduras para abrir el |cRXP_PICK_Arcón de Gallywix|r y despoja la |cRXP_LOOT_Mezcla|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Viaja a Orgrimmar a través de la entrada occidental
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entrega la misión Misión: Posible, pero no probable
    .accept 2479 >>Acepta la misión La ayuda de Hinott
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra |r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_a este vendedor|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra|r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_a este vendedor|r
    .collect 25875,1,493,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Si tienes algún|r |T134437:0|t[Contraveneno]|cRXP_WARN_, úsalo para curarte del|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Borra la|r |T134536:0|t[Pistola de bengalas] |cRXP_WARN_de tu inventario, ya que ya no la necesitas|r
    .destroy 8066 >> |cRXP_WARN_Borra|r |T134374:0|t[Silbato de Fizzule] |cRXP_WARN_de tu inventario, ya que ya no lo necesitas|r
step << skip --!Shaman
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Gryshka|r
    .home >> Establece tu Piedra de hogar en Orgrimmar
	.target Innkeeper Gryshka
    .bindlocation 1637
    .train 3567,1 << Mage --Skips if Teleport Orgrimmar is trained
step << !Mage
    .goto Orgrimmar,49.1,94.5,30 >>Sal de Orgrimmar
    .zoneskip Durotar
step
    #optional
    #label BarrensEnd
step
    #optional
    .abandon 1486 >>Abandona la misión Pellejos descarriados
step
    #optional
    .abandon 1487 >>Abandona la misión Erradicación de descarriados
step
    #optional
    .abandon 914 >>Abandona la misión Líderes del Colmillo
step
    #optional
    .abandon 855 >>Abandona la misión Los brazales centauro
step
    #optional
    .abandon 959 >>Abandona la misión ¡A por la botella!
step
    #optional
    .abandon 1491 >>Abandona la misión Bebidas de inteligencia


]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 24-25 Laderas de Trabalomas
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next 25-27 Los Baldíos del Sur

step
    #sticky
    #completewith EnterSFK
    .subzone 209,2 >> Ahora deberías buscar un grupo para Castillo de Colmillo Oscuro
    .dungeon SFK
step << !Mage
    #optional
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Sal de Orgrimmar
    .zoneskip Durotar
step << !Mage
    .goto Durotar,50.8,13.8,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
    .dungeon SFK
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .dungeon SFK
step << Mage
    #completewith JourneytoHillsbrad
    .cast 3563 >>Lanza |T135766:0|t[Teletransporte a: Entrañas]
    .zoneskip Undercity
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la Ruta de Vuelo de Entrañas
    .target Michael Garrett
    .isQuestAvailable 9621 << BloodElf
    .isQuestAvailable 9812 << !BloodElf
    --fp not picked up yet if Barrens guide was chosen instead of Ghostlands
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bel'dugur|r
    .accept 1013 >>Acepta la misión El Libro de Ur
    .target Keeper Bel'dugur
    .dungeon SFK
step
    #completewith JourneytoHillsbrad
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Silverpine Forest
    .dungeon SFK << !Mage
step
    #completewith next
    .goto Silverpine Forest,66.69,5.09,80,0
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
step << Druid
    #completewith next
    .goto Silverpine Forest,36.12,28.30,120 >> Viaja hacia el Noreste en dirección al Gran Mar
step << Druid
    .goto Silverpine Forest,29.58,29.30
    >>Despoja la |cRXP_PICK_Caja de seguridad extraña|r en el agua para la |T133442:0|t[|cRXP_LOOT_Media Medallón de Robustez Acuática|r]
    .collect 15882,1,30,1 --Half Pendant of Aquatic Agility (1)
step
    #completewith JourneytoHillsbrad
    .subzone 228 >>Viaja a El Sepulcro
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Aprende la ruta de vuelo hacia The Sepulcher
    .target Karos Razok
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .accept 1014 >>Acepta la misión Arugal debe morir
    .target Dalar Dawnweaver
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,40.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renferrel|r
    .accept 493 >> Acepta la misión Viaja a Laderas de Trabalomas
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadrec|r downstairs in the crypt (NOT TRANSLATED IN :esMX YET)
    .accept 1098 >>Acepta la misión Mortacechadores en Colmillo Oscuro
    .target High Executor Hadrec
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,41.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mura|r
    .turnin 3301 >> Entrega la misión Mura Tótem de Runa
    .target Mura Runetotem
    .isOnQuest 3301
    .dungeon WC << !Warrior !Shaman
step
    #label JourneytoHillsbrad
    .goto Silverpine Forest,44.18,42.68
    >>Interactúa con la |cRXP_PICK_Lápida de Yuriv|r del suelo
    .turnin 264 >> Entrega la misión Hasta que la muerte nos separe
    .target Clarice Foster
    .isOnQuest 264
step
    #label EnterSFK
    .goto Silverpine Forest,44.87,67.86
    .subzone 209,2 >> Entra por el portal de la instancia del Castillo de Colmillo Oscuro
    .dungeon SFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vincent|r
    .turnin 1098 >> Entrega la misión Mortacechadores en Colmillo Oscuro
    .target Deathstalker Vincent
    .dungeon SFK
    .isOnQuest 1098
step
    >>Despoja |cRXP_PICK_El libro de Ur|r del estante en la habitación de |cRXP_ENEMY_Fenrus el Devorador|r
    .complete 1013,1 --Book of Ur(1)
    .dungeon SFK
    .isOnQuest 1013
step
    >>Mata al |cRXP_ENEMY_Archimago Arugal|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 1014,1 --Head of Arugal (1)
    .mob Archmage Arugal
    .dungeon SFK
    .isOnQuest 1014
step
    #completewith SFKTurnins
    .goto Silverpine Forest,45.51,41.26,150,0
    .subzone 228 >>Viaja a El Sepulcro
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r
    .turnin 1098 >>Entrega la misión Mortacechadores en Colmillo Oscuro
    .target High Executor Hadrec
    .dungeon SFK
    .isQuestComplete 1098
step
    #label SFKTurnins
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .turnin 1014 >>Entrega la misión Arugal debe morir
    .target Dalar Dawnweaver
    .dungeon SFK
    .isQuestComplete 1014
step
    #completewith next
    .zone Hillsbrad Foothills >> Viaja a Laderas de Trabalomas
    .zoneskip Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Mortacechadora Lesh|r
    .accept 494 >> Acepta la misión El momento de atacar
    .target Deathstalker Lesh
step
    #completewith next
    .goto Hillsbrad Foothills,62.06,20.19,120 >> Viaja a Molino Tarren
    .subzoneskip 272
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarise|r
    .fp Tarren Mill>> Consigue la Ruta de Vuelo de Molino Tarren
    .target Zarise
    .isQuestAvailable 498
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hinott|r
    .turnin 2479 >>Entrega la misión La ayuda de Hinott
    .accept 2480 >>Acepta la misión La ayuda de Hinott
    .timer 30,La ayuda de Hinott RP
    .target Serge Hinott
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>Espera a que |cRXP_FRIENDLY_Hinott|r complete la cura
    .complete 2480,1 --Cure Completed (1)
step << Rogue
    .goto Hillsbrad Foothills,61.64,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hinott|r
    .turnin 2480 >>Entrega la misión La ayuda de Hinott
    .target Serge Hinott
step << Rogue
    #completewith TarrenMillPickups
    .cast 10723 >>|cRXP_WARN_Usa el|r |T134807:0|t[Aceite de Hinott] |cRXP_WARN_para curarte del|r |T136230:0|t[Toque de Zanzil]
step << Rogue
    #completewith TarrenMillPickups
    >>|cRXP_WARN_Crea|r |T132273:0|t[Venenos instantáneos]
    .collect 6947,20,1067,1 --Collect Instant Poison (20)
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Boticario Lydon|r
    .turnin 1065 >> Entrega la misión Viaja a Molino Tarren
    .accept 1066 >> Acepta la misión Sangre inocente
    .turnin 493 >> Entrega la misión Viaja a Laderas de Trabalomas
    .accept 496 >> Acepta la misión Elixir de sufrimiento
    .accept 501 >> Acepta la misión Elixir de dolor
    .target Apothecary Lydon
step << Shaman
    .goto Hillsbrad Foothills,62.18,20.78
    .use 7768 >>|cRXP_WARN_Usar el|r |T132829:0|t[Odre de agua rojo vacío] |cRXP_WARN_en el pozo en el centro de Molino Tarren|r
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma ejecutora Darthalia|r
    .turnin 494 >> Entrega la misión El momento de atacar
    .accept 527 >> Acepta la misión La batalla de Trabalomas
    .target High Executor Darthalia
step << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Consejera Nochealba|r
    .turnin 9425 >> Entrega la misión Informando en Molino Tarren
    .target Advisor Duskingdawn
step
    .goto Hillsbrad Foothills,62.64,20.76
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 549 >> Acepta la misión SE BUSCA: Personal de la Hermandad
step
    .goto Hillsbrad Foothills,63.24,20.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krusk|r
    .accept 498 >> Acepta la misión El rescate
    .target Krusk
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1800,549,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
step
    #label TarrenMillPickups
    .goto Hillsbrad Foothills,62.56,19.65
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 567 >> Acepta la misión ¡Atención!
step << skip --Mage
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Shay|r
    .home >>Establece tu Piedra de hogar en Molino Tarren
	.target Innkeeper Shay
    .isQuestAvailable 498
    .bindlocation 272
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Shay|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 498
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible y aún no la tienes|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T135640:0|t[Cuchillo de hoja ancha] |cRXP_BUY_si está disponible y no lo tienes aún|r
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Hunter
    #completewith next
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Theodore|r
    .stable >> Guarda tu mascota en el establo. Vas a domesticar un |cRXP_ENEMY_Oso gris|r y un |cRXP_ENEMY_Trepamusgo del bosque|r pronto
    .target Theodore Mont Claire
step << Hunter
    #loop
    .goto Hillsbrad Foothills,57.93,27.85,0
    .goto Hillsbrad Foothills,57.93,27.85,60,0
    .goto Hillsbrad Foothills,58.88,32.28,60,0
    .goto Hillsbrad Foothills,61.77,36.16,60,0
    .train 16829 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso gris|r. Ataca enemigos con él para aprender|r |T132140:0|t[Zarpa (Rango 3)]
    .train 17263 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Trepamusgo del bosque|r. Ataca enemigos con él para aprender|r |T132278:0|t[Mordedura (Rango 3)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .mob Gray Bear
    .mob Forest Moss Creeper
step << Hunter
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Theodore|r
    .stable >> Abandona al |cRXP_ENEMY_Oso gris|r o al |cRXP_ENEMY_Trepamusgo del bosque|r y recupera tu mascota habitual
    .target Theodore Mont Claire
step << Rogue
    #completewith Durnholde1
    .cast 8679 >>|cRXP_WARN_Usa el|r |T132273:0|t[Veneno instantáneo] |cRXP_WARN_en tus armas|r
    .itemcount 6947,2
step
	#completewith next
    >>Mata |cRXP_ENEMY_Osos|r y |cRXP_ENEMY_Arañas|r de camino. Despójalos para obtener sus |cRXP_LOOT_Lenguas|r e |cRXP_LOOT_Icor|r
    >>|cRXP_WARN_Evita a los|r |cRXP_ENEMY_Oso grises viejos|r |cRXP_WARN_y a los|r |cRXP_ENEMY_Trepamusgos gigantes|r |cRXP_WARN_ya que son de nivel alto y no vale la pena matarlos|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #label Durnholde1
    .goto Hillsbrad Foothills,76.57,46.48,120 >> Viaja al Castillo de Durnholde
    .isOnQuest 549,1066,498
step
    #completewith Drull
    >>Mata |cRXP_ENEMY_Pícaros de la Hermandad|r, |cRXP_ENEMY_Veladores|r, y |cRXP_ENEMY_Magos oscuros|r.
    >>Despoja a los |cRXP_ENEMY_Magos oscuros|r para obtener sus |cRXP_LOOT_Viales de sangre inocente|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob +Syndicate Shadow Mage
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>Mata al |cRXP_ENEMY_Carcelero Eston|r. Despójalo para obtener su |cRXP_LOOT_Llave de hierro|r
    >>|cRXP_WARN_Se le puede encontrar frente al Cuartel de |cRXP_FRIENDLY_Tog'thar|r, o frente a|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #loop
    .goto Hillsbrad Foothills,79.45,40.57,0
	.goto Hillsbrad Foothills,77.99,40.19,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
	>>Mata al |cRXP_ENEMY_Carcelero Marlgen|r. Despójalo para obtener su |cRXP_LOOT_Llave de oro|r
    >>|cRXP_WARN_Se le puede encontrar frente a |cRXP_FRIENDLY_Tog'thar|r o en la base de la torre|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>Haz clic en la |cRXP_PICK_Cadena con bola|r del suelo
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Cómprale|r |T134590:0|t[|cRXP_FRIENDLY_Pantalones de acecho|r] |cRXP_BUY_y|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r] |cRXP_BUY_si están disponibles|r
    .vendor >> Vende y Repara
    .target Kris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Cómprale|r |T134590:0|t[|cRXP_FRIENDLY_Pantalones de acecho|r] |cRXP_BUY_si están disponibles|r
    .vendor >> Vende y Repara
    .target Kris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Cómprale|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r] |cRXP_BUY_si están disponibles|r
    .vendor >> Vende y Repara
    .target Kris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equipa los|r |T134590:0|t[|cRXP_FRIENDLY_Pantalones de acecho|r] |cRXP_WARN_y los|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
    .equip 7,1831
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equipa los|r |T134590:0|t[|cRXP_FRIENDLY_Pantalones de acecho|r]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
    .equip 9,4794
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equipa los|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kris|r
    .vendor >> Vende y Repara
    .target Kris Legace
    .isOnQuest 498
    .subzoneskip 275,1
step
    #loop
    .goto Hillsbrad Foothills,79.55,41.85,0
    .goto Hillsbrad Foothills,75.31,41.63,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    >>Mata al |cRXP_ENEMY_Carcelero Eston|r. Despójalo para obtener su |cRXP_LOOT_Llave de hierro|r
    >>|cRXP_WARN_Se le puede encontrar frente al Cuartel de |cRXP_FRIENDLY_Tog'thar|r, o frente a|r |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>Haz clic en la |cRXP_PICK_Cadena con bola|r del suelo
    .complete 498,1 --Rescue Drull (1)
step
    #completewith next
    >>Mata |cRXP_ENEMY_Pícaros de la Hermandad|r y |cRXP_ENEMY_Veladores de la Hermandad|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Mata |cRXP_ENEMY_Magos oscuros de la Hermandad|r. Despójalos para obtener sus |cRXP_LOOT_Viales|r
    >>|cRXP_WARN_Se pueden encontrar más en la torre justo al suroeste del castillo|r
    .complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Shadow Mage
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Mata |cRXP_ENEMY_Pícaros de la Hermandad|r y |cRXP_ENEMY_Veladores de la Hermandad|r
    >>|cRXP_WARN_Se pueden encontrar más en la torre justo al suroeste del castillo|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
	#completewith next
    >>Mata |cRXP_ENEMY_Osos|r y |cRXP_ENEMY_Arañas|r de camino de vuelta a Molino Tarren. Despójalos para obtener sus |cRXP_LOOT_Lenguas|r e |cRXP_LOOT_Icor|r
    >>|cRXP_WARN_Evita a los|r |cRXP_ENEMY_Oso grises viejos|r |cRXP_WARN_y a los|r |cRXP_ENEMY_Trepamusgos gigantes|r |cRXP_WARN_ya que son de nivel alto y no vale la pena matarlos|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #completewith next
    .subzone 272 >> Regresa a Molino Tarren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krusk|r y |cRXP_FRIENDLY_Darthalia|r
    .turnin 498 >> Entrega la misión El rescate
    .target +Krusk
    .goto Hillsbrad Foothills,63.24,20.65
    .turnin 549 >> Entrega la misión SE BUSCA: Personal de la Hermandad
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1800,501,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
    .itemcount 2515,<1000
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,501,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
    .itemcount 3030,<1000
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Shay|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
	.target Innkeeper Shay
    .isOnQuest 527
    .subzoneskip 272,1
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r y |cRXP_FRIENDLY_Umpi|r
    .turnin 1066 >> Entrega la misión Sangre inocente
    .turnin 496 >> Entrega la misión Elixir de sufrimiento
    .accept 499 >> Acepta la misión Elixir de sufrimiento
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >> Entrega la misión Elixir de sufrimiento
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r y |cRXP_FRIENDLY_Umpi|r
    .turnin 1066 >> Entrega la misión Sangre inocente
    .accept 499 >> Acepta la misión Elixir de sufrimiento
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >> Entrega la misión Elixir de sufrimiento
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r
    .turnin 1066 >> Entrega la misión Sangre inocente
    .goto Hillsbrad Foothills,61.44,19.05
    .target Apothecary Lydon
step
    #optional
    #completewith FarmerRay
    .destroy 3499 >>|cRXP_WARN_Destruye la|r |T134238:0|t[Llave de oro bruñida] |cRXP_WARN_de tus bolsas, ya que ya no se necesita|r
step
    #optional
    #completewith FarmerRay
    .destroy 3467 >>|cRXP_WARN_Destruye la|r |T134237:0|t[Llave de hierro mate] |cRXP_WARN_de tus bolsas, ya que ya no se necesita|r
step
	#completewith Fields1
    >>Mata |cRXP_ENEMY_Osos grises|r y |cRXP_ENEMY_Leones de montaña famélicos|r. Despójalos para obtener sus |cRXP_LOOT_Lenguas de oso gris|r y |cRXP_LOOT_Sangre de león de montaña|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob +Starving Mountain Lion
    .isOnQuest 496
step
	#completewith Fields1
    >>Mata |cRXP_ENEMY_Leones de montaña famélicos|r. Despójalos para obtener su |cRXP_LOOT_Sangre de león de montaña|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
    .isQuestTurnedIn 496
step
    #label Fields1
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >> Viaja a los Campos de Trabalomas
    .isOnQuest 527
step
    #completewith FarmerRay
	>>Mata |cRXP_ENEMY_Granjeros de Trabalomas|r y |cRXP_ENEMY_Mozos de labranza de Trabalomas|r en los campos y sus alrededores
    >>|cRXP_WARN_Ten cuidado.|r |cRXP_ENEMY_Los|r |cRXP_WARN_Granjeros de Trabalomas|r |cRXP_WARN_te pueden|r |T132343:0|t[Desarmar] << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
    #loop
    .goto Hillsbrad Foothills,36.7,39.4,0
    .goto Hillsbrad Foothills,35.2,37.6,0
    .goto Hillsbrad Foothills,35.1,41.0,0
    .goto Hillsbrad Foothills,36.7,39.4,30,0
    .goto Hillsbrad Foothills,35.2,37.6,30,0
    .goto Hillsbrad Foothills,35.1,41.0,30,0
    >>Mata al |cRXP_ENEMY_Granjero Getz|r
    >>|cRXP_WARN_Tiene tres ubicaciones de aparición diferentes. En la casa, granero o campo|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    #label FarmerRay
    #loop
    .goto Hillsbrad Foothills,33.28,34.65,0
    .goto Hillsbrad Foothills,33.65,35.44,30,0
    .goto Hillsbrad Foothills,32.90,35.23,10,0
    .goto Hillsbrad Foothills,33.23,34.65,10,0
    .goto Hillsbrad Foothills,32.69,34.77,8,0
    .goto Hillsbrad Foothills,32.88,34.99,8,0
    .goto Hillsbrad Foothills,33.28,34.65,8,0
    >>Mata al |cRXP_ENEMY_Granjero Ray|r
    >>|cRXP_WARN_Puede aparecer afuera debajo de la parra o en la 1ª o 2ª planta de la casa|r
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
step
    #loop
    .goto Hillsbrad Foothills,31.30,37.08,0
    .goto Hillsbrad Foothills,31.30,37.08,40,0
    .goto Hillsbrad Foothills,33.81,40.91,40,0
    .goto Hillsbrad Foothills,35.49,40.36,40,0
	>>Mata |cRXP_ENEMY_Granjeros de Trabalomas|r y |cRXP_ENEMY_Mozos de labranza de Trabalomas|r en los campos y sus alrededores
    >>|cRXP_WARN_Ten cuidado.|r |cRXP_ENEMY_Los|r |cRXP_WARN_Granjeros de Trabalomas|r |cRXP_WARN_te pueden|r |T132343:0|t[Desarmar] << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
	#completewith next
    >>Mata |cRXP_ENEMY_Osos|r. Despójalos para obtener sus |cRXP_LOOT_Lenguas|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,54.77,28.72,0
	.goto Hillsbrad Foothills,39.79,34.43,60,0
	.goto Hillsbrad Foothills,38.70,36.71,60,0
	.goto Hillsbrad Foothills,38.45,38.77,60,0
	.goto Hillsbrad Foothills,39.88,40.56,60,0
	.goto Hillsbrad Foothills,37.97,44.59,60,0
	.goto Hillsbrad Foothills,39.92,45.83,60,0
	.goto Hillsbrad Foothills,40.91,44.23,60,0
	.goto Hillsbrad Foothills,42.56,40.19,60,0
	.goto Hillsbrad Foothills,43.36,39.38,60,0
	.goto Hillsbrad Foothills,51.28,35.37,60,0
	.goto Hillsbrad Foothills,54.29,31.75,60,0
	.goto Hillsbrad Foothills,52.93,29.45,60,0
	.goto Hillsbrad Foothills,54.77,28.72,60,0
    >>Termina de matar a los |cRXP_ENEMY_Leones de montaña|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
	#completewith TarrenMillTurnins2
    >>Mata |cRXP_ENEMY_Osos|r de camino a Molino Tarren. Despójalos para obtener sus |cRXP_LOOT_Lenguas|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r y |cRXP_FRIENDLY_Samsa|r
    .turnin 496 >> Entrega la misión Elixir de sufrimiento
    .accept 499 >> Acepta la misión Elixir de sufrimiento
    .turnin 501 >> Entrega la misión Elixir de dolor
    .accept 502 >> Acepta la misión Elixir de dolor
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >> Entrega la misión La batalla de Trabalomas
    .accept 528 >> Acepta la misión La batalla de Trabalomas
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >> Acepta la misión Recuerdos de muerte
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
    .accept 499 >> Acepta la misión Elixir de sufrimiento
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >> Entrega la misión Elixir de sufrimiento
    .target Umpi
    .isQuestTurnedIn 496
step
    #label TarrenMillTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r y |cRXP_FRIENDLY_Samsa|r
    .turnin 501 >> Entrega la misión Elixir de dolor
    .accept 502 >> Acepta la misión Elixir de dolor
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >> Entrega la misión La batalla de Trabalomas
    .accept 528 >> Acepta la misión La batalla de Trabalomas
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >> Acepta la misión Recuerdos de muerte
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Shay|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 528
    .subzoneskip 272,1
step
	#completewith next
    >>Mata |cRXP_ENEMY_Osos|r de regreso a los Campos de Trabalomas. Despójalos para obtener sus |cRXP_LOOT_Lenguas|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >> Viaja a los Campos de Trabalomas
    .isOnQuest 528
step
    #completewith Kalaba
    >>Mata |cRXP_ENEMY_Humanos de Trabalomas|r. Despójalos para obtener sus |cRXP_LOOT_Cráneos|r.
    >>|cRXP_WARN_No es necesario completar esta misión ahora|r
    .complete 546,1,17 --Hillsbrad Human Skull (30)
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Espera a que termine el "roleplay" y luego mata a|r |cRXP_ENEMY_Stanley iracundo|r
    >>|cRXP_ENEMY_Stanley iracundo|r |cRXP_WARN_da la experiencia equivalente a una misión entera|r
    .turnin 502 >> Entrega la misión Elixir de dolor
    .timer 9,Stanley "Roleplay" (¡ALERTA!)
    .mob Stanley
step
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    #loop
    .goto Hillsbrad Foothills,36.54,39.44,0
    .goto Hillsbrad Foothills,36.54,39.44,40,0
    .goto Hillsbrad Foothills,35.36,38.73,40,0
    .goto Hillsbrad Foothills,33.98,38.78,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.58,38.17,40,0
    .goto Hillsbrad Foothills,32.66,36.08,40,0
    .goto Hillsbrad Foothills,32.92,35.25,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.65,41.12,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,30.53,40.56,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.41,43.85,40,0
    .goto Hillsbrad Foothills,32.46,44.59,40,0
    .goto Hillsbrad Foothills,32.29,45.13,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    >>Mata al |cRXP_ENEMY_Ciudadano Wilkes|r
    >>|cRXP_WARN_Patrulla por los caminos del pueblo|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Espera a que termine el "roleplay" y luego mata a|r |cRXP_ENEMY_Stanley iracundo|r
    >>|cRXP_ENEMY_Stanley iracundo|r |cRXP_WARN_da la experiencia equivalente a una misión entera|r
    .turnin 502 >> Entrega la misión Elixir de dolor
    .timer 9,Stanley "Roleplay" (¡ALERTA!)
    .mob Stanley
step
    #completewith next
	>>Mata |cRXP_ENEMY_Campesinos de Trabalomas|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>Mata a la |cRXP_ENEMY_Granjera Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
step
    #loop
	.goto Hillsbrad Foothills,36.64,45.21,0
	.goto Hillsbrad Foothills,36.64,45.21,25,0
	.goto Hillsbrad Foothills,36.03,44.40,25,0
	.goto Hillsbrad Foothills,34.36,44.62,25,0
	.goto Hillsbrad Foothills,33.82,45.75,25,0
	.goto Hillsbrad Foothills,33.25,48.54,25,0
	.goto Hillsbrad Foothills,34.59,48.13,25,0
	.goto Hillsbrad Foothills,35.29,47.28,25,0
	.goto Hillsbrad Foothills,36.49,47.49,25,0
	>>Mata |cRXP_ENEMY_Campesinos de Trabalomas|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #loop
	.goto Hillsbrad Foothills,66.52,34.52,0
	.goto Hillsbrad Foothills,40.88,33.87,60,0
	.goto Hillsbrad Foothills,40.86,37.40,60,0
	.goto Hillsbrad Foothills,40.85,39.42,60,0
	.goto Hillsbrad Foothills,38.50,38.04,60,0
	.goto Hillsbrad Foothills,37.68,41.23,60,0
	.goto Hillsbrad Foothills,38.71,42.66,60,0
	.goto Hillsbrad Foothills,40.40,44.65,60,0
	.goto Hillsbrad Foothills,44.39,41.34,60,0
	.goto Hillsbrad Foothills,45.23,39.62,60,0
	.goto Hillsbrad Foothills,43.87,37.01,60,0
	.goto Hillsbrad Foothills,49.75,34.33,60,0
	.goto Hillsbrad Foothills,52.06,36.86,60,0
	.goto Hillsbrad Foothills,51.91,32.97,60,0
	.goto Hillsbrad Foothills,52.39,29.27,60,0
	.goto Hillsbrad Foothills,57.38,22.85,60,0
	.goto Hillsbrad Foothills,57.09,25.67,60,0
	.goto Hillsbrad Foothills,58.08,28.07,60,0
	.goto Hillsbrad Foothills,56.88,28.85,60,0
	.goto Hillsbrad Foothills,59.68,30.90,60,0
	.goto Hillsbrad Foothills,57.71,34.06,60,0
	.goto Hillsbrad Foothills,59.89,36.74,60,0
	.goto Hillsbrad Foothills,62.63,37.64,60,0
	.goto Hillsbrad Foothills,64.73,38.03,60,0
	.goto Hillsbrad Foothills,66.52,34.52,60,0
    >>Termina de matar a los |cRXP_ENEMY_Osos|r. Despójalos para obtener sus |cRXP_LOOT_Lenguas|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,62.85,38.74,0
	.goto Hillsbrad Foothills,62.85,38.74,60,0
	.goto Hillsbrad Foothills,62.24,39.96,60,0
	.goto Hillsbrad Foothills,60.92,37.92,60,0
	.goto Hillsbrad Foothills,59.62,33.33,60,0
	.goto Hillsbrad Foothills,56.88,29.73,60,0
	.goto Hillsbrad Foothills,59.80,27.72,60,0
	.goto Hillsbrad Foothills,57.63,24.16,60,0
	.goto Hillsbrad Foothills,56.47,16.42,60,0
	.goto Hillsbrad Foothills,59.36,14.55,60,0
	.goto Hillsbrad Foothills,60.54,13.67,60,0
	.goto Hillsbrad Foothills,62.65,12.90,60,0
	.goto Hillsbrad Foothills,64.43,10.22,60,0
	.goto Hillsbrad Foothills,65.18,6.93,60,0
	.goto Hillsbrad Foothills,65.31,5.76,60,0
	.goto Hillsbrad Foothills,66.90,9.02,60,0
	.goto Hillsbrad Foothills,70.39,8.89,60,0
	.goto Hillsbrad Foothills,68.86,10.18,60,0
	.goto Hillsbrad Foothills,67.35,12.95,60,0
	.goto Hillsbrad Foothills,71.38,19.81,60,0
	.goto Hillsbrad Foothills,71.78,21.89,60,0
	.goto Hillsbrad Foothills,64.85,24.92,60,0
	.goto Hillsbrad Foothills,66.68,28.15,60,0
	.goto Hillsbrad Foothills,69.76,31.89,60,0
	.goto Hillsbrad Foothills,67.62,37.65,60,0
	>>Termina de matar a los |cRXP_ENEMY_Trepamusgos del bosque|r y |cRXP_ENEMY_Trepamusgos gigantes|r. Despójalos para obtener su |cRXP_LOOT_Icor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r y |cRXP_FRIENDLY_Darthalia|r
    .turnin 496 >> Entrega la misión Elixir de sufrimiento
    .accept 499 >> Acepta la misión Elixir de sufrimiento
    .accept 1067 >> Acepta la misión Regresa a Cima del Trueno
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >> Entrega la misión La batalla de Trabalomas
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r
    .accept 499 >> Acepta la misión Elixir de sufrimiento
    .target Apothecary Lydon
    .isQuestTurnedIn 496
step
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >> Entrega la misión Elixir de sufrimiento
    .target Umpi
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lydon|r y |cRXP_FRIENDLY_Darthalia|r
    .accept 1067 >> Acepta la misión Regresa a Cima del Trueno
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >> Entrega la misión La batalla de Trabalomas
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Shay|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
	.target Innkeeper Shay
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1800 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .itemcount 2515,<1000
    .xp >25,1
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .itemcount 3030,<1000
    .xp <25,1
    .subzoneskip 272,1
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible y aún no la tienes|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ott|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T135640:0|t[Cuchillo de hoja ancha] |cRXP_BUY_si está disponible y no lo tienes aún|r
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Druid
    #completewith AquaticFormQ
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1822 >>Aprende tus hechizos de clase
    .target Loganaar
    .xp <24,1
    .xp >26,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >>Aprende tus hechizos de clase
    .target Loganaar
    .xp <26,1
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Combina los dos colgantes en el Santuario de Remulos para obtener el |r|cRXP_LOOT_Colgante del León Marino|r
    .collect 15882,1,30,1,1
    .collect 15883,1,30,1,1
    .complete 30,1 --Pendant of the Sea Lion
    .itemcount 15882,1
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .turnin 30 >> Entrega la misión La prueba del león marino
    .accept 31 >> Acepta la misión Forma acuática
    .target Dendrite Starblaze
    .isQuestComplete 30
step << Druid
    #label AquaticFormQ
    #optional
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .accept 31 >> Acepta la misión Forma acuática
    .target Dendrite Starblaze
    .isQuestTurnedIn 30
step
    #label ThunderBluffHS
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
step
    #optional
    .abandon 1014 >>Abandona la misión Arugal debe morir
    .dungeon SFK
step
    #optional
    .abandon 1098 >>Abandona la misión Mortacechadores en Colmillo Oscuro
    .dungeon SFK

    ]])



RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 25-27 Los Baldíos del Sur
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next 27-29 Vallefresno

step << Shaman/Warrior
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible y aún no la tienes|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .target Delgo Tótem de Ira
step << Hunter
    #completewith HunterTraining26
    .goto Thunder Bluff,61.31,78.25,80 >> Viaja al Alto de los Cazadores
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 14262 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <24,1
    .xp >26,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 3045 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <26,1
step << Hunter
    #label HunterTraining26
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24558 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
step << Druid
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Viaja al Alto de los Ancestros
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .trainer >> Aprende tus hechizos de clase
    .turnin 31 >> Entrega la misión Forma acuática
    .target Turak Runetotem
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[Arco corvo sólido Arco] |cRXP_BUY_si está disponible|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Tronacuerno
    .money <1.9467
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Viaja al Alto de los Espíritus y entra en las pozas de las visiones
step
	.goto Thunder Bluff,22.90,21.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .turnin 1067 >> Entrega la misión Regresa a Cima del Trueno
    .target Apothecary Zamah
    .isOnQuest 1067
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
	.train 3747 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <24,1
    .xp >26,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
	.train 992 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <26,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 8400 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <24,1
    .xp >26,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 120 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <26,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 905 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <24,1
    .xp >26,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 8190 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <26,1
step
    #completewith next
    .skill firstaid,115 >>|cRXP_WARN_Crea|r |T133688:0|t[Vendas de lana] |cRXP_WARN_hasta que tu habilidad sea 115 o superior|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Aprende |T133687:0|t[Venda de lana gruesa]
    .target Pand Stonebinder
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acepta la misión La llama sacra
    .target Zangen Stonehoof
step
    #label FlytoCampT2
    #completewith CampTHS2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 879 >> Acepta la misión Traidores
    .target Mangletooth
    .isQuestTurnedIn 5052
step
    #completewith CampTHS2
    +|cRXP_WARN_Usa tus restantes|r |T134128:0|t[Esquirlas de sangre] |cRXP_WARN_para obtener|r |T136104:0|t[Ocultafilo] |cRXP_WARN_y otros "buffs"|r << !Mage !Druid
    +|cRXP_WARN_Usa tus restantes|r |T134128:0|t[Esquirlas de sangre] |cRXP_WARN_para obtener "buffs"|r << Mage/Druid
    >>|cRXP_WARN_Si es posible, guarda 10|r |T134128:0|t[Esquirlas de sangre] |cRXP_WARN_para poder usar el "buff" de aumento de velocidad más adelante en la guía|r
    >>|cRXP_WARN_¡Asegúrate de desactivar cualquier función de autocompletar de addons como Questie o Leatrix Plus para esto!|r
    .addquestitem 4075,5052
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .accept 6382 >>Acepta la misión La Caza de Vallefresno
    .target Jorn Skyseer
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruga Tótem de Ira|r dentro del edificio
	.turnin 1823 >>Entrega la misión Habla con Ruga
    .accept 1824 >>Acepta la misión Prueba en Tierra de Gigantes
    .target Ruga Ragetotem
step
    #label CampTHS2
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 879
step
    #loop
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Encuentra y mata a |cRXP_ENEMY_Owatanka|r (Lagarto Trueno Azul) alrededor de esta zona. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]. Usa esto para comenzar la misión
    >>|cRXP_WARN_Omite esta misión si no puedes encontrarlo|r
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step << Warrior
    #loop
	.goto The Barrens,45.17,69.08,0
	.goto The Barrens,45.17,69.08,50,0
	.goto The Barrens,43.87,68.84,50,0
	.goto The Barrens,42.17,69.65,50,0
	.goto The Barrens,42.35,71.85,50,0
	.goto The Barrens,42.77,72.28,50,0
	.goto The Barrens,43.86,72.06,50,0
	.goto The Barrens,45.38,72.25,50,0
    >>Mata |cRXP_ENEMY_Protectores silítidos|r, |cRXP_ENEMY_Enjambristas silítidos|r, |cRXP_ENEMY_Trepadores silítidos|r y |cRXP_ENEMY_Larvas silítidas|r. Despójalos para obtener sus |T133027:0|t[Antenas agitadas]
    >>|cRXP_WARN_NOTA: La |T133027:0|t[Antena agitada] solo dura 15 minutos, no te quedes "AFK" ni desconectes durante esta misión|r
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruga Tótem de Ira|r dentro del edificio
    >>|cRXP_WARN_Omite la siguiente misión|r
    .turnin 1824 >>Entrega la misión Prueba en Tierra de Gigantes
    .target Ruga Ragetotem
step
    #completewith next
    >>Mata al |cRXP_ENEMY_Cosechador silítido|r. Despójalo para obtener la |T134321:0|t[|cRXP_LOOT_Cabeza de cosechador|r]. Úsala para iniciar la misión
    >>|cRXP_WARN_Omite esta misión si no puedes encontrarlo. ¡Este enemigo es muy raro!|r
    .collect 5138,1,897 --Collect Harvester's Head
    .accept 897 >>Acepta la misión El Cosechador
    .use 5138
    .unitscan Silithid Harvester
step
    #label SilithidEggs
    #loop
    .goto The Barrens,42.91,69.86,0
    .goto The Barrens,45.04,69.85,60,0
    .goto The Barrens,42.91,69.86,60,0
    .goto The Barrens,42.97,71.11,60,0
    .goto The Barrens,45.36,72.36,60,0
    .goto The Barrens,47.40,70.11,60,0
    .goto The Barrens,48.40,70.08,60,0
    .goto The Barrens,42.91,69.86,60,0
	>>Despoja los |cRXP_PICK_Montículos de silítidos|r para obtener |cRXP_LOOT_Huevos de silítido|r
	.complete 868,1 --Silithid Egg (12)
    .isOnQuest 868
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>Mata a |cRXP_ENEMY_Washte Pawne|r. Despójalo para obtener |T135992:0|t[|cRXP_LOOT_Pluma de Washte Pawne|r]. Úsala para comenzar la misión
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acepta la misión Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Viaja hacia |cRXP_FRIENDLY_Salmuera|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1536 >>Entrega la misión La llamada del agua
    .accept 1534 >>Acepta la misión La llamada del agua
    .target Brine
step
    #completewith Backstabber
    >>Mata a |cRXP_ENEMY_Washte Pawne|r. Despójalo para obtener |T135992:0|t[|cRXP_LOOT_Pluma de Washte Pawne|r]. Úsala para comenzar la misión
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acepta la misión Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulla al norte y al sur en la carretera|r
    .accept 843 >> Acepta la misión La reclamación de Gann
    .target Gann Stonespire
    .maxlevel 27
step
    #completewith Lok
    >>Mata |cRXP_ENEMY_Acechadores Crines de Acero|r y |cRXP_ENEMY_Abrecaminos Crines de Acero|r. Despójalos para obtener el |T135640:0|t[|cRXP_LOOT_Puñal Crines de Acero|r]
    >>Mata |cRXP_ENEMY_Videntes Crines de Acero|r. Despójalos para obtener una |T135139:0|t[|cRXP_LOOT_Varita Crines de Acero carbonizada|r]
    >>Mata |cRXP_ENEMY_Frenéticos bélicos Crines de Acero|r. Despójalos para obtener un |T134955:0|t[|cRXP_LOOT_Escudo de guerra Crines de Acero|r]
    >>|cRXP_WARN_Los |cRXP_ENEMY_Acechador Crines de Acero|r están en sigilo|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob +Razormane Stalker
    .mob +Razormane Pathfinder
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
    #loop
    .goto The Barrens,44.06,80.02,45,0
    .goto The Barrens,43.91,80.46,45,0
    .goto The Barrens,44.03,80.38,45,0
    .goto The Barrens,44.16,80.46,45,0
    .goto The Barrens,44.31,80.79,45,0
    .goto The Barrens,44.66,80.49,45,0
    .goto The Barrens,45.10,80.30,45,0
    .goto The Barrens,45.52,80.47,45,0
    .goto The Barrens,45.46,80.91,45,0
    .goto The Barrens,44.83,80.95,45,0
    .goto The Barrens,44.15,81.44,45,0
    .goto The Barrens,43.79,81.40,45,0
    .goto The Barrens,43.63,80.97,45,0
    .goto The Barrens,43.49,80.48,45,0
    .goto The Barrens,43.24,80.49,45,0
    .goto The Barrens,42.82,80.23,45,0
    .goto The Barrens,42.65,79.87,45,0
    .goto The Barrens,43.07,78.98,45,0
    .goto The Barrens,43.48,78.95,45,0
    .goto The Barrens,43.66,79.12,45,0
    .goto The Barrens,43.80,79.46,45,0
    .goto The Barrens,44.43,78.71,45,0
    .goto The Barrens,44.89,78.87,45,0
    .goto The Barrens,45.12,79.20,45,0
    .goto The Barrens,45.05,79.75,45,0
    .goto The Barrens,44.83,79.87,45,0
    .goto The Barrens,44.83,79.87,0
    >>Mata a |cRXP_ENEMY_Kuz|r. Despójalo para obtener la |cRXP_LOOT_Calavera de Kuz|r
    >>|cRXP_ENEMY_Kuz|r |cRXP_WARN_patrulla ligeramente por la zona|r
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
    .isOnQuest 879
step
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>Mata a |cRXP_ENEMY_Lok Aterraorcos|r. Despójalo para obtener la |cRXP_LOOT_Calavera de Lok|r
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
    .isOnQuest 879
step
    #completewith next
    >>Mata |cRXP_ENEMY_Acechadores Crines de Acero|r y |cRXP_ENEMY_Abrecaminos Crines de Acero|r. Despójalos para obtener un |T135640:0|t[|cRXP_LOOT_Puñal Crines de Acero|r]
    >>|cRXP_WARN_Los |cRXP_ENEMY_Acechador Crines de Acero|r están en sigilo|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
    #loop
	.goto The Barrens,42.57,78.81,50,0
	.goto The Barrens,42.12,78.48,50,0
	.goto The Barrens,41.49,78.69,50,0
	.goto The Barrens,41.22,79.72,50,0
	.goto The Barrens,40.91,80.60,50,0
	.goto The Barrens,40.55,80.84,50,0
	.goto The Barrens,41.62,80.92,50,0
	.goto The Barrens,41.54,82.28,50,0
	.goto The Barrens,42.48,82.28,50,0
	.goto The Barrens,42.57,78.81,50,0
    >>Mata |cRXP_ENEMY_Videntes Crines de Acero|r. Despójalos para obtener una |T135139:0|t[|cRXP_LOOT_Varita Crines de Acero carbonizada|r]
    >>Mata |cRXP_ENEMY_Frenéticos bélicos Crines de Acero|r. Despójalos para obtener un |T134955:0|t[|cRXP_LOOT_Escudo de guerra Crines de Acero|r]
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
    .goto The Barrens,43.87,83.43
    >>Mata a |cRXP_ENEMY_Nak|r. Despójalo para obtener la |cRXP_LOOT_Calavera de Nak|r
    .complete 879,2 --Nak's Skull (1)
    .mob Nak
    .isOnQuest 879
step
    #label Backstabber
    #loop
    .goto The Barrens,45.48,79.89,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    >>Mata |cRXP_ENEMY_Acechadores Crines de Acero|r y |cRXP_ENEMY_Abrecaminos Crines de Acero|r. Despójalos para obtener un |T135640:0|t[|cRXP_LOOT_Puñal Crines de Acero|r]
    >>|cRXP_WARN_Los |cRXP_ENEMY_Acechador Crines de Acero|r están en sigilo|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>Mata |cRXP_ENEMY_Excavadores de Bael'dun|r y |cRXP_ENEMY_Supervisores de Bael'dun|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #loop
	.goto The Barrens,48.34,86.19,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
	>>Mata al |cRXP_ENEMY_Prospector Khazgorm|r. Despójalo para obtener el |cRXP_LOOT_Diario de Khazgorm|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
    .isOnQuest 843
step
    #loop
    .goto The Barrens,47.22,84.98,0
    .goto The Barrens,47.22,84.98,40,0
    .goto The Barrens,47.28,85.74,40,0
    .goto The Barrens,47.60,85.66,40,0
    .goto The Barrens,48.43,86.34,40,0
    .goto The Barrens,48.03,85.46,40,0
    .goto The Barrens,47.94,84.86,40,0
    .goto The Barrens,47.37,84.01,40,0
    .goto The Barrens,46.92,84.22,40,0
    .goto The Barrens,46.99,85.82,40,0
    >>Mata |cRXP_ENEMY_Excavadores de Bael'dun|r y |cRXP_ENEMY_Supervisores de Bael'dun|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #completewith BaelModan
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>Mata a |cRXP_ENEMY_Washte Pawne|r. Despójalo para obtener |T135992:0|t[|cRXP_LOOT_Pluma de Washte Pawne|r]. Úsala para comenzar la misión
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acepta la misión Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulla el camino de norte a sur|r
    .turnin 843 >> Entrega la misión La reclamación de Gann
    .accept 846 >> Acepta la misión La venganza de Gann
    .target Gann Stonespire
    .isQuestComplete 843
step
    #optional
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulla el camino de norte a sur|r
    .accept 846 >> Acepta la misión La venganza de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label BaelModan
    .goto The Barrens,48.63,84.49,110 >>Viaja a Bael Modan
    .isOnQuest 846
step
    #loop
    .goto The Barrens,48.96,84.36,0
    .goto The Barrens,48.96,84.36,30,0
    .goto The Barrens,48.88,84.02,30,0
    .goto The Barrens,49.28,83.76,30,0
    .goto The Barrens,49.22,84.21,30,0
    .goto The Barrens,49.47,84.41,30,0
    .goto The Barrens,49.09,84.67,30,0
    >>Mata |cRXP_ENEMY_Enanos de Bael'dun|r. Despójalos para obtener su |cRXP_LOOT_Nitroglicerina|r, |cRXP_LOOT_Pulpa de madera|r, y |cRXP_LOOT_Nitrato sódico|r
    >>|cRXP_WARN_¡Ten cuidado!|r |cRXP_ENEMY_Oficiales de Bael'dun|r |cRXP_WARN_tienen un 50% más de parada durante 8 segundos después de hacer su animación de actitud defensiva|r << Rogue/Warrior/Druid/Shaman
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulla el camino de norte a sur|r
    .turnin 846 >> Entrega la misión La venganza de Gann
    .accept 849 >> Acepta la misión La venganza de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    .goto The Barrens,46.97,85.63
    >>Haz clic en la |cRXP_PICK_Máquina voladora de Bael Modan|r en lo alto de la plataforma
    >>|cRXP_WARN_Tiene un alcance de 50 yardas|r
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulla el camino de norte a sur|r
    .turnin 849 >> Entrega la misión La venganza de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label WashtethePawne
    #loop
	.goto The Barrens,44.85,78.81,0
	.goto The Barrens,44.85,78.81,60,0
	.goto The Barrens,44.44,78.97,60,0
	.goto The Barrens,43.14,80.75,60,0
	.goto The Barrens,43.35,81.16,60,0
	.goto The Barrens,47.22,79.72,60,0
	.goto The Barrens,47.21,79.35,60,0
	.goto The Barrens,44.76,74.79,60,0
    >>Mata a |cRXP_ENEMY_Washte Pawne|r. Despójalo para obtener |T135992:0|t[|cRXP_LOOT_Pluma de Washte Pawne|r]. Úsala para comenzar la misión
    >>|cRXP_WARN_Tiene 4 ubicaciones de aparición diferentes, omite este paso si no puedes encontrarlo|r
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Acepta la misión Washte Pawne
    .use 5103
    .unitscan Washte Pawne
step
    #completewith WeaponsofChoiceTurnin
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
    .bindlocation 378,1
    .subzoneskip 378
    .use 6948
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >> Viaja de vuelta al Campamento Taurajo
    >>|cRXP_WARN_También puedes matar enemigos hasta que tu|r |T134414:0|t[Piedra de hogar] |cRXP_WARN_esté disponible|r
    .cooldown item,6948,<0
step
    #label WeaponsofChoiceTurnin
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jironack|r
    .accept 893 >> Acepta la misión Una selección de armas
    .turnin 893 >> Entrega la misión Una selección de armas
    .target Tatternack Steelforge
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .accept 884 >>Acepta la misión Owatanka
    .turnin 884 >>Entrega la misión Owatanka
    .itemcount 5102,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .accept 885 >>Acepta la misión Washte Pawne
    .turnin 885 >>Entrega la misión Washte Pawne
    .target Jorn Skyseer
    .itemcount 5103,1
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .accept 897 >>Acepta la misión El Cosechador
    .turnin 897 >>Entrega la misión El Cosechador
    .itemcount 5138,1
    .target Jorn Skyseer
step
    #optional
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .target Jorn Skyseer
    .isQuestTurnedIn 913
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 879 >> Entrega la misión Traidores
    .accept 906 >> Acepta la misión Traidores
    .target Mangletooth
    .isOnQuest 879
step
    #optional
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 906 >> Acepta la misión Traidores
    .target Mangletooth
    .isQuestTurnedIn 879
step
    #completewith XroadsEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Vuela a El Cruce
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .turnin 906 >> Entrega la misión Traidores
    .target Thork
    .isOnQuest 906
step
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Korran|r
    .turnin 868 >> Entrega la misión ¡A cazar huevos!
    .target Korran
    .isOnQuest 868
step
    #completewith IshaAwak
    #optional
    .destroy 5058 >>|cRXP_WARN_Destruye los|r |T132834:0|t[Huevos de silítido] |cRXP_WARN_sobrantes que tengas|r
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1096
step << Rogue
    .goto The Barrens,51.39,30.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hula'mahi|r
    .vendor >>|cRXP_BUY_Abastécete de|r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_y suministros para|r |T132273:0|t[Veneno instantáneo]
    .target Hula'mahi
    .subzoneskip 380,1
step
    #label XroadsEnd --hidden step for #completewith
step << Hunter
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Hunter
    .goto Orgrimmar,48.12,80.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,874,1 << Hunter --Razor Arrow (1800)
    .target Trak'gend
    --VV Add hunter training
step << Hunter
    #completewith IshaAwak
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Vuela a Trinquete
    .target Doras
    .subzoneskip 392
step << !Hunter
    #completewith IshaAwak
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Vuela a Trinquete
    .target Devrak
    .subzoneskip 392
step
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 913
step
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>Mata a |cRXP_ENEMY_Isha Awak|r. Despójalo para obtener el |cRXP_LOOT_Corazón de Isha Awak|r
    >>|cRXP_WARN_Él tiene cuatro ubicaciones de aparición diferentes a lo largo de la costa|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isQuestTurnedIn 913
step
    #label IshaAwak
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >> Entrega la misión Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 913
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .isQuestTurnedIn 873
step << !Mage
    #optional
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isQuestAvailable 873
step << Mage
    .cast 3567 >>|cRXP_WARN_Lanza|r |T135759:0|t[Teletransporte a: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 120 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 759 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 8687 >> Aprende tus hechizos de clase
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 1833 >> Aprende tus hechizos de clase
    >>|T132273:0|t[Veneno instantáneo Rango 2] |cRXP_WARN_¡requiere 120 de habilidad en Venenos!|r
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra|r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_a este vendedor|r
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8190 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8053 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <28,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 6178 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 7887 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <28,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1456 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6217 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compra cualquier mejora para tu mascota que puedas permitirte
	.target Kurgul
    --VV Warlock Grimoire steps
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135466:0|t[Varita pestilente] |cRXP_BUY_a esta vendedora|r
    .collect 5347,1,6544,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 3045 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14319 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <28,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 992 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8104 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <28,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nogg|r
    .accept 2841 >>Acepta la misión Las guerras de la plataforma
    .target Nogg
    .dungeon GNOMER
step
    .goto Orgrimmar,75.50,25.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sovik|r
    >>|cRXP_WARN_Pasa por sus diálogos para aceptar esta misión|r
    .accept 2842 >>Acepta la misión Scooty, ingeniero jefe
    .target Sovik
    .dungeon GNOMER

    ]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 27-29 Vallefresno
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next 29-31 Las Mil Agujas


step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Compra|r |T134332:0|t[Manual de instrucciones de trituradora: Páginas] |cRXP_BUY_en la Casa de Subastas si están disponibles|r --Shredder Operating Manual Page 1-12
	.target Auctioneer Thathung
	.collect 16645,1,6504,1 -- Page 1
    .collect 16646,1,6504,1 -- Page 2
    .collect 16647,1,6504,1 -- Page 3
    .collect 16648,1,6504,1 -- Page 4
    .collect 16649,1,6504,1 -- Page 5
    .collect 16650,1,6504,1 -- Page 6
    .collect 16651,1,6504,1 -- Page 7
    .collect 16652,1,6504,1 -- Page 8
    .collect 16653,1,6504,1 -- Page 9
    .collect 16654,1,6504,1 -- Page 10
    .collect 16655,1,6504,1 -- Page 11
    .collect 16656,1,6504,1 -- Page 12
step
    #completewith next
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >> Abandona Orgrimmar a través de la salida occidental
    .zoneskip The Barrens
step
    #completewith next
    .goto Kalimdor,56.80,45.45,15,0
    .goto Ashenvale,94.54,76.15,40,0
    .goto Ashenvale,93.49,73.76,40,0
    .goto Ashenvale,92.47,71.18,40,0
    .goto Ashenvale,91.85,68.71,40,0
    .goto Ashenvale,91.39,65.86,25 >> Viaja al norte a lo largo del río hacia Vallefresno
step
    .goto Ashenvale,89.87,68.07,40,0
    .goto Ashenvale,86.89,68.65,40,0
    .goto Ashenvale,79.89,68.38,40,0
    .goto Ashenvale,73.52,63.50,30 >>Viaja al Puesto del Hachazo
    >>|cRXP_WARN_Puedes encontrar algunos enemigos de nivel 29-30, evítalos si es posible|r
    .subzoneskip 431
    .isQuestAvailable 6503
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >> Entrega la misión La Caza de Vallefresno
    .target Senani Thunderheart
    .isOnQuest 6382 --Camp T pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 742 >> Entrega la misión La Caza de Vallefresno
    .target Senani Thunderheart
    .isOnQuest 742 --TB pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 235 >> Entrega la misión La Caza de Vallefresno
    .target Senani Thunderheart
    .isOnQuest 235 --Org Pickup
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 6383 >> Entrega la misión La Caza de Vallefresno
    .target Senani Thunderheart
step
    .goto Ashenvale,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kaylisk|r
    .home >>Establece tu Piedra de hogar en el Puesto del Hachazo
    .target Innkeeper Kaylisk
    .bindlocation 431
    .subzoneskip 431,1
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mastok|r
    .accept 25 >> Acepta la misión Paralización en Espolón
    .target Mastok Wrilehiss
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pixie|r
    .accept 6441 >> Acepta la misión Los cuernos de sátiro
    .target Pixel
    .maxlevel 28
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >> Consigue la ruta de vuelo del Puesto del Hachazo
    .target Vhulgra
    .subzoneskip 431,1
step
    #label Splintertree1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuray'bin|r y |cRXP_FRIENDLY_Jurasol|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuray'bin|r << !BloodElf
    .accept 6503 >> Acepta la misión Avanzada de Vallefresno
    .target +Kuray'bin
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >> Entrega la misión Misión en Puesto del Hachazo << BloodElf
    .target +Advisor Sunsworn << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .isOnQuest 9428 << BloodElf
step << Hunter
    #completewith ClawBiteAshenvale1
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Qeeju|r
    .stable >> Guarda tu mascota en el establo. Pronto domesticarás un |cRXP_ENEMY_Oso viejo de Vallefresno|r y un |cRXP_ENEMY_Alfa Garraespectro|r
    .target Qeeju
step << Hunter
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso viejo de Vallefresno|r. Ataca enemigos con él para aprender|r |T132140:0|t[Zarpa (Rango 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Alfa Garraespectro|r. Ataca enemigos con él para aprender|r |T132278:0|t[Mordedura (Rango 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale1
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso viejo de Vallefresno|r. Ataca enemigos con él para aprender|r |T132140:0|t[Zarpa (Rango 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .xp >27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Qeeju|r
    .stable >> Abandona al |cRXP_ENEMY_Oso viejo de Vallefresno|r o al |cRXP_ENEMY_Alfa Garraespectro|r y recupera a tu mascota habitual
    .target Qeeju
    .zoneskip Ashenvale,1
    .train 16830,3
step << BloodElf
    #optional
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >> Acepta la misión Avanzada de Vallefresno
    .target Kuray'bin
step
    #ah
    #completewith Outrunners
    .goto Ashenvale,70.01,71.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gurda|r
    >>|cRXP_WARN_Omite este paso si no tienes (todas las) páginas|r
    .accept 6504 >> Acepta la misión Las páginas perdidas
    .turnin 6504 >> Entrega la misión Las páginas perdidas
    .target Gurda Ragescar
step
    #completewith Outrunners
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Mata a |cRXP_ENEMY_Garfafilada|r. Despójalo para obtener la |T136063:0|t[|cRXP_LOOT_Garfa de Garrafilada|r] y úsala para comenzar la misión
    >>|cRXP_WARN_¡Ten cuidado!|r |cRXP_ENEMY_Garfafilada|r |cRXP_WARN_es nivel 31 y patrulla por los alrededores. Puedes llevarlo de vuelta al Puesto del Hachazo o al Campamento de los Renegados si tienes dificultades para matarlo. Si haces esto, asegúrate de hacerle 50%+ de daño para obtener el crédito. También puedes completar esta misión después|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acepta la misión La garfa de Garrafilada
    .unitscan Sharptalon
    .use 16305
step << Hunter
    #completewith next
    .cast 19885 >>|cRXP_WARN_Cast|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find the |cRXP_ENEMY_Avanzada de Vallefresno|r more easily|r
    .train 19885,3
step
    #label Outrunners
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,76.15,67.60,15,0
    .goto Ashenvale,76.03,69.02,15,0
    .goto Ashenvale,76.25,70.62,15,0
    .goto Ashenvale,75.76,71.61,15,0
    .goto Ashenvale,75.57,70.33,15,0
    .goto Ashenvale,75.20,70.62,15,0
    .goto Ashenvale,74.37,69.31,15,0
    .goto Ashenvale,73.61,70.91,15,0
    .goto Ashenvale,72.96,70.34,15,0
    .goto Ashenvale,72.66,69.46,15,0
    .goto Ashenvale,72.09,70.17,15,0
    .goto Ashenvale,71.07,72.60,15,0
    .goto Ashenvale,71.92,73.64,15,0
    .goto Ashenvale,72.53,72.58,15,0
    .goto Ashenvale,72.32,74.64,15,0
    .goto Ashenvale,73.36,74.43,15,0
    .goto Ashenvale,73.85,75.03,15,0
    >>Mata |cRXP_ENEMY_Avanzadas de Vallefresno|r
    >>|cRXP_WARN_Están en sigilo|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torek|r para comenzar la escolta
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_tiene un tiempo de reaparición de 5 minutos|r
    .accept 6544 >> Acepta la misión El asalto de Torek
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Sigue a |cRXP_FRIENDLY_Torek|r
    >>Deja que |cRXP_FRIENDLY_Torek|r y sus |cRXP_FRIENDLY_Asaltantes del Hachazo|r tanqueen a las |cRXP_ENEMY_Guerreras Ala de Plata|r y a las |cRXP_ENEMY_Centinelas Ala de Plata|r
    >>|cRXP_WARN_Cuando limpies el edificio, corre hacia el Balcón. Cuando |cRXP_ENEMY_Duriel Fuegolunar|r llega, deja que |cRXP_FRIENDLY_Torek|r y sus |cRXP_FRIENDLY_Asaltante del Hachazo|r generen amenaza antes de infligir daño|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    .goto Ashenvale,59.73,62.81,80,0
    .goto Ashenvale,62.99,44.16,50 >> Viaja hacia la entrada occidental de la Senda de la Noche
    >>|cRXP_WARN_¡Ten cuidado! ¡Un|r |cRXP_ENEMY_Protector deambulante|r |cRXP_WARN_nivel 35 (élite JcJ) podría patrullar la zona!|r
    .unitscan Wandering Protector
    .subzoneskip 428
    .isOnQuest 6441
step
    #completewith next
    .goto Ashenvale,64.88,43.81,50,0
    .goto Ashenvale,67.04,50.73,80 >> Viaja a la Senda de la Noche
    .subzoneskip 428
step
    #loop
	.goto Ashenvale,67.85,51.34,0
	.goto Ashenvale,66.78,51.71,50,0
	.goto Ashenvale,66.19,53.44,50,0
	.goto Ashenvale,66.17,54.40,50,0
	.goto Ashenvale,66.22,55.27,50,0
	.goto Ashenvale,66.20,56.37,50,0
	.goto Ashenvale,66.77,57.14,50,0
	.goto Ashenvale,67.11,56.39,50,0
	.goto Ashenvale,67.35,55.53,50,0
	.goto Ashenvale,67.92,54.42,50,0
	.goto Ashenvale,68.92,53.44,50,0
	.goto Ashenvale,68.63,52.69,50,0
	.goto Ashenvale,67.85,51.34,50,0
    >>Mata |cRXP_ENEMY_Acechasombras Putredor|r, |cRXP_ENEMY_Sátiros Putredor|r, y |cRXP_ENEMY_Jurapenas Putredor|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos de sátiro|r
    >>|cRXP_WARN_¡Ten cuidado! Todos los Putredor lanzan|r |T136119:0|t[Fetidez sobrecogedora]|cRXP_WARN_, un silencio instantáneo de 6 segundos|r << Mage/Warlock/Priest/Druid/Shaman
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
    .isOnQuest 6441
step
    #completewith Shadumbra
    .subzone 426 >> Viaja al oeste hacia el Refugio de la Algaba
    .isOnQuest 1195
step
    #completewith next
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    >>Mata a |cRXP_ENEMY_Shadumbra|r. Despójala para obtener la |T132225:0|t[|cRXP_LOOT_Cabeza de Shadumbra|r] y úsala para comenzar la misión
    >>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrulla ligeramente por la zona|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Acepta la misión La cabeza de Shadumbra
	.unitscan Shadu
step
    #loop
    .goto Ashenvale,58.08,56.06,0
    .goto Ashenvale,58.08,56.06,40,0
    .goto Ashenvale,58.69,55.18,40,0
    .goto Ashenvale,59.27,54.47,40,0
    .goto Ashenvale,59.83,53.26,40,0
    .goto Ashenvale,60.40,52.83,40,0
    .goto Ashenvale,61.03,51.96,40,0
    .goto Ashenvale,60.99,49.19,40,0
    .goto Ashenvale,62.51,50.16,40,0
    >>Mata |cRXP_ENEMY_Hermanas sonrientes|r. Despójalas para obtener una |T134776:0|t[|cRXP_LOOT_Ampolla con grabados|r]
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
    .isOnQuest 1195
step
    #label Shadumbra
    #loop
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,0
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    .goto Ashenvale,62.39,49.80,40,0
    >>Mata a |cRXP_ENEMY_Shadumbra|r. Despójala para obtener la |T132225:0|t[|cRXP_LOOT_Cabeza de Shadumbra|r] y úsala para comenzar la misión
    >>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrulla ligeramente por la zona|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Acepta la misión La cabeza de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
   .goto Ashenvale,36.81,33.48,200 >> Viaja al Poblado Piel de Cardo
   >>|cRXP_WARN_Procura evitar a los guardias de Astranaar de camino|r
   .subzoneskip 2301
   .isOnQuest 216
step
    #completewith next
    >>Mata |cRXP_ENEMY_Chamanes Piel de Cardo|r y |cRXP_ENEMY_Vengadores Piel de Cardo|r de camino hacia la cueva
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step
    #label EntertheHold
    .goto Ashenvale,38.67,30.62,40 >>Entra en el Bastión Piel de Cardo
    .isOnQuest 6462
step
    #loop
    .goto Ashenvale,40.39,33.22,0
    .goto Ashenvale,40.39,33.22,20,0
    .goto Ashenvale,40.77,32.81,20,0
    .goto Ashenvale,41.36,32.19,20,0
    .goto Ashenvale,41.75,32.94,20,0
    .goto Ashenvale,41.77,33.68,20,0
    .goto Ashenvale,42.37,33.61,20,0
    .goto Ashenvale,42.82,34.11,20,0
    .goto Ashenvale,41.73,34.47,20,0
    .goto Ashenvale,41.66,35.70,20,0
	>>Despoja los |cRXP_PICK_Cofres trol|r del suelo para obtener los |cRXP_LOOT_Talismanes trol|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto Ashenvale,41.49,34.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruul|r al fondo de la cueva. Esto comenzará una escolta
    .accept 6482 >> Acepta la misión Liberar a Ruul
    .target Ruul Snowhoof
step
    .goto Ashenvale,38.73,36.86,0
    .goto Ashenvale,40.68,33.21,20,0
    .goto Ashenvale,40.29,32.25,20,0
    .goto Ashenvale,39.41,31.00,20,0
    .goto Ashenvale,38.28,30.68,20,0
    .goto Ashenvale,37.39,32.74,30,0
    .goto Ashenvale,37.30,34.49,30,0
    .goto Ashenvale,38.73,36.86
    >>Escolta a |cRXP_FRIENDLY_Ruul|r fuera del Poblado Piel de Cardo
    >>|cRXP_WARN_¡Ten cuidado! 3|r |cRXP_ENEMY_Piel de Cardo|r |cRXP_WARN_aparecerán una vez que estés a mitad de camino de la cueva y otros 3 fuera de la puerta del Poblado Piel de Cardo|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    #loop
    .goto Ashenvale,35.75,32.01,0
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    >>Termina de matar a los |cRXP_ENEMY_Chamanes Piel de Cardo|r y |cRXP_ENEMY_Vengadores Piel de Cardo|r
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>|cRXP_WARN_Usa el|r |T132821:0|t[Odre de agua azul vacío] |cRXP_WARN_bajo el Gazebo|r
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    #loop
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,43.78,68.86,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.81,62.94,40,0
    >>Mata a |cRXP_ENEMY_Ursangous|r. Despójalo para obtener la |T132941:0|t[|cRXP_LOOT_Pata de Ursangous|r] y úsala para comenzar la misión
    >>|cRXP_WARN_Él patrulla un poco por los alrededores|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Acepta la misión La pata de Ursangous
    .unitscan Ursangous
    .use 16303
step
    #completewith Tideress
    .subzone 421 >> Viaja al Lago Mystral
    .isOnQuest 25
step
    #completewith Tideress
    >>Mata |cRXP_ENEMY_Elementales de agua podrida|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.36,69.74,40,0
    >>Mata a |cRXP_ENEMY_Marearess|r. Despójala para obtener el |T136222:0|t[|cRXP_LOOT_Globo de agua contaminada|r]. Úsalo para comenzar la misión
    >>|cRXP_ENEMY_Marearess|r |cRXP_WARN_patrulla alrededor de la isla y bajo el agua|r
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Acepta la misión El elemento contaminado
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>Ve bajo el Gazebo
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    #loop
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,0
    .goto Ashenvale,48.71,69.54,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,45.84,70.67,40,0
    >>Mata a |cRXP_ENEMY_Marearess|r. Despójala para obtener el |T136222:0|t[|cRXP_LOOT_Globo de agua contaminada|r]. Úsalo para comenzar la misión
    >>|cRXP_ENEMY_Marearess|r |cRXP_WARN_patrulla alrededor de la isla y bajo el agua|r
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Acepta la misión El elemento contaminado
    .use 16408
    .unitscan Tideress
step
    #loop
	.goto Ashenvale,48.36,69.74,0
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
    >>Mata |cRXP_ENEMY_Elementales de agua podrida|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>|cRXP_WARN_Usa la|r |T134776:0|t[|cRXP_LOOT_Ampolla Grabada|r] |cRXP_WARN_en la Poza de la Luna|r
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
    .isOnQuest 1195
step
    #completewith next
    .goto Ashenvale,71.10,68.12,80 >>Viaja al Puesto del Hachazo
    .subzoneskip 431
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >> Entrega la misión Avanzada de Vallefresno
    .target Kuray'bin
step
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,78.24,65.72,45,0
    .goto Ashenvale,77.93,65.93,45,0
    .goto Ashenvale,77.60,66.33,45,0
    .goto Ashenvale,77.35,66.96,45,0
    .goto Ashenvale,76.93,68.04,45,0
    .goto Ashenvale,76.11,68.95,45,0
    .goto Ashenvale,75.94,69.80,45,0
    .goto Ashenvale,75.26,69.96,45,0
    .goto Ashenvale,74.86,70.06,45,0
    .goto Ashenvale,74.36,70.10,45,0
    .goto Ashenvale,73.33,70.61,45,0
    .goto Ashenvale,72.94,70.67,45,0
    .goto Ashenvale,72.50,70.60,45,0
    .goto Ashenvale,72.08,70.47,45,0
    .goto Ashenvale,71.46,70.10,45,0
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Mata a |cRXP_ENEMY_Garfafilada|r. Despójalo para obtener la |T136063:0|t[|cRXP_LOOT_Garfa de Garrafilada|r] y úsala para comenzar la misión
    >>|cRXP_WARN_¡Ten cuidado!|r |cRXP_ENEMY_Garfafilada|r |cRXP_WARN_es nivel 31 y patrulla por los alrededores. Puedes llevarlo de vuelta al Puesto del Hachazo o al Campamento de los Renegados si tienes dificultades para matarlo. Si haces esto, asegúrate de hacerle 50%+ de daño para obtener el crédito|r
    >>|cRXP_WARN_Skip this if you are unable to kill him|r (NOT TRANSLATED IN :esMX YET)
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Acepta la misión La garfa de Garrafilada
    .unitscan Sharptalon
    .use 16305
step
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ertog|r
    .turnin 6544 >> Entrega la misión El asalto de Torek
    .target Ertog Ragetusk
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 2 >> Entrega la misión La garfa de Garfafilada
    .turnin 24 >> Entrega la misión La cabeza de Shadumbra
    .turnin 23 >> Entrega la misión La pata de Ursangous
    .turnin 247 >> Entrega la misión El fin de la Caza
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 24 >> Entrega la misión La cabeza de Shadumbra
    .turnin 23 >> Entrega la misión La pata de Ursangous
    .turnin 247 >> Entrega la misión El fin de la Caza
    .target Senani Thunderheart
    .isQuestTurnedIn 2
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senani|r
    .turnin 24 >> Entrega la misión La cabeza de Shadumbra
    .turnin 23 >> Entrega la misión La pata de Ursangous
    .target Senani Thunderheart
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pixie|r
    .turnin 6441 >> Entrega la misión Los cuernos de sátiro
    .target Pixel
    .isQuestComplete 6441
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mastok|r
    .turnin 25 >> Entrega la misión Paralización en Espolón
    .turnin 1918 >> Entrega la misión El elemento contaminado
    .accept 824 >> Acepta la misión Je'neu del Anillo de la Tierra
    .target Mastok Wrilehiss
step
    .goto Ashenvale,74.11,60.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >> Entrega la misión Liberar a Ruul
    .target Yama Snowhoof
step << Hunter
    #optional
    #completewith ClawBiteAshenvale2
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Qeeju|r
    .stable >> Guarda tu mascota en el establo. Pronto domesticarás un |cRXP_ENEMY_Oso viejo de Vallefresno|r y un |cRXP_ENEMY_Alfa Garraespectro|r
    .target Qeeju
step << Hunter
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso viejo de Vallefresno|r. Ataca enemigos con él para aprender|r |T132140:0|t[Zarpa (Rango 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Alfa Garraespectro|r. Ataca enemigos con él para aprender|r |T132278:0|t[Mordedura (Rango 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale2
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso viejo de Vallefresno|r. Ataca enemigos con él para aprender|r |T132140:0|t[Zarpa (Rango 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Ahora deberías buscar un grupo para Cavernas de Brazanegra
    .dungeon BFD
step
    #completewith ZoramVisit2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >> Vuela a la Avanzada de Zoram'gar
    .target Vhulgra
    .subzoneskip 2897
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karang|r
    .turnin 216 >> Entrega la misión Entre una roca y un Piel de Cardo
    .target Karang Amakkar
step
    .goto Ashenvale,11.65,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >> Entrega la misión El talismán trol
    .target Mitsuwa
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Entrega la misión Je'neu del Anillo de la Tierra
    .accept 6563 >> Acepta la misión La esencia de Aku'Mai
    .accept 6921 >> Acepta la misión Entre ruinas
    .accept 6565 >> Acepta la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Entrega la misión Je'neu del Anillo de la Tierra
    .accept 6563 >> Acepta la misión La esencia de Aku'Mai
    .accept 6921 >> Acepta la misión Entre ruinas
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label ZoramVisit2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >> Entrega la misión Je'neu del Anillo de la Tierra
    .target Je'neu Sancrea
step
    .goto Kalimdor,43.89,35.23,100 >> Viaja a la entrada de las Cavernas de Brazanegra
    .dungeon BFD
step
    #completewith next
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Mata a las |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalas para obtener una |T134332:0|t[|cRXP_LOOT_Nota mojada|r] y úsala para iniciar la misión
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acepta la misión Lealtad a los dioses antiguos
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Thaelrid|r
    .accept 6561 >>Acepta la misión La vileza de Brazanegra
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Kill |cRXP_ENEMY_Lorgus Jett |r (NOT TRANSLATED IN :esMX YET)
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Despoja la |cRXP_PICK_Piedra de las profundidades|r en el suelo del agua para obtener el |cRXP_LOOT_Núcleo de las profundidades|r
    >>|cRXP_WARN_Despojando esto hará aparecer al|r |cRXP_ENEMY_Barón Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mata al |cRXP_ENEMY_Barón Aquanis|r. Despójalo para obtener un |T136222:0|t[|cRXP_LOOT_Globo de agua extraño|r]. Úsalo para aceptar la misión
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acepta la misión Barón Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Despoja la |cRXP_PICK_Piedra de las profundidades|r en el suelo del agua para obtener el |cRXP_LOOT_Núcleo de las profundidades|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mata al |cRXP_ENEMY_Señor Crepuscular Kelris|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith FlyZoramS2
    .hs >> Usa tu Piedra de hogar para ir al Puesto del Hachazo
    >>|cRXP_WARN_Mata|r a |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_primero si quieres. Este es el jefe final de la mazmorra|r
    .cooldown item,6948,>2,1
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon BFD
step
    #optional
    #completewith FlyZoramS2
    .subzone 431 >>|cRXP_WARN_Realiza un 'Ghetto Hearth' en Cavernas de Brazanegra|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copy paste this macro inside Blackfathom Deeps to ghetto Hearth back to Splintertree Post|r (NOT TRANSLATED IN :esMX YET)
    .cooldown item,6948,<0
    .bindlocation 431,1
    .dungeon BFD
step
    #label FlyZoramS2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >> Vuela a la Avanzada de Zoram'gar
    .target Vhulgr
    .subzoneskip 2897
    .dungeon BFD
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entrega la misión La esencia de Aku'Mai
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Entrega la misión Entre ruinas
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Entrega la misión Barón Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
    .dungeon !BFD
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <26,1
    .xp >28,1
    .dungeon !BFD
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 3029 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <28,1
    .dungeon !BFD
step
    .hs >> Usa tu Piedra de hogar para ir al Puesto del Hachazo
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon !BFD
step << Rogue/Warlock
    #completewith FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar>> Vuela a Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
    .dungeon !BFD
step << Rogue/Warlock
    #completewith OrgSkip
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fly Orgrimmar>> Vuela a Orgrimmar
    .target Andruk
    .zoneskip Orgrimmar
    .dungeon BFD
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 1833 >> Aprende tus hechizos de clase
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 8687 >> Aprende tus hechizos de clase
    >>|T132273:0|t[Veneno instantáneo Rango 2] |cRXP_WARN_¡requiere 120 de habilidad en Venenos!|r
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Abastécete de|r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_y|r |T132273:0|t[Venenos]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1456 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6217 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compra cualquier mejora para tu mascota que puedas permitirte
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135466:0|t[Varita pestilente] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135466:0|t[Varita pestilente] |cRXP_BUY_a esta vendedora|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Rogue/Warlock
    #optional
    #label OrgSkip
step
    #optional
    #label FlyTB
step << Rogue/Warlock
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Doras
    .zoneskip Orgrimmar,1
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Andruk
    .zoneskip Ashenvale,1
    .dungeon BFD
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vhulgra|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Vhulgra
    .zoneskip Ashenvale,1
    .dungeon !BFD
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 29-31 Las Mil Agujas
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next RXP TBC Guía de Supervivencia (H)\31-33 Trabalomas/Arathi parte 1

step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible y aún no la tienes|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Tótem de Ira
    .isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible y aún no la tienes|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Tótem de Ira
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Cómprale una|r |T135651:0|t[Daga de guardamano] |cRXP_BUY_para tu mano secundaria|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Cómprale una|r |T135651:0|t[Daga de guardamano] |cRXP_BUY_para tu mano secundaria|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equipa la|r |T135651:0|t[Daga de guardamano]
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .xp <29,1
step
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zangen|r
    .turnin 1195 >> Entrega la misión La llama sacra
    .accept 1196 >> Acepta la misión La llama sacra
    .target Zangen Stonehoof
    .isOnQuest 1195
step
    #optional
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zangen|r
    .accept 1196 >> Acepta la misión La llama sacra
    .target Zangen Stonehoof
    .isQuestTurnedIn 1195
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kym|r
    .train 1850 >> Aprende tus hechizos de clase
    .target Kym Wildmane
    .xp <26,1
    .xp >28,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kym|r
    .train 3029 >> Aprende tus hechizos de clase
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kym|r
    .train 783 >> Aprende tus hechizos de clase
    .target Kym Wildmane
    .xp <30,1
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melor|r
    .turnin 1130 >> Entrega la misión Melor manda saludos
    .accept 1131 >> Acepta la misión Metaleador
    .target Melor Stonehoof
    .isOnQuest 1130
step
    #optional
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Acepta la misión Metaleador
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 3045 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <30,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ker|r
    .train 6178 >> Aprende tus hechizos de clase
    .target Ker Ragetotem
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ker|r
    .train 7887 >> Aprende tus hechizos de clase
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 7369 >> Aprende tus hechizos de clase
    .accept 1718 >>Acepta la misión El isleño
    .target Torm Ragetotem
    .xp <30,1
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Auld|r
    .accept 1102 >> Acepta la misión Un destino vengador
    .target Auld Stonespire
    .dungeon RFK
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 1131,4821,4841,1149
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 992 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 8104 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 602 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 120 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 759 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <30,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Aprende |T135765:0|t[Teletransporte a: Cima del Trueno]
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 943 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 8053 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 556 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <30,1
step
    #optional
    #label SilkBandage
step
    #completewith next
    .skill firstaid,115 >> |cRXP_WARN_Crea|r |T133684:0|t[Vendas de lana] |cRXP_WARN_hasta que tu habilidad sea 115|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pand|r
    .train 3278 >> Aprende |T133687:0|t[Venda de lana gruesa]
    .target Pand Stonebinde
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,150 >> |cRXP_WARN_Crea|r |T133687:0|t[Vendas de lana gruesa] |cRXP_WARN_hasta que tu habilidad sea 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Aprende |T133671:0|t[Venda de seda]
    >>|cRXP_WARN_Omite este paso si no tenías suficiente Paño de lana para llegar a 150 de habilidad|r
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[Arco corvo sólido Arco] |cRXP_BUY_si está disponible|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Tronacuerno
    .money <1.9467
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a esta vendedora|r
    .collect 3030,1800,5881,1 << Hunter --Razor Arrow (1800)
    .target Kuna Tronacuerno
    .itemcount 3030,<1400
step
    #optional
    .abandon 6561 >>Abandona la misión La vileza de Brazanegra
    .dungeon BFD
step
    #optional
    .abandon 6565 >>Abandona la misión Lealtad a los dioses antiguos
    .dungeon BFD
step
    #optional
    .abandon 6563 >>Abandona la misión La esencia de Aku'Mai
    .dungeon BFD
step
    #optional
    .abandon 6921 >>Abandona la misión Entre ruinas
    .dungeon BFD
step
    #completewith Elevators
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip The Barrens
    .zoneskip Thousand Needles
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jironack|r
    .accept 1153 >> Acepta la misión Una nueva muestra de mineral
    .target Tatternack Steelforge
    .isQuestTurnedIn 893
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .aura 16618 >>|cRXP_WARN_Si te quedan 10|r |T134128:0|t[|cRXP_LOOT_Esquirlas de sangre|r |cRXP_WARN_, úsalas para obtener|r |T136022:0|t[Espíritu del viento] |cRXP_WARN_de|r |cRXP_FRIENDLY_Quebrantadientes|r
    .itemcount 5075,10
    .target Mangletooth
    .train 783,1 << Druid --Travel form
    .train 2645,1 << Shaman --Ghost Wolf
    .train 5118,1 << Hunter -- Cheetah
step << Druid/Shaman/Hunter
    #optional
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    +|cRXP_WARN_Si tienes|r |T134128:0|t[|cRXP_LOOT_Esquirlas de sangre|r |cRXP_WARN_sobrantes, úsalas para obtener "buffs" a tu elección de|r |cRXP_FRIENDLY_Quebrantadientes|r
    .itemcount 5075,4
    .target Mangletooth
    .train 783,3 << Druid --Travel form
    .train 2645,3 << Shaman --Ghost Wolf
    .train 5118,3 << Hunter -- Cheetah
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Viaja hacia |cRXP_FRIENDLY_Salmuera|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1534 >>Entrega la misión La llamada del agua
    .accept 220 >>Acepta la misión La llamada del agua
    .target Brine
step
    #completewith next
    .goto The Barrens,48.63,84.49,110 >>Viaja a Bael Modan
    .subzoneskip 359
    .group
    .maxlevel 29
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Feegly|r
    .accept 857 >> Acepta la misión La Lágrima de las Lunas
    .target Feegly the Exiled
    .group 2
    .maxlevel 29
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>Baja al piso inferior de Bael'dun
    .group
    .isOnQuest 857
step
    .goto The Barrens,49.13,84.25
    >>Abre la |cRXP_PICK_Caja fuerte del general Trenzado|r. Despójalo para obtener la |cRXP_LOOT_Lágrima de las lunas|r
    >>|cRXP_WARN_¡Ten cuidado! Es muy fácil atraer demasiados enemigos en la sala del |cRXP_ENEMY_General Trenzado|r|r
    >>|cRXP_WARN_Extrae directamente cualquier mob excepto |cRXP_ENEMY_Gran general Trenzado|r << !Hunter !Warlock
    >>|cRXP_WARN_Extrae directamente cualquier mob excepto |cRXP_ENEMY_Gran general Trenzado|r y usa tu mascota para tanquear. Alternativamente envía tu mascota adentro y despoja la caja fuerte|r << Hunter/Warlock
    .complete 857,1 --Tear of the Moons (1)
    .group 2
    .isOnQuest 857
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>Sal de la Fortaleza de Bael'dun
    .group
step
    #label TearMoons2
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Feegly|r
    .turnin 857 >> Entrega la misión La Lágrima de las Lunas
    .target Feegly the Exiled
    .isQuestComplete 857
    .group
step
    .goto Thousand Needles,31.87,21.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grish|r
    .turnin 5881 >> Entrega la misión La sustitución
    .target Grish Longrunner
    .isOnQuest 5881
step
    #label Elevators
    .goto Thousand Needles,32.24,22.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno de Luna|r
    .accept 4542 >> Acepta la misión Mensaje para el Poblado Viento Libre
    .target Brave Moonhorn
step
    .goto Thousand Needles,31.97,23.76,30 >> Toma el ascensor para bajar a Las Mil Agujas
    >>|cRXP_WARN_¡No te caigas! ¡MORIRÁS!|r
    .isOnQuest 4542
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Mata al |cRXP_ENEMY_Mensajero Galak|r. Despójalo para obtener la |T133473:0|t[|cRXP_LOOT_Nota de asesinato|r]. Úsala para iniciar la misión
    >>|cRXP_WARN_Aparece en el Risco Pezuña Quebrada (el campamento centauro oriental)|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acepta la misión Complot de asesinato
    .use 12564
    .unitscan Galak Messenger
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >> Viaja a los Ascensores del Poblado Viento Libre
step
    .goto Thousand Needles,45.91,49.91,25 >> Toma el ascensor hacia el Poblado Viento Libre
    .isQuestAvailable 4821,4841,1149
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elosai|r (NOT TRANSLATED IN :esMX YET)
    .accept 9431 >> Acepta la misión Un enfoque diferente
    .target Magistrix Elosai
step
    .goto Thousand Needles,46.00,50.80
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 5147 >> Acepta la misión Se busca: Arnak Tótem Siniestro
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >> Entrega la misión La llama sacra
    .accept 1197 >> Acepta la misión La llama sacra
    .target Rau Cliffrunner
    .group
    .maxlevel 30
    .isOnQuest 1196
step
     #optional
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >> Entrega la misión La llama sacra
    .target Rau Cliffrunner
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 4542 >> Entrega la misión Mensaje para el Poblado Viento Libre
    .accept 4841 >> Acepta la misión Apaciguar al centauro
    .target Cliffwatcher Longhorn
    .maxlevel 30
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 4542 >> Entrega la misión Mensaje para el Poblado Viento Libre
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134937:0|t[Pergaminos] |cRXP_BUY_si están disponibles|r << !Warrior
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación]|cRXP_BUY_, |r|T134937:0|t[Pergaminos] |cRXP_BUY_y|r |T134413:0|t[Vidarraíz] |cRXP_BUY_si están disponibles|r << Warrior
    .target Montarr
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[|cRXP_FRIENDLY_Arco corto denso|r] |cRXP_BUY_si está disponible|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Mage
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montarr|r
    >>|cRXP_BUY_Compra una o más|r |T134419:0|t[Runa de teletransporte] |cRXP_BUY_a este vendedor|r
    .collect 17031,1,4767,1 --Rune of Teleportation (1)
    .target Montarr
step << Mage
    #optional
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Abeqwa|r
    .home >> Establece tu Piedra de hogar en el Poblado Viento Libre
    .target Innkeeper Abeqwa
    .bindlocation 484
    .isQuestAvailable 4767
    .train 3566,3 --Skips step if Teleport Thunder Bluff isn't trained
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hagar|r
    .accept 4821 >> Acepta la misión Un huevo extraño
    .target Hagar Lightninghoof
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elu|r
    .accept 4767 >> Acepta la misión Jinete del viento
    .target Elu
    .maxlevel 31
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyse|r
    .fp Freewind Post >> Consigue la ruta de vuelo del Poblado Viento Libre
    .target Nyse
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step
    #completewith Clovenhoof
    >>Mata |cRXP_ENEMY_Exploradores Galak|r, |cRXP_ENEMY_Retadores Galak|r y |cRXP_ENEMY_Cazavientos Galak|r
    >>|cRXP_WARN_Mata a cada|r |cRXP_ENEMY_Explorador Galak|r |cRXP_WARN_que veas, ya que son más raros de encontrar|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
    .group 0
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>Entra en la cueva
    .isOnQuest 1197
    .group 2
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>Viaja hacia el |cRXP_PICK_Blandón antiguo|r
    .isOnQuest 1197
    .group
step
    #requires Splithoofcave
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>Abre el |cRXP_PICK_Blandón antiguo|r. Despójalo para obtener la |cRXP_LOOT_Pezuña hendida|r
    >>|cRXP_WARN_¡Ten cuidado! El blandón está defendido por dos|r Guardias Flama Galak|cRXP_ENEMY_ de nivel 30|r
    .complete 1197,1 --Collect Cloven Hoof (x1)
    .mob Galak Flame Guard
    .isOnQuest 1197
    .group 2
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Mata al |cRXP_ENEMY_Mensajero Galak|r. Despójalo para obtener la |T133473:0|t[|cRXP_LOOT_Nota de asesinato|r]. Úsala para iniciar la misión
    >>|cRXP_WARN_Aparece en el Risco Pezuña Quebrada (el campamento centauro oriental)|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acepta la misión Complot de asesinato
    .use 12564
    .unitscan Galak Messenger
step
    #loop
	.goto Thousand Needles,43.12,36.86,0
	.goto Thousand Needles,43.12,36.86,50,0
	.goto Thousand Needles,41.18,34.83,50,0
	.goto Thousand Needles,40.42,34.45,50,0
	.goto Thousand Needles,39.00,32.56,50,0
	.goto Thousand Needles,39.68,34.93,50,0
	.goto Thousand Needles,39.76,35.82,50,0
	.goto Thousand Needles,39.32,36.93,50,0
	.goto Thousand Needles,40.43,37.96,50,0
	.goto Thousand Needles,41.04,39.03,50,0
	.goto Thousand Needles,41.12,41.34,50,0
	.goto Thousand Needles,42.33,40.54,50,0
	.goto Thousand Needles,42.84,39.09,50,0
	.goto Thousand Needles,44.15,40.72,50,0
	.goto Thousand Needles,44.98,41.03,50,0
	.goto Thousand Needles,45.66,43.81,50,0
	.goto Thousand Needles,47.23,41.98,50,0
	.goto Thousand Needles,48.57,43.53,50,0
	.goto Thousand Needles,49.39,41.24,50,0
	.goto Thousand Needles,48.14,40.43,50,0
	.goto Thousand Needles,47.11,40.29,50,0
	.goto Thousand Needles,45.89,40.32,50,0
	.goto Thousand Needles,44.43,38.36,50,0
    >>Mata |cRXP_ENEMY_Exploradores Galak|r, |cRXP_ENEMY_Retadores Galak|r y |cRXP_ENEMY_Cazavientos Galak|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>Viaja hacia |cRXP_FRIENDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >> Acepta la misión Prueba de fe
    .timer 7,Prueba de fe "Roleplay"
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>|cRXP_WARN_Espera al Roleplay|r
    >>|cRXP_WARN_Salta desde el extremo de la plataforma de madera. Serás teletransportado en lugar de morir por daño de caída|r
    .complete 1149,1 --Explore Zone (1)
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >> Entrega la misión Prueba de fe
    .accept 1150 >> Acepta la misión Prueba de resistencia
    .target Dorn Plainstalker
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >> Entrega la misión Prueba de fe
    .target Dorn Plainstalker
step
    #completewith AlienEgg
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,59.79,58.16,0
    >>Mata |cRXP_ENEMY_Supervisores Gravamorro|r, |cRXP_ENEMY_Cavadores Gravamorro|r y a |cRXP_ENEMY_Gibblesnik|r (si está vivo). Despójalos para obtener una |cRXP_LOOT_Muestra de mena|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .isOnQuest 1153
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>Despoja un |cRXP_LOOT_Huevo extraño|r del suelo
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #loop
    .goto Thousand Needles,60.49,58.82,0
    .goto Thousand Needles,63.69,60.43,0
    .goto Thousand Needles,65.84,61.77,0
    .goto Thousand Needles,63.67,48.03,0
    .goto Thousand Needles,60.49,58.82,50,0
    .goto Thousand Needles,63.69,60.43,50,0
    .goto Thousand Needles,65.84,61.77,50,0
    .goto Thousand Needles,63.67,48.03,50,0
    >>Mata a los |cRXP_ENEMY_Thundering Boulderkins|r. Despoja sus |cRXP_LOOT_Purifying Tierra|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #label AlienEgg
    #loop
    .goto Thousand Needles,52.34,55.24,0
    .goto Thousand Needles,37.63,56.11,0
    .goto Thousand Needles,56.36,50.39,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    >>Despoja un |cRXP_LOOT_Huevo extraño|r del suelo
    >>|cRXP_WARN_Tiene 3 ubicaciones de aparición diferentes. Están marcadas en el mapa|r
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith Freewind2
    .goto Thousand Needles,46.73,48.27,30 >> Viaja a los Ascensores del Poblado Viento Libre
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 4841 >> Entrega la misión Apaciguar al centauro
    .accept 5064 >> Acepta la misión Espiando a los Tótem Siniestro
    .target Cliffwatcher Longhorn
    .isQuestComplete 4841
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .accept 5064 >> Acepta la misión Espiando a los Tótem Siniestro
    .target Cliffwatcher Longhorn
    .isQuestTurnedIn 4841
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rau|r
    .turnin 1197 >> Entrega la misión La llama sacra
    .target Rau Cliffrunner
    .isQuestComplete 1197
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hagar|r
    .turnin 4821 >> Entrega la misión Un huevo extraño
    .accept 4865 >> Acepta la misión Venganza
    .target Hagar Lightninghoof
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[|cRXP_FRIENDLY_Arco corto denso|r] |cRXP_BUY_si está disponible|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
    .isQuestAvailable 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,4767,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #label Freewind2
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134937:0|t[Pergaminos] |cRXP_BUY_si están disponibles|r << !Warrior
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación]|cRXP_BUY_, |r|T134937:0|t[Pergaminos] |cRXP_BUY_y|r |T134413:0|t[Vidarraíz] |cRXP_BUY_si están disponibles|r << Warrior
    .target Montarr
    .subzoneskip 484,1
    .isQuestAvailable 4767
step
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Entra en la Guarida Malapluma
    .isOnQuest 1150
step
    #completewith Grenka
    +|cRXP_WARN_Ten cuidado porque las |cRXP_ENEMY_Clamavientos estridentes|r lanzan|r |T136022:0|t[Racha de viento]|cRXP_WARN_, un aturdimiento en área de 4 segundos a menos de 10 metros de las |cRXP_ENEMY_Clamavientos estridentes|r
    +|cRXP_ENEMY_Arpías estridente|r lanzan|r |T136122:0|t[Chirrido ensordecedor]|cRXP_WARN_, un silencio de 8 segundos|r << Mage/Warlock/Priest/Druid/Shaman/Paladin
    .isOnQuest 1150
step
    #completewith next
    .goto Thousand Needles,25.84,54.78
    +Abre los |cRXP_PICK_Comestibles de la Arpía|r del suelo al fondo de la cueva para invocar a |cRXP_ENEMY_Grenka|r
    .isOnQuest 1150
step
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>Mata a |cRXP_ENEMY_Grenka Aullasangre|r. Despójala para obtener |cRXP_LOOT_Garra de Grenka|r
    >>|cRXP_WARN_This quest was nerfed in TBC. No adds will spawn|r (NOT TRANSLATED IN :esMX YET)
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
    .isOnQuest 1150
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Mata a |cRXP_ENEMY_Metaleador|r. Despójalo para obtener |cRXP_LOOT_Costilla de Metaleador|r
    >>|cRXP_WARN_¡Ten cuidado, tiene dos |cRXP_ENEMY_Hienas|r defendiéndolo!|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #label HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>Viaja hacia Nido Alto
    .subzoneskip 482
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>Sube corriendo por el camino. Viaja hacia |cRXP_FRIENDLY_Pao'ka|r
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith PaokaEscort
    >>Despoja los |cRXP_LOOT_Huevos de dracoleón de Nido Alto|r del suelo
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pao'ka|r para comenzar la escolta
    >>|cRXP_WARN_¡Ten cuidado si |cRXP_ENEMY_Cuorevaja|r está vivo! Este es un élite raro de nivel 32|r
    .accept 4770,1 >> Acepta la misión De vuelta a casa
    .target Pao'ka Swiftmountain
    .unitscan Heartrazor
    .isOnQuest 4767
step
    --#requires HighPerchArrive
    #label PaokaEscort
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Pao'ka|r
    >>|cRXP_WARN_Tres Dracoleones de Nido Alto aparecerán cuando |cRXP_FRIENDLY_Pao'ka|r llega al centro de Nido Alto. Solo necesitas atraer al del este y los otros desaparecerán|r
    .complete 4770,1 --Escort Pao'ka from Highperch
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #loop
    .goto Thousand Needles,13.91,39.11,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>Despoja los |cRXP_LOOT_Huevos de dracoleón de Nido Alto|r del suelo
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #completewith Messenger
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Mata a |cRXP_ENEMY_Metaleador|r. Despójalo para obtener |cRXP_LOOT_Costilla de Metaleador|r
    >>|cRXP_WARN_¡Ten cuidado, tiene dos |cRXP_ENEMY_Hienas|r defendiéndolo!|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
    .unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laer|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Laer Stepperunner
    .isQuestAvailable 5151
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_¡Ten cuidado! Entregar esta misión invocará tres |cRXP_ENEMY_Asesinos Galak|r |cRXP_WARN_de los que tendrás que proteger a |cRXP_FRIENDLY_Kanati|r|r
    .turnin 4881 >> Entrega la misión Complot de asesinato
    .accept 4966 >> Acepta la misión Defensa de Kanati Nube Gris
    .target Kanati Greycloud
    .isOnQuest 4881
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>Mata a los |cRXP_ENEMY_Asesinos Galak|r para proteger a |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Entrega la misión Defensa de Kanati Nube Gris
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >> Entrega la misión Venganza
    .accept 5062 >> Acepta la misión El fuego Sagrado
    .turnin 4770 >> Entrega la misión De vuelta a casa
    .target Motega Firemane
    .isQuestComplete 4770
step
    #optional
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >> Entrega la misión Venganza
    .accept 5062 >> Acepta la misión El fuego Sagrado
    .target Motega Firemane
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >> Entrega la misión Un Enfoque Diferente
    .accept 9433 >> En la Poza de la Luna
    .accept 5151 >> Acepta la misión Hipercondensador
    .target Wizlo Bearingshiner
    .group
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >> Entrega la misión Un Enfoque Diferente
    .accept 9433 >> En la Poza de la Luna
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,22.78,24.53
    >>Abre la jaula y mata a la |cRXP_ENEMY_Pantera iracunda|r. Despójala para obtener el |cRXP_LOOT_Hipercondensador|r
    .complete 5151,1 --Hypercapacitor Gizmo (1)
    .mob Enraged Panther
    .group 2
step
    #completewith MoonWellWater
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Mata al |cRXP_ENEMY_Mensajero Galak|r. Despójalo para obtener la |T133473:0|t[|cRXP_LOOT_Nota de asesinato|r]. Úsala para iniciar la misión
    >>|cRXP_WARN_Patrulla por la zona. Aparece en el Risco Pezuña Quebrada (el campamento centauro oriental)|r
    >>|cRXP_WARN_Búscalo con|r |T132172:0|t[Ojo de águila] |cRXP_WARN_si lo has aprendido|r << Hunter
    >>|cRXP_WARN_Búscalo con|r |T136034:0|t[Visión lejana] |cRXP_WARN_si lo has aprendido|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acepta la misión Complot de asesinato
    .use 12564
    .unitscan Galak Messenger
step
    .goto Thousand Needles,9.46,18.69
    .cast 30009 >>|cRXP_WARN_Usa la|r |T132995:0|t[Unidad de Control de Robotrón] |cRXP_WARN_cerca del|r |cRXP_PICK_Panel de Control Oculto|r
    .aura 29989
    .use 23675
    .isOnQuest 9433
step
    #label MoonWellWater
    .goto Feralas,89.54,46.31
    >>|cRXP_WARN_Mientras controlas el|r |cRXP_FRIENDLY_Robotrón 3000|r|cRXP_WARN_, entra en la Poza de la Luna y usa la|r |T134754:0|t[Recoger agua] |cRXP_WARN_habilidad para recoger|r |cRXP_LOOT_Thalanaar Agua de la Poza de la Luna|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .target Robotron 3000
    .use 23675
step
    #label Messenger
    #loop
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,18.32,22.10,0
    .goto Thousand Needles,18.32,22.10,40,0
    .goto Thousand Needles,18.72,22.53,40,0
    .goto Thousand Needles,18.47,23.06,40,0
    .goto Thousand Needles,18.70,24.42,40,0
    .goto Thousand Needles,18.63,26.19,40,0
    .goto Thousand Needles,18.98,26.71,40,0
    .goto Thousand Needles,19.46,27.04,40,0
    .goto Thousand Needles,19.96,27.67,40,0
    .goto Thousand Needles,20.45,27.87,40,0
    .goto Thousand Needles,20.83,28.26,40,0
    .goto Thousand Needles,22.05,30.61,40,0
    .goto Thousand Needles,24.56,32.76,40,0
    .goto Thousand Needles,25.29,34.23,40,0
    .goto Thousand Needles,27.34,34.02,40,0
    .goto Thousand Needles,28.24,33.37,40,0
    .goto Thousand Needles,28.64,33.43,40,0
    .goto Thousand Needles,29.24,33.96,40,0
    .goto Thousand Needles,29.51,33.89,40,0
    .goto Thousand Needles,30.69,32.43,40,0
    .goto Thousand Needles,31.55,30.61,40,0
    .goto Thousand Needles,32.29,30.52,40,0
    .goto Thousand Needles,33.27,30.86,40,0
    .goto Thousand Needles,33.81,30.12,40,0
    .goto Thousand Needles,34.25,29.49,40,0
    .goto Thousand Needles,35.19,28.11,40,0
    .goto Thousand Needles,35.84,28.59,40,0
    .goto Thousand Needles,36.57,29.47,40,0
    .goto Thousand Needles,37.34,29.29,40,0
    .goto Thousand Needles,38.81,31.73,40,0
    .goto Thousand Needles,39.51,33.43,40,0
    >>Mata al |cRXP_ENEMY_Mensajero Galak|r. Despójalo para obtener la |T133473:0|t[|cRXP_LOOT_Nota de asesinato|r]. Úsala para iniciar la misión
    >>|cRXP_WARN_Patrulla por la zona. Aparece en el Risco Pezuña Quebrada (el campamento centauro oriental)|r
    >>|cRXP_WARN_Búscalo con|r |T132172:0|t[Ojo de águila] |cRXP_WARN_si lo has aprendido|r << Hunter
    >>|cRXP_WARN_Búscalo con|r |T136034:0|t[Visión lejana] |cRXP_WARN_si lo has aprendido|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Acepta la misión Complot de asesinato
    .use 12564
    .unitscan Galak Messenger
step
    #loop
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,0
    .goto Thousand Needles,11.50,21.61,40,0
    .goto Thousand Needles,11.88,20.90,40,0
    .goto Thousand Needles,12.89,19.97,40,0
    .goto Thousand Needles,14.49,20.04,40,0
    .goto Thousand Needles,15.69,18.65,40,0
    .goto Thousand Needles,16.20,18.53,40,0
    .goto Thousand Needles,16.70,18.61,40,0
    .goto Thousand Needles,17.28,18.93,40,0
    .goto Thousand Needles,17.66,19.46,40,0
    .goto Thousand Needles,17.96,20.18,40,0
    .goto Thousand Needles,17.87,20.78,40,0
    .goto Thousand Needles,17.54,21.49,40,0
    .goto Thousand Needles,17.24,22.32,40,0
    .goto Thousand Needles,17.66,22.98,40,0
    .goto Thousand Needles,18.11,23.65,40,0
    .goto Thousand Needles,18.57,24.07,40,0
    .goto Thousand Needles,18.68,24.68,40,0
    .goto Thousand Needles,18.64,25.90,40,0
    .goto Thousand Needles,18.48,26.74,40,0
    .goto Thousand Needles,17.82,27.50,40,0
    .goto Thousand Needles,17.19,29.60,40,0
    .goto Thousand Needles,15.67,31.56,40,0
    .goto Thousand Needles,15.08,31.63,40,0
    .goto Thousand Needles,14.34,30.13,40,0
    .goto Thousand Needles,13.75,28.54,40,0
    .goto Thousand Needles,13.36,26.97,40,0
    .goto Thousand Needles,13.01,26.31,40,0
    .goto Thousand Needles,11.91,25.02,40,0
    .goto Thousand Needles,11.55,24.44,40,0
    .goto Thousand Needles,11.49,24.07,40,0
    .goto Thousand Needles,11.16,23.21,40,0
    .goto Thousand Needles,11.20,22.29,40,0
    >>Mata a |cRXP_ENEMY_Metaleador|r. Despójalo para obtener |cRXP_LOOT_Costilla de Metaleador|r
    >>|cRXP_WARN_Patrulla en sentido contrario a las agujas del reloj|r
    >>|cRXP_WARN_¡Ten cuidado, tiene dos |cRXP_ENEMY_Hienas|r defendiéndolo!|r
    >>|cRXP_WARN_Búscalo con|r |T132172:0|t[Ojo de águila] |cRXP_WARN_si lo has aprendido|r << Hunter
    >>|cRXP_WARN_Búscalo con|r |T136034:0|t[Visión lejana] |cRXP_WARN_si lo has aprendido|r << Shaman
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >> Sube al nivel 29: 500+/36300 XP
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_¡Ten cuidado! Entregar esta misión invocará tres |cRXP_ENEMY_Asesinos Galak|r |cRXP_WARN_de los que tendrás que proteger a |cRXP_FRIENDLY_Kanati|r|r
    .turnin 4881 >> Entrega la misión Complot de asesinato
    .accept 4966 >> Acepta la misión Defensa de Kanati Nube Gris
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Mata a los |cRXP_ENEMY_Asesinos Galak|r para proteger a |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Entrega la misión Defensa de Kanati Nube Gris
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Entrega en la Poza de la Luna
    .accept 9434 >> Acepta la misión Probando el tónico
    .turnin 5151 >> Entrega la misión Hipercondensador
    .target Wizlo Bearingshiner
    .isQuestComplete 5151
    .group
step
    #optional
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >> Entrega en la Poza de la Luna
    .accept 9434 >> Acepta la misión Probando el tónico
    .target Wizlo Bearingshiner
step
    #sticky
    #completewith EnterRFK
    .subzone 491,2 >> Ahora deberías buscar un grupo para Horado Rajacieno
    .dungeon RFK
step
    #loop
    .goto Thousand Needles,36.58,38.77,0
    .goto Thousand Needles,36.58,38.77,35,0
    .goto Thousand Needles,37.77,38.17,35,0
    .goto Thousand Needles,36.63,36.23,35,0
    .goto Thousand Needles,34.96,33.22,35,0
    .goto Thousand Needles,33.37,32.85,35,0
    .goto Thousand Needles,33.67,34.09,35,0
    .goto Thousand Needles,34.88,34.82,35,0
    .goto Thousand Needles,35.62,36.20,35,0
    .goto Thousand Needles,36.05,37.41,35,0
    >>Despoja las |cRXP_PICK_Plantas Pita incendiaria|r del suelo y bajo el agua
    >>Los |cRXP_ENEMY_Elementales hirvientes|r y |cRXP_ENEMY_Elementales en ebullición|r son inmunes al daño de escarcha, altamente resistentes al fuego. Intenta evitarlos o usa hechizos de Arcano << Mage
    >>|cRXP_WARN_Ten cuidado ya que los|r |cRXP_ENEMY_Elementales en ebullición|r |cRXP_WARN_lanzan|r |T132156:0|t[Vaporizador]|cRXP_WARN_, reduciendo tu probabilidad de golpe un 30% durante 10 segundos|r << Warrior/Rogue/Shaman/Druid
    >>|cRXP_WARN_Ten cuidado ya que los|r |cRXP_ENEMY_Elementales hirvientes|r |cRXP_WARN_lanzan|r |T135807:0|t[Escaldar]|cRXP_WARN_, infligiendo instantáneamente 150 de daño de fuego y aturdiendo durante 4 segundos|r
    .complete 5062,1 --Collect Incendia Agave (x10)
    .maxlevel 31
step
    #completewith next
    >>|cRXP_WARN_Si es posible, pide a los miembros de tu grupo que compartan la siguiente misión. De lo contrario, omite este paso|r
    .accept 1109 >> Acepta la misión Guano del Horado
    .dungeon RFK
step
    #label EnterRFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.89,70.35
    .subzone 491,2 >> Entra en Horado Rajacieno
    .dungeon RFK
step
    >>Mata |cRXP_ENEMY_Murciélagos del Horado|r. Despójalos para obtener un |cRXP_LOOT_Guano del Horado|r
    .complete 1109,1 --Kraul Guano (1)
    .mob Kraul Bat
    .mob Greater Kraul Bat
    .dungeon RFK
    .isOnQuest 1109
step
    >>Mata a |cRXP_ENEMY_Charlga Filonavaja|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r y el |T134939:0|t[|cRXP_LOOT_Pergamino pequeño|r]. Usa el pergamino para comenzar la misión
    .complete 1102,1 --Razorflank's Heart (1)
    .collect 17008,1,6522 --Collect Small Scroll (1)
    .accept 6522 >>Acepta la misión Una alianza impía
    .mob Charlga Razorflank
    .use 17008
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willix el Importador|r
    >>|cRXP_WARN_Esto iniciará una escolta|r
    .accept 1144 >> Acepta la misión Willix el Importador
    .target Willix the Importer
    .dungeon RFK
step
    >>Escolta a |cRXP_FRIENDLY_Willix el Importador|r a través de Horado Rajacieno
    >>|cRXP_WARN_¡Asegúrate de permanecer cerca de |cRXP_FRIENDLY_Willix|r de lo contrario la misión podría no completarse!|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
    .target Willix the Importer
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willix el Importador|r
    .turnin 1144 >> Entrega la misión Willix el Importador
    .target Willix the Importer
    .isQuestComplete 1144
    .dungeon RFK
step
    #completewith HSTB
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    .train 3566,1 << Mage
step << Mage
    #completewith HSTB
    .cast 3566 >>|cRXP_WARN_Usa|r |T135765:0|t[Teletransporte a: Cima del Trueno]
    .zoneskip Thunder Bluff
    .train 3566,3
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
    .train 3566,3
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 8422 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <32,1
    .train 3566,3
step
    #label HSTB
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Pala
    .isQuestAvailable 4904,1151,5088,5147
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melor|r
    .turnin 1131 >> Entrega la misión Metaleador
    .accept 1136 >> Acepta la misión Faucehielo
    .target Melor Stonehoof
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 14319 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5384 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <30,1
    .xp >32,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 14263 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <32,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ker|r
    .train 7887 >> Aprende tus hechizos de clase
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 7369 >> Aprende tus hechizos de clase
    .accept 1718 >>Acepta la misión El isleño
    .target Torm Ragetotem
    .xp <30,1
    .xp >32,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 20658 >> Aprende tus hechizos de clase
    .accept 1718 >>Acepta la misión El isleño
    .target Torm Ragetotem
    .xp <32,1
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >> Entrega la misión El fuego Sagrado
    .target Magatha Grimtotem
    .isQuestComplete 5062
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magatha|r
    .accept 5088 >> Acepta la misión Arikara
    .target Magatha Grimtotem
    .isQuestTurnedIn 5062
    .group
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kym|r
    .train 3029 >> Aprende tus hechizos de clase
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kym|r
    .train 783 >> Aprende tus hechizos de clase
    .target Kym Wildmane
    .xp <30,1
    .xp >32,1
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kym|r
    .train 22568 >> Aprende tus hechizos de clase
    .target Kym Wildmane
    .xp <32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 8104 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 602 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .train 6077 >> Aprende tus hechizos de clase
    .target Miles Welsh
    .xp <32,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 759 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 8412 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 8422 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <32,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >> Aprende |T135765:0|t[Teletransporte a: Cima del Trueno]
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 8053 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 556 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <30,1
    .xp >32,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 421 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <32,1
step
    #completewith next
    .skill firstaid,150 >> |cRXP_WARN_Crea|r |T133687:0|t[Vendas de lana gruesa] |cRXP_WARN_hasta que tu habilidad sea 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pand|r
    .train 7928 >> Aprende |T133671:0|t[Venda de seda]
    >>|cRXP_WARN_Omite este paso si no tenías suficiente Paño de lana para llegar a 150 de habilidad|r
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << !Undead --Quest unavailable to Undeads
    .goto Thunder Bluff,34.42,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sabio|r
    .accept 1049 >> Acepta la misión El Compendio de los Caídos
    .target Sage Truthseeker
    .dungeon SM
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[Arco corvo sólido Arco] |cRXP_BUY_si está disponible|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kuna Tronacuerno
    .money <1.9467
    .isQuestAvailable 4904,1151,5088,5147
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a esta vendedora|r
    .collect 3030,1800,1153,1 --Razor Arrow (1800)
    .target Kuna Tronacuerno
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible|r
    >>|cRXP_WARN_Como alternativa, también puedes comprar una|r |T135576:0|t[Bullova]
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Tótem de Ira
    .isQuestAvailable 4904,1151,5088,5147
step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Delgo|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T132408:0|t[Hacha despiadada] |cRXP_BUY_si está disponible|r
    >>|cRXP_WARN_Alternativamente, también puedes comprar una|r |T135576:0|t[Bullova] |cRXP_WARN_o revisar la Casa de Subastas si hay algo mejor disponible|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Tótem de Ira
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compra una|r |T135275:0|t[Espada ancha] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compra una|r |T135275:0|t[Espada ancha] |cRXP_BUY_a este vendedor|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equipa la|r |T135275:0|t[Espada ancha]
    .use 2520
    .itemcount 2520,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Cómprale una|r |T135651:0|t[Daga de guardamano] |cRXP_BUY_para tu mano secundaria|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Cómprale una|r |T135651:0|t[Daga de guardamano] |cRXP_BUY_para tu mano secundaria|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equipa la|r |T135651:0|t[Daga de guardamano]
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Auld|r
    .turnin 1102 >> Entrega la misión Un destino vengador
    .target Auld Stonespire
    .isQuestComplete 1102
    .dungeon RFK
step
    #completewith EnterDWM
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jironack|r
    .turnin 1153 >> Entrega la misión Una nueva muestra de mineral
    .target Tatternack Steelforge
    .isQuestComplete 1153
step << Tauren
    #optional
    #completewith next
    .subzone 222 >> Viaja al Poblado Pezuña de Sangre
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xar'Ti|r y |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Aprende |T136103:0|t[Montar kodo]
    .vendor >>|cRXP_BUY_Compra un|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step
    #label EnterDWM
    .goto The Barrens,50.48,78.72,100 >> Viaja a Marjal Revolcafango
    .zoneskip Dustwallow Marsh
    .isQuestAvailable 4904,1151,5088,5147
step
    #optional
	.goto Dustwallow Marsh,29.7,47.6
    >>Haz clic en las |cRXP_PICK_Huellas de casco sospechosas|r del suelo
    .accept 1268 >> Acepta la misión Huellas de pezuñas sospechosas
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
	.goto Dustwallow Marsh,29.83,48.24
    >>Haz clic en la |cRXP_PICK_Identificación de guardia de Theramore|r en el tablón de madera del suelo
    .accept 1269 >> Acepta la misión Teniente Paval Reethe
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
    .goto Dustwallow Marsh,29.63,48.60
    >>Haz clic en el |cRXP_PICK_Escudo negro|r sobre la chimenea
    .accept 1251 >> Acepta la misión El escudo negro
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #completewith FlyFreewind
    .goto Dustwallow Marsh,30.65,45.34,40,0
    .goto Dustwallow Marsh,32.28,42.80,40,0
    .goto Dustwallow Marsh,33.12,40.85,40,0
    .goto Dustwallow Marsh,33.55,38.71,40,0
    .goto Dustwallow Marsh,34.73,37.66,40,0
    .goto Dustwallow Marsh,34.31,34.40,40,0
    .goto Dustwallow Marsh,33.30,31.23,40,0
    .goto Dustwallow Marsh,36.64,31.72,120,0
    .subzone 496 >> Viaja al Poblado Murohelecho
    >>|cRXP_WARN_¡Ten cuidado! Hay enemigos de nivel 36-38 en la zona. Sigue la flecha de navegación para mantenerte a salvo|r
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >> Entrega la misión Huellas de pezuñas sospechosas
    .target Krog
    .isOnQuest 1268
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krog|r
    .turnin 1269 >> Entrega la misión Teniente Paval Reethe
    .target Krog
    .isOnQuest 1269
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krog|r
    .turnin 1251 >> Entrega la misión El escudo negro
    .accept 1321 >> Acepta la misión El escudo negro
    .target Krog
    .isOnQuest 1251
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krog|r
    .accept 1321 >> Acepta la misión El escudo negro
    .target Krog
    .isQuestTurnedIn 1251
step
    #optional
    .goto Dustwallow Marsh,36.50,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Do'gol|r
    .turnin 1321 >> Entrega la misión El escudo negro
    .target Do'gol
    .isQuestTurnedIn 1251
step << Warrior/Shaman
    .goto Dustwallow Marsh,36.17,31.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zulrg|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135158:0|t[Palo grande] |cRXP_BUY_si está disponible|r
    --.collect 12251,1,873,1 --Collect Big Stick (1)
    .money <4.3117
    .target Zulrg
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balai|r
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134937:0|t[Pergaminos] |cRXP_BUY_si están disponibles|r
    .target Balai Lok'Wein
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balai|r
    >>|cRXP_BUY_Compra los|r |T133735:0|t[Manuales de primeros auxilios] |cRXP_BUY_a esta vendedora|r
    .collect 16112,1,873,1 >> Manual: Venda de seda gruesa (1)
    .collect 16113,1,873,1 >> Manual: Venda de tejido mágico (1)
    .collect 16084,1,873,1 >> Manual: Primeros auxilios para expertos: Entre vendas (1)
    .target Balai Lok'Wein
    .skill firstaid,<1,1
step
    #label FlyFreewind
    #completewith FreewindHome
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shardi|r
    .fp Brackenwall >> Consigue la Ruta de Vuelo del Poblado Murohelecho
    .fly Freewind Post >>Vuela al Poblado Viento Libre
    .target Shardi
    .zoneskip Thousand Needles
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >> Entrega la misión Jinete del viento
    .target Elu
    .isQuestComplete 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[|cRXP_FRIENDLY_Arco corto denso|r] |cRXP_BUY_si está disponible|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134937:0|t[Pergaminos] |cRXP_BUY_si están disponibles|r << !Warrior
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación]|cRXP_BUY_, |r|T134937:0|t[Pergaminos] |cRXP_BUY_y|r |T134413:0|t[Vidarraíz] |cRXP_BUY_si están disponibles|r << Warrior
    .target Montarr
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    #label FreewindHome
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Abeqwa|r
    .home >> Establece tu Piedra de hogar en el Poblado Viento Libre
    .target Innkeeper Abeqwa
    .bindlocation 484
    .subzoneskip 484,1
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 9434 >> Entrega la misión Probando el tónico
    .target Magistrix Elosai
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >> Entrega la misión Prueba de resistencia
    .target Dorn Plainstalker
    .isQuestComplete 1150
    .group
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorn|r
    .accept 1151 >> Acepta la misión Prueba de fuerza
    .target Dorn Plainstalker
    .isQuestTurnedIn 1150
    .group
    .maxlevel 31
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Encuentra y mata a |cRXP_ENEMY_Rok'Alim el Aporreador|r. Despójalo para obtener sus |cRXP_LOOT_Trozos|r
    >>|cRXP_WARN_Patrulla una gran parte de la zona norte/oeste|r
    >>|cRXP_WARN_Omite este paso por ahora si no lo encuentras|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .group 2
step
    .goto Thousand Needles,31.47,36.71,30 >> Dirígete a la Cumbre de la Nube Negra
    .isQuestTurnedIn 4841
    .maxlevel 31
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
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,31.79,32.58
    >>Abre el |cRXP_PICK_Cofre de documentos|r encima de la meseta. Despójalo para obtener la |cRXP_LOOT_Nota secreta n.º 1|r
    .complete 5064,1 --Secret Note #1 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,33.80,39.90
    >>Abre el |cRXP_PICK_Cofre de documentos|r dentro de la gran tienda. Despójalo para obtener la |cRXP_LOOT_Nota secreta n.º 1|r
    .complete 5064,2 --Secret Note #2 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,39.20,41.60
    >>Abre el |cRXP_PICK_Cofre de documentos|r dentro de la tienda en la meseta oriental. Despójalo para obtener la |cRXP_LOOT_Nota secreta n.º 1|r
    .complete 5064,3 --Secret Note #3 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,35.68,39.25,20,0
    .goto Thousand Needles,34.32,35.74,20,0
    .goto Thousand Needles,35.56,30.94,20,0
    .goto Thousand Needles,36.97,31.97,20 >> Travel toward the |cRXP_PICK_Fogata|r on the northern/eastern plateau
    .isOnQuest 5088
    .maxlevel 31
step
    >>Clear the |cRXP_ENEMY_Grimtotems|r and then light the |cRXP_PICK_Fogata|r
	>>Mata a |cRXP_ENEMY_Arikara|r. Despójala para obtener su |cRXP_LOOT_Piel|r
    .goto Thousand Needles,38.00,35.30
    .complete 5088,2 --Incendia Powder (1)
    .complete 5088,1 --Arikara Serpent Skin (2)
    .mob Arikara
    .isOnQuest 5088
    .group
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.80
    >>Mata a |cRXP_ENEMY_Arnak Tótem Siniestro|r. Despójalo para obtener su |cRXP_LOOT_Pezuña|r
    .complete 5147,1 --Arnak's Hoof (1)
    .mob Arnak Grimtotem
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lakota|r
    >>|cRXP_WARN_Esto iniciará una escolta|r
    .accept 4904,1 >> Acepta la misión Al fin libre
    .target Lakota Windsong
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #label LakoteEscort
    .goto Thousand Needles,38.96,29.46,20,0
    .goto Thousand Needles,37.56,31.43,20,0
    .goto Thousand Needles,36.89,31.73,20,0
    .goto Thousand Needles,35.64,31.01,20,0
    .goto Thousand Needles,34.53,30.78,20,0
    .goto Thousand Needles,33.19,28.54,20,0
    .goto Thousand Needles,32.53,27.44,20,0
    .goto Thousand Needles,32.28,28.67,20,0
    .goto Thousand Needles,32.04,31.37,20,0
    .goto Thousand Needles,32.86,32.62,20,0
    .goto Thousand Needles,33.05,35.42,20,0
    .goto Thousand Needles,31.06,36.89
	>>Escolta a |cRXP_FRIENDLY_Lakota|r a un lugar seguro
    >>|cRXP_WARN_Dos|r |cRXP_ENEMY_Tótem Siniestro|r |cRXP_WARN_aparecerán cada vez que ella alcance una nueva plataforma. Intenta mantenerte delante de ella para limpiar las plataformas si reaparecen enemigos por detrás|r
	>>|cRXP_WARN_Ten cuidado, esta misión es DIFÍCIL. No dudes en escapar huyendo hacia atrás y fallando la escolta si es necesario|r
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle. (1)
    .target Lakota Windsong
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Motega|r
    .turnin 5088 >> Entrega la misión Arikara
    .target Motega Firemane
    .isQuestComplete 5088
    .group
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_¡Ten cuidado! Entregar esta misión invocará tres |cRXP_ENEMY_Asesinos Galak|r |cRXP_WARN_de los que tendrás que proteger a |cRXP_FRIENDLY_Kanati|r|r
    .turnin 4881 >> Entrega la misión Complot de asesinato
    .accept 4966 >> Acepta la misión Defensa de Kanati Nube Gris
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Mata a los |cRXP_ENEMY_Asesinos Galak|r para proteger a |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >> Entrega la misión Defensa de Kanati Nube Gris
    .isQuestComplete 4966
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Encuentra y mata a |cRXP_ENEMY_Rok'Alim el Aporreador|r. Despójalo para obtener sus |cRXP_LOOT_Trozos|r
    >>|cRXP_WARN_Patrulla una gran parte de la zona norte/oeste|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .group 2
step
    #label TestofStrengthTI
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorn|r
    .turnin 1151 >> Entrega la misión Prueba de fuerza
    .target Dorn Plainstalker
    .isQuestComplete 1151
    .group
step
    #loop
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,51.89,43.02,40,0
    .goto Thousand Needles,53.41,46.19,40,0
    .goto Thousand Needles,54.05,44.96,40,0
    .goto Thousand Needles,53.47,46.65,40,0
    .goto Thousand Needles,52.61,48.28,40,0
    .goto Thousand Needles,53.64,48.50,40,0
    .goto Thousand Needles,51.48,48.06,40,0
    .goto Thousand Needles,59.69,47.76,40,0
    .goto Thousand Needles,62.21,47.76,40,0
    .goto Thousand Needles,62.63,48.38,40,0
    .goto Thousand Needles,64.01,47.52,40,0
    .goto Thousand Needles,63.92,46.63,40,0
    .goto Thousand Needles,63.10,45.53,40,0
    .goto Thousand Needles,65.83,51.44,40,0
    .goto Thousand Needles,65.44,50.11,40,0
    .goto Thousand Needles,64.91,50.30,40,0
    .goto Thousand Needles,66.11,49.91,40,0
    .goto Thousand Needles,66.32,49.13,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,58.87,58.69,40,0
    .goto Thousand Needles,57.66,57.70,40,0
    .goto Thousand Needles,58.93,57.68,40,0
    .goto Thousand Needles,58.94,56.55,40,0
    .goto Thousand Needles,58.97,54.98,40,0
    .goto Thousand Needles,59.32,53.69,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,59.79,58.16,0
    >>Mata |cRXP_ENEMY_Supervisores Gravamorro|r, |cRXP_ENEMY_Cavadores Gravamorro|r y a |cRXP_ENEMY_Gibblesnik|r (si está vivo). Despójalos para obtener una |cRXP_LOOT_Muestra de mena|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .isOnQuest 1153
step
    #optional
    .goto Thousand Needles,43.12,36.86
    .xp 30 >> Mata enemigos hasta subir al nivel 30
step
    #label ShimmeringF
    #completewith next
    .goto Thousand Needles,70.58,62.69,200 >> Viaja a el Desierto de Sal
    .subzoneskip 439
step
    .goto Thousand Needles,77.79,77.26
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kravel|r
    .accept 1111 >> Acepta la misión Maestro de muelles Vertipeluca
	.accept 5762 >> Acepta la misión Hemet Nesingwary
	.target Kravel Koalbeard
step
    #completewith FWHS
    .goto Thousand Needles,75.44,97.37,40,0
    .goto Tanaris,51.60,25.44,100 >> Viaja a Gadgetzan
    .zoneskip Tanaris
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >> Consigue la Ruta de Vuelo de Gadgetzan
    .fly freewind Post >> Vuela al Poblado Viento Libre
    .target Bulkrek Ragefist
    .cooldown item,6948,<0
    .subzoneskip 484
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >> Consigue la Ruta de Vuelo de Gadgetzan
    .target Bulkrek Ragefist
    .cooldown item,6948,>0,1
step
    #label FWHS
    .hs >> Usa tu Piedra de hogar para ir al Poblado Viento Libre
    .goto Thousand Needles,46.06,51.41,30 >>Llega al Poblado Viento Libre
    .use 6948
    .cooldown item,6948,>0,1
    .subzoneskip 484
    .bindlocation 484,1
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 5064 >> Entrega la misión Espiando a los Tótem Siniestro
    .turnin 5147 >> Entrega la misión Se busca: Arnak Tótem Siniestro
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
    .isQuestComplete 5147
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 5064 >> Entrega la misión Espiando a los Tótem Siniestro
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuerno Largo|r
    .turnin 5147 >> Entrega la misión Se busca: Arnak Tótem Siniestro
    .target Cliffwatcher Longhorn
    .isQuestComplete 5147
step
    .goto Thousand Needles,46.00,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thalia|r
    .turnin 4904 >> Entrega la misión Al fin libre
    .target Thalia Amberhide
    .isQuestComplete 4904
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montarr|r
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134937:0|t[Pergaminos] |cRXP_BUY_si están disponibles|r << !Warrior
    .vendor >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación]|cRXP_BUY_, |r|T134937:0|t[Pergaminos] |cRXP_BUY_y|r |T134413:0|t[Vidarraíz] |cRXP_BUY_si están disponibles|r << Warrior
    .target Montarr
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Cómprale un|r |T135495:0|t[|cRXP_FRIENDLY_Arco corto denso|r] |cRXP_BUY_si está disponible y llena tu carcaj con flechas|r
    .collect 3030,1800,1111,1 --Razor Arrow (1800)
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,1111,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #optional
    .abandon 1151 >>Abandona la misión Prueba de fuerza
step
    #optional
    .abandon 5147 >>Abandona la misión Se busca: Arnak Tótem Siniestro
step
    #optional
    .abandon 5064 >>Abandona la misión Espiando a los Tótem Siniestro
step
    #optional
    .abandon 5088 >>Abandona la misión Arikara
step
    #optional
    .abandon 1152 >>Abandon Test of Lore (NOT TRANSLATED IN :esMX YET)
step
    #completewith OreSampleTI
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyse|r
    .fly Camp Taurajo >> Vuela al Campamento Taurajo
    .target Nyse
    .subzoneskip 484,1
step
    #label OreSampleTI
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jironack|r
    .turnin 1153 >> Entrega la misión Una nueva muestra de mineral
    .target Tatternack Steelforge
    .isOnQuest 1153
step << Tauren
    #optional
    #completewith next
    .subzone 222 >> Viaja al Poblado Pezuña de Sangre
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xar'Ti|r y |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Aprende |T136103:0|t[Montar kodo]
    .vendor >>|cRXP_BUY_Compra un|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step << Tauren
    #optional
    #completewith FlyCR
    .subzone 378 >>Viaja al Campamento Taurajo
    .skill riding,<75,1
step
    #completewith SwarmGrows
    #label FlyCR
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads>> Vuela a El Cruce
    .target Omusa Thunderhorn
    .subzoneskip 484
step
    #optional
    #completewith SwarmGrows
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyse|r
    .fly Crossroads>> Vuela a El Cruce
    .target Nyse
    .subzoneskip 484,1
step
    #label SwarmGrows
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Korran|r
    .accept 1145 >> Acepta la misión El enjambre crece
    .target Korran
step << !Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Vuela a Trinquete
	.target Devrak
    .subzoneskip 392
step << Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Vuela a Trinquete
	.target Devrak
    .subzoneskip 392
    .isOnQuest 1718
step << Warrior
    #completewith IslanderPickUp
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
	.target Devrak
    .zoneskip Orgrimmar
    .isNotOnQuest 1718
step << Warrior
    #completewith next
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Entrega la misión El enjambre crece
    .accept 1146 >> Acepta la misión El enjambre crece
    .target Belgrom Rockmaul
step << Warrior
    #label IslanderPickUp
    .goto Orgrimmar,80.37,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sorek|r
	.accept 1718 >> Acepta la misión El isleño
    .target Sorek
step << Warrior
    #completewith WharfDizzy
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Vuela a Trinquete
    .target Doras
    .zoneskip Orgrimmar,1
step
    #sticky
    #completewith EnterGNOMER
    .zone 721,2 >> Ahora deberías buscar un grupo para Gnomeregan
    .dungeon GNOMER
step
    #label WharfDizzy
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 1111 >> Entrega la misión Maestro de muelles Vertipeluca
    .accept 1112 >> Acepta la misión Las piezas de Kravel
    .target Wharfmaster Dizzywig
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r
    .turnin 220 >>Entrega la misión La llamada del agua
    .accept 63 >>Acepta la misión La llamada del agua
    .target Islen Waterseer
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r
    >>|cRXP_WARN_Asegúrate de obtener la|r |T134754:0|t[|cRXP_LOOT_Sapta de agua|r
    .turnin 972 >>Entrega la misión La sapta de agua
	.collect 6637,1 --Water Sapta (1)
    .target Islen Waterseer
    .itemcount 6637,<1
step << Warrior
    #completewith next
    .goto The Barrens,65.09,47.81,90,0
    .goto The Barrens,68.61,49.16,100 >> Viaja a la Isla de Batalla
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Klannoc|r
    .turnin 1718 >>Entrega la misión El isleño
    .accept 1719 >>Acepta la misión La Reyerta
    .target Klannoc Macleod
step << Warrior
	>>Camina sobre la rejilla que tienes detrás. Mata rápido a los |cRXP_ENEMY_Contendientes de La Reyerta|r que vienen de uno en uno
    >>Mata a |cRXP_ENEMY_Will el Grande|r cuando aparezca
    .goto The Barrens,68.59,48.76
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
    .mob Big Will
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Klannoc|r
    >>|cRXP_WARN_Esto te enseñará Actitud rabiosa|r
    .turnin 1719 >>Entrega la misión La Reyerta
    .accept 1791 >>Acepta la misión El Vigía del viento
    .target Klannoc Macleod
step << !Mage
    #optional << !Warrior !Shaman
    #completewith FlyOrg2
    .goto The Barrens,62.81,37.91,200 >>Viaja de vuelta a Trinquete
    .subzoneskip 392
step
    #completewith next
    .goto The Barrens,63.74,38.66
    .zone Stranglethorn Vale >> Toma el barco hacia Vega de Tuercespina
    .zoneskip Stranglethorn Vale
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Scooty|r
    .turnin 2842 >>Entrega la misión Scooty, ingeniero jefe
    .accept 2843 >>Acepta la misión ¡Gnomer-yaaaaa!
    .target Scooty
    .timer 9 >> Transpondedor goblin
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Scooty|r
    .turnin 2843 >>Entrega la misión ¡Gnomer-yaaaaa!
    .target Scooty
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.63,77.55
    .goto Eastern Kingdoms,42.75,59.93,30 >> Sube al Transpondedor de Gnomeregan
    .dungeon GNOMER
step
    #label EnterGNOMER
    .goto Eastern Kingdoms,42.64,59.80,20,0
    .goto Eastern Kingdoms,42.58,59.82,20,0
    .goto Eastern Kingdoms,42.56,59.87,20,0
    .goto Eastern Kingdoms,42.51,60.15,20,0
    .goto Eastern Kingdoms,42.34,60.18
    .zone 721,2 >> Entra en Gnomeregan
    .dungeon GNOMER
step
    >>Mata al |cRXP_ENEMY_Mekigeniero Termochufe|r. Despójalo para obtener su |cRXP_LOOT_Combinación de la caja fuerte|r
    >>Despoja la |cRXP_PICK_Caja fuerte de Termochufe|r en el lado norte de la sala para obtener los |cRXP_LOOT_Planos de torre|r
    .complete 2841,2 --Thermaplugg's Safe Combination (1)
    .complete 2841,1 --Rig Blueprints (1)
    .mob Mekgineer Thermaplugg
    .dungeon GNOMER
step << !Mage
	.hs >> Usa tu Piedra de hogar para ir al Poblado Viento Libre
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyse|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Nyse
    .zoneskip Thousand Needles,1
    .dungeon GNOMER
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Bragok
    .zoneskip The Barrens,1
step << Mage
    .cast 3567 >>|cRXP_WARN_Lanza|r |T135759:0|t[Teletransporte a: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 8412 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <30,1
    .xp >32,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 8422 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <32,1
step << Mage
    .goto Orgrimmar,45.43,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Horthus|r|cRXP_BUY_. Compra dos o más|r |T134419:0|t[Runa de teletransporte] |cRXP_BUY_a este vendedor|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Horthus
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 1760 >> Aprende tus hechizos de clase
    .target Ormok
    .xp <30,1
    .xp >32,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 8623 >> Aprende tus hechizos de clase
    .target Ormok
    .xp <32,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Abastécete de|r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_y|r |T132273:0|t[Venenos]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454/1,-4212.89,1920.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Searn|r
    .accept 1531 >> Acepta la misión La llamada del aire
    .target Searn Firewarder
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8232 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <30,1
    .xp >32,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 945 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <32,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 5784 >> Aprende |T136103:0|t[Invocar corcel vil]
    .target Mirket
    .xp <30,1
    .xp >32,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6213 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <32,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compra cualquier mejora para tu mascota que puedas permitirte
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135466:0|t[Varita pestilente] |cRXP_BUY_a esta vendedora|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135466:0|t[Varita pestilente] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Como alternativa, puedes revisar la Casa de Subastas por si hay algo mejor disponible|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step
    .goto Orgrimmar,44.70,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Craven|r
    >>|cRXP_WARN_Patrulla en el Circo de las Sombras|r
    .accept 1431 >> Acepta la misión Las relaciones de la Alianza
    .target Craven Drok
step
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >> Entrega la misión El enjambre crece
    .accept 1146 >> Acepta la misión El enjambre crece
    .target Belgrom Rockmaul
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 7369 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <30,1
    .xp >32,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 20658 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 5384 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <30,1
    .xp >32,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14263 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24559 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <30,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nogg|r
    .turnin 2841 >>Entrega la misión Las guerras de la plataforma
    .target Nogg
    .dungeon GNOMER
    .isQuestComplete 2841
step << Orc !Warlock
    #optional
    .goto Orgrimmar,69.40,13.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kildar|r y |cRXP_FRIENDLY_Ogunaro|r
    .train 825 >>Aprende |T136103:0|t[Montar lobo]
    .vendor >>|cRXP_BUY_Compra un|r |T132224:0|t[|cFF0070FFLobo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kildar
    .target Ogunaro Wolfrunner
step << Hunter
    .goto Orgrimmar,78.11,38.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas navaja] |cRXP_BUY_a este vendedor|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende Hachas de 2 manos
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 602 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 6077 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <32,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pyreanor|r
    .train 34769 >> Aprende |T136103:0|t[Invocar caballo de guerra]
    .target Master Pyreanor
    .xp <30,1
    .xp >32,1
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pyreanor|r
    .train 19836 >> Aprende tus hechizos de clase
    .target Master Pyreanor
    .xp <32,1
step
    .goto Orgrimmar,22.50,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keldran|r cerca de la salida occidental de Orgrimmar
    .turnin 1431 >> Entrega la misión Las relaciones de la Alianza
    .accept 1432 >> Acepta la misión Las relaciones de la Alianza
    .target Keldran
step << Troll
    #optional
    #completewith next
    .subzone 367 >> Viaja al Poblado Sen'jin
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Troll
    #optional
    .goto Durotar,55.28,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xar'Ti|r y |cRXP_FRIENDLY_Zjolnir|r
    .train 10861 >>Aprende |T136103:0|t[Cabalgar raptor]
    .vendor >>|cRXP_BUY_Compra un|r |T132253:0|t[|cFF0070FFRaptor|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Xar'Ti
    .target Zjolnir
]])
