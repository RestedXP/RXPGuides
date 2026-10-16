if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 10-22 Azshara
#displayname 11-22 Azshara << Goblin/Pandaren
#next 22-27 Vallefresno
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << Rogue Cata/Warlock Cata/Mage Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Viaja hacia la Grieta de las Sombras
step << Priest Cata/Paladin Cata
    #completewith next
    .goto 1454,49.88,75.54,30 >> Entra en el Fuerte Grommash
step << Shaman Cata/Druid Cata
    #completewith next
    .goto 1454,44.84,75.46,40,0
    .goto 1454,41.53,60.64,40 >> Viaja al Valle de la Sabiduría
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gordul|r
    .train 61922 >> Aprende tus hechizos de clase
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rekkul|r.
    >>|cRXP_BUY_Compra|r |T132273:0|t[Veneno instantáneo] |cRXP_BUY_a él|r
    .collect 6947,20,14129,1 --Instant Poison (20)
    .target Rekkul
step << Shaman Cata
    .goto 1454,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sahi|r
    .train 3599 >> Aprende tus hechizos de clase
    .target Sahi Cloudsinger
    .xp <10,1
step << Druid Cata
    .goto 1454,44.79,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalla|r
    .train 5215 >> Aprende tus hechizos de clase
    .target Shalla Whiteleaf
    .xp <10,1
step << Mage Cata
    .goto 1454,48.45,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marud|r
    .train 5505 >> Aprende tus hechizos de clase
    .target Marud
    .xp <10,1
step << Priest Cata
    .goto 1454,49.17,70.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tyelis|r
    .train 8092 >> Aprende tus hechizos de clase
    .target Tyelis
    .xp <10,1
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <10,1
step << Paladin Cata
    .goto 1454,49.27,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pyreanor|r
    .train 82242 >> Aprende tus hechizos de clase
    .target Master Pyreanor
    .xp <10,1
step
    #completewith next
    .goto 1454,59.59,50.63,40,0
    .goto 1454,65.39,49.14,40 >> Viaja al Valle de Honor
step << !Goblin
    .goto 1454,66.433,49.292
    >>Haz clic en el |cRXP_PICK_Tablero de órdenes del Jefe de Guerra|r
    .accept 28496 >>Acepta la misión Orden del Jefe de Guerra: ¡Azshara!
    .isQuestAvailable 28496
step << !Warrior !Paladin !Rogue !Hunter !Shaman
    #completewith next
    .goto 1454,66.84,50.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kiro|r
    .vendor >> Vende y Repara
    .target Kiro
step << Warrior Cata
    .goto 1454,73.71,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ronakada|r
    .train 71 >> Aprende tus hechizos de clase
    .target Blademaster Ronakada
    .xp <10,1
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Koru|r
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T133477:0|t[Maza gigante] (24s) << Orc/Troll
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T133477:0|t[Maza gigante] (25s 34c) << Tauren
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T133477:0|t[Maza gigante] (26s 67c) << Undead/BloodElf
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T133477:0|t[Maza gigante] (21s 34c) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Warrior/Paladin
    .goto 1454,76.38,37.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Koru|r
    >>|cRXP_BUY_Compra una|r|T133477:0|t[Maza gigante] |cRXP_BUY_a él|r
    .collect 1197,1,14129,1 --Collect Giant Mace (1)
    .money <0.2400 << Orc/Troll
    .money <0.2534 << Tauren
    .money <0.2667 << Undead/BloodElf
    .money <0.2134 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .target Koru
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_WARN_Omite este paso si no elegiste la especialización Mejora!|r
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T132938:0|t[Derecha-Handed Nudillos de latón] (19s 17c) y |T132938:0|t[Nudillos de latón para zurdos] (19s 24c) << Orc/Troll
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T132938:0|t[Derecha-Handed Nudillos de latón] (20s 24c) y |T132938:0|t[Nudillos de latón para zurdos] (20s 31c) << Tauren
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T132938:0|t[Derecha-Handed Nudillos de latón] (17s 4c) y |T132938:0|t[Nudillos de latón para zurdos] (17s 10c) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compra|r |T132938:0|t[Derecha-Handed Nudillos de latón] |cRXP_BUY_y|r |T132938:0|t[Nudillos de latón para zurdos] |cRXP_BUY_a él|r
    >>|cRXP_WARN_Omite este paso si no elegiste la especialización Mejora!|r
    .collect 15905,1,14129,1 --Collect Right-Handed Brass Knuckles (1)
    .collect 15906,1,14129,1 --Collect Left-Handed Brass Knuckles (1)
    .money <0.3841 << Orc/Troll
    .money <0.4045 << Tauren
    .money <0.3450 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zendo'jian|r
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135489:0|t[Arco corvo laminado] (15s 76c) << Orc/Troll
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135489:0|t[Arco corvo laminado] (16s 64c) << Tauren
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135489:0|t[Arco corvo laminado] (17s 52c) << Undead/BloodElf
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135489:0|t[Arco corvo laminado] (14s 2c) << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
    .xp <11,1
step << Hunter
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo laminado] |cRXP_BUY_a él|r
    .collect 2507,1,14129,1 --Laminated Recurve Bow (1)
    .money <0.1576 << Orc/Troll
    .money <0.1664 << Tauren
    .money <0.1752 << Undead/BloodElf
    .money <0.1402 << Goblin
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Zendo'jian
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135346:0|t[Alfanje], compra dos si tienes suficiente dinero (18s 20c cada uno) << Orc/Troll
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135346:0|t[Alfanje], compra dos si tienes suficiente dinero (20s 23c cada uno) << Undead/BloodElf
    .vendor >> Vende la basura y repara. Vende tu arma si te da suficiente dinero para |T135346:0|t[Alfanje], compra dos si tienes suficiente dinero (16s 18c cada uno) << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compra uno o dos|r |T135346:0|t[Alfanje] |cRXP_BUY_a él|r
    .collect 851,1,14129,1 --Cutlass (1)
    .money <0.1820 << Orc/Troll
    .money <0.2023 << Undead/BloodElf
    .money <0.1618 << Goblin
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Shoma
step << Warrior/Paladin
    #optional
    #completewith RunawayShredder
    +Equipa la |T133477:0|t[Maza gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Equipa los |T132938:0|t[Derecha-Handed Nudillos de latón]
    .use 15905
    .itemcount 15905,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Shaman
    #optional
    #completewith RunawayShredder
    #label Knuckles
    +Equipa los |T132938:0|t[Nudillos de latón para zurdos]
    .use 15906
    .itemcount 15906,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter
    #optional
    #completewith RunawayShredder
    +Equipa el |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp <11,1
step << Hunter
    #optional
    #completewith RunawayShredder
    +Equipa el |T135489:0|t[Arco corvo laminado] cuando seas nivel 11
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .xp >11,1
step << Rogue
    #optional
    #completewith RunawayShredder
    +Equipa el |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Hunter Cata
    .goto 1454,63.87,32.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak Tirosiniestro|r
    .train 1978 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <10,1
step
    #completewith RunawayShredder
    .goto 1454,75.39,4.15,0
    .zone Azshara >> Entra a Azshara por la salida norte
step
    #optional
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ag'tor|r
    .turnin 25648 >>Entrega la misión Más allá de Durotar
    .accept 14118 >>Acepta la misión Venado para las tropas
    .accept 14117 >>Acepta la misión Los ojos de Vallefresno
    .target Ag'tor Bloodfist
    .isOnQuest 25648
step
    .goto 76,26.81,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ag'tor|r
    .accept 14118 >>Acepta la misión Venado para las tropas
    .accept 14117 >>Acepta la misión Los ojos de Vallefresno
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grabbit|r
    .turnin 25275 >>Entrega la misión Informa al jefe de personal
    .accept 14129 >>Acepta la misión ¡Trituradora fuera de control!
    .target Labor Captain Grabbit
    .isOnQuest 25275
step
    #optional
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grabbit|r
    .turnin 28496 >>Entrega la misión Orden del Jefe de Guerra: ¡Azshara!
    .accept 14129 >>Acepta la misión ¡Trituradora fuera de control!
    .target Labor Captain Grabbit
    .isOnQuest 28496
step
    #label RunawayShredder
    .goto 76,27.00,77.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grabbit|r
    .accept 14129 >>Acepta la misión ¡Trituradora fuera de control!
    .target Labor Captain Grabbit
step
    #completewith DefendtheGates
    >>Mata a los |cRXP_ENEMY_Talrendis Exploradores|r. Están bajo sigilo
    >>Mata a los |cRXP_ENEMY_Weakened Mosshoof Stags|r. Despójalos para obtener su |cRXP_LOOT_Slab of Venado|r
    >>|cRXP_ENEMY_Talrendis Exploradores|r |cRXP_WARN_pueden atacarte mientras estás matando|r |cRXP_ENEMY_Debilitado Mosshoof Stags|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .mob Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    .goto 76,27.47,73.55,60,0
    .goto 76,28.55,72.22,60,0
    .goto 76,29.89,71.73
    >>Ataca a |cRXP_ENEMY_Trituradora en huida|r. Móntalo una vez que se vuelva amigo
    .complete 14129,1 --Runaway Shredder Captured (1)
    .mob Runaway Shredder
step
    .goto 76,27.33,76.17
    .turnin 14129 >>Entrega la misión ¡Trituradora en huida!
    .accept 14134 >>Acepta la misión El diario del capitán
step
    #loop
    .goto 1447/1,-4994.10010,2593.60010,0
    .waypoint 1447/1,-4941.39990,2669.00000,30,0
    .waypoint 1447/1,-4994.10010,2593.60010,30,0
    .waypoint 1447/1,-5032.80029,2625.69995,30,0
    .waypoint 1447/1,-5063.00000,2662.30005,30,0
    >>Usa |T135437:0|t[Recoger madera]|r en |cRXP_PICK_Azshara Madera Piles|r para obtener |cRXP_LOOT_Madera|r
    .complete 14134,1 --Azshara Lumber (6)
step
    .turnin 14134 >>Entrega la misión El diario del capitán
    .accept 14135 >>Acepta la misión Subidos a un árbol
step
    #loop
    .goto 1447/1,-5007.70020,2719.19995,0
    .waypoint 1447/1,-5007.70020,2719.19995,30,0
    .waypoint 1447/1,-5013.30029,2780.50000,30,0
    .waypoint 1447/1,-5084.10010,2787.19995,30,0
    .waypoint 1447/1,-5088.00000,2726.50000,30,0
    >>|cRXP_WARN_Usa|r |T134427:0|t[Sierra circular]|r |cRXP_WARN_en|r |cRXP_FRIENDLY_Azshara Saplings|r |cRXP_WARN_para provocar que|r |cRXP_ENEMY_Talrendis Snipers|r |cRXP_WARN_te ataquen|r
    >>|cRXP_WARN_Usa|r |T134427:0|t[Sierra circular]|r |cRXP_WARN_y|r |T132330:0|t[Arrojar hoja]|r |cRXP_WARN_para matar a los|r |cRXP_ENEMY_Talrendis Snipers|r
    -->>|cRXP_WARN_Make sure your|r |T134427:0|t[Buzzsaw]|r |cRXP_WARN_hits the very core of the tree|r
    .complete 14135,1 --Talrendis Sniper (9)
    .mob Talrendis Sniper
    .target Azshara Sapling
step
    #label DefendtheGates
    .turnin 14135 >>Entrega la misión Subidos a un árbol
    .accept 14146 >>Acepta la misión ¡Defiende las puertas!
step
    #completewith next
    .goto 76,27.00,76.76,50 >>Regresa a Orgrimmar Parte trasera Puerta
step
    .goto 76,27.017,76.728
    >>|cRXP_WARN_Usa tu|r |T134427:0|t[Sierra circular]|r|cRXP_WARN_,|r |T132330:0|t[Arrojar hoja]|r |cRXP_WARN_y|r |T133716:0|t[Lanzagranadas]|r |cRXP_WARN_para matar a los|r |cRXP_ENEMY_Talrendis Raiders|r
    >>|cRXP_WARN_Si perdiste tu Trituradora, monta una|r |cRXP_FRIENDLY_Machacador de repuesto|r |cRXP_WARN_en su lugar|r
    .complete 14146,1 --Talrendis Raider (20)
    .mob Talrendis Raider
    .target Backup Shredder
step
    .turnin 14146 >>Entrega la misión ¡Defiende las puertas!
    .accept 14155 >>Acepta la misión Arbolcidio
step
    .goto 76,21.506,75.870
    >>Mata al |cRXP_ENEMY_Anciano de Talrendis|r hacia el oeste
    >>|cRXP_WARN_Si perdiste tu Trituradora, monta una|r |cRXP_FRIENDLY_Machacador de repuesto|r |cRXP_WARN_en su lugar|r
    >>|cRXP_WARN_Usa|r |T132489:0|t[Recarga]|cRXP_WARN_ si tu|cRXP_FRIENDLY_ Trituradora|r tiene poca vida|r
    .complete 14155,1 --Talrendis Ancient (1)
    .unitscan Talrendis Ancient
    .target Backup Shredder
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Talrendis Exploradores|r. Están bajo sigilo
    >>Mata a los |cRXP_ENEMY_Weakened Mosshoof Stags|r. Despójalos para obtener su |cRXP_LOOT_Slab of Venado|r
    >>|cRXP_ENEMY_Talrendis Exploradores|r |cRXP_WARN_pueden atacarte mientras estás matando|r |cRXP_ENEMY_Debilitado Mosshoof Stags|r
    >>|cRXP_WARN_Omite este paso si no has casi terminado en este punto|r
    .complete 14117,1 --Talrendis Scout (8)
    .complete 14118,1 --Slab of Venison (15)
    .disablecheckbox
    .unitscan Talrendis Scout
    .mob Weakened Mosshoof Stag
step
    #label ArborcideTurnin
    .goto 76,27.00,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grabbit|r
    .turnin 14155 >>Entrega la misión Arbolcidio
    .accept 14162 >>Acepta la misión Informa a Horzak
    .target Labor Captain Grabbit
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ag'tor|r
    .collect 47039,1,14127 --Scout's Orders (1)
    .accept 14127 >>Acepta la misión ¿El regreso de los Altonatos?
    .turnin 14127 >>Entrega la misión ¿El regreso de los Altonatos?
    .use 47039
    .itemcount 47039,1
    .target Ag'tor Bloodfist
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14117 >>Entrega la misión Los ojos de Vallefresno
    .target Ag'tor Bloodfist
    .isQuestComplete 14117
step
    #optional
    .goto 76,26.83,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ag'tor|r
    .turnin 14127 >>Entrega la misión ¿El regreso de los Altonatos?
    .target Ag'tor Bloodfist
    .isQuestComplete 14118
step
    #completewith Horzak1
    #optional
    .abandon 14118 >>Abandona la misión Venado para las tropas
step
    #completewith Horzak1
    #optional
    .abandon 14117 >>Abandona la misión Los ojos de Vallefresno
step
    #completewith Horzak1
    .subzone 4830 >>Viaja a Orgrimmar Rocketway Exchange
step
    .goto Azshara,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malynea|r
    .turnin 14128 >>Entrega la misión ¿El regreso de los Altonatos?
    .target Malynea Skyreaver
    .isOnQuest 14128
step
    #label Horzak1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Horzak|r y |cRXP_FRIENDLY_Supervisor Fisk|r
    .turnin 14162 >>Entrega la misión Informa a Horzak
    .accept 14161 >>Acepta la misión Apaleando basiliscos
    .accept 14165 >>Acepta la misión Frío como una piedra
    .target +Horzak Zignibble
    .goto 76,29.15,66.25
    .accept 14197 >>Acepta la misión Una cuota que cumplir
    .target +Foreman Fisk
    .goto Azshara,29.07,66.25
step
    #completewith next
    .subzone 4744 >>Viaja hacia el Oeste hacia Mountainfoot Stripmine
step
    #loop
    .goto 76,25.976,68.758,0
    .goto 76,25.533,69.045,0
    .goto 76,25.096,69.901,0
    .waypoint 76,25.976,68.758,30,0
    .waypoint 76,25.533,69.045,30,0
    .waypoint 76,25.096,69.901,30,0
    .aura 67032 >>Recoge a |cRXP_FRIENDLY_Minero de ladera|r
    .target Mountainfoot Miner
    .isOnQuest 14165
step
    .goto 76,29.075,66.418
	>>Lleva a |cRXP_FRIENDLY_Minero de ladera|r de vuelta a Orgrimmar Rocketway Exchange
    >>|cRXP_WARN_¡No puedes montar o transformarte mientras haces esto!|r
    .complete 14165,1 --Stonified Miner Delivered
    .target Mountainfoot Miner
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Horzak|r
    .turnin 14165 >>Entrega la misión Frío como una piedra
    .accept 14190 >>Acepta la misión El prisma perfecto
    .target Horzak Zignibble
step
    #completewith GreyBasilisks
    >>Despoja |cRXP_PICK_Lingotes de hierro|r y |cRXP_PICK_Reservas de hierro|r en el suelo para |cRXP_LOOT_Mountainfoot Hierro|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith Refleshify
    >>Mata a los |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    .goto 76,21.91,69.37
    >>Mata a los |cRXP_ENEMY_Talrendis Saboteurs|r. Despójalos para un |cRXP_LOOT_Crystal Pendant|r
    .complete 14190,1 --Crystal Pendant (1)
    .mob Talrendis Saboteur
step
    .goto 76,20.26,70.40
    >>Haz clic en la |cRXP_PICK_Headquarters Radio|r
    .turnin 14190 >>Entrega la misión El prisma perfecto
    .accept 14192 >>Acepta la misión Rompeprisma
step
    .goto 76,20.03,69.97
    >>Haz clic en el |cRXP_PICK_Armario de armas|r
    .turnin 14192 >>Entrega la misión Rompeprisma
    .accept 14194 >>Acepta la misión Recarnificación
step
    #label Refleshify
    #loop
    .goto 76,24.869,69.998,0
    .waypoint 76,22.454,69.462,20,0
    .waypoint 76,22.948,69.353,20,0
    .waypoint 76,23.338,71.559,20,0
    .waypoint 76,24.442,69.803,20,0
    .waypoint 76,24.869,69.998,20,0
    .waypoint 76,24.877,71.476,20,0
    .waypoint 76,24.633,72.520,20,0
    .waypoint 76,26.635,70.113,20,0
    .waypoint 76,25.517,69.028,20,0
    .waypoint 76,24.911,68.008,20,0
    .waypoint 76,23.005,68.003,20,0
    .use 48104 >> |cRXP_WARN_Usar|r |T249182:0|t[The Refleshifier] |cRXP_WARN_en|r |cRXP_FRIENDLY_Mountainfoot Mineros|r
    .complete 14194,1 --Mountainfoot Miner Destoned (8)
    .target Mountainfoot Miner
step
    #label GreyBasilisks
    #loop
    .goto 76,24.459,70.185,0
    .waypoint 76,24.459,70.185,40,0
    .waypoint 76,26.214,70.118,40,0
    .waypoint 76,24.683,68.383,40,0
    .waypoint 76,22.607,69.349,40,0
    >>Mata a los |cRXP_ENEMY_Greystone Basilisks|r
    .complete 14161,1 --Greystone Basilisk (10)
    .mob Greystone Basilisk
step
    #loop
    .goto 76,22.683,68.753,0
    .waypoint 76,21.973,69.859,30,0
    .waypoint 76,22.683,68.753,30,0
    .waypoint 76,24.608,70.578,30,0
    .waypoint 76,25.493,69.020,30,0
    .waypoint 76,25.367,68.128,30,0
    .waypoint 76,22.933,67.848,30,0
    >>Despoja |cRXP_PICK_Lingotes de hierro|r y |cRXP_PICK_Reservas de hierro|r en el suelo para |cRXP_LOOT_Mountainfoot Hierro|r
    .complete 14197,1 --Mountainfoot Iron (20)
step
    #completewith next
    .subzone 4830 >>Viaja a Orgrimmar Rocketway Exchange
step
    .goto 76,29.12,66.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fisk|r
    .turnin 14197 >>Entrega la misión Una cuota que cumplir
    .target Foreman Fisk
step
    .goto 76,29.15,66.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Horzak|r
    .turnin 14161 >>Entrega la misión Apaleando basiliscos
    .turnin 14194 >>Entrega la misión Recarnificación
    .target Horzak Zignibble
step
    .goto 76,29.53,66.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Worcester|r
    .accept 14468 >>Acepta la misión Otro recién llegado
    .target Private Worcester
step
    #completewith next
    .subzone 1233 >>Viaja al Norte hacia Forlorn Risco
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Molotov|r
    .turnin 14468 >>Entrega la misión Otro recién llegado
    .accept 14469 >>Acepta la misión Material heredado
    .target Commander Molotov
step
    .goto 76,29.38,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glix|r
    .accept 14470 >>Acepta la misión Avance militar
    .target Glix Grindlock
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xiz|r
    .accept 14471 >>Acepta la misión Mortero de primera
    .target Xiz "The Eye" Salvoblast
step
    #completewith next
    >>Despoja a los |cRXP_FRIENDLY_Dead Soldiers|r en el suelo para |cRXP_LOOT_Military Suministros|r
    >>|cRXP_WARN_Ten cuidado de las|r |cFFEB144CMinas terrestres|r|cRXP_WARN_. Te lanzarán lejos si pisas una|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    >>Mata al |cRXP_ENEMY_Señor de la guerra Krellian|r. Despoja el |cRXP_LOOT_GCS|r en el suelo después
    .complete 14470,1 --Warlord Krellian (1)
    .mob +Warlord Krellian
    .goto 76,27.562,52.010
    .complete 14470,2 --SFG (1)
    .goto 76,27.693,51.903
step
    #loop
    .goto 76,29.619,53.022,0
    .waypoint 76,28.259,53.135,20,0
    .waypoint 76,28.735,52.656,20,0
    .waypoint 76,29.212,52.368,20,0
    .waypoint 76,29.619,53.022,20,0
    .waypoint 76,29.508,54.180,20,0
    .waypoint 76,29.166,54.338,20,0
    .waypoint 76,28.623,54.670,20,0
    >>Despoja a los |cRXP_FRIENDLY_Dead Soldiers|r en el suelo para |cRXP_LOOT_Military Suministros|r
    >>|cRXP_WARN_Ten cuidado de las|r |cFFEB144CMinas terrestres|r|cRXP_WARN_. Te lanzarán lejos si pisas una|r
    .complete 14469,1 --Military Supplies (12)
    .target Dead Soldier
    .target Sergeant Dynamo
step
    .goto 76,29.38,57.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glix|r
    .turnin 14470 >>Entrega la misión Avance militar
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Molotov|r
    .turnin 14469 >>Entrega la misión Material heredado
    .target Commander Molotov
step
    .goto 76,31.12,57.59
    .vehicle >> Monta a |cRXP_FRIENDLY_Bilgewater Mortero|r
    .target Bilgewater Mortar
    .isOnQuest 14471
step
    .goto 76,31.12,57.59
    >>|cRXP_WARN_Use|r |T252172:0|t[Disparo de mortero] |cRXP_WARN_to kill|r |cRXP_ENEMY_Spitelash Attackers|r
    .complete 14471,1 --Spitelash Attackers blown to bits (60)
step
    .goto 76,29.11,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xiz|r
    .turnin 14471 >>Entrega la misión Mortero de primera
    .target Xiz "The Eye" Salvoblast
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glix|r
    .accept 14472 >>Acepta la misión ¡En toda la cara!
    .target Glix Grindlock
step
    .goto 76,31.61,60.49
    .use 49700 >> |cRXP_WARN_Usa tu|r |T133032:0|t[GCS] |cRXP_WARN_para matar a un|r |cRXP_ENEMY_Hijo de Arkkoroc esclavizado|r
    .complete 14472,1 --Enslaved Son of Arkkoroc (1)
    .mob Enslaved Son of Arkkoroc
step
    .goto 76,29.37,57.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Glix|r
    .turnin 14472 >>Entrega la misión ¡En toda la cara!
    .target Glix Grindlock
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Molotov|r
    .accept 24452 >>Acepta la misión Exploración rentable
    .target Commander Molotov
step
    .goto 76,31.924,50.964
    >>Viaja hacia el centro de Ruinas de Eldarath
    .use 49701 >> |cRXP_WARN_Usa tu|r |T133866:0|t[Generador de campo de sigilo] |cRXP_WARN_para hacerte invisible|r
    .complete 24452,1 --Heart of Arkkoroc identified
step
    .goto 76,29.45,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Molotov|r
    .turnin 24452 >>Entrega la misión Exploración rentable
    .accept 24453 >>Acepta la misión Charla entre soldados
    .target Commander Molotov
step
    #completewith next
    .subzone 4830 >>Viaja a Orgrimmar Rocketway Exchange
step
    .goto 76,29.53,66.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Worcester|r
    .turnin 24453 >>Entrega la misión Charla entre soldados
    .target Private Worcester
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Custer|r
    .accept 14202 >>Acepta la misión Peritaje en el lago
    .target Custer Clubnik
step
    .goto 76,29.67,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malynea|r
    .accept 14201 >>Acepta la misión Mil historias en la arena
    .target Malynea Skyreaver
step
    #completewith next
    >>Despoja los |cRXP_PICK_Ancient Debril Piles|r del suelo para obtener los |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    >>Defiende al |cRXP_FRIENDLY_Perito goblin principiante|r de los |cRXP_ENEMY_Shades of Hate|r mientras marca los estudios
    .use 48655 >> |cRXP_WARN_Usa tu|r |T133015:0|t[Surveyor's Faro] |cRXP_WARN_para invocar a un nuevo|r |cRXP_FRIENDLY_Goblin Surveyor|r |cRXP_WARN_si es necesario|r
    .complete 14202,2 --Survey North Marker (1)
    .goto 76,34.69,71.58
    .complete 14202,3 --Survey East Marker (1)
    .goto 1447/1,-5434.39990,2637.10010
    .complete 14202,1 --Survey West Marker (1)
    .goto 76,34.263,76.616
    .target Goblin Surveyor Jr. Grade
    .mob Shade of Hate
step
    #loop
    .goto 1447/1,-5316.60010,2747.90015,0
    .waypoint 1447/1,-5316.60010,2747.90015,40,0
    .waypoint 1447/1,-5409.30029,2716.69995,40,0
    .waypoint 1447/1,-5457.70020,2650.60010,40,0
    .waypoint 1447/1,-5385.00000,2562.80005,40,0
    .waypoint 1447/1,-5335.39990,2535.40015,40,0
    .waypoint 1447/1,-5274.00000,2535.90015,40,0
    .waypoint 1447/1,-5221.60010,2638.00000,40,0
    >>Despoja los |cRXP_PICK_Ancient Debril Piles|r del suelo para obtener los |cRXP_LOOT_Recovered Artifacts|r
    .complete 14201,1 --Recovered Artifacts (5)
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Custer|r
    .turnin 14202 >>Entrega la misión Peritaje en el lago
    .accept 14209 >>Acepta la misión Mugre en el motor
    .target Custer Clubnik
step
    .goto 76,29.68,66.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malynea|r
    .turnin 14201 >>Entrega la misión Mil historias en la arena
    --.accept 14215 >>Accept Memories of the Dead
    .target Malynea Skyreaver
    --could skip 14215 and follow-up
step
    .goto 76,30.14,67.25
    >>Haz clic en el |cRXP_FRIENDLY_Bulldozer de Clubnik|r
    >>Mata al |cRXP_ENEMY_Ectoplasm|r que aparece. Despoja la |cRXP_LOOT_Sample|r
    .complete 14209,1 --Ectosplatter Sample (1)
    .target Clubnik's Dozer
    .mob Ectoplasmic Exhaust
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Custer|r
    .turnin 14209 >>Entrega la misión Mugre en el motor
    .accept 14423 >>Acepta la misión Bulldozexorcismo
    .target Custer Clubnik
step
    .goto 76,30.08,67.27
    .cast 68007 >>|cRXP_WARN_Usa|r |T135619:0|t[Bendecido Flaregun] |cRXP_WARN_cerca de|r |cRXP_FRIENDLY_Bulldozer de Clubnik|r
    .timer 34,Bulldozexorcismo Roleplay
    >>Ataca al |cRXP_ENEMY_Bulldozer de Clubnik|r cuando se vuelva hostil
    .complete 14423,1 --Clubnik's Dozer Exorcised (1)
    .use 49350
    .target Clubnik's Dozer
    .isOnQuest 14423
step
    .goto 1447/1,-5012.00000,2915.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Custer|r
    .turnin 14423 >>Entrega la misión Bulldozexorcismo
    .accept 14424 >>Acepta la misión Necesitamos más ciencia
    .target Custer Clubnik

    --next 2 quests not mandatory to continue in zone, could skip

step << skip
    .goto 1447/1,-5381.60010,2720.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalytha|r en Lago Mennar
    .aura 67704 >>|cRXP_WARN_Deja que ella te dé la|r |T136223:0|t[Recuerdos de los muertos] |cRXP_WARN_Potenciación|r
    .skipgossip
    .target Spirit of Kalytha
    .isOnQuest 14215
step << skip
    .goto 76,37.515,74.507
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archimaga Selwyn|r
    .complete 14215,1 --Kalytha's Secret Learned (1)
    .skipgossip
    .target Archmage Selwyn
step << skip
    .turnin 14215 >>Entrega la misión Recuerdos de los muertos
    .accept 14216 >>Acepta la misión El misterio de la piedra sarcita
step << skip
    .goto 76,35.57,75.31
    >>Despoja la |cRXP_PICK_Ancient Piedra Cask|r en el fondo del lago para obtener la |cRXP_LOOT_Sarcen Piedra|r
    .complete 14216,1 --Sarcen Stone (1)
step << skip
    .goto 76,29.68,66.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malynea|r
    .turnin 14216 >>Entrega la misión El misterio de la piedra sarcita
    .target Malynea Skyreaver

    --Travel to next area here

step
    #completewith next
    .goto 1447/1,-4993.50000,2936.90015,5,0
    .goto 1447/1,-4998.70020,2947.10010,3 >>Toma el ascensor hacia la plataforma
step
    .goto Azshara,29.49,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Jinete de cohete Pantoque|r
    .gossipoption 112430 >>Toma el viaje en cohete hacia Southern Rocketway Terminus
    .timer 41,Southern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14424
step
    .goto 76,50.411,74.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .turnin 14424 >>Entrega la misión Necesitamos más ciencia
    .accept 14308 >>Acepta la misión Cuando la ciencia ataca
    .target Assistant Greely
step
    .goto 76,52.22,74.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Smooks|r
    .accept 14258 >>Acepta la misión Haz señales al mortero
    .target Bombardier Captain Smooks
step
    #completewith GoblinFires
    >>Despoja los |cRXP_PICK_Goblin Mortero Proyectiles|r del suelo
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    #completewith NineVisit1
    .use 49132 >> |cRXP_WARN_Apunta tu|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_a los fuegos y a los|r |cRXP_FRIENDLY_Research Interns|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
step
    .goto 76,45.07,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Twistex|r
    .accept 14322 >>Acepta la misión ¡Ciencia mala!
    .target Twistex Happytongs
step
    #label NineVisit1
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sujeto Nueve|r
    .accept 14408 >>Acepta la misión El plan de Nueve
    .target Subject Nine
step
    #label GoblinFires
    #loop
    .goto 76,44.122,76.798,0
    .waypoint 76,44.122,76.798,30,0
    .waypoint 76,43.906,74.755,30,0
    .waypoint 76,43.465,75.872,30,0
    .use 49132 >> |cRXP_WARN_Apunta tu|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_a los fuegos y a los|r |cRXP_FRIENDLY_Research Interns|r
    >>|cRXP_WARN_Ten cuidado con|r |cRXP_ENEMY_Subject Cuatro|r|cRXP_WARN_ (raptor rojo). Puede matarte de un golpe|r
    .complete 14308,1 --Lab Fires Extinguished (8)
    .complete 14308,2 --Research Interns Rescued (6)
    .target Research Intern
    .unitscan Subject Four
step
    .goto 76,43.82,77.39
    >>Haz clic en el |cRXP_PICK_Secret Lab Squawkbox|r
    .turnin 14308 >>Entrega la misión Cuando la ciencia ataca
    .accept 14310 >>Acepta la misión Fallo de segmentación: verter el núcleo
step
    .goto 76,43.818,77.301,10,0
    .goto 76,43.983,76.263,12,0
    .goto 76,44.108,75.642,12,0
    .goto 76,45.267,75.668,20,0
    .goto 76,46.571,75.710,20,0
    .goto 76,47.874,75.147,20,0
    .goto 76,49.490,74.495
    >>Haz clic en el |cRXP_PICK_Reactor Consola de control|r para iniciar la escolta
    >>Escolta la carreta de regreso a Southern Rocketway Exchange
    .use 49132 >> |cRXP_WARN_Apunta tu|r |T133037:0|t[Fireliminator X-21] |cRXP_WARN_al|r |cRXP_FRIENDLY_Goblin de laboratorio descomunal|r |cRXP_WARN_cada vez que esté en llamas|r
    .complete 14310,1 --Azsharite Core Delivered (1)
    .target Hulking Labgoblin
step
    .goto 76,50.42,74.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .turnin 14310 >>Entrega la misión Fallo de segmentación: verter el núcleo
    .accept 14370 >>Acepta la misión La misteriosa azsharita
    .accept 14371 >>Acepta la misión Un aperitivo gigantesco
    .target Assistant Greely
step
    .goto 76,45.97,76.08
    >>Haz clic en el |cRXP_PICK_Door Buzzer|r
    >>Mata al |cRXP_ENEMY_Goblin mutante|r que aparezca. Despojarlo para obtener sus |cRXP_LOOT_Cohete Plans|r
    .complete 14408,1 --Ring Door Buzzer (1)
    .complete 14408,2 --Secret Rocket Plans (1)
    .mob Mutant Goblin
    .skipgossip
    --VV Gossipoption
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mistwing Cliffdwellers|r. Despójalos para obtener sus |cRXP_LOOT_Carcasses|r
    >>Mata a los |cRXP_ENEMY_Static-Cargado Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    #loop
    .goto 76,46.586,71.044,0
    .goto 76,42.053,70.833,0
    .goto 76,41.660,77.979,0
    .goto 76,44.681,81.500,0
    .waypoint 76,46.586,71.044,40,0
    .waypoint 76,43.917,70.036,40,0
    .waypoint 76,43.212,68.401,40,0
    .waypoint 76,42.053,70.833,40,0
    .waypoint 76,41.660,77.979,40,0
    .waypoint 76,43.022,81.757,40,0
    .waypoint 76,44.681,81.500,40,0
    >>Despojar las |cRXP_PICK_Azsharite Formations|r del suelo para obtener |cRXP_LOOT_Azsharite Samples|r
    .complete 14370,1 --Azsharite Sample (5)
step
    #loop
    .goto 76,44.908,79.037,0
    .waypoint 76,45.723,72.688,60,0
    .waypoint 76,45.068,77.881,60,0
    .waypoint 76,44.908,79.037,60,0
    >>Mata a los |cRXP_ENEMY_Mistwing Cliffdwellers|r. Despójalos para obtener sus |cRXP_LOOT_Carcasses|r
    >>Mata a los |cRXP_ENEMY_Static-Cargado Hippogryphs|r
    .complete 14371,1 --Mutilated Mistwing Carcass (8)
    .mob +Mistwing Cliffdweller
    .complete 14322,1 --Static-Charged Hippogryph (8)
    .mob +Static-Charged Hippogryph
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sujeto Nueve|r
    .turnin 14408 >>Entrega la misión El plan de Nueve
    .accept 14422 >>Acepta la misión Cohete raptor
    .target Subject Nine
step
    .goto 76,44.06,75.09
    .aura 69704,5+ >>Abre 5 |cRXP_PICK_Specimen Cages|r en el Laboratorio Secreto
    .isOnQuest 14422
step
    .goto 76,42.25,76.08
    >>Regresa con |cRXP_FRIENDLY_Sujeto Nueve|r
    .complete 14422,1 --Experimental Raptor Delivered (5)
step
    .goto 76,42.25,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sujeto Nueve|r
    .turnin 14422 >> Entrega la misión Cohete raptor
    .target Subject Nine
step
    .goto 76,45.06,75.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Twistex|r
    .turnin 14322 >>Entrega la misión ¡Ciencia mala!
    .target Twistex Happytongs
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .turnin 14370 >>Entrega la misión La misteriosa azsharita
    .turnin 14371 >>Entrega la misión Un aperitivo gigantesco
    .accept 14377 >>Acepta la misión Entablar amistad con los gigantes
    .target Assistant Greely
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gormungan|r
    .complete 14377,1 --Secret of Azsharite Discovered (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .turnin 14377 >>Entrega la misión Entablar amistad con los gigantes
    .accept 14385 >>Acepta la misión El primer experimento de azsharita
    .target Assistant Greely
step
    .goto 76,50.53,74.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart|r
    .accept 14383 >>Acepta la misión Los terribles manitas de Las Ruinas
    .target Hobart Grapplehammer
step
    #completewith next
    .subzone 1256 >>Viaja a The Ruined Reaches
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Netgun Gnomes|r, a los |cRXP_ENEMY_Zapper Gnomes|r y a |cRXP_ENEMY_Bingham Cacharretio|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 76,39.89,84.76
    >>Despoja la |cRXP_LOOT_Giant-Sized Laxative|r
    >>|cRXP_WARN_Toma el elevador al piso superior del edificio donde|r |cRXP_ENEMY_Bingham Cacharretio|r |cRXP_WARN_se encuentra|r
    .complete 14385,2 --Giant-Sized Laxative (1)
step
    #loop
    .goto 76,40.921,84.919,0
    .waypoint 76,40.921,84.919,40,0
    .waypoint 76,42.938,85.531,40,0
    .waypoint 76,40.990,83.634,40,0
    .waypoint 76,42.123,83.416,40,0
    .waypoint 76,43.943,82.385,40,0
    >>Termina matando a los |cRXP_ENEMY_Netgun Gnomes|r, a los |cRXP_ENEMY_Zapper Gnomes|r y a |cRXP_ENEMY_Bingham Cacharretio|r
    .complete 14383,1 --Bingham Gadgetspring (1)
    .mob +*Bingham Gadgetspring
    .complete 14383,2 --Netgun Gnome (4)
    .mob +Netgun Gnome
    .complete 14383,3 --Zapper Gnome (6)
    .mob +Zapper Gnome
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gormungan|r
    .complete 14385,1 --Try to Feed Gormungan (1)
    .skipgossip
    .target Gormungan
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .turnin 14385 >>Entrega la misión El primer experimento de azsharita
    .accept 14388 >>Acepta la misión El segundo experimento de azsharita
    .target Assistant Greely
 step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .aura 68710 >>Encógete en un ratón
    .skipgossipid 111824
    .isOnQuest 14388
    .target Assistant Greely
step
    .goto 76,50.313,74.422
    .vehicle >>Monta a |cRXP_FRIENDLY_Rata de la Cohetepista|r
    .target Rocketway Rat
    .isOnQuest 14388
step
    .goto 1447/1,-6005.39990,2603.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gormungan|r
    >>|cRXP_WARN_Usa|r |T132328:0|t[Apresurarse]|cRXP_WARN_ para aumentar tu velocidad de movimiento|r
    .complete 14388,1 --Gormungan Scared (1)
    .skipgossip
    .target Gormungan
step
    #loop
    .goto 76,46.532,75.907,0
    .goto 76,43.494,75.449,0
    .waypoint 76,46.532,75.907,20,0
    .waypoint 76,46.070,76.435,20,0
    .waypoint 76,44.095,76.145,20,0
    .waypoint 76,44.205,77.003,20,0
    .waypoint 76,43.494,75.449,20,0
    .waypoint 76,43.825,75.554,20,0
    .waypoint 76,43.536,74.743,20,0
    >>Termina de recoger los |cRXP_PICK_Goblin Mortero Proyectiles|r del suelo
    .complete 14258,1 --Goblin Mortar Shell (5)
step
    .goto 76,50.41,74.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Greely|r
    .turnin 14388 >>Entrega la misión El segundo experimento de azsharita
    .target Assistant Greely
step
    .goto 76,50.53,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hobart|r
    .turnin 14383 >>Entrega la misión Los terribles manitas de Las Ruinas
    .accept 24458 >>Acepta la misión La bienvenida armamentística
    .target Hobart Grapplehammer
step
    .goto 76,52.21,74.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Smooks|r
    .turnin 14258 >>Entrega la misión Haz señales al mortero
    .target Bombardier Captain Smooks
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torg|r
    .accept 14262 >>Acepta la misión Limpiar pescado
    .accept 14267 >>Acepta la misión Investigando el santuario del mar
    .target Torg Twocrush
    .maxlevel 15
step
    #xprate <1.2
    #completewith KeystoneShard
    .goto 1447/1,-6378.30029,2577.10010
    .subzone 4826 >>Viaja a Tormenta Cliffs
    .isOnQuest 14262
step
    #xprate <1.2
    #completewith KeystoneShard
    >>Mata a los |cRXP_ENEMY_Látigo de Ira Furia de tormenta|r y a los |cRXP_ENEMY_Látigo de Ira Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,58.98,71.85
    >>Clin en la |cRXP_PICK_Naga Poder Piedra|r
    .turnin 14267 >>Entrega la misión Investigando el santuario del mar
    .accept 14270 >>Acepta la misión El fragmento de piedra angular
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,57.51,70.96
    >>Despoja la |cRXP_LOOT_Keystone Shard|r en el suelo
    .complete 14270,1 --Keystone Shard (1)
    .isOnQuest 14262
step
    #xprate <1.2
    #label KeystoneShard
    .goto 76,58.98,71.85
    >>Clin en la |cRXP_PICK_Naga Poder Piedra|r
    .turnin 14270 >>Entrega la misión El fragmento de piedra angular
    .accept 14271 >>Acepta la misión Informa a Doblegolpe
    .isOnQuest 14262
step
    #xprate <1.2
    #loop
    .goto 76,61.858,77.871,0
    .waypoint 76,58.019,76.688,50,0
    .waypoint 76,59.851,77.431,50,0
    .waypoint 76,61.858,77.871,50,0
    .waypoint 76,63.084,82.431,50,0
    >>Mata a los |cRXP_ENEMY_Látigo de Ira Furia de tormenta|r y a los |cRXP_ENEMY_Látigo de Ira Seacallers|r
    .complete 14262,1 --Spitelash Stormfury (6)
    .mob +Spitelash Stormfury
    .complete 14262,2 --Spitelash Seacaller (6)
    .mob +Spitelash Seacaller
    .isOnQuest 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torg Doblegolpe|r
    .turnin 14262 >>Entrega la misión Limpiar pescado
    .turnin 14271 >>Entrega la misión Informa a Doblegolpe
    .accept 14295 >>Acepta la misión Hermanas del mar
    .target Torg Twocrush
    .isQuestComplete 14262
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torg Doblegolpe|r
    .turnin 14271 >>Entrega la misión Informa a Doblegolpe
    .accept 14295 >>Acepta la misión Hermanas del mar
    .target Torg Twocrush
    .isQuestComplete 14271
step
    #xprate <1.2
    .goto 76,50.68,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torg Doblegolpe|r
    .turnin 14271 >>Entrega la misión Informa a Doblegolpe
    .accept 14295 >>Acepta la misión Hermanas del mar
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.15,75.87
    >>Mata a |cRXP_ENEMY_Lady Silisthra|r
    >>|cRXP_WARN_Clin|r la |cRXP_FRIENDLY_Poder Piedra de Silisthra|r |cRXP_WARN_encima de la plataforma para debilitarla|r
    .complete 14295,1 --Lady Silisthra (1)
    .mob Lady Silisthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,63.63,79.42
    >>Mata a |cRXP_ENEMY_Lady Vesthra|r
    >>|cRXP_WARN_Clin|r la |cRXP_FRIENDLY_Poder Piedra de Vesthra|r |cRXP_WARN_encima de la plataforma para debilitarla|r
    .complete 14295,2 --Lady Vesthra (1)
    .mob Lady Vesthra
    .isQuestTurnedIn 14271
step
    #xprate <1.2
    .goto 76,50.67,75.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torg Doblegolpe|r
    .turnin 14295 >>Entrega la misión Hermanas del mar
    .target Torg Twocrush
    .isQuestTurnedIn 14271
step
    .goto 76,51.492,74.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Friz Girasuelo|r
    .gossipoption 111876 >>Toma el vuelo a Bilgewater Harbor
    .timer 59,La bienvenida armamentística Roleplay
    .target Friz Groundspin
    .isOnQuest 24458
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxx Avalancha|r
    .trainer >> Aprende tus hechizos de clase
    .target Maxx Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fizz Mechero|r
    .trainer >> Aprende tus hechizos de clase
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Evol Dedos|r
    .trainer >> Aprende tus hechizos de clase
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Sacacuartos|r
    .trainer >> Aprende tus hechizos de clase
    .target Sister Goldskimmer
step
    .goto 76,56.978,50.093
    >>Haz clic en el |cRXP_PICK_Wrenchmen Reclutamiento Poster|r dentro del edificio
    .accept 14478 >>Acepta la misión Operación Pezentraña
step
    .goto 1447/1,-6519.00000,3529.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Grimy Dedosgrasos|r
    .home >> Establece tu hogar en Bilgewater Harbor
    .target Grimy Greasefingers
    .subzoneskip 4821,1
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Peste Shapshiv|r
    .trainer >> Aprende tus hechizos de clase
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bamm Megabomba|r
    .trainer >> Aprende tus hechizos de clase
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guerreromática NX-01|r arriba
    .trainer >> Aprende tus hechizos de clase
    .target Warrior-Matic NX-01

    --VV Confirm if there are no Druid/Pala trainers in Bilgewater

step
    .goto 76,59.33,50.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teemo|r
    .accept 14407 >>Acepta la misión El blues de Azshara
    .target Teemo
step
    .goto 76,60.56,51.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bleenik Fundefusibles|r
    .turnin 24458 >>Entrega la misión La bienvenida armamentística
    .target Bleenik Fizzlefuse
step
    .goto 76,60.64,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Comandante Molotov|r
    .turnin 14478 >>Entrega la misión Operación Pezentraña
    .accept 24455 >>Acepta la misión Despliegue rápido
    .target Commander Molotov
step
    .goto 76,58.10,52.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Desoto|r
    .turnin 24455 >>Entrega la misión Despliegue rápido
    .accept 14479 >>Acepta la misión Hay muchos como ese
    .target Captain Desoto
step
    .goto 76,57.891,52.246
    .vehicle >>Monta el |cRXP_FRIENDLY_Cohete|r
    .timer 38,Hay muchos como ese Roleplay
    .target Surface to Other Surface Transport
    .isOnQuest 14479
step
    .goto 76,39.14,51.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruckus|r
    .accept 24437 >>Acepta la misión El primero en llegar, se lo queda
    .target Ruckus
step
    .goto 76,41.50,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teniente Drex|r
    .turnin 14479 >>Entrega la misión Hay muchos como ese
    .accept 24435 >>Acepta la misión Haz limpieza
    .target Lieutenant Drex
step
    .goto 76,41.37,53.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Hort|r
    .accept 24436 >>Acepta la misión Ayuda aérea
    .target Sergeant Hort
step
    #completewith NorthernVista
    >>Mata a |cRXP_ENEMY_Látigo de Ira Naga|r y a |cRXP_ENEMY_Látigo de Ira Silbo|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #completewith KillNagas
    .use 49679 >>|cRXP_WARN_Usa tu|r |T135619:0|t[Santificado Flaregun] |cRXP_WARN_en|r |cRXP_FRIENDLY_Soldados Heridos|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,43.86,59.95
    .use 49685 >>|cRXP_WARN_Usa la|r |T132485:0|t[Bandera of Territorial Claim] |cRXP_WARN_en la Pagoda del Sur|r
    .complete 24437,1 --Southern Pagoda claimed (1)
step
    .goto 76,43.60,43.43
    .use 49685 >>|cRXP_WARN_Usa la|r |T132485:0|t[Bandera of Territorial Claim] |cRXP_WARN_en la Gran Torre|r
    .complete 24437,2 --Big ol' Tower claimed (1)
step
    #label NorthernVista
    .goto 76,45.46,38.52
    .use 49685 >>|cRXP_WARN_Usa la|r |T1324855:0|t[Bandera of Territorial Claim] |cRXP_WARN_en la Vista del Norte|r
    .complete 24437,3 --Northern Vista claimed (1)
step
    #label KillNagas
    #loop
    .goto 76,40.901,51.711,0
    .waypoint 76,42.234,43.478,60,0
    .waypoint 76,40.500,47.338,60,0
    .waypoint 76,40.901,51.711,60,0
    .waypoint 76,42.469,56.429,60,0
    .waypoint 76,42.583,60.598,60,0
    >>Mata a |cRXP_ENEMY_Látigo de Ira Naga|r y a |cRXP_ENEMY_Látigo de Ira Silbo|r
    .complete 24435,1 --Defending Naga (12)
    .mob Spitelash Naga
    .mob Spitelash Siren
step
    #loop
    .goto 76,41.538,47.075,0
    .waypoint 76,42.063,42.177,30,0
    .waypoint 76,41.636,43.947,30,0
    .waypoint 76,41.538,47.075,30,0
    .waypoint 76,40.529,49.245,30,0
    .waypoint 76,39.905,51.764,30,0
    .waypoint 76,39.729,53.869,30,0
    .waypoint 76,42.040,50.686,30,0
    .waypoint 76,43.193,52.463,30,0
    .waypoint 76,42.736,60.005,30,0
    .use 49679 >>|cRXP_WARN_Usa tu|r |T135619:0|t[Santificado Flaregun] |cRXP_WARN_en|r |cRXP_FRIENDLY_Soldados Heridos|r
    .complete 24436,1 --Wounded Soldier rescued (8)
    .target Wounded Soldier
step
    .goto 76,41.387,53.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Hort|r
    .turnin 24436 >>Entrega la misión Ayuda aérea
    .target Sergeant Hort
step
    .goto 76,41.499,53.650
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teniente Drex|r
    .turnin 24435 >>Entrega la misión Haz limpieza
    .accept 24448 >>Acepta la misión Ascenso militar
    .target Lieutenant Drex
step
    .goto 76,39.133,51.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruckus|r
    .turnin 24437 >>Entrega la misión El primero en llegar, se lo queda
    .target Ruckus
step
    .goto 76,34.317,44.910
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Tork|r
    .turnin 24448 >>Entrega la misión Ascenso militar
    .accept 14487 >>Acepta la misión Corazón palpitante
    .target Captain Tork
step
    .goto 76,34.450,44.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Zelks|r
    .accept 14480 >>Acepta la misión Exterminio
    .accept 14484 >>Acepta la misión La cabeza de la serpiente
    .accept 14485 >>Acepta la misión Necesitamos a Tictac
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tora Halotrix|r
    .accept 14486 >>Acepta la misión Manejar la mercancía
    .target Tora Halotrix
step
    #sticky
    #completewith SpitelashNagas
    .cast 69310 >>|cRXP_WARN_Usa|r |T134286:0|t[Bengala del Escuadrón Gob] |cRXP_WARN_para invocar|r |cRXP_FRIENDLY_Goblins|r |cRXP_WARN_que te ayudarán con las próximas misiones|r
    .use 49629
step
    #completewith LordKassarus
    >>Destruye las |cRXP_PICK_Piedras rúnicas Látigo de Ira|r
    >>|cRXP_FRIENDLY_Manitas|r |cRXP_WARN_pondrá explosivos en las Piedras rúnicas. Defiéndelo de los ataques del|r |cRXP_ENEMY_Naga Látigo de Ira|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
step
    #completewith Runestones
    >>Despoja los |cRXP_LOOT_Highborne Tablets|r en el suelo
    .complete 14486,1 --Highborne Tablet (12)
step
    #completewith HighborneTablets
    >>Mata a los |cRXP_ENEMY_Látigo de Ira Maestros de batalla|r y a los |cRXP_ENEMY_Látigo de Ira Encantadoras|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
step
    .goto 76,31.877,50.086
    >>Despoja el |cRXP_LOOT_Corazón de Arkkoroc|r en el suelo
    .complete 14487,1 --|1/1 Heart of Arkkoroc
    .use 49629
step
    #label LordKassarus
    .goto 76,35.993,49.836
    >>Mata al |cRXP_ENEMY_Señor Kassarus|r
    .complete 14484,1 --Lord Kassarus (1)
    .mob Lord Kassarus
    .use 49629
step
    #label Runestones
    #loop
    .goto 76,34.045,51.533,0
    .goto 76,36.039,47.628,0
    .waypoint 76,30.477,48.782,20,0
    .waypoint 76,32.307,52.460,20,0
    .waypoint 76,34.045,51.533,20,0
    .waypoint 76,34.335,48.192,20,0
    .waypoint 76,36.039,47.628,20,0
    >>Destruye las |cRXP_PICK_Piedras rúnicas Látigo de Ira|r
    >>|cRXP_FRIENDLY_Manitas|r |cRXP_WARN_pondrá explosivos en las Piedras rúnicas. Defiéndelo de los ataques del|r |cRXP_ENEMY_Naga Látigo de Ira|r
    .complete 14485,1 --Spitelash Runestones destroyed (3)
    .use 49629
step
    #label HighborneTablets
    #loop
    .goto 76,30.114,49.084,0
    .waypoint 76,33.666,47.151,20,0
    .waypoint 76,32.448,48.661,20,0
    .waypoint 76,31.121,48.792,20,0
    .waypoint 76,30.274,48.555,20,0
    .waypoint 76,30.114,49.084,20,0
    .waypoint 76,30.293,50.517,20,0
    .waypoint 76,30.179,51.323,20,0
    .waypoint 76,31.410,52.117,20,0
    .waypoint 76,31.982,51.393,20,0
    .waypoint 76,32.188,53.156,20,0
    .waypoint 76,33.390,51.737,20,0
    .waypoint 76,34.262,49.631,20,0
    .waypoint 76,34.745,47.102,20,0
    >>Despoja los |cRXP_LOOT_Highborne Tablets|r en el suelo
    .complete 14486,1 --Highborne Tablet (12)
    .use 49629
step
    #label SpitelashNagas
    #loop
    .goto 76,30.159,49.817,0
    .waypoint 76,32.789,46.635,60,0
    .waypoint 76,30.596,47.761,60,0
    .waypoint 76,30.159,49.817,60,0
    .waypoint 76,32.387,53.496,60,0
    .waypoint 76,34.325,51.617,60,0
    .waypoint 76,33.899,46.811,60,0
    >>Mata a los |cRXP_ENEMY_Látigo de Ira Maestros de batalla|r y a los |cRXP_ENEMY_Látigo de Ira Encantadoras|r
    .complete 14480,1 --Spitelash Naga (30)
    .mob Spitelash Battlemaster
    .mob Spitelash Enchantress
    .use 49629
step
    .goto 76,34.464,44.727
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Zelks|r
    .turnin 14480 >>Entrega la misión Exterminio
    .turnin 14484 >>Entrega la misión La cabeza de la serpiente
    .turnin 14485 >>Entrega la misión Necesitamos a Tictac
    .target Sergeant Zelks
step
    .goto 76,34.53,44.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tora Halotrix|r
    .turnin 14486 >>Entrega la misión Manejar la mercancía
    .target Tora Halotrix
step
    .goto 76,34.307,44.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Tork|r
    .turnin 14487 >>Entrega la misión Corazón palpitante
    .accept 24449 >>Acepta la misión Permiso para bajar a tierra
    .target Captain Tork
step
    .goto 76,34.513,44.512
    .vehicle >>Monta el |cRXP_FRIENDLY_Girocóptero militar|r
    .timer 32,Permiso para bajar a tierra
    .target Military Gyrocopter
    .isOnQuest 24449
step
    .goto 76,60.61,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tío Jaleo|r
    .turnin 24449 >>Entrega la misión Permiso para bajar a tierra
    .target Uncle Bedlam
step
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalec|r
    .turnin 14407 >>Entrega la misión El blues de Azshara
    .target Kalec
step
    .maxlevel 18,NorthAzsharaSkip
    .goto 76,55.49,52.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalec|r
    .accept 14130 >>Acepta la misión Amigos de todos los colores
    .target Kalec
step
    #completewith next
    .goto 76,70.36,36.25,60 >>Viaja hacia |cRXP_FRIENDLY_Ergll|r
    >>|cRXP_WARN_Puedes caminar sobre el agua durante los próximos 5 minutos|r
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ergll|r
    .turnin 14130 >>Entrega la misión Amigos de todos los colores
    .accept 14131 >>Acepta la misión Una pequeña recolecta
    .accept 14132 >>Acepta la misión ¡Qué maleducado!
    .accept 14323 >>Acepta la misión Absorbente
    .target Ergll
step
    #completewith VileSplashers
    >>Despoja los |cRXP_PICK_Kawphi Plants|r en el suelo para obtener los |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #completewith VileSplashers
    >>Mata a los |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label VileSplashers
    #loop
    .goto 76,75.914,35.559,0
    .goto 76,82.174,40.080,0
    .waypoint 76,75.914,35.559,50,0
    .waypoint 76,77.838,36.335,50,0
    .waypoint 76,80.072,37.683,50,0
    .waypoint 76,82.174,40.080,50,0
    .waypoint 76,79.225,40.686,50,0
    .waypoint 76,76.552,39.047,50,0
    .waypoint 76,75.496,36.880,50,0
    >>Mata a las |cRXP_ENEMY_Vile Salpicaduras|r. Despójalas para obtener sus |cRXP_LOOT_Simmering Agua Droplets|r
    >>|cRXP_ENEMY_Vile Salpicaduras|r |cRXP_WARN_mueren instantáneamente cuando están cerca|r
    .complete 14323,1 --Simmering Water Droplet (20)
    .mob Vile Splash
step
    #label ObsorbentTurnin
    .turnin 14323 >>Entrega la misión Absorbente
    --.accept 14324 >>Accept Full of Hot Water
step
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Usa|r el |T135231:0|t[Atracón Azshari Sea Sponge] |cRXP_WARN_en la|r |cRXP_PICK_Stone of the Agua hirviendo lords|r
    >>Mata al |cRXP_ENEMY_Señor de agua hirviendo|r que aparece. Despoja la |cRXP_LOOT_Esfera de agua hirviendo|r
    .complete 14324,1 --Globe of Boiling Water (1)
    .isOnQuest 14324
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    #label KawphiBeans
    #loop
    .goto 76,70.927,35.021,0
    .goto 76,71.424,29.350,0
    .waypoint 76,70.927,35.021,25,0
    .waypoint 76,71.801,34.789,25,0
    .waypoint 76,70.604,32.345,25,0
    .waypoint 76,70.559,28.732,25,0
    .waypoint 76,71.424,29.350,25,0
    .waypoint 76,72.477,29.047,25,0
    >>Despoja los |cRXP_PICK_Kawphi Plants|r en el suelo para obtener los |cRXP_LOOT_Kawphi Beans|r
    .complete 14131,1 --Kawphi Bean (10)
step
    #loop
    .goto 76,72.885,36.368,0
    .goto 76,70.218,30.672,0
    .waypoint 76,74.209,32.190,60,0
    .waypoint 76,72.885,36.368,60,0
    .waypoint 76,70.218,30.672,60,0
    >>Mata a los |cRXP_ENEMY_Makrinni Scrabblers|r
    .complete 14132,1 --Ruins of Arkkoran Makrinni (10)
    .mob Makrinni Scrabbler
step
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Entrega la misión Una pequeña recolecta
    .turnin 14132 >>Entrega la misión ¡Qué maleducado!
    .turnin 14324 >>Entrega la misión Lleno de agua caliente
    .accept 14345 >>Acepta la misión Andar con ojo
    .target Ergll
    .isQuestComplete 14324
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ergll|r
    .turnin 14131 >>Entrega la misión Una pequeña recolecta
    .turnin 14132 >>Entrega la misión ¡Qué maleducado!
    .accept 14324 >>Acepta la misión Lleno de agua caliente
    .target Ergll
step
    #optional
    .goto 76,81.40,30.84
    .use 49176 >>|cRXP_WARN_Usa la|r |T135231:0|t[Atracón Azshari Sea Sponge] |cRXP_WARN_en la|r |cRXP_PICK_Stone of the Agua hirviendo lords|r
    >>Mata al |cRXP_ENEMY_Señor de Agua hirviendo|r que aparezca. Despójalo para obtener su |cRXP_LOOT_Globo de Agua hirviendo|r
    .complete 14324,1 --Globe of Boiling Water (1)
step
    #optional
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ergll|r
    .turnin 14324 >>Entrega la misión Lleno de agua caliente
    .accept 14345 >>Acepta la misión Andar con ojo
    .timer 198,Montura de Tortuga
    .target Ergll
step << skip
    .goto 76,70.36,36.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ergll|r
    .vehicle >>Viaja en la tortuga hacia el Northern Rocketway Exchange
    .timer 198,Montura de Tortuga
    .target Ergll
    .skipgossip
    .isOnQuest 14345
step
    #completewith next
    .goto 76,42.71,25.15,80 >>Espera hasta que llegues al Northern Rocketway Exchange
    >>|cRXP_WARN_Habla con|r |cRXP_FRIENDLY_Ergll|r |cRXP_WARN_de nuevo para montar la Tortuga si esto no ocurrió automáticamente|r
    .skipgossip
step
    .goto 76,42.71,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sorata Hilafuego|r
    .turnin 14345 >>Entrega la misión Andar con ojo
    .accept 14340 >>Acepta la misión Vístete para impresionar
    .target Sorata Firespinner
step
    #xprate <1.2
    .goto 76,42.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andorel Jurasol|r
    .accept 14428 >>Acepta la misión El diario de Ventámbar
    .target Andorel Sunsworn
step
    #xprate <1.2
    .goto 76,42.41,23.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haggrum Puñosangre|r
    .accept 14431 >>Acepta la misión La escara de los Faucenegra
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #loop
    .goto 76,37.967,28.403,0
    .waypoint 76,38.478,26.428,40,0
    .waypoint 76,37.967,28.403,40,0
    .waypoint 76,37.935,31.246,40,0
    .waypoint 76,37.212,34.089,40,0
    >>Mata a los |cRXP_ENEMY_Biólogos Talrendis|r. Despójalos para obtener |cRXP_LOOT_Inteligencia de Blackmaw|r
    .complete 14431,2 --Blackmaw Intelligence (1)
    .complete 14431,1 --Talrendis Biologist (8)
    .mob Talrendis Biologist
step
    #xprate <1.2
    .goto 76,42.408,23.605
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haggrum Puñosangre|r
    .turnin 14431 >>Entrega la misión La escara de los Faucenegra
    .accept 14432 >>Acepta la misión Una infusión de hierbas
    .accept 14433 >>Acepta la misión Diplomacia por otros medios
    .target Haggrum Bloodfist
step
    #xprate <1.2
    .goto 76,49.75,28.44
    >>Mata a |cRXP_ENEMY_Tradicionalista Ventámbar|r. Despójala para obtener su |cRXP_LOOT_Diario de Ventámbar|r
    .complete 14428,1 --Amberwind's Journal (1)
    .mob Lorekeeper Amberwind
step
    #xprate <1.2
    .goto 76,49.53,28.78
    >>Haz clic en la |cRXP_PICK_Piedra de detección superior|r
    .turnin 14428 >>Entrega la misión El diario de Ventámbar
    .accept 14429 >>Acepta la misión Deconstrucción Arcana
step
    #xprate <1.2
    #loop
    .goto 76,52.303,27.112,0
    .goto 76,49.663,28.456,0
    .waypoint 76,50.329,27.556,40,0
    .waypoint 76,52.303,27.112,40,0
    .waypoint 76,51.685,25.068,40,0
    .waypoint 76,49.041,25.544,40,0
    .waypoint 76,49.291,27.335,40,0
    .waypoint 76,49.663,28.456,40,0
    >>Mata a los |cRXP_ENEMY_Apprentice Investigators|r y a los |cRXP_ENEMY_Apprentice Illuminators|r. Despójalos para obtener sus |cRXP_LOOT_Attuned Runestones|r
    .complete 14429,1 --Attuned Runestone (10)
    .mob Apprentice Investigator
    .mob Apprentice Illuminator
step
    #xprate <1.2
    .goto 76,53.02,29.01
    >>Haz clic en la |cRXP_PICK_Piedra de detección inferior|r
    .turnin 14429 >>Entrega la misión Deconstrucción Arcana
    .accept 14430 >>Acepta la misión Manipulando el ensamblaje
step
    #xprate <1.2
    .goto 76,52.998,29.974
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ensamblaje Arcano|r
    .complete 14430,1 --Arcane Construct Hacked (1)
    .target Arcane Construct
    .skipgossip
step
    .goto 76,47.241,20.861
    >>Viaja hacia la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .use 49201 >>|cRXP_WARN_Usa tu|r |T133131:0|t[Sombrero de zahorí deslucido]
    .complete 14340,1 --Approach Archmage Xylem while wearing your Wizard Hat (1)
    .target Image of Archmage Xylem
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .turnin 14340 >>Entrega la misión Vístete para impresionar
    .target Image of Archmage Xylem
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharkul Craneacero|r
    .accept 14250 >>Acepta la misión Fuente renovable
    .target Tharkul Ironskull
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Will Robotrónico|r
    .accept 14249 >>Acepta la misión El deseo de esquilar
    .target Will Robotronic
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quarla Rompesilbo|r
    .accept 14263 >>Acepta la misión Pérdida de tomillo
    .target Quarla Whistlebreak
step
    #completewith BalboaBlow
    >>Despoja el |cRXP_LOOT_Tomillo de Ira viviente|r en el suelo
    >>|cRXP_WARN_Despojarlos te otorgará el beneficio|r |T135791:0|t[Ira viviente] |cRXP_WARN_durante 60 segundos (+20% de daño infligido y recibido, se acumula hasta 5 veces)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #completewith IreThymes
    >>Mata a los |cRXP_ENEMY_Hipogrifos Tronatesta|r. Despójalos para obtener sus |cRXP_LOOT_Plumas prístinas de Tronatesta|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    #label BalboaBlow
    #loop
    .goto 76,53.267,20.867,0
    .goto 76,49.613,19.691,0
    .goto 76,46.529,15.659,0
    .waypoint 76,48.135,17.807,30,0
    .waypoint 76,49.613,19.691,30,0
    .waypoint 76,51.276,20.168,30,0
    .waypoint 76,53.267,20.867,30,0
    .waypoint 76,46.529,15.659,30,0
    .use 49038 >>|cRXP_WARN_Coloca la|r |T135735:0|t[Carga arcana] |cRXP_WARN_delante de|r |cRXP_ENEMY_Balboa|r |cRXP_WARN_y haz que corra hacia él|r
    >>Despoja el |cRXP_LOOT_Animar Basalt|r en el suelo después de que detone
    .complete 14250,1 --Animate Basalt (5)
    .unitscan Balboa
step
    #label IreThymes
    #loop
    .goto 76,52.188,19.077,0
    .goto 76,43.846,16.439,0
    .waypoint 76,50.142,16.603,25,0
    .waypoint 76,52.188,19.077,25,0
    .waypoint 76,52.920,22.025,25,0
    .waypoint 76,51.062,23.085,25,0
    .waypoint 76,50.191,23.321,25,0
    .waypoint 76,49.742,22.168,25,0
    .waypoint 76,49.866,18.267,25,0
    .waypoint 76,45.346,16.768,25,0
    .waypoint 76,43.846,16.439,25,0
    .waypoint 76,44.866,15.379,25,0
    .waypoint 76,45.688,13.923,25,0
    .waypoint 76,47.154,13.987,25,0
    >>Despoja |cRXP_LOOT_Ira viviente Thyme|r en el suelo
    >>|cRXP_WARN_Despojándolos te dará el|r |T135791:0|t[Ira viviente] |cRXP_WARN_efecto durante 60 segundos (+20% de daño infligido y recibido, se acumula hasta 5 veces)|r
    .complete 14263,1 --Living Ire Thyme (8)
step
    #loop
    .goto 76,47.293,15.109,0
    .waypoint 76,49.885,15.595,70,0
    .waypoint 76,51.383,18.945,70,0
    .waypoint 76,49.879,21.922,70,0
    .waypoint 76,47.293,15.109,70,0
    .waypoint 76,42.318,18.466,70,0
    >>Mata a los |cRXP_ENEMY_Tronatesta Hippogryphs|r. Despoja sus |cRXP_LOOT_Pristine Tronatesta Feather|r
    .complete 14249,1 --Pristine Thunderhead Feather (80)
    .mob Thunderhead Hippogryph
step
    .goto 76,47.01,21.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quarla Rompesilbo|r
    .turnin 14263 >>Entrega la misión Pérdida de tomillo
    .target Quarla Whistlebreak
step
    .goto 76,47.17,21.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Will Robotrónico|r
    .turnin 14249 >>Entrega la misión El deseo de esquilar
    .target Will Robotronic
step
    .goto 76,47.30,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharkul Craneacero|r
    .turnin 14250 >>Entrega la misión Fuente renovable
    .target Tharkul Ironskull
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teresa Hojaguja|r
    .accept 14230 >>Acepta la misión Mano de obra
    .target Teresa Spireleaf
step
    .goto 76,47.24,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .accept 14226 >>Acepta la misión Pisoteando problemas
    .target Image of Archmage Xylem
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Polimorfado Cockroaches|r
    >>|cRXP_WARN_Haz que tu|r |cRXP_FRIENDLY_Personal Arcano Assistant|r |cRXP_WARN_lance|r |T294474:0|t[Insecto polimórfico] |cRXP_WARN_en|r |cRXP_ENEMY_Sátiro Legashi|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_y|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #loop
    .goto 76,54.474,24.603,0
    .waypoint 76,55.608,23.916,20,0
    .waypoint 76,55.295,25.216,20,0
    .waypoint 76,54.929,24.217,20,0
    .waypoint 76,54.474,24.603,20,0
    >>Despoja el |cRXP_PICK_Stolen Manual|r en el suelo para obtener el |cRXP_LOOT_Abjurer's Manual|r
    >>|cRXP_WARN_Hay varios|r |cRXP_PICK_Stolen Manuals|r |cRXP_WARN_en el área. El que parece|r |cRXP_FRIENDLY_Verde|r |cRXP_WARN_contiene el|r |cRXP_LOOT_Abjurer's Manual|r
    .complete 14230,1 --Abjurer's Manual (1)
step
    #loop
    .goto 76,54.524,24.092,0
    .waypoint 76,54.524,24.092,40,0
    .waypoint 76,56.003,24.962,40,0
    .waypoint 76,52.415,22.519,40,0
    >>Mata a los |cRXP_ENEMY_Polimorfado Cockroaches|r
    >>|cRXP_WARN_Haz que tu|r |cRXP_FRIENDLY_Personal Arcano Assistant|r |cRXP_WARN_lance|r |T294474:0|t[Insecto polimórfico] |cRXP_WARN_en|r |cRXP_ENEMY_Sátiro Legashi|r|cRXP_WARN_,|r |cRXP_ENEMY_Legashi Rogues|r |cRXP_WARN_y|r |cRXP_ENEMY_Legashi Hellcallers|r
    .complete 14226,1 --Polymorphed Cockroach (12)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    #completewith next
    .goto 76,47.098,20.551,30 >>Regresa al campamento de |cRXP_FRIENDLY_Archimago Xylem|r
    >>|cRXP_WARN_Haz que tu|r |cRXP_FRIENDLY_Personal Arcano Assistant|r |cRXP_WARN_lance|r |T135750:0|t[Volver al campamento]
step
    .goto 76,47.24,21.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teresa Hojaguja|r
    .turnin 14230 >>Entrega la misión Trabajo manual
    .target Teresa Spireleaf
step
    .goto 76,47.23,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .turnin 14226 >>Entrega la misión Pisoteando problemas
    .accept 14413 >>Acepta la misión El Pináculo del aprendizaje
    .timer 30,El Pináculo del aprendizaje Roleplay
    .target Image of Archmage Xylem
step
    .goto 76,55.71,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .turnin 14413 >>Entrega la misión El Pináculo del aprendizaje
    .accept 14296 >>Acepta la misión Vigila tus pasos
    .target Image of Archmage Xylem
step
    #sticky
    #completewith WatchYourStepComplete
    .goto 76,55.375,14.957,0
    +|cRXP_WARN_¡Sigue moviéndote para evitar ser lanzado de la montaña! Si caes, nada hacia|r |cRXP_FRIENDLY_Imagen de Archimago Xylem|r |cRXP_WARN_para intentar de nuevo|r
    .target Image of Archmage Xylem
    .isOnQuest 14296
    --VV Need video for this quest
step
    .goto 76,55.740,14.745
    .aura 68613 >>Haz clic en el primer |cRXP_PICK_Conducto de energía|r
    .isOnQuest 14296
step
    .goto 76,56.211,14.735,5,0
    .goto 76,56.887,14.333
    .aura 68613,2+ >>Haz clic en el segundo |cRXP_PICK_Conducto de energía|r
    >>|cRXP_WARN_Muévete a los círculos blancos para ascender|r
    .isOnQuest 14296
step
    .goto 76,56.999,14.143,5,0
    .goto 76,57.570,12.867,5,0
    .goto 76,57.569,11.662
    .aura 68613,3+ >>Haz clic en el tercer |cRXP_PICK_Conducto de energía|r
    >>|cRXP_WARN_Muévete a los círculos blancos para ascender|r
    .isOnQuest 14296
step
    .goto 76,57.386,11.252,5,0
    .goto 76,56.332,10.492,5,0
    .goto 76,55.486,10.606
    .aura 68613,4+ >>Haz clic en el cuarto |cRXP_PICK_Conducto de energía|r
    >>|cRXP_WARN_Muévete a los círculos blancos para ascender|r
    .isOnQuest 14296
step
    .goto 76,55.306,10.833,5,0
    .goto 76,55.038,12.596,5,0
    .goto 76,55.548,13.104,5,0
    .goto 76,56.295,13.520
    .aura 68613,5+ >>Haz clic en el quinto |cRXP_PICK_Conducto de energía|r
    >>|cRXP_WARN_Muévete a los círculos blancos para ascender|r
    .isOnQuest 14296
step
    .goto 76,56.450,13.291,5,0
    .goto 76,56.859,11.766,5,0
    .goto 76,56.173,11.077
    .aura 68613,6+>>Haz clic en el sexto |cRXP_PICK_Conducto de energía|r
    >>|cRXP_WARN_Muévete a los círculos blancos para ascender|r
    .isOnQuest 14296
step
    .goto 76,55.992,11.256,5,0
    .goto 76,55.873,11.860
    >>|cRXP_WARN_Muévete al círculo blanco para ascender|r
    .complete 14296,1 --Arcane Trial Completed (1)
    .isOnQuest 14296
step
    #label WatchYourStepComplete
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .turnin 14296 >>Entrega la misión Vigila tus pasos
    .accept 24478 >>Acepta la misión La Prueba de Escarcha
    .accept 14300 >>Acepta la misión La prueba de Fuego
    .accept 24479 >>Acepta la misión La Prueba de las Sombras
    .target Image of Archmage Xylem
step
    #completewith next
    .goto 76,56.049,11.926
    .goto 76,62.104,21.217,20 >>Haz clic en la |cRXP_PICK_Frost Portal Zone|r en el suelo, luego haz clic en el portal
step
    #label FrostTrial
    #loop
    .goto 76,62.041,20.249,8,0
    .goto 76,62.168,19.956,8,0
    .goto 76,62.025,19.774,8,0
    .goto 76,61.633,20.002,8,0
    .goto 76,61.487,20.195,8,0
    .goto 76,61.228,20.548,8,0
    .goto 76,61.446,20.978,8,0
    .goto 76,61.665,20.874,8,0
    .goto 76,61.879,20.912,8,0
    .goto 76,62.116,20.756,8,0
    >>Recoge 20 capas de |T252270:0|t[Esencia de hielo] corriendo más allá de las pequeñas nubes de hielo flotantes
    >>|cRXP_WARN_Evita los tiros de hielo giratorios y los círculos azules en el suelo. Pierdes una capa de|r |T252270:0|t[Esencia de hielo] |cRXP_WARN_cada vez que te golpean|r
    .complete 24478,1 --Frost Trial Completed (1)
step
    #completewith FireTrial
    .goto 76,62.082,21.121
    .goto 76,56.173,12.079,20 >>Entra al portal
step
    #completewith next
    .goto 76,56.082,11.942
    .goto 76,32.886,23.395,20 >>Haz clic en la |cRXP_PICK_Fire Portal Zone|r en el suelo, luego haz clic en el portal
step
    #label FireTrial
    .goto 76,33.339,23.524
    >>Recoge 10 capas de |T252268:0|t[Danza del Fuego] moviéndote de círculo en círculo mientras evitas las llamas
    >>|cRXP_WARN_La forma más fácil de hacerlo es imitando|r |cRXP_FRIENDLY_Darwin's|r |cRXP_WARN_movimientos|r
    .complete 14300,1 --Fire Trial Completed (1)
    .target Darwin
step
    #completewith ShadowTrial
    .goto 76,32.896,23.392
    .goto 76,56.173,12.079,20 >>Entra al portal
step
    #completewith ShadowTrial
    .goto 76,56.119,11.959
    .goto 76,31.183,26.715,20 >>Haz clic en la |cRXP_PICK_Shadow Portal Zone|r en el suelo, luego haz clic en el portal
step
    #completewith next
    .goto 76,30.792,27.281
    .aura 69863 >>Haz clic en la |cRXP_PICK_Purple Piedra|r para comenzar la prueba
step
    #label ShadowTrial
    .goto 76,30.930,27.875
    >>Recoge 20 capas de |T252272:0|t[Cebo de sombras] atrayendo |cRXP_ENEMY_Weeping Almas|r a los círculos púrpuras en el suelo
    >>|cRXP_WARN_Evita que te golpeen los|r |cRXP_ENEMY_Weeping Almas|r|cRXP_WARN_. Pierdes capas cuando te atacan|r
    .complete 24479,1 --Shadow Trial Completed (1)
    .mob Weeping Soul
step
    #completewith next
    .goto 76,31.172,26.719
    .goto 76,56.173,12.079,20 >>Haz clic en el portal
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .turnin 24478 >>Entrega la misión La Prueba de Escarcha
    .turnin 14300 >>Entrega la misión La prueba de Fuego
    .turnin 24479 >>Entrega la misión La Prueba de las Sombras
    .accept 14299 >>Acepta la misión El asilo de Xylem
    .target Image of Archmage Xylem
step
    .goto 76,55.95,12.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Archimago Xylem|r
    .gossipoption 111896 >>Pídele que abra el portal
    .target Image of Archmage Xylem
    .isOnQuest 14299
step
    #completewith next
    .goto 76,56.162,12.079
    .goto 76,22.462,43.582,20 >>Haz clic en el portal
step
    .goto 76,25.59,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joanna|r
    .turnin 14299 >>Entrega la misión El asilo de Xylem
    .accept 14389 >>Acepta la misión ¿No era obvio?
    .target Joanna
step
    #completewith next
    .goto 76,25.720,37.969
    .goto 76,27.773,40.970,20 >>Haz clic en el portal
step
    .goto 76,27.798,40.448
    >>Encuentra a |cRXP_FRIENDLY_Anara|r y a |cRXP_FRIENDLY_Azuregos|r
    .complete 14389,1 --Find Anara, and hopefully, Azuregos
    .target Anara
    .target Spirit of Azuregos
step
    .turnin 14389 >>Entrega la misión ¿No era obvio?
    .accept 14390 >>Acepta la misión Fácil significa aburrido
step
    .goto 76,27.79,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azuregos|r
    .complete 14390,1 --Convince Azuregos to meet with Kalecgos
    .target Spirit of Azuregos
    .skipgossip 36436,1
step
    .turnin 14390 >>Entrega la misión Fácil significa aburrido
    .accept 14391 >>Acepta la misión Cambiando las tornas
step
    .goto 76,27.617,39.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anara|r
    .gossipoption 111889 >>Vuelve a la vida
    .target Anara
    .isOnQuest 14391
step
    #xprate <1.2
    #completewith MeetingAgenda
    >>Mata a los |cRXP_ENEMY_Talrendis Ambassadors|r. Despójalos para obtener |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #completewith AmbRobes
    >>Despoja la |cRXP_LOOT_Briaroot Cerveza|r en el suelo
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_también puede soltar|r |cRXP_LOOT_Briaroot Cerveza|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #label MeetingAgenda
    .goto 76,29.813,38.566
    >>Despoja los |cRXP_PICK_Documentos importantes|r en el suelo para obtener la |cRXP_LOOT_Agenda de reunión de Blackmaw|r
    .complete 14433,1 --Blackmaw Meeting Agenda (1)
step
    #xprate <1.2
    #label AmbRobes
    #loop
    .goto 76,30.564,37.729,0
    .waypoint 76,29.965,38.504,40,0
    .waypoint 76,30.564,37.729,40,0
    .waypoint 76,31.261,34.060,40,0
    .waypoint 76,32.123,32.756,40,0
    >>Mata a los |cRXP_ENEMY_Talrendis Ambassadors|r. Despójalos para obtener |cRXP_LOOT_Ambassador's Robes|r
    .complete 14433,2 --Ambassador's Robes (1)
    .mob Talrendis Ambassador
step
    #xprate <1.2
    #loop
    .goto 76,30.365,37.578,0
    .waypoint 76,29.926,38.784,30,0
    .waypoint 76,30.365,37.578,30,0
    .waypoint 76,31.393,36.065,30,0
    .waypoint 76,31.073,34.994,30,0
    .waypoint 76,31.171,33.729,30,0
    >>Despoja la |cRXP_LOOT_Briaroot Cerveza|r en el suelo
    >>|cRXP_ENEMY_Blackmaw Timbermaw|r |cRXP_WARN_también puede soltar|r |cRXP_LOOT_Briaroot Cerveza|r
    .complete 14432,1 --Briaroot Brew (10)
    .mob Blackmaw Pathfinder
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
step
    #xprate <1.2
    #completewith Diplomatic
    .subzone 4825 >>Viaja al Northern Rocketway Exchange
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haggrum Puñosangre|r
    .turnin 14432 >>Entrega la misión Una infusión de hierbas
    .turnin 14433 >>Entrega la misión Diplomacia por otros medios
    .accept 14435 >>Acepta la misión La traición a los Faucenegra
    .target Haggrum Bloodfist
    .maxlevel 20
step
    #xprate <1.2
    #label Diplomatic
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haggrum Puñosangre|r
    .turnin 14432 >>Entrega la misión Una infusión de hierbas
    .turnin 14433 >>Entrega la misión Diplomacia por otros medios
    .target Haggrum Bloodfist
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andorel Jurasol|r
    .turnin 14430 >>Entrega la misión Manipulando el ensamblaje
    .target Andorel Sunsworn
step
    #xprate <1.2
    #optional
    .goto 76,42.435,23.696
    .aura 69054 >>|cRXP_WARN_Usa tu|r |T132671:0|t[Disfraz de embajador] |cRXP_WARN_en|r el |cRXP_PICK_Haggrum's Smokepit|r
    .use 49368
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.614,23.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andorel Jurasol|r
    .gossipoption 111853 >>Teletranspórtate a Blackmaw Mantener
    .target Andorel Sunsworn
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,30.986,29.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andorel Jurasol|r
    .complete 14435,1 --Negotiations Sabotaged (1)
    .target Ungarl
    .skipgossip 36618,2,1,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,31.046,29.258,12,0
    .goto 76,31.889,30.192,12,0
    .goto 76,32.188,31.228,12,0
    .goto 76,32.755,32.247
    >>Mata a los Blackmaw Warriors y a los |cRXP_ENEMY_Blackmaw Shamans|r mientras luchas saliendo de Blackmaw Mantener. Despójalos para obtener |T134245:0|t[|cRXP_ENEMY_Ironwrought Keys|r]
    .complete 14435,2 --Blackmaw Warrior (4)
    .complete 14435,3 --Blackmaw Shaman (4)
    .mob Blackmaw Warrior
    .mob Blackmaw Shaman
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    #completewith next
    .goto 76,32.755,32.247,12 >> Sal de Blackmaw Mantener
    .subzoneskip 1216,1
    .isOnQuest 14435
step
    #xprate <1.2
    #optional
    .goto 76,42.402,23.602
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Haggrum Puñosangre|r
    .turnin 14435 >>Gira en La traición a los Faucenegra
    .target Haggrum Bloodfist
    .isOnQuest 14435
step
    #xprate <1.2
    #completewith next
    .goto 1447/1,-5711.20020,4488.30029,5,0
    .goto 1447/1,-5718.10010,4477.89990,3 >>Toma el ascensor hacia la plataforma
step
    #xprate <1.2
    .goto 76,42.526,24.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Jinete de cohete Pantoque|r
    .gossipoption 112443 >>Toma el viaje en cohete a Northern Rocketway Terminus
    .timer 51,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    #xprate >1.19
    #completewith next
    .goto 76,25.93,49.64,7 >>Viaja a la cima de la plataforma Rocketway
step
    #xprate >1.19
    .goto 76,25.93,49.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Jinete de cohete Pantoque|r
    .gossipoption 112442 >>Toma el viaje en cohete a Northern Rocketway Terminus
    .timer 83,Northern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .isOnQuest 14391
step
    .goto Azshara,66.50,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Blitz Explopatoso|r
    .fp >>Aprende la ruta de vuelo de Bitter Reaches
    .target Blitz Blastospazz
    .isQuestAvailable 14261
step
    .goto 76,66.551,20.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalec|r
    .turnin 14391 >>Gira en Cambiando las tornas
    .accept 24467 >>Acepta la misión Fundido a negro
    .target Kalec
step
    .goto 76,66.338,20.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jellix Prendemechas|r
    .accept 14297 >>Acepta la misión Pro liberación
    .target Jellix Fuselighter
step
    .goto 76,66.540,19.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Feno Morrobomba|r
    .accept 14261 >>Acepta la misión Frío polar
    .target Feno Blastnoggin
step
    #completewith FadeToBlack
    >>Mata a los |cRXP_ENEMY_Twilight Dragón Hunters|r, a los |cRXP_ENEMY_Twilight Desecrators|r y a los |cRXP_ENEMY_Sable Drakonids|r. Despójalos para obtener |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Usa la |T134245:0|t[Ironwrought Keys] para abrir la |cRXP_PICK_Jaulas Crepúsculo|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #completewith LaborerRescue
    .use 49596 >>Usa tu |T133146:0|t[Cryomatic 16] en los |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Esto los matará casi instantáneamente|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,71.627,16.433
    >>Mata a |cRXP_ENEMY_Señor Crepuscular Katrana|r
    >>|cRXP_WARN_Ignora|r a |cRXP_ENEMY_Malicion|r |cRXP_WARN_. Será asesinado por|r |cRXP_FRIENDLY_Kalecgos|r |cRXP_WARN_después|r
    .complete 24467,1 --|1/1 Twilight Lord Katrana slain
    .complete 24467,2 --|1/1 Malicion slain
    .mob Twilight Lord Katrana
step
    #label FadeToBlack
    .goto 76,71.81,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kalecgos|r
    .turnin 24467 >>Gira en Fundido a negro
    .target Kalecgos
step
    #label LaborerRescue
    #loop
    .goto 76,66.305,13.159,0
    .waypoint 76,69.095,16.926,40,0
    .waypoint 76,67.738,15.850,40,0
    .waypoint 76,66.305,13.159,40,0
    .waypoint 76,64.272,14.953,40,0
    .waypoint 76,64.953,16.437,40,0
    .waypoint 76,65.883,17.840,40,0
    >>Mata a los |cRXP_ENEMY_Twilight Dragón Hunters|r, a los |cRXP_ENEMY_Twilight Desecrators|r y a los |cRXP_ENEMY_Sable Drakonids|r. Despójalos para obtener |T134245:0|t[|cRXP_LOOT_Ironwrought Keys|r]
    >>Usa la |T134245:0|t[Ironwrought Keys] para abrir la |cRXP_PICK_Jaulas Crepúsculo|r
    .complete 14297,1 --Bilgewater Laborer rescued (4)
    .mob Twilight Dragon Hunter
    .mob Twilight Desecrator
    .mob Sable Drakonid
step
    #loop
    .goto 76,69.901,16.655,0
    .waypoint 76,69.901,16.655,40,0
    .waypoint 76,67.157,14.734,40,0
    .waypoint 76,65.900,16.034,40,0
    .waypoint 76,69.595,19.144,40,0
    .use 49596 >>Usa tu |T133146:0|t[Cryomatic 16] en los |cRXP_ENEMY_Sable Dragons|r
    >>|cRXP_WARN_Esto los matará casi instantáneamente|r
    .complete 14261,1 --Sable Drake (8)
    .mob Sable Drake
step
    .goto 76,66.541,19.604
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Feno Morrobomba|r
    .turnin 14261 >>Gira en Frío polar
    .target Feno Blastnoggin
step
    .goto 76,66.338,20.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jellix Prendemechas|r
    .turnin 14297 >>Gira en Pro liberación
    .target Jellix Fuselighter
step
    .goto 76,67.042,20.595
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azuregos|r
    .accept 14392 >>Acepta la misión Adiós, pezqueñín
    .target Azuregos
step << Druid Cata
    #completewith DruidTraining1
    .cast 18960 >>Lanza |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid Cata
    #label DruidTraining1
    .goto 1450/1,-2593.69995,7867.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
    #completewith next
    .hs >>Usa tu Piedra de Hogar para ir a Bilgewater Harbor
    .use 6948
    .subzoneskip 4821
step << Shaman Cata
    .goto 76,56.671,49.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Max Avalancha|r
    .trainer >> Aprende tus hechizos de clase
    .target Max Avalanche
step << Mage Cata
    .goto 76,56.919,49.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fizz Mechero|r
    .trainer >> Aprende tus hechizos de clase
    .target Fizz Lighter
step << Warlock Cata
    .goto 76,56.708,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Evol Dedos|r
    .trainer >> Aprende tus hechizos de clase
    .target Evol Fingers
step << Priest Cata
    .goto 76,56.852,50.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Sacacuartos|r
    .trainer >> Aprende tus hechizos de clase
    .target Sister Goldskimmer
step << Rogue Cata
    .goto 76,56.884,50.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Peste Shapshiv|r
    .trainer >> Aprende tus hechizos de clase
    .target Stinky Shapshiv
step << Hunter Cata
    .goto 76,56.914,50.709
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bamm Megabomba|r
    .trainer >> Aprende tus hechizos de clase
    .target Bamm Megabomb
step << Warrior Cata
    .goto 76,57.167,50.105
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Guerreromática NX-01|r arriba
    .trainer >> Aprende tus hechizos de clase
    .target Warrior-Matic NX-01
step
    .goto 76,53.264,49.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sorata Hilafuego|r
    .turnin 14392 >>Gira en Adiós, pezqueñín
    .target Sorata Firespinner
step
    .goto 76,52.977,49.761
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gurlorn|r
    .accept 24497 >>Acepta la misión Otra vez por el aire
    .target Gurlorn
step
    .goto 76,60.479,52.205
    .vehicle >>Monta a |cRXP_FRIENDLY_Alas de acero|r
    .timer 130,Otra vez por el aire RP
    .target Wings of Steel
    .isOnQuest 24497
    --VV No need for this if flight path is available automatically
step
    #completewith next
    +|cRXP_WARN_Eliminar el|r |T135992:0|t[Paracaídas] |cRXP_WARN_cuando llegues para evitar caer en el río|r
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chawg|r
    .turnin 24497 >>Entrega la misión Otra vez por el aire
    .accept 14462 >>Acepta la misión ¿Dónde tengo la cabeza?
    .accept 24433 >>Acepta la misión Dales un festín de terror
    .target Chawg
    .isOnQuest 24497
step
    #optional
    #label NorthAzsharaSkip
step
    #completewith next
    .goto Azshara,52.92,49.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kroum|r
    .fly Southern Rocketway >>Vuela a Southern Rocketway Terminus
    .target Kroum
    .subzoneskip 1237
step
    #completewith next
    .goto Azshara,50.78,74.52,5,0
    .goto Azshara,50.70,74.22,3 >>Toma el ascensor hacia la plataforma
step
    .goto Azshara,50.70,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Jinete de cohete Pantoque|r
    .gossipoption 112434 >>Toma el viaje en cohete hacia Southern Rocketway Terminus
    .timer 35,Southern Rocketway Terminus
    .target Bilgewater Rocket-jockey
    .subzoneskip 1237
    .isQuestAvailable 14392
step
    #completewith next
    .subzone 1237 >>Viaja a Valormok
    .isQuestAvailable 14392
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chawg|r
    .accept 14462 >>Acepta la misión ¿Dónde tengo la cabeza?
    .accept 24433 >>Acepta la misión Dales un festín de terror
    .target Chawg
step
    .goto 76,13.854,64.479
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andorel Jurasol|r
    .accept 24434 >>Acepta la misión Teletransporte de comando
    .target Andorel Sunsworn
step
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kroum|r
    .accept 14475 >>Acepta la misión ¡En tierra!
    .target Kroum
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r y |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,14.453,75.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán bombardero Smooks|r
    .target Bombardier Captain Smooks
    .turnin 14475 >>Entrega la misión Por tierra
    .accept 14476 >>Acepta la misión Preparado para la explosión
step
    .goto 76,15.02,74.28
    >>Haz clic en |cRXP_PICK_Detonator Carga 1|r en el suelo
    .complete 14476,1 --Detonator Charge 1 Armed (1)
step
    .goto 76,15.47,73.72
    >>Haz clic en |cRXP_PICK_Detonator Carga 2|r en el suelo
    .complete 14476,2 --Detonator Charge 2 Armed (1)
step
    .goto 76,15.57,74.47
    >>Haz clic en |cRXP_PICK_Detonator Carga 3|r en el suelo
    .complete 14476,3 --Detonator Charge 3 Armed (1)
step
    .goto 76,14.459,75.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán bombardero Smooks|r
    .turnin 14476 >>Entrega la misión Preparado para la explosión
    .accept 14477 >>Acepta la misión ¡Pulsar el botón!
    .target Bombardier Captain Smooks
step
    .goto 76,14.408,75.734
    >>Haz clic en el |cRXP_PICK_Goblin Detonador|r
    .complete 14477,1 --Detonate the Explosives
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r y |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,12.517,67.451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Slinky|r
    .turnin 14462 >>Entrega la misión ¿Dónde tengo la cabeza?
    .accept 14464 >>Acepta la misión Asesinato a golpe de relámpago
    .target Slinky Sharpshiv
step
    #completewith next
    .goto 76,12.517,67.451
    +|cRXP_WARN_Subir a la torre con Slinky|r
    .target Slinky Sharpshiv
step
    .goto 76,12.01,68.06
    >>Mata a |cRXP_ENEMY_Capitán Grunwald|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 14464,1 --Grunwald's Head (1)
    .mob Captain Grunwald
step
    #loop
    .goto 76,10.899,70.438,0
    .goto 76,11.481,71.991,0
    .waypoint 76,10.899,70.438,50,0
    .waypoint 76,11.481,71.991,50,0
    .waypoint 76,10.320,73.798,50,0
    .waypoint 76,9.448,71.859,50,0
    >>Mata a los |cRXP_ENEMY_Talrendis Sentinels|r, |cRXP_ENEMY_Talrendis Defenders|r y |cRXP_ENEMY_Talrendis Lorekeepers|r
    .complete 24433,2 --Talrendis Sentinel (6)
    .mob +Talrendis Sentinel
    .complete 24433,1 --Talrendis Defender (12)
    .mob +Talrendis Defender
    .complete 24434,1 --Talrendis Lorekeeper (5)
    .mob +Talrendis Lorekeeper
step
    .goto 76,10.56,69.85
    >>Haz clic en la |cRXP_PICK_Lorekeeper's Invocando Piedra|r
    .turnin 24434 >>Entrega la misión Teletransporte de comando
    .target Lorekeeper's Summoning Stone
step
    #completewith next
    .goto 76,10.56,69.85
    >>Haz clic en la |cRXP_PICK_Lorekeeper's Invocando Piedra|r
    .gossipoption 111875 >>Teletranspórtate de vuelta a Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,14.350,65.023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kroum|r
    .turnin 14477 >>Entrega la misión ¡Pulsar el botón!
    .target Kroum
step
    .goto 76,14.471,65.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jr. Bombardero Hackel|r
    .accept 24430 >>Acepta la misión Oscurecer el cielo
    .target Jr. Bombardier Hackel
step
    .goto 76,14.455,65.770
    .vehicle >>Monta al |cRXP_FRIENDLY_Jinete del viento en tierra|r
    .target Grounded Wind Rider
    .isOnQuest 24430
step
    #completewith next
    >>|cRXP_WARN_Usa|r |T133709:0|t[Lanzar bomba] |cRXP_WARN_para destruir|r |cRXP_ENEMY_Talrendis Guja Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    .goto 76,9.239,72.539
    >>|cRXP_WARN_Usa|r |T133709:0|t[Lanzar bomba] |cRXP_WARN_para destruir el|r |cRXP_ENEMY_Centro de mando|r
    .complete 24430,2 --Command Center Bombed (1)
step
    #loop
    .goto 76,12.374,72.832,0
    .goto 76,12.825,70.135,0
    .goto 76,11.672,67.149,0
    .goto 76,9.737,69.693,0
    .waypoint 76,12.374,72.832,40,0
    .waypoint 76,12.825,70.135,40,0
    .waypoint 76,11.672,67.149,40,0
    .waypoint 76,9.737,69.693,40,0
    >>|cRXP_WARN_Usa|r |T133709:0|t[Lanzar bomba] |cRXP_WARN_para destruir|r |cRXP_ENEMY_Talrendis Guja Throwers|r
    .complete 24430,1 --Talrendis Glaive Thrower (6)
    .mob Talrendis Glaive Thrower
step
    #completewith next
    .goto 76,14.471,65.721,50 >>Vuela hacia |cRXP_FRIENDLY_Jr. Bombardero Hackel|r
step
    .goto 76,14.471,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jr. Bombardero Hackel|r
    .turnin 24430 >>Entrega la misión Oscurecer el cielo
    .target Jr. Bombardier Hackel
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chawg|r
    .turnin 24433 >>Entrega la misión Dales un festín de terror
    .turnin 14464 >>Entrega la misión Asesinato a golpe de relámpago
    .accept 24439 >>Acepta la misión La conquista de Azshara
    .target Chawg
step
    .goto 76,9.15,72.82
    >>Mata al |cRXP_ENEMY_Comandante Jarrodenus|r en el segundo piso del edificio
    .complete 24439,1 --The Head of Jarrodenus (1)
    .mob Commander Jarrodenus
step
    #completewith next
    .goto 76,10.56,69.85
    >>Haz clic en la |cRXP_PICK_Lorekeeper's Invocando Piedra|r
    .gossipoption 111875 >>Teletranspórtate a Valormok
    .target Lorekeeper's Summoning Stone
step
    .goto 76,13.999,64.836
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chawg|r
    .turnin 24439 >>Entrega la misión La conquista de Azshara
    .target Chawg
step
    .goto 76,14.345,65.025
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kroum|r
    .accept 24463 >>Acepta la misión Investigaciones en Vallefresno
    .target Kroum
step
    #completewith next << !Warlock !Paladin
    #completewith FelsteedTraining << Warlock
    #completewith WarhorseTraining << Paladin
    .goto 76,14.346,65.018
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kroum|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Kroum
    .zoneskip Orgrimmar
step
    .goto 1454/1,-4356.80029,1799.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maztha|r
    .train 33388 >>Aprende Equitadura de aprendiz
    .target Maztha
    .xp <20,1
    .train 33391,1 --Journeyman Riding
    .train 34090,1 --Expert Riding
    .train 34091,1 --Artisan Riding
    .train 90265,1 --Master Riding
step << Orc !Warlock
    .goto 1454/1,-4569.50000,2095.10010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ogunaro Correlobo|r
	.vendor >>|cRXP_BUY_Compra un|r |T132224:0|t[Lobo] |cRXP_BUY_de él si todavía no tienes una montura en tu colección|r
	.target Ogunaro Wolfrunner
	.mountcount 75-150,<1
    .xp <20,1
step << Goblin !Warlock
    .goto 1454/1,-4132.89990,1483.09998
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kall Valemil|r
	.vendor >>|cRXP_BUY_Compra un|r |T134237:0|t[Trike] |cRXP_BUY_de él si todavía no tienes una montura en tu colección|r
	.target Kall Worthaton
	.mountcount 75-150,<1
    .xp <20,1
step << !Orc !Goblin !Warlock !Paladin
    .goto 1454/1,-4439.39990,1573.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryshka|r
    .home >>Establece tu hogar en Orgrimmar
    .target Gryshka
	.mountcount 75-150,<1
step << Troll !Warlock
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Sen'Jin Village >>Vuela a Sen'Jin Village
    .target Doras
    .subzoneskip 367
step << Troll !Warlock
    .goto 1411/1,-4882.50000,-857.90002
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zjolnir|r
	.vendor >>|cRXP_BUY_Compra un|r |T132253:0|t[Raptor] |cRXP_BUY_de él si todavía no tienes una montura en tu colección|r
	.target Zjolnir
	.mountcount 75-150,<1
    .xp <20,1
step << Undead/BloodElf !Warlock
    .goto 1454/1,-4390.80029,1840.09998
    #completewith next << Undead
    #completewith SilvermoonPort << BloodElf
    .zone Tirisfal Glades >>Toma el zepelín hacia Tirisfal Glades
    .zoneskip Undercity
step << Undead !Warlock
    .goto 1420/0,235.70000,2277.60010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zachariah Post|r
	.vendor >>|cRXP_BUY_Compra un|r |T132264:0|t[Caballo esquelético] |cRXP_BUY_de él si todavía no tienes una montura en tu colección|r
	.target Zachariah Post
	.mountcount 75-150,<1
    .xp <20,1
step << BloodElf !Warlock
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Viaja a Entrañas
step << BloodElf !Warlock
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Haz clic en el |cRXP_PICK_Orb of Traslado|r a Ciudad de Lunargenta
    .mountcount 75,<1
step << BloodElf !Warlock
    #completewith next
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059,15,0
    .zone Eversong Woods >>Sale de Ciudad de Lunargenta
step << BloodElf !Warlock
    .goto 1941/0,-5096.30029,6844.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Winaestra|r
	.vendor >>|cRXP_BUY_Compra un|r |T132227:0|t[Halcón zancudo] |cRXP_BUY_de ella si todavía no tienes una montura en tu colección|r
	.target Winaestra
	.mountcount 75-150,<1
    .xp <20,1
step << Tauren !Paladin
    #completewith next
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Doras
    .zoneskip Thunder Bluff
    .zoneskip Mulgore
step << Tauren !Paladin
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Toma el ascensor para salir de Cima del Trueno
    .zoneskip Mulgore
step << Tauren !Paladin
    .goto 1412/1,-392.20001,-2280.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harb Garrapezuña|r
	.vendor >>|cRXP_BUY_Compra un|r |T132243:0|t[Kodo] |cRXP_BUY_de ella si todavía no tienes una montura en tu colección|r
	.target Harb Clawhoof
	.mountcount 75-150,<1
    .xp <20,1
step << Warlock Cata
    #label FelsteedTraining
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 5784 >>Aprende |T136103:0|t[Corcel vil]
    .target Mirket
    .mountcount 75-150,<1
step << Paladin Cata
    #label WarhorseTraining
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Atohmo|r
    .train 34769 >>Aprende |T136103:0|t[Invocar caballo de guerra] << BloodElf
    .train 69820 >>Aprende |T132245:0|t[Invocar kodo Caminasol] << Tauren
    .target Sunwalker Atohmo
    .mountcount 75-150,<1
step << !Orc !Goblin !Warlock !Paladin
    #optional
    #completewith FlyValormok
    .hs >>Usa tu Piedra de hogar para ir a Orgrimmar
    .use 6948
    .zoneskip Azshara
    .zoneskip Orgrimmar
    .zoneskip Ashenvale
step << Warrior/Paladin
    .goto 1454,75.08,36.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zendo'jian|r
    >>|cRXP_BUY_Compra una|r |T135423:0|t[Hacha de batalla] |cRXP_BUY_de él|r
    .collect 926,1,24463,1 --Battle Axe (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .zoneskip Orgrimmar,1
step << Shaman
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compra|r |T132941:0|t[Derecha-Handed Zarpa] |cRXP_BUY_y|r |T132941:0|t[Garra para la mano izquierda] |cRXP_BUY_de él|r
    >>|cRXP_WARN_Omite este paso si no elegiste la especialización Mejora!|r
    .collect 15903,1,24463,1 --Collect Right-Handed Claw (1)
    .collect 15907,1,24463,1 --Collect Left-Handed Claw (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
    .target Shoma
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compra una|r |T135419:0|t[Tizona] |cRXP_BUY_de él. Equípalo una vez que alcances el nivel 21|r
    >>|cRXP_WARN_Compra una|r |T135342:0|t[Kris] |cRXP_WARN_en su lugar si tienes especialización Assasination o Sutileza|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >21,1
    .zoneskip Orgrimmar,1
step << Rogue
    .goto 1454,76.12,37.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoma|r
    >>|cRXP_BUY_Compra una|r |T135419:0|t[Tizona] |cRXP_BUY_de él|r
    >>|cRXP_WARN_Compra una|r |T135342:0|t[Kris] |cRXP_WARN_en su lugar si tienes especialización Assasination o Sutileza|r
    .collect 923,1,24463,1 --Longsword (1)
    .target Shoma
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
    .zoneskip Orgrimmar,1
step << Warrior/Paladin
    #optional
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Equipa la |T132941:0|t[Derecha-Handed Zarpa]
    .use 15903
    .itemcount 15903,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Shaman
    #optional
    #completewith AzsharaEnd
    #label Knuckles
    +Equipa la |T132938:0|t[Garra para la mano izquierda]
    .use 15907
    .itemcount 15907,1
    .itemStat 17,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.6
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equipa la|r |T135419:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith AzsharaEnd
    +|cRXP_WARN_Equipa el|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step
    #label FlyValormok
    .goto 1454/1,-4370.00000,1799.90002
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Valormok >>Vuela a Valormok
    .target Doras
    .zoneskip Azshara
    .zoneskip Ashenvale
step
    #completewith next
    .zone Ashenvale >>Cruza el puente a Vallefresno
step
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kulg Salpicasangre|r
    .turnin 24463 >>Gira en Investigaciones en Vallefresno
    .accept 13866 >>Acepta la misión ¡A la empalizada!
    .target Kulg Gorespatter
step
    #label AzsharaEnd
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kulg Salpicasangre|r
    .gossipoption 111683 >>Vuela a The Mor'Shan Ramparts
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .isOnQuest 13866
step
    #optional
    .abandon 14407 >>Abandona la misión El blues de Azshara
    ]])
