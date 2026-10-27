if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Guía del conjunto Cuoroferal << Druid
#subgroup Guía del conjunto Maestro de bestias << Hunter
#subgroup Guía del conjunto Atavío de hechicero << Mage
#subgroup Guía del conjunto Forjaalma << Paladin
#subgroup Guía del conjunto Mantoscuro << Rogue
#subgroup Guía del conjunto Los Cinco Truenos << Shaman
#subgroup Guía del conjunto Brumamorta << Warlock
#subgroup Guía del conjunto Heroísmo << Warrior
#subgroup Guía del conjunto Virtuoso << Priest
#name Parte 1: Brazales
#next Parte 2: Cinturón y Guantes


step
    >>Obtén los |T132608:0|t[|cRXP_LOOT_Brazales Corazón Salvaje|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Druid
    >>Obtén las |T132616:0|t[|cRXP_LOOT_Ataduras de acechabestias|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r y |cFFfa9602Cumbre de Roca Negra|r << Hunter
    >>Obtén las |T133365:0|t[|cRXP_LOOT_Ataduras de magister|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Mage
    >>Obtén los |T132613:0|t[|cRXP_LOOT_Brazales Forjaluz|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Paladin
    >>Obtén los |T132520:0|t[|cRXP_LOOT_Brazales de devoto|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Priest
    >>Obtén los |T132606:0|t[|cRXP_LOOT_Brazales arte sombrío|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Scholomance|r << Rogue
    >>Obtén las |T132601:0|t[|cRXP_LOOT_Ataduras de elementos|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Shaman
    >>Obtén los |T132612:0|t[|cRXP_LOOT_Brazales calígine|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Warlock
    >>Obtén los |T132617:0|t[|cRXP_LOOT_Brazales de valor|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Warrior
    >>Como alternativa, cómpralos en la Casa de Subastas|cRXP_WARN_ << !sod
    >>|cRXP_WARN_Como alternativa, cómpralos en la Casa de Subastas o a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16714,1,8905,1 << Alliance Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Alliance Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Alliance Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Alliance Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Alliance Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Alliance Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Alliance Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Alliance Warrior --Bracers of Valor (x1)
    .collect 16714,1,8913,1 << Horde Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Horde Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Horde Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Horde Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Horde Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Horde Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Horde Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Horde Warrior --Bracers of Valor (x1)
    .equip 9,16714 << Druid
    .equip 9,16681 << Hunter
    .equip 9,16683 << Mage
    .equip 9,16722 << Paladin
    .equip 9,16697 << Priest
    .equip 9,16710 << Rogue
    .equip 9,16703 << Warlock
    .equip 9,16735 << Warrior
    .equip 9,16671 << Shaman
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    .accept 8905 >>Acepta la misión Una propuesta seria << Druid
    .accept 8906 >>Acepta la misión Una propuesta seria << Hunter
    .accept 8907 >>Acepta la misión Una propuesta seria << Mage
    .accept 8908 >>Acepta la misión Una propuesta seria << Paladin
    .accept 8909 >>Acepta la misión Una propuesta seria << Priest
    .accept 8910 >>Acepta la misión Una propuesta seria << Rogue
    .accept 8911 >>Acepta la misión Una propuesta seria << Warlock
    .accept 8912 >>Acepta la misión Una propuesta seria << Warrior
    .target Deliana
step << Alliance
    #completewith next
    .zone Winterspring >>Viaja a |cFFfa9602Cuna del Invierno|r
step << Alliance
    #loop
    .goto Winterspring,50.54,14.27,0
    .goto Winterspring,50.54,14.27,50,0
    .goto Winterspring,48.52,12.15,50,0
    .goto Winterspring,49.72,8.84,50,0
    .goto Winterspring,48.54,7.89,50,0
    .goto Winterspring,49.67,7.03,50,0
    .goto Winterspring,51.94,9.31,50,0
    .goto Winterspring,51.64,11.34,50,0
    >>Mata a todos los tipos de |cRXP_ENEMY_Osos Dentoesquirla|r y |cRXP_ENEMY_Sables de hielo|r. Despójalos para obtener sus |cRXP_LOOT_Muestras de sangre de Cuna del Invierno|r
    .complete 8905,1 << Druid --Winterspring Blood Sample (x15)
    .complete 8906,1 << Hunter --Winterspring Blood Sample (x15)
    .complete 8907,1 << Mage --Winterspring Blood Sample (x15)
    .complete 8908,1 << Paladin --Winterspring Blood Sample (x15)
    .complete 8909,1 << Priest --Winterspring Blood Sample (x15)
    .complete 8910,1 << Rogue --Winterspring Blood Sample (x15)
    .complete 8911,1 << Warlock --Winterspring Blood Sample (x15)
    .complete 8912,1 << Warrior --Winterspring Blood Sample (x15)
    .mob Frostsaber Cub
    .mob Frostsaber
    .mob Frostsaber Stalker
    .mob Frostsaber Huntress
    .mob Frostsaber Pride Watcher
    .mob Shardtooth Mauler
    .mob Elder Shardtooth
    .mob Rabid Shardtooth
    .mob Shardtooth Bear
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132608:0|t[|cRXP_LOOT_Brazales Corazón Salvaje|r] |cRXP_WARN_para entregar esta misión|r << Druid
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132616:0|t[|cRXP_LOOT_Ataduras de acechabestias|r] |cRXP_WARN_para entregar esta misión|r << Hunter
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T133365:0|t[|cRXP_LOOT_Ataduras de magister|r] |cRXP_WARN_para entregar esta misión|r << Mage
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132613:0|t[|cRXP_LOOT_Brazales Forjaluz|r] |cRXP_WARN_para entregar esta misión|r << Paladin
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132520:0|t[|cRXP_LOOT_Brazales de devoto|r] |cRXP_WARN_para entregar esta misión|r << Priest
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132606:0|t[|cRXP_LOOT_Brazales arte sombrío|r] |cRXP_WARN_para entregar esta misión|r << Rogue
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132612:0|t[|cRXP_LOOT_Brazales calígine|r] |cRXP_WARN_para entregar esta misión|r << Warlock
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132617:0|t[|cRXP_LOOT_Brazales de valor|r] |cRXP_WARN_para entregar esta misión|r << Warrior
    .collect 16714,1,8905,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8906,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8907,1 << Mage --Magister's Bindings (x1)
    .collect 16722,1,8908,1 << Paladin --Lightforge Bracers (x1)
    .collect 16697,1,8909,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8910,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16703,1,8911,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8912,1 << Warrior --Bracers of Valor (x1)
    .turnin 8905 >>Entrega la misión Una propuesta seria << Druid
    .turnin 8906 >>Entrega la misión Una propuesta seria << Hunter
    .turnin 8907 >>Entrega la misión Una propuesta seria << Mage
    .turnin 8908 >>Entrega la misión Una propuesta seria << Paladin
    .turnin 8909 >>Entrega la misión Una propuesta seria << Priest
    .turnin 8910 >>Entrega la misión Una propuesta seria << Rogue
    .turnin 8911 >>Entrega la misión Una propuesta seria << Warlock
    .turnin 8912 >>Entrega la misión Una propuesta seria << Warrior
    .accept 8922 >>Acepta la misión Un artefacto sobrenatural
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    .accept 8913 >>Acepta la misión Una propuesta seria << Druid
    .accept 8914 >>Acepta la misión Una propuesta seria << Hunter
    .accept 8915 >>Acepta la misión Una propuesta seria << Mage
    .accept 8916 >>Acepta la misión Una propuesta seria << Priest
    .accept 8917 >>Acepta la misión Una propuesta seria << Rogue
    .accept 8918 >>Acepta la misión Una propuesta seria << Shaman
    .accept 8919 >>Acepta la misión Una propuesta seria << Warlock
    .accept 8920 >>Acepta la misión Una propuesta seria << Warrior
    .target Mokvar
step << Horde
    #completewith next
    .zone Silithus >>Viaja a |cFFfa9602Silithus|r
step << Horde
    #loop
    .goto Silithus,64.82,41.47,0
    .goto Silithus,58.38,21.10,0
    .goto Silithus,33.34,35.27,0
    .goto Silithus,36.65,62.73,0
    .goto Silithus,28.52,77.73,0
    .goto Silithus,45.40,80.20,0
    .goto Silithus,58.80,61.99,0
    .goto Silithus,64.82,41.47,90,0
    .goto Silithus,58.38,21.10,90,0
    .goto Silithus,33.34,35.27,90,0
    .goto Silithus,36.65,62.73,90,0
    .goto Silithus,28.52,77.73,90,0
    .goto Silithus,45.40,80.20,90,0
    .goto Silithus,58.80,61.99,90,0
    >>Mata a cualquier tipo de |cRXP_ENEMY_Araña|r y |cRXP_ENEMY_Escórpido|r. Despójalos para obtener sus |cRXP_LOOT_Muestras de veneno de Silithus|r
    .complete 8913,1 << Druid --Silithus Venom Sample (x15)
    .complete 8914,1 << Hunter --Silithus Venom Sample (x15)
    .complete 8915,1 << Mage --Silithus Venom Sample (x15)
    .complete 8916,1 << Priest --Silithus Venom Sample (x15)
    .complete 8917,1 << Rogue --Silithus Venom Sample (x15)
    .complete 8918,1 << Shaman --Silithus Venom Sample (x15)
    .complete 8919,1 << Warlock --Silithus Venom Sample (x15)
    .complete 8920,1 << Warrior --Silithus Venom Sample (x15)
    .mob Sand Skitterer
    .mob Stonelash Pincer
    .mob Stonelash Scorpid
    .mob Stonelash Flayer
    .mob Rock Stalker
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132608:0|t[|cRXP_LOOT_Brazales Corazón Salvaje|r] |cRXP_WARN_para entregar esta misión|r << Druid
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132616:0|t[|cRXP_LOOT_Ataduras de acechabestias|r] |cRXP_WARN_para entregar esta misión|r << Hunter
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T133365:0|t[|cRXP_LOOT_Ataduras de magister|r] |cRXP_WARN_para entregar esta misión|r << Mage
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132520:0|t[|cRXP_LOOT_Brazales de devoto|r] |cRXP_WARN_para entregar esta misión|r << Priest
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132606:0|t[|cRXP_LOOT_Brazales arte sombrío|r] |cRXP_WARN_para entregar esta misión|r << Rogue
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132601:0|t[|cRXP_LOOT_Ataduras de elementos|r] |cRXP_WARN_para entregar esta misión|r << Shaman
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132612:0|t[|cRXP_LOOT_Brazales calígine|r] |cRXP_WARN_para entregar esta misión|r << Warlock
    >>|cRXP_WARN_Necesitarás 20 de oro y|r |T132617:0|t[|cRXP_LOOT_Brazales de valor|r] |cRXP_WARN_para entregar esta misión|r << Warrior
    .collect 16714,1,8913,1 << Druid --Wildheart Bracers (x1)
    .collect 16681,1,8914,1 << Hunter --Beaststalker's Bindings (x1)
    .collect 16683,1,8915,1 << Mage --Magister's Bindings (x1)
    .collect 16697,1,8916,1 << Priest --Devout Bracers (x1)
    .collect 16710,1,8917,1 << Rogue --Shadowcraft Bracers (x1)
    .collect 16671,1,8918,1 << Shaman --Bindings of Elements (x1)
    .collect 16703,1,8919,1 << Warlock --Dreadmist Bracers (x1)
    .collect 16735,1,8920,1 << Warrior --Bracers of Valor (x1)
    .turnin 8913 >>Entrega la misión Una propuesta seria << Druid
    .turnin 8914 >>Entrega la misión Una propuesta seria << Hunter
    .turnin 8915 >>Entrega la misión Una propuesta seria << Mage
    .turnin 8916 >>Entrega la misión Una propuesta seria << Priest
    .turnin 8917 >>Entrega la misión Una propuesta seria << Rogue
    .turnin 8918 >>Entrega la misión Una propuesta seria << Shaman
    .turnin 8919 >>Entrega la misión Una propuesta seria << Warlock
    .turnin 8920 >>Entrega la misión Una propuesta seria << Warrior
    .accept 8923 >>Acepta la misión Un artefacto sobrenatural
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Guía del conjunto Cuoroferal << Druid
#subgroup Guía del conjunto Maestro de bestias << Hunter
#subgroup Guía del conjunto Atavío de hechicero << Mage
#subgroup Guía del conjunto Forjaalma << Paladin
#subgroup Guía del conjunto Mantoscuro << Rogue
#subgroup Guía del conjunto Los Cinco Truenos << Shaman
#subgroup Guía del conjunto Brumamorta << Warlock
#subgroup Guía del conjunto Heroísmo << Warrior
#subgroup Guía del conjunto Virtuoso << Priest
#name Parte 2: Cinturón y Guantes
#next Parte 3: Pantalones, Hombreras y Botas


step
    #optional
    +|cRXP_WARN_Debes completar la Parte 1: Brazales antes de empezar esta parte de la guía|r
    .isQuestAvailable 8905 << Alliance Druid
    .isQuestAvailable 8906 << Alliance Hunter
    .isQuestAvailable 8907 << Alliance Mage
    .isQuestAvailable 8908 << Alliance Paladin
    .isQuestAvailable 8909 << Alliance Priest
    .isQuestAvailable 8910 << Alliance Rogue
    .isQuestAvailable 8911 << Alliance Warlock
    .isQuestAvailable 8912 << Alliance Warrior
    .isQuestAvailable 8913 << Horde Druid
    .isQuestAvailable 8914 << Horde Hunter
    .isQuestAvailable 8915 << Horde Mage
    .isQuestAvailable 8916 << Horde Priest
    .isQuestAvailable 8917 << Horde Rogue
    .isQuestAvailable 8918 << Horde Shaman
    .isQuestAvailable 8919 << Horde Warlock
    .isQuestAvailable 8920 << Horde Warrior
step
    >>Obtén el |T132504:0|t[|cRXP_LOOT_Cinturón Corazón Salvaje|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Scholomance|r y |cFFfa9602Cumbre de Roca Negra|r << Druid
    >>Obtén el |T132517:0|t[|cRXP_LOOT_Cinturón de acechabestias|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Hunter
    >>Obtén el |T132497:0|t[|cRXP_LOOT_Cinturón de magister|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r y |cFFfa9602Cumbre de Roca Negra|r << Mage
    >>Obtén el |T132500:0|t[|cRXP_LOOT_Cinturón Forjaluz|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Paladin
    >>Obtén el |T132499:0|t[|cRXP_LOOT_Cinturón de devoto|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Priest
    >>Obtén el |T132492:0|t[|cRXP_LOOT_Cinturón arte sombrío|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Rogue
    >>Obtén el |T132505:0|t[|cRXP_LOOT_Cordón de elementos|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Shaman
    >>Obtén el |T132501:0|t[|cRXP_LOOT_Cinturón calígine|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Warlock
    >>Obtén el |T132523:0|t[|cRXP_LOOT_Cinturón de valor|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r y |cFFfa9602Stratholme|r << Warrior
    >>Como alternativa, cómpralos en la Casa de Subastas|cRXP_WARN_ << !sod
    >>|cRXP_WARN_Como alternativa, cómpralos en la Casa de Subastas o a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16716,1,8926,1 << Alliance Druid --Wildheart Belt (x1)
    .collect 16680,1,8931,1 << Alliance Hunter --Beaststalker's Belt (x1)
    .collect 16685,1,8932,1 << Alliance Mage --Magister's Belt (x1)
    .collect 16723,1,8933,1 << Alliance Paladin --Lightforge Belt (x1)
    .collect 16696,1,8934,1 << Alliance Priest --Devout Belt (x1)
    .collect 16713,1,8935,1 << Alliance Rogue --Shadowcraft Belt (x1)
    .collect 16702,1,8936,1 << Alliance Warlock --Dreadmist Belt (x1)
    .collect 16736,1,8937,1 << Alliance Warrior --Belt of Valor (x1)
    .collect 16716,1,8927,1 << Horde Druid --Wildheart Belt (x1)
    .collect 16680,1,8938,1 << Horde Hunter --Beaststalker's Belt (x1)
    .collect 16685,1,8939,1 << Horde Mage --Magister's Belt (x1)
    .collect 16696,1,8940,1 << Horde Priest --Devout Belt (x1)
    .collect 16713,1,8941,1 << Horde Rogue --Shadowcraft Belt (x1)
    .collect 16673,1,8942,1 << Horde Shaman --Cord of Elements (x1)
    .collect 16702,1,8943,1 << Horde Warlock --Dreadmist Belt (x1)
    .collect 16736,1,8944,1 << Horde Warrior --Belt of Valor (x1)
    .equip 6,16716 << Druid
    .equip 6,16680 << Hunter
    .equip 6,16685 << Mage
    .equip 6,16723 << Paladin
    .equip 6,16696 << Priest
    .equip 6,16713 << Rogue
    .equip 6,16702 << Warlock
    .equip 6,16736 << Warrior
    .equip 6,16673 << Shaman
step
    >>Obtén los |T132951:0|t[|cRXP_LOOT_Guantes Corazón Salvaje|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Druid
    >>Obtén los |T132944:0|t[|cRXP_LOOT_Guantes de acechabestias|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Hunter
    >>Obtén los |T132951:0|t[|cRXP_LOOT_Guantes de magister|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Scholomance|r << Mage
    >>Obtén los |T132953:0|t[|cRXP_LOOT_Guanteletes Forjaluz|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Paladin
    >>Obtén los |T132948:0|t[|cRXP_LOOT_Guantes de devoto|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Priest
    >>Obtén los |T132958:0|t[|cRXP_LOOT_Guantes arte sombrío|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra|r << Rogue
    >>Obtén los |T132945:0|t[|cRXP_LOOT_Guanteletes de elementos|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Cumbre de Roca Negra Superior|r << Shaman
    >>Obtén los |T132966:0|t[|cRXP_LOOT_Brazaletes calígine|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Scholomance|r << Warlock
    >>Obtén los |T132960:0|t[|cRXP_LOOT_Guanteletes de valor|r]. Este objeto se liga al equipar y cae como botín en |cFFfa9602Stratholme|r << Warrior
    >>Como alternativa, cómpralos en la Casa de Subastas|cRXP_WARN_ << !sod
    >>|cRXP_WARN_Como alternativa, cómpralos en la Casa de Subastas o a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16717,1,8926,1 << Alliance Druid --Wildheart Gloves (x1)
    .collect 16676,1,8931,1 << Alliance Hunter --Beaststalker's Gloves (x1)
    .collect 16684,1,8932,1 << Alliance Mage --Magister's Gloves (x1)
    .collect 16724,1,8933,1 << Alliance Paladin --Lightforge Gauntlets (x1)
    .collect 16692,1,8934,1 << Alliance Priest --Devout Gloves (x1)
    .collect 16712,1,8935,1 << Alliance Rogue --Shadowcraft Gloves (x1)
    .collect 16705,1,8936,1 << Alliance Warlock --Dreadmist Wraps (x1)
    .collect 16737,1,8937,1 << Alliance Warrior --Gauntlets of Valor (x1)
    .collect 16717,1,8927,1 << Horde Druid --Wildheart Gloves (x1)
    .collect 16676,1,8938,1 << Horde Hunter --Beaststalker's Gloves (x1)
    .collect 16684,1,8939,1 << Horde Mage --Magister's Gloves (x1)
    .collect 16692,1,8940,1 << Horde Priest --Devout Gloves (x1)
    .collect 16712,1,8941,1 << Horde Rogue --Shadowcraft Gloves (x1)
    .collect 16672,1,8942,1 << Horde Shaman --Gauntlets of Elements (x1)
    .collect 16705,1,8943,1 << Horde Warlock --Dreadmist Wraps (x1)
    .collect 16737,1,8944,1 << Horde Warrior --Gauntlets of Valor (x1)
    .equip 10,16717 << Druid
    .equip 10,16676 << Hunter
    .equip 10,16684 << Mage
    .equip 10,16724 << Paladin
    .equip 10,16692 << Priest
    .equip 10,16712 << Rogue
    .equip 10,16705 << Warlock
    .equip 10,16737 << Warrior
    .equip 10,16672 << Shaman
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>|T133001:0|t[Conversores de arcanita delicados] |cRXP_WARN_los fabrican los ingenieros|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Esencias eternas superiores|r] |cRXP_WARN_las obtienen los encantadores|r
    >>|T134848:0|t[Aceite de escama pétrea] |cRXP_WARN_lo fabrican los alquimistas|r
    >>|T132621:0|t[Combustible de cohete goblin] |cRXP_WARN_lo fabrican los ingenieros|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    .accept 8922 >>Acepta la misión Un artefacto sobrenatural
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    .accept 8923 >>Acepta la misión Un artefacto sobrenatural
    .target Mokvar
step
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mux Cazamaná|r
    .turnin 8922 >>Entrega la misión Un artefacto sobrenatural << Alliance
    .turnin 8923 >>Entrega la misión Un artefacto sobrenatural << Horde
    .accept 8921 >>Acepta la misión El destilador ectoplásmico
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Viaja a |cFFfa9602Las Estepas Ardientes|r
step
    #loop
    .goto Burning Steppes,71.87,29.57,0
    .goto Burning Steppes,64.74,33.56,0
    .goto Burning Steppes,50.35,35.24,0
    .goto Burning Steppes,52.08,42.58,0
    .goto Burning Steppes,40.66,43.78,0
    .goto Burning Steppes,34.95,47.61,0
    .goto Burning Steppes,23.40,46.28,0
    .goto Burning Steppes,34.32,58.78,0
    .goto Burning Steppes,55.26,47.90,0
    .goto Burning Steppes,71.87,29.57,60,0
    .goto Burning Steppes,64.74,33.56,60,0
    .goto Burning Steppes,50.35,35.24,60,0
    .goto Burning Steppes,52.08,42.58,60,0
    .goto Burning Steppes,40.66,43.78,60,0
    .goto Burning Steppes,34.95,47.61,60,0
    .goto Burning Steppes,23.40,46.28,60,0
    .goto Burning Steppes,34.32,58.78,60,0
    .goto Burning Steppes,55.26,47.90,60,0
    >>Despoja la |cRXP_LOOT_Ceniza volcánica|r del suelo
    >>|cRXP_WARN_Tienen aspecto de grandes montones de tierra gris y se pueden encontrar principalmente en el norte de las Estepas Ardientes, entre las piscinas y ríos de lava|r
    .collect 22338,25,8921,1 --Volcanic Ash (x25)
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>|T133001:0|t[Conversores de arcanita delicados] |cRXP_WARN_los fabrican los ingenieros|r
    >>|T132864:0|t[|cRXP_FRIENDLY_Esencias eternas superiores|r] |cRXP_WARN_las obtienen los encantadores|r
    >>|T134848:0|t[Aceite de escama pétrea] |cRXP_WARN_lo fabrican los alquimistas|r
    >>|T132621:0|t[Combustible de cohete goblin] |cRXP_WARN_lo fabrican los ingenieros|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 16006,1,8921,1 --Delicate Arcanite Converter (x1)
    .collect 16203,4,8921,1 --Greater Eternal Essence (x4)
    .collect 13423,10,8921,1 --Stonescale Oil (x10)
    .collect 9061,6,8924,1 --Goblin Rocket Fuel (x6)
step
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mux Cazamaná|r
    >>|cRXP_WARN_Necesitarás 40 de oro para entregar esta misión|r
    .turnin 8921 >>Entrega la misión El destilador ectoplásmico
    .accept 8924 >>Acepta la misión Caza de ectoplasmas
    .target Mux Manascrambler
step
    #optional
    >>|cRXP_WARN_Reúne al menos 3|r |T132621:0|t[Combustible de cohete goblin]|cRXP_WARN_. Lo fabrican los ingenieros|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 9061,3,8924,1 --Goblin Rocket Fuel (x3)
step
    #completewith next
    .subzone 2738 >>Viaja a la Aldea del Viento del Sur en |cFFfa9602Silithus|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Coloca el|r |T133882:0|t[Destilador ectoplásmico] |cRXP_WARN_en el suelo. Dura 5 minutos|r
    .use 21946 >>|cRXP_WARN_Se necesita un|r |T132621:0|t[Combustible de cohete goblin] |cRXP_WARN_cada vez que uses el|r |T133882:0|t[Destilador ectoplásmico]
step
    #loop
	.goto Silithus,61.60,48.60,0
	.goto Silithus,61.60,48.60,60,0
	.goto Silithus,63.80,48.60,60,0
	.goto Silithus,63.60,51.60,60,0
	.goto Silithus,62.60,55.60,60,0
	.goto Silithus,62.60,58.60,60,0
	.goto Silithus,60.00,55.80,60,0
	.goto Silithus,60.60,52.80,60,0
    >>Mata |cRXP_ENEMY_Druidas torturados|r y |cRXP_ENEMY_Centinelas torturadas|r. Despójalos para obtener sus |cRXP_LOOT_Ectoplasmas agostados|r
    >>|cRXP_WARN_Atráelos hacia el|r |T133882:0|t[Destilador ectoplásmico] |cRXP_WARN_mientras los matas|r
    .complete 8924,1 --Scorched Ectoplasm (x12)
	.mob Tortured Druid
	.mob Tortured Sentinel
step
    #completewith next
    .zone Winterspring >>Viaja a |cFFfa9602Cuna del Invierno|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Coloca el|r |T133882:0|t[Destilador ectoplásmico] |cRXP_WARN_en el suelo. Dura 5 minutos|r
    .use 21946 >>|cRXP_WARN_Se necesita un|r |T132621:0|t[Combustible de cohete goblin] |cRXP_WARN_cada vez que uses el|r |T133882:0|t[Destilador ectoplásmico]
step
    #loop
    .goto Winterspring,55.42,43.41,0
    .goto Winterspring,53.29,43.82,0
    .goto Winterspring,52.60,40.59,0
    .goto Winterspring,55.42,43.41,50,0
    .goto Winterspring,53.29,43.82,50,0
    .goto Winterspring,52.60,40.59,50,0
    >>Mata a los |cRXP_ENEMY_Altonato sufrido|r y |cRXP_ENEMY_Altonato angustiada|r. Despójalos para obtener sus |cRXP_LOOT_Ectoplasmas congelados|r
    >>|cRXP_WARN_Atráelos hacia el|r |T133882:0|t[Destilador ectoplásmico] |cRXP_WARN_mientras los matas|r
    .complete 8924,2 --Frozen Ectoplasm (x12)
    .mob Suffering Highborne
    .mob Anguished Highborne
step
    #completewith FelElemRod
    .subzone 2256 >>Viaja a Garganta Negro Rumor en |cFFfa9602Cuna del Invierno|r
step
    #hardcore
    #completewith next
    +|cRXP_WARN_¡Ten cuidado! Encontrarás enemigos de nivel 60 de camino a|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Evítalos tanto como puedas|r
step
    #label FelElemRod
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Compra una|r |T135155:0|t[|cRXP_LOOT_Vara elemental vil|r] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto costará 40 de oro|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    >>|cRXP_WARN_Reúne al menos 2|r |T132621:0|t[Combustible de cohete goblin]|cRXP_WARN_. Lo fabrican los ingenieros|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 9061,2,8924,1 --Goblin Rocket Fuel (x2)
step
    #completewith next
    .subzone 2264 >>Viaja al Cruce de Corin en |cFFfa9602Tierras de la Peste del Este|r
step
    #completewith next
    .cast 27433 >>|cRXP_WARN_Coloca el|r |T133882:0|t[Destilador ectoplásmico] |cRXP_WARN_en el suelo. Dura 5 minutos|r
    .use 21946 >>|cRXP_WARN_Se necesita un|r |T132621:0|t[Combustible de cohete goblin] |cRXP_WARN_cada vez que uses el|r |T133882:0|t[Destilador ectoplásmico]
step
    #loop
    .goto Eastern Plaguelands,60.67,67.35,0
    .goto Eastern Plaguelands,60.67,67.35,50,0
    .goto Eastern Plaguelands,58.55,70.50,50,0
    >>Mata |cRXP_ENEMY_Sirvientes Ocultos|r y |cRXP_ENEMY_Chillonas de odio|r. Despójalos para obtener sus |cRXP_LOOT_Ectoplasmas estables|r
    >>|cRXP_WARN_Atráelos hacia el|r |T133882:0|t[Destilador ectoplásmico] |cRXP_WARN_mientras los matas|r
    .complete 8924,3 --Stable Ectoplasm (x12)
    .mob Unseen Servant
    .mob Hate Shrieker
step
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mux Cazamaná|r
    .turnin 8924 >>Entrega la misión Caza de ectoplasmas
    .accept 8925 >>Acepta la misión Fuente de energía portátil
    .target Mux Manascrambler
step
    #completewith next
    .zone Burning Steppes >>Viaja a |cFFfa9602Las Estepas Ardientes|r
step
    .goto Burning Steppes,35.38,57.73
    >>Mata al |cRXP_ENEMY_Señor del Magma Bokk|r. Despójalo para obtener su |cRXP_LOOT_Núcleo de arrabio|r
    .complete 8925,1 --Magma Core (x1)
    .mob Magma Lord Bokk
step
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mux Cazamaná|r
    .turnin 8925 >>Entrega la misión Fuente de energía portátil
    .accept 8928 >>Acepta la misión Un mercader sospechoso
    .target Mux Manascrambler
step
    #optional
    #completewith FelElemRod2
    .subzone 2256 >>Viaja a Garganta Negro Rumor en |cFFfa9602Cuna del Invierno|r
step
    #optional
    #hardcore
    #completewith next
    +|cRXP_WARN_¡Ten cuidado! Encontrarás enemigos de nivel 60 de camino a|r |cRXP_FRIENDLY_Vi'el|r|cRXP_WARN_. Evítalos tanto como puedas|r
step
    #label FelElemRod2
    #optional --user should already have bought this during .complete 8924,2 earlier in Winterspring
    .goto Winterspring,58.87,78.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vi'el|r
    >>|cRXP_BUY_Compra una|r |T135155:0|t[|cRXP_LOOT_Vara elemental vil|r] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto costará 40 de oro|r
    .collect 21939,1,8928,1 --Fel Elemental Rod (x1)
    .target Vi'el
step
    #optional
    #completewith next
    .subzone 976 >>Viaja a Gadgetzan en |cFFfa9602Tanaris|r
    .zoneskip Winterspring,1
step
    .goto Tanaris,52.47,27.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mux Cazamaná|r
    .turnin 8928 >>Entrega la misión Un mercader sospechoso
    .accept 8977 >>Acepta la misión Regresa junto a Deliana << Alliance
    .accept 8978 >>Acepta la misión Regresa junto a Mokvar << Horde
    .target Mux Manascrambler
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    .turnin 8977 >>Entrega la misión Regresa junto a Deliana
    .accept 8926 >>Acepta la misión Una compensación justa << Druid
    .accept 8931 >>Acepta la misión Una compensación justa << Hunter
    .accept 8932 >>Acepta la misión Una compensación justa << Mage
    .accept 8933 >>Acepta la misión Una compensación justa << Paladin
    .accept 8934 >>Acepta la misión Una compensación justa << Priest
    .accept 8935 >>Acepta la misión Una compensación justa << Rogue
    .accept 8936 >>Acepta la misión Una compensación justa << Warlock
    .accept 8937 >>Acepta la misión Una compensación justa << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    >>Necesitarás el |T132504:0|t[|cRXP_LOOT_Cinturón Corazón Salvaje|r] y los |T132951:0|t[|cRXP_LOOT_Guantes Corazón Salvaje|r] para entregar esta misión << Druid
    >>Necesitarás el |T132517:0|t[|cRXP_LOOT_Cinturón de acechabestias|r] y los |T132944:0|t[|cRXP_LOOT_Guantes de acechabestias|r] para entregar esta misión << Hunter
    >>Necesitarás el |T132497:0|t[|cRXP_LOOT_Cinturón de magister|r] y los |T132951:0|t[|cRXP_LOOT_Guantes de magister|r] para entregar esta misión << Mage
    >>Necesitarás el |T132500:0|t[|cRXP_LOOT_Cinturón Forjaluz|r] y los |T132953:0|t[|cRXP_LOOT_Guanteletes Forjaluz|r] para entregar esta misión << Paladin
    >>Necesitarás el |T132499:0|t[|cRXP_LOOT_Cinturón de devoto|r] y los |T132948:0|t[|cRXP_LOOT_Guantes de devoto|r] para entregar esta misión << Priest
    >>Necesitarás el |T132492:0|t[|cRXP_LOOT_Cinturón arte sombrío|r] y los |T132958:0|t[|cRXP_LOOT_Guantes arte sombrío|r] para entregar esta misión << Rogue
    >>Necesitarás el |T132501:0|t[|cRXP_LOOT_Cinturón calígine|r] y los |T132966:0|t[|cRXP_LOOT_Brazaletes calígine|r] para entregar esta misión << Warlock
    >>Necesitarás el |T132523:0|t[|cRXP_LOOT_Cinturón de valor|r] y los |T132960:0|t[|cRXP_LOOT_Guanteletes de valor|r]r para entregar esta misión << Warrior
    .collect 16716,1,8926,1 << Alliance Druid --Wildheart Belt (x1)
    .collect 16717,1,8926,1 << Alliance Druid --Wildheart Gloves (x1)
    .collect 16680,1,8931,1 << Alliance Hunter --Beaststalker's Belt (x1)
    .collect 16676,1,8931,1 << Alliance Hunter --Beaststalker's Gloves (x1)
    .collect 16685,1,8932,1 << Alliance Mage --Magister's Belt (x1)
    .collect 16684,1,8932,1 << Alliance Mage --Magister's Gloves (x1)
    .collect 16723,1,8933,1 << Alliance Paladin --Lightforge Belt (x1)
    .collect 16724,1,8933,1 << Alliance Paladin --Lightforge Gauntlets (x1)
    .collect 16696,1,8934,1 << Alliance Priest --Devout Belt (x1)
    .collect 16692,1,8934,1 << Alliance Priest --Devout Gloves (x1)
    .collect 16713,1,8935,1 << Alliance Rogue --Shadowcraft Belt (x1)
    .collect 16712,1,8935,1 << Alliance Rogue --Shadowcraft Gloves (x1)
    .collect 16702,1,8936,1 << Alliance Warlock --Dreadmist Belt (x1)
    .collect 16705,1,8936,1 << Alliance Warlock --Dreadmist Wraps (x1)
    .collect 16736,1,8937,1 << Alliance Warrior --Belt of Valor (x1)
    .collect 16737,1,8937,1 << Alliance Warrior --Gauntlets of Valor (x1)
    .turnin 8926 >>Entrega la misión Una compensación justa << Druid
    .turnin 8931 >>Entrega la misión Una compensación justa << Hunter
    .turnin 8932 >>Entrega la misión Una compensación justa << Mage
    .turnin 8933 >>Entrega la misión Una compensación justa << Paladin
    .turnin 8934 >>Entrega la misión Una compensación justa << Priest
    .turnin 8935 >>Entrega la misión Una compensación justa << Rogue
    .turnin 8936 >>Entrega la misión Una compensación justa << Warlock
    .turnin 8937 >>Entrega la misión Una compensación justa << Warrior
    .accept 8929 >>Acepta la misión Buscando a Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    .turnin 8978 >>Entrega la misión Regresa junto a Mokvar
    .accept 8927 >>Acepta la misión Una compensación justa << Druid
    .accept 8938 >>Acepta la misión Una compensación justa << Hunter
    .accept 8939 >>Acepta la misión Una compensación justa << Mage
    .accept 8940 >>Acepta la misión Una compensación justa << Priest
    .accept 8941 >>Acepta la misión Una compensación justa << Rogue
    .accept 8942 >>Acepta la misión Una compensación justa << Shaman
    .accept 8943 >>Acepta la misión Una compensación justa << Warlock
    .accept 8944 >>Acepta la misión Una compensación justa << Warrior
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    >>Necesitarás el |T132504:0|t[|cRXP_LOOT_Cinturón Corazón Salvaje|r] y los |T132951:0|t[|cRXP_LOOT_Guantes Corazón Salvaje|r] para entregar esta misión << Druid
    >>Necesitarás el |T132517:0|t[|cRXP_LOOT_Cinturón de acechabestias|r] y los |T132944:0|t[|cRXP_LOOT_Guantes de acechabestias|r] para entregar esta misión << Hunter
    >>Necesitarás el |T132497:0|t[|cRXP_LOOT_Cinturón de magister|r] y los |T132951:0|t[|cRXP_LOOT_Guantes de magister|r] para entregar esta misión << Mage
    >>Necesitarás el |T132499:0|t[|cRXP_LOOT_Cinturón de devoto|r] y los |T132948:0|t[|cRXP_LOOT_Guantes de devoto|r] para entregar esta misión << Priest
    >>Necesitarás el |T132492:0|t[|cRXP_LOOT_Cinturón arte sombrío|r] y los |T132958:0|t[|cRXP_LOOT_Guantes arte sombrío|r] para entregar esta misión << Rogue
    >>Necesitarás el |T132505:0|t[|cRXP_LOOT_Cordón de elementos|r] y los |T132945:0|t[|cRXP_LOOT_Guanteletes de elementos|r] para entregar esta misión << Shaman
    >>Necesitarás el |T132501:0|t[|cRXP_LOOT_Cinturón calígine|r] y los |T132966:0|t[|cRXP_LOOT_Brazaletes calígine|r] para entregar esta misión << Warlock
    >>Necesitarás el |T132523:0|t[|cRXP_LOOT_Cinturón de valor|r] y los |T132960:0|t[|cRXP_LOOT_Guanteletes de valor|r]r para entregar esta misión << Warrior
    .collect 16716,1,8927,1 << Horde Druid --Wildheart Belt (x1)
    .collect 16717,1,8927,1 << Horde Druid --Wildheart Gloves (x1)
    .collect 16680,1,8938,1 << Horde Hunter --Beaststalker's Belt (x1)
    .collect 16676,1,8938,1 << Horde Hunter --Beaststalker's Gloves (x1)
    .collect 16685,1,8939,1 << Horde Mage --Magister's Belt (x1)
    .collect 16684,1,8939,1 << Horde Mage --Magister's Gloves (x1)
    .collect 16696,1,8940,1 << Horde Priest --Devout Belt (x1)
    .collect 16692,1,8940,1 << Horde Priest --Devout Gloves (x1)
    .collect 16713,1,8941,1 << Horde Rogue --Shadowcraft Belt (x1)
    .collect 16712,1,8941,1 << Horde Rogue --Shadowcraft Gloves (x1)
    .collect 16673,1,8942,1 << Horde Shaman --Cord of Elements (x1)
    .collect 16672,1,8942,1 << Horde Shaman --Gauntlets of Elements (x1)
    .collect 16702,1,8943,1 << Horde Warlock --Dreadmist Belt (x1)
    .collect 16705,1,8943,1 << Horde Warlock --Dreadmist Wraps (x1)
    .collect 16736,1,8944,1 << Horde Warrior --Belt of Valor (x1)
    .collect 16737,1,8944,1 << Horde Warrior --Gauntlets of Valor (x1)
    .turnin 8927 >>Entrega la misión Una compensación justa << Druid
    .turnin 8938 >>Entrega la misión Una compensación justa << Hunter
    .turnin 8939 >>Entrega la misión Una compensación justa << Mage
    .turnin 8940 >>Entrega la misión Una compensación justa << Priest
    .turnin 8941 >>Entrega la misión Una compensación justa << Rogue
    .turnin 8942 >>Entrega la misión Una compensación justa << Shaman
    .turnin 8943 >>Entrega la misión Una compensación justa << Warlock
    .turnin 8944 >>Entrega la misión Una compensación justa << Warrior
    .accept 8930 >>Acepta la misión Buscando a Anthion
    .target Mokvar

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Guía del conjunto Cuoroferal << Druid
#subgroup Guía del conjunto Maestro de bestias << Hunter
#subgroup Guía del conjunto Atavío de hechicero << Mage
#subgroup Guía del conjunto Forjaalma << Paladin
#subgroup Guía del conjunto Mantoscuro << Rogue
#subgroup Guía del conjunto Los Cinco Truenos << Shaman
#subgroup Guía del conjunto Brumamorta << Warlock
#subgroup Guía del conjunto Heroísmo << Warrior
#subgroup Guía del conjunto Virtuoso << Priest
#name Parte 3: Pantalones, Hombreras y Botas
#next Parte 4: Casco y Pechera

step
    #optional
    +|cRXP_WARN_Debes completar la Parte 2: Cinturón y Guantes antes de comenzar esta parte de la guía|r
    .isQuestAvailable 8926 << Alliance Druid
    .isQuestAvailable 8931 << Alliance Hunter
    .isQuestAvailable 8932 << Alliance Mage
    .isQuestAvailable 8933 << Alliance Paladin
    .isQuestAvailable 8934 << Alliance Priest
    .isQuestAvailable 8935 << Alliance Rogue
    .isQuestAvailable 8936 << Alliance Warlock
    .isQuestAvailable 8937 << Alliance Warrior
    .isQuestAvailable 8927 << Horde Druid
    .isQuestAvailable 8938 << Horde Hunter
    .isQuestAvailable 8939 << Horde Mage
    .isQuestAvailable 8940 << Horde Priest
    .isQuestAvailable 8941 << Horde Rogue
    .isQuestAvailable 8942 << Horde Shaman
    .isQuestAvailable 8943 << Horde Warlock
    .isQuestAvailable 8944 << Horde Warrior
step
    >>Obtén las |T132542:0|t[|cRXP_LOOT_Botas Corazón Salvaje|r]. Las suelta |cRXP_ENEMY_Madre Telabrasada|r en |cFFfa9602Cumbre de Roca Negra Inferior|r << Druid
    >>Obtén las |T132588:0|t[|cRXP_LOOT_Botas de acechabestias|r]. Las suelta |cRXP_ENEMY_Nerub'enkan|r en |cFFfa9602Stratholme|r << Hunter
    >>Obtén las |T132536:0|t[|cRXP_LOOT_Botas de magister|r]. Las suelta |cRXP_ENEMY_Cantachimeneas Forresten|r (raro) en |cFFfa9602Stratholme|r << Mage
    >>|cRXP_WARN_Ten en cuenta que, antes del parche de Ahn'Qiraj, se supone que este objeto lo suelta el|r |cRXP_ENEMY_Jefe de correos Gassol|r<<Mage
    >>Obtén las |T132584:0|t[|cRXP_LOOT_Botas Forjaluz|r]. Las sueltan el |cRXP_ENEMY_Gran cruzado Dathrohan|r y |cRXP_ENEMY_Balnazzar|r en |cFFfa9602Stratholme|r << Paladin
    >>Obtén las |T132539:0|t[|cRXP_LOOT_Sandalias de devoto|r]. Las suelta |cRXP_ENEMY_Maleki el Pálido|r en |cFFfa9602Stratholme| << Priest
    >>Obtén las |T132542:0|t[|cRXP_LOOT_Botas arte sombrío|r]. Las suelta |cRXP_ENEMY_Traquesangre|r en |cFFfa9602Scholomance|r << Rogue
    >>Obtén las |T132592:0|t[|cRXP_LOOT_Botas de elementos|r]. Las suelta el |cRXP_ENEMY_Alto señor Omokk|r en |cFFfa9602Cumbre de Roca Negra Inferior|r << Shaman
    >>Obtén las |T132539:0|t[|cRXP_LOOT_Sandalias calígine|r]. Las suelta |cRXP_ENEMY_Baronesa Anastari|r en |cFFfa9602Stratholme|r << Warlock
    >>Obtén las |T132584:0|t[|cRXP_LOOT_Botas de valor|r]. Las suelta|cRXP_ENEMY_Kirtonos el Heraldo|r en |cFFfa9602Scholomance|r << Warrior
    >>|cRXP_WARN_Como alternativa, cómpralos a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16715,1,8951,1 << Alliance Druid --Wildheart Boots (x1)
    .collect 16675,1,8952,1 << Alliance Hunter --Beaststalker's Boots (x1)
    .collect 16682,1,8953,1 << Alliance Mage --Magister's Boots (x1)
    .collect 16725,1,8954,1 << Alliance Paladin --Lightforge Boots (x1)
    .collect 16691,1,8955,1 << Alliance Priest --Devout Sandals (x1)
    .collect 16711,1,8956,1 << Alliance Rogue --Shadowcraft Boots (x1)
    .collect 16704,1,8958,1 << Alliance Warlock --Dreadmist Sandals (x1)
    .collect 16734,1,8959,1 << Alliance Warrior --Boots of Valor (x1)
    .collect 16670,1,8957,1 << Horde Shaman --Boots of Elements (x1)
    .collect 16715,1,9016,1 << Horde Druid --Wildheart Boots (x1)
    .collect 16675,1,9017,1 << Horde Hunter --Beaststalker's Boots (x1)
    .collect 16682,1,9018,1 << Horde Mage --Magister's Boots (x1)
    .collect 16691,1,9019,1 << Horde Priest --Devout Sandals (x1)
    .collect 16711,1,9020,1 << Horde Rogue --Shadowcraft Boots (x1)
    .collect 16704,1,9021,1 << Horde Warlock --Dreadmist Sandals (x1)
    .collect 16734,1,9022,1 << Horde Warrior --Boots of Valor (x1)
    .equip 8,16715 << Druid
    .equip 8,16675 << Hunter
    .equip 8,16682 << Mage
    .equip 8,16725 << Paladin
    .equip 8,16691 << Priest
    .equip 8,16711 << Rogue
    .equip 8,16704 << Warlock
    .equip 8,16734 << Warrior
    .equip 8,16670 << Shaman
step
    >>Obtén la |T134588:0|t[|cRXP_LOOT_Falda Corazón Salvaje|r]. La suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Druid
    >>Obtén los |T134583:0|t[|cRXP_LOOT_Pantalones de acechabestias|r]. Los suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Hunter
    >>Obtén los |T134586:0|t[|cRXP_LOOT_Leotardos de magister|r]. Los suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Mage
    >>Obtén los |T134584:0|t[|cRXP_LOOT_Quijotes Forjaluz|r]. Los suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Paladin
    >>Obtén la |T134588:0|t[|cRXP_LOOT_Saya de devoto|r]. La suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Priest
    >>Obtén los |T134582:0|t[|cRXP_LOOT_Pantalones arte sombrío|r]. Los suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Rogue
    >>Obtén la |T134583:0|t[|cRXP_LOOT_Falda de elementos|r]. La suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Shaman
    >>Obtén los |T134588:0|t[|cRXP_LOOT_Leotardos calígine|r]. Los suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Warlock
    >>Obtén los |T134584:0|t[|cRXP_LOOT_Quijotes de valor|r]. Los suelta el |cRXP_ENEMY_Barón Osahendido|r en |cFFfa9602Stratholme|r << Warrior
    >>|cRXP_WARN_Como alternativa, cómpralos a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16719,1,8951,1 << Alliance Druid --Wildheart Kilt (x1)
    .collect 16678,1,8952,1 << Alliance Hunter --Beaststalker's Pants (x1)
    .collect 16687,1,8953,1 << Alliance Mage --Magister's Leggings (x1)
    .collect 16728,1,8954,1 << Alliance Paladin --Lightforge Legplates (x1)
    .collect 16694,1,8955,1 << Alliance Priest --Devout Skirt (x1)
    .collect 16709,1,8956,1 << Alliance Rogue --Shadowcraft Pants (x1)
    .collect 16699,1,8958,1 << Alliance Warlock --Dreadmist Leggings (x1)
    .collect 16732,1,8959,1 << Alliance Warrior --Legplates of Valor (x1)
    .collect 16668,1,8957,1 << Horde Shaman --Kilt of Elements (x1)
    .collect 16719,1,9016,1 << Horde Druid --Wildheart Kilt (x1)
    .collect 16678,1,9017,1 << Horde Hunter --Beaststalker's Pants (x1)
    .collect 16687,1,9018,1 << Horde Mage --Magister's Leggings (x1)
    .collect 16694,1,9019,1 << Horde Priest --Devout Skirt (x1)
    .collect 16709,1,9020,1 << Horde Rogue --Shadowcraft Pants (x1)
    .collect 16699,1,9021,1 << Horde Warlock --Dreadmist Leggings (x1)
    .collect 16732,1,9022,1 << Horde Warrior --Legplates of Valor (x1)
    .equip 7,16719 << Druid
    .equip 7,16678 << Hunter
    .equip 7,16687 << Mage
    .equip 7,16728 << Paladin
    .equip 7,16694 << Priest
    .equip 7,16709 << Rogue
    .equip 7,16699 << Warlock
    .equip 7,16732 << Warrior
    .equip 7,16668 << Shaman
step
    >>Obtén las |T135032:0|t[|cRXP_LOOT_Bufas Corazón Salvaje|r]. Las suelta |cRXP_ENEMY_Gizrul el Esclavista|r en |cFFfa9602Cumbre de Roca Negra Inferior|r << Druid
    >>Obtén el |T135041:0|t[|cRXP_LOOT_Manto de acechabestias|r]. Lo suelta el |cRXP_ENEMY_Señor supremo Vermiothalak|r en |cFFfa9602Cumbre de Roca Negra Inferior|r << Hunter
    >>Obtén el |T135054:0|t[|cRXP_LOOT_Manto de magister|r]. Lo suelta |cRXP_ENEMY_Ras Murmuhielo|r en |cFFfa9602Scholomance|r << Mage
    >>Obtén las |T135041:0|t[|cRXP_LOOT_Bufas Forjaluz|r]. Las suelta |cRXP_ENEMY_La Bestia|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Paladin
    >>Obtén el |T135033:0|t[|cRXP_LOOT_Manto de devoto|r]. Lo suelta |cRXP_ENEMY_Solakar Corona de Fuego|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Priest
    >>Obtén las |T135038:0|t[|cRXP_LOOT_Bufas arte sombrío|r]. Las suelta |cRXP_ENEMY_Maestro cañonero Willey|r en |cFFfa9602Stratholme|r << Rogue
    >>Obtén los |T135060:0|t[|cRXP_LOOT_Espaldares de elementos|r]. Los suelta |cRXP_ENEMY_Gyth|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Shaman
    >>Obtén el |T133732:0|t[|cRXP_LOOT_Manto calígine|r]. Lo suelta |cRXP_ENEMY_Jandice Barov|r en |cFFfa9602Scholomance|r << Warlock
    >>Obtén las |T135061:0|t[|cRXP_LOOT_Bufas de valor|r]. Las suelta el |cRXP_ENEMY_Jefe de Guerra Rend Puño Negro|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Warrior
    >>|cRXP_WARN_Como alternativa, cómpralos a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16718,1,8951,1 << Alliance Druid --Wildheart Spaulders (x1)
    .collect 16679,1,8952,1 << Alliance Hunter --Beaststalker's Mantle (x1)
    .collect 16689,1,8953,1 << Alliance Mage --Magister's Mantle (x1)
    .collect 16729,1,8954,1 << Alliance Paladin --Lightforge Spaulders (x1)
    .collect 16695,1,8955,1 << Alliance Priest --Devout Mantle (x1)
    .collect 16708,1,8956,1 << Alliance Rogue --Shadowcraft Spaulders (x1)
    .collect 16701,1,8958,1 << Alliance Warlock --Dreadmist Mantle (x1)
    .collect 16733,1,8959,1 << Alliance Warrior --Spaulders of Valor (x1)
    .collect 16669,1,8957,1 << Horde Shaman --Pauldrons of Elements (x1)
    .collect 16718,1,9016,1 << Horde Druid --Wildheart Spaulders (x1)
    .collect 16679,1,9017,1 << Horde Hunter --Beaststalker's Mantle (x1)
    .collect 16689,1,9018,1 << Horde Mage --Magister's Mantle (x1)
    .collect 16695,1,9019,1 << Horde Priest --Devout Mantle (x1)
    .collect 16708,1,9020,1 << Horde Rogue --Shadowcraft Spaulders (x1)
    .collect 16701,1,9021,1 << Horde Warlock --Dreadmist Mantle (x1)
    .collect 16733,1,9022,1 << Horde Warrior --Spaulders of Valor (x1)
    .equip 3,16718 << Druid
    .equip 3,16679 << Hunter
    .equip 3,16689 << Mage
    .equip 3,16729 << Paladin
    .equip 3,16695 << Priest
    .equip 3,16708 << Rogue
    .equip 3,16701 << Warlock
    .equip 3,16733 << Warrior
    .equip 3,16669 << Shaman
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>|T133233:0|t[Barras de hierro negro] |cRXP_WARN_las fabrican los mineros|r
    >>|T134418:0|t[Cuero encantado] |cRXP_WARN_y|r |T132873:0|t[Fragmento luminoso grande] |cRXP_WARN_lo fabrican los encantadores|r
    >>|T132895:0|t[Tela lunar] |cRXP_WARN_lo fabrican los sastres|r
    >>|T134355:0|t[Pellejos bastos curtidos] |cRXP_WARN_lo fabrican los peleteros|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Runas oscuras|r] |cRXP_WARN_caen aleatoriamente en|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    .accept 8929 >>Acepta la misión Buscando a Anthion
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    .accept 8930 >>Acepta la misión Buscando a Anthion
    .target Mokvar
step
    #completewith FindingAnthion
    +|cRXP_WARN_Inicia la búsqueda de un grupo sólido de 5 personas capaz de limpiar el lado de los no-muertos de Stratholme en 45 minutos|r
step
    #completewith next
    .zone Eastern Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Este|r
step
    #label FindingAnthion
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8929 >>Entrega la misión Buscando a Anthion << Alliance
    .turnin 8930 >>Entrega la misión Buscando a Anthion << Horde
    .accept 8945 >>Acepta la misión La súplica de un muerto
    .target Anthion Harmon
step
    #completewith next
    .subzone 2017 >>Entra en Stratholme
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    >>Mata al |cRXP_ENEMY_Barón Osahendido|r en menos de 45 minutos para salvar a |cRXP_FRIENDLY_Ysida Harmon|r
    >>|cRXP_WARN_El temporizador empieza cuando recibes el perjuicio|r |T136129:0|t[El ultimátum del barón] |cRXP_WARN_al entrar en el lado de los no-muertos|r
    .complete 8945,1 --Ysida Freed (x1)
    .mob Baron Rivendare
    .target Ysida Harmon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ysida Harmon|r
    .turnin 8945 >>Entrega la misión La súplica de un muerto
    .accept 8946 >>Acepta la misión Prueba de vida
    .target Ysida Harmon
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anthion|r fuera de Stratholme
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8946 >>Entrega la misión Prueba de vida
    .accept 8947 >>Acepta la misión La extraña petición de Anthion
    .target Anthion Harmon
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>|T133233:0|t[Barras de hierro negro] |cRXP_WARN_las fabrican los mineros|r
    >>|T134418:0|t[Cuero encantado] |cRXP_WARN_lo fabrican los encantadores|r
    >>|T132895:0|t[Tela lunar] |cRXP_WARN_lo fabrican los sastres|r
    >>|T134355:0|t[Pellejos bastos curtidos] |cRXP_WARN_lo fabrican los peleteros|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Runas oscuras|r] |cRXP_WARN_caen aleatoriamente en|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 11371,3,8947,1 --Dark Iron Bar (x3)
    .collect 12810,20,8947,1 --Enchanted Leather (x20)
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 14342,3,8947,1 --Mooncloth (x3)
    .collect 15407,4,8947,1 --Cured Rugged Hide (x4)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anthion|r fuera de Stratholme
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Anthion|r
    .turnin 8947 >>Entrega la misión La extraña petición de Anthion
    .accept 8948 >>Acepta la misión Un viejo amigo de Anthion
    .target Anthion Harmon
step
    #softcore
    #completewith AnthionsFriend
    .zone Feralas >>Viaja a |cFFfa9602Feralas|r
    >>|cRXP_WARN_La próxima sección tiene lugar en La Masacre. Es posible hacerlo en solitario pero se recomienda encarecidamente ir en grupo|r
    .subzoneskip 2557
step
    #hardcore
    #completewith AnthionsFriend
    .zone Feralas >>Viaja a |cFFfa9602Feralas|r
    >>|cRXP_WARN_Esta próxima sección tiene lugar en La Masacre. Asegúrate de tener un grupo listo de al menos 3 jugadores|r
    .subzoneskip 2557
step
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Entra por la entrada norte de La Masacre
    >>|cRXP_WARN_Debes tener la|r |T134244:0|t[Llave creciente] |cRXP_WARN_para poder abrir la puerta de La Masacre Norte y la puerta de la biblioteca|r << !Rogue
    >>|cRXP_WARN_Debes tener la|r |T134244:0|t[Llave creciente] |cRXP_WARN_o tener 300 de habilidad en Forzar cerradura para poder abrir la puerta de La Masacre Norte y la puerta de la biblioteca|r << Rogue
    >>|cRXP_WARN_Alternativamente, pídele a otro jugador que te abra las puertas|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend
    .goto Kalimdor,43.39,66.52,20 >>Entra por la entrada norte de La Masacre
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falrin Tallarbol|r en la biblioteca de La Masacre
    .turnin 8948 >>Entrega la misión Un viejo amigo de Anthion
    .accept 8949 >>Acepta la misión La vendetta de Falrin
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    >>Mata |cRXP_ENEMY_Ogros Gordok|r en |cFFfa9602La Masacre Norte|r. Despójalos para obtener sus |cRXP_LOOT_Abalorios de guerra|r
    >>|cRXP_WARN_Alternativamente, puedes matar a los|r |cRXP_ENEMY_Ogros Cumbrerroca|r |cRXP_WARN_en|r |cFFfa9602Cumbre de Roca Negra Inferior|r
    .complete 8949,1 --Ogre Warbeads (x25)
    .mob Gordok Mage-Lord
    .mob Gordok Brute
    .mob Gordok Ogre-Mage
    .mob Gordok Enforcer
    .mob Gordok Mauler
    .mob Gordok Warlock
    .mob Gordok Captain
    .mob Gordok Reaver
    .mob Spirestone Battle Mage
    .mob Spirestone Reaver
    .mob Spirestone Enforcer
    .mob Spirestone Ogre Magus
    .mob Spirestone Mystic
    .mob Spirestone Warlord
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falrin Tallarbol|r en la biblioteca de La Masacre
    .turnin 8949 >>Entrega la misión La vendetta de Falrin
    .accept 8950 >>Acepta la misión El encantamiento del provocador
    .target Falrin Treeshaper
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Entra en la instancia oeste de La Masacre
    >>|cRXP_WARN_Debes tener la|r |T134244:0|t[Llave creciente] |cRXP_WARN_para poder abrir la puerta hacia el ala Oeste de La Masacre|r << !Rogue
    >>|cRXP_WARN_Debes tener la|r |T134244:0|t[Llave creciente] |cRXP_WARN_o tener 300 de habilidad en Forzar cerrradura para poder abrir la puerta del ala oeste de La Masacre|r << Rogue
    >>|cRXP_WARN_Alternativamente, pídele a otro jugador que te abra las puertas|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #completewith SpectreEssence
    .goto Kalimdor,42.98,67.73,20 >>Entra por la entrada oeste de La Masacre
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label SpectreEssence
    >>Mata |cRXP_ENEMY_Espíritus Eldreth|r en |cFFfa9602La Masacre Oeste|r. Despójalos para obtener su |cRXP_LOOT_Esencia de espectro bufón|r
    .complete 8950,1 --Jeering Spectre's Essence (x1)
    .mob Eldreth Wraith
    .mob Eldreth Seether
    .mob Eldreth Spectre
    .mob Eldreth Spirit
    .mob Eldreth Phantasm
    .mob Eldreth Apparition
    .mob Eldreth Sorcerer
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>|T132873:0|t[Fragmentos luminosos grandes] |cRXP_WARN_son fabricados por los encantadores|r
    >>|T136192:0|t[|cRXP_FRIENDLY_Runas oscuras|r] |cRXP_WARN_caen aleatoriamente en|r |cFFfa9602Scholomance|r
    >>|cRXP_WARN_Cómpralos en la Casa de Subastas si es posible|r
    .collect 14344,8,8950,1 --Large Brilliant Shard (x8)
    .collect 20520,4,8950,1 --Dark Rune (x4)
step
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Entra por la entrada norte de La Masacre
    >>|cRXP_WARN_Debes tener la|r |T134244:0|t[Llave creciente] |cRXP_WARN_para poder abrir la puerta de La Masacre Norte y la puerta de la biblioteca|r << !Rogue
    >>|cRXP_WARN_Debes tener la|r |T134244:0|t[Llave creciente] |cRXP_WARN_o tener 300 de habilidad en Forzar cerradura para poder abrir la puerta de La Masacre Norte y la puerta de la biblioteca|r << Rogue
    >>|cRXP_WARN_Alternativamente, pídele a otro jugador que te abra las puertas|r
    .itemcount 18249,<1 << !Rogue --Crescent Key
    .skill lockpicking,300,1 << Rogue
step
    #optional
    #completewith AnthionsFriend2
    .goto Kalimdor,43.39,66.52,20 >>Entra por la entrada norte de La Masacre
    .itemcount 18249,1 << !Rogue --Crescent Key
    .skill lockpicking,<300,1 << Rogue
step
    #label AnthionsFriend2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falrin Tallarbol|r en la biblioteca de La Masacre
    .turnin 8950 >>Entrega la misión El encantamiento del provocador
    .accept 9015 >>Acepta la misión El reto
    .target Falrin Treeshaper
    --.link  >> |cRXP_WARN_You can reach the library without killing any mobs. Click here for video reference|r
    --VV TODO: Library skip video
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entra en Profundidades de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    .use 21986 >>Entra en la arena del Círculo de la Ley y usa el |T132619:0|t[Estandarte de provocación]
    >>Esto invocará a |cRXP_ENEMY_Theldren|r. Mátalo y despójalo para obtener la |cRXP_LOOT_Parte superior del amuleto de Lord Valthalak|r
    >>|cRXP_WARN_Este combate es difícil. |cRXP_ENEMY_Theldren|r aparecerá con varios esbirros élite de nivel 60. Asegúrate de que tu grupo tenga suficiente control de masas (CC) para ellos|r
    .complete 9015,1 --Theldren's Team Defeated
    .complete 9015,2 --Top Piece of Lord Valthalak's Amulet (x1)
    .mob Theldren
step
    #completewith next
    .zone Eastern Plaguelands >>Viaja a Tierras de la Peste del Este
step
    .goto Eastern Kingdoms,55.06,17.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anthion|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Anthion|r
    .turnin 9015 >>Entrega la misión El reto
    .accept 8951 >>Acepta la misión La despedida de Anthion << Alliance Druid
    .accept 8952 >>Acepta la misión La despedida de Anthion << Alliance Hunter
    .accept 8953 >>Acepta la misión La despedida de Anthion << Alliance Mage
    .accept 8954 >>Acepta la misión La despedida de Anthion << Alliance Paladin
    .accept 8955 >>Acepta la misión La despedida de Anthion << Alliance Priest
    .accept 8956 >>Acepta la misión La despedida de Anthion << Alliance Rogue
    .accept 8958 >>Acepta la misión La despedida de Anthion << Alliance Warlock
    .accept 8959 >>Acepta la misión La despedida de Anthion << Alliance Warrior
    .accept 8957 >>Acepta la misión La despedida de Anthion << Horde Shaman
    .accept 9016 >>Acepta la misión La despedida de Anthion << Horde Druid
    .accept 9017 >>Acepta la misión La despedida de Anthion << Horde Hunter
    .accept 9018 >>Acepta la misión La despedida de Anthion << Horde Mage
    .accept 9019 >>Acepta la misión La despedida de Anthion << Horde Priest
    .accept 9020 >>Acepta la misión La despedida de Anthion << Horde Rogue
    .accept 9021 >>Acepta la misión La despedida de Anthion << Horde Warlock
    .accept 9022 >>Acepta la misión La despedida de Anthion << Horde Warrior
    .target Anthion Harmon
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    >>Necesitarás |T132542:0|t[|cRXP_LOOT_Botas Corazón Salvaje|r], |T134588:0|t[|cRXP_LOOT_Falda Corazón Salvaje|r] y |T135032:0|t[|cRXP_LOOT_Bufas Corazón Salvaje|r] para entregar esta misión << Druid
    >>Necesitarás |T132588:0|t[|cRXP_LOOT_Botas de acechabestias|r], |T134583:0|t[|cRXP_LOOT_Pantalones de acechabestias|r] y |T135041:0|t[|cRXP_LOOT_Manto de acechabestias|r] para entregar esta misión << Hunter
    >>Necesitarás |T132536:0|t[|cRXP_LOOT_Botas de magister|r], |T134586:0|t[|cRXP_LOOT_Leotardos de magister|r] y |T135054:0|t[|cRXP_LOOT_Manto de magister|r] para entregar esta misión << Mage
    >>Necesitarás |T132584:0|t[|cRXP_LOOT_Botas Forjaluz|r], |T134584:0|t[|cRXP_LOOT_Quijotes Forjaluz|r] y |T135041:0|t[|cRXP_LOOT_Bufas Forjaluz|r] para entregar esta misión << Paladin
    >>Necesitarás |T132539:0|t[|cRXP_LOOT_Sandalias de devoto|r], |T134588:0|t[|cRXP_LOOT_Saya de devoto|r] y |T135033:0|t[|cRXP_LOOT_Manto de devoto|r] para entregar esta misión << Priest
    >>Necesitarás |T132542:0|t[|cRXP_LOOT_Botas arte sombrío|r], |T134582:0|t[|cRXP_LOOT_Pantalones arte sombrío|r] y |T135038:0|t[|cRXP_LOOT_Bufas arte sombrío|r] para entregar esta misión << Rogue
    >>Necesitarás |T132539:0|t[|cRXP_LOOT_Sandalias calígine|r], |T134588:0|t[|cRXP_LOOT_Leotardos calígine|r] y |T133732:0|t[|cRXP_LOOT_Manto calígine|r] para entregar esta misión << Warlock
    >>Necesitarás |T132584:0|t[|cRXP_LOOT_Botas de valor|r], |T134584:0|t[|cRXP_LOOT_Quijotes de valor|r] y |T135061:0|t[|cRXP_LOOT_Bufas de valor|r] para entregar esta misión << Warrior
    .collect 16715,1,8951,1 << Alliance Druid --Wildheart Boots (x1)
    .collect 16719,1,8951,1 << Alliance Druid --Wildheart Kilt (x1)
    .collect 16718,1,8951,1 << Alliance Druid --Wildheart Spaulders (x1)
    .collect 16675,1,8952,1 << Alliance Hunter --Beaststalker's Boots (x1)
    .collect 16678,1,8952,1 << Alliance Hunter --Beaststalker's Pants (x1)
    .collect 16679,1,8952,1 << Alliance Hunter --Beaststalker's Mantle (x1)
    .collect 16682,1,8953,1 << Alliance Mage --Magister's Boots (x1)
    .collect 16687,1,8953,1 << Alliance Mage --Magister's Leggings (x1)
    .collect 16689,1,8953,1 << Alliance Mage --Magister's Mantle (x1)
    .collect 16725,1,8954,1 << Alliance Paladin --Lightforge Boots (x1)
    .collect 16728,1,8954,1 << Alliance Paladin --Lightforge Legplates (x1)
    .collect 16729,1,8954,1 << Alliance Paladin --Lightforge Spaulders (x1)
    .collect 16691,1,8955,1 << Alliance Priest --Devout Sandals (x1)
    .collect 16694,1,8955,1 << Alliance Priest --Devout Skirt (x1)
    .collect 16695,1,8955,1 << Alliance Priest --Devout Mantle (x1)
    .collect 16711,1,8956,1 << Alliance Rogue --Shadowcraft Boots (x1)
    .collect 16709,1,8956,1 << Alliance Rogue --Shadowcraft Pants (x1)
    .collect 16708,1,8956,1 << Alliance Rogue --Shadowcraft Spaulders (x1)
    .collect 16704,1,8958,1 << Alliance Warlock --Dreadmist Sandals (x1)
    .collect 16699,1,8958,1 << Alliance Warlock --Dreadmist Leggings (x1)
    .collect 16701,1,8958,1 << Alliance Warlock --Dreadmist Mantle (x1)
    .collect 16734,1,8959,1 << Alliance Warrior --Boots of Valor (x1)
    .collect 16732,1,8959,1 << Alliance Warrior --Legplates of Valor (x1)
    .collect 16733,1,8959,1 << Alliance Warrior --Spaulders of Valor (x1)
    .turnin 8951 >>Entrega la misión La despedida de Anthion << Druid
    .turnin 8952 >>Entrega la misión La despedida de Anthion << Hunter
    .turnin 8953 >>Entrega la misión La despedida de Anthion << Mage
    .turnin 8954 >>Entrega la misión La despedida de Anthion << Paladin
    .turnin 8955 >>Entrega la misión La despedida de Anthion << Priest
    .turnin 8956 >>Entrega la misión La despedida de Anthion << Rogue
    .turnin 8958 >>Entrega la misión La despedida de Anthion << Warlock
    .turnin 8959 >>Entrega la misión La despedida de Anthion << Warrior
    .accept 8960 >>Acepta la misión El triste destino de Bodley
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    >>Necesitarás |T132542:0|t[|cRXP_LOOT_Botas Corazón Salvaje|r], |T134588:0|t[|cRXP_LOOT_Falda Corazón Salvaje|r] y |T135032:0|t[|cRXP_LOOT_Bufas Corazón Salvaje|r] para entregar esta misión << Druid
    >>Necesitarás |T132588:0|t[|cRXP_LOOT_Botas de acechabestias|r], |T134583:0|t[|cRXP_LOOT_Pantalones de acechabestias|r] y |T135041:0|t[|cRXP_LOOT_Manto de acechabestias|r] para entregar esta misión << Hunter
    >>Necesitarás |T132536:0|t[|cRXP_LOOT_Botas de magister|r], |T134586:0|t[|cRXP_LOOT_Leotardos de magister|r] y |T135054:0|t[|cRXP_LOOT_Manto de magister|r] para entregar esta misión << Mage
    >>Necesitarás |T132539:0|t[|cRXP_LOOT_Sandalias de devoto|r], |T134588:0|t[|cRXP_LOOT_Saya de devoto|r] y |T135033:0|t[|cRXP_LOOT_Manto de devoto|r] para entregar esta misión << Priest
    >>Necesitarás |T132542:0|t[|cRXP_LOOT_Botas arte sombrío|r], |T134582:0|t[|cRXP_LOOT_Pantalones arte sombrío|r] y |T135038:0|t[|cRXP_LOOT_Bufas arte sombrío|r] para entregar esta misión << Rogue
    >>Necesitarás |T132592:0|t[|cRXP_LOOT_Botas de elementos|r], |T134583:0|t[|cRXP_LOOT_Falda de elementos|r] y  |T135060:0|t[|cRXP_LOOT_Espaldares de elementos|r] para entregar esta misión << Shaman
    >>Necesitarás |T132539:0|t[|cRXP_LOOT_Sandalias calígine|r], |T134588:0|t[|cRXP_LOOT_Leotardos calígine|r] y |T133732:0|t[|cRXP_LOOT_Manto calígine|r] para entregar esta misión << Warlock
    >>Necesitarás |T132584:0|t[|cRXP_LOOT_Botas de valor|r], |T134584:0|t[|cRXP_LOOT_Quijotes de valor|r] y |T135061:0|t[|cRXP_LOOT_Bufas de valor|r] para entregar esta misión << Warrior
    .collect 16670,1,8957,1 << Horde Shaman --Boots of Elements (x1)
    .collect 16668,1,8957,1 << Horde Shaman --Kilt of Elements (x1)
    .collect 16669,1,8957,1 << Horde Shaman --Pauldrons of Elements (x1)
    .collect 16715,1,9016,1 << Horde Druid --Wildheart Boots (x1)
    .collect 16719,1,9016,1 << Horde Druid --Wildheart Kilt (x1)
    .collect 16718,1,9016,1 << Horde Druid --Wildheart Spaulders (x1)
    .collect 16675,1,9017,1 << Horde Hunter --Beaststalker's Boots (x1)
    .collect 16678,1,9017,1 << Horde Hunter --Beaststalker's Pants (x1)
    .collect 16679,1,9017,1 << Horde Hunter --Beaststalker's Mantle (x1)
    .collect 16682,1,9018,1 << Horde Mage --Magister's Boots (x1)
    .collect 16687,1,9018,1 << Horde Mage --Magister's Leggings (x1)
    .collect 16689,1,9018,1 << Horde Mage --Magister's Mantle (x1)
    .collect 16691,1,9019,1 << Horde Priest --Devout Sandals (x1)
    .collect 16694,1,9019,1 << Horde Priest --Devout Skirt (x1)
    .collect 16695,1,9019,1 << Horde Priest --Devout Mantle (x1)
    .collect 16711,1,9020,1 << Horde Rogue --Shadowcraft Boots (x1)
    .collect 16709,1,9020,1 << Horde Rogue --Shadowcraft Pants (x1)
    .collect 16708,1,9020,1 << Horde Rogue --Shadowcraft Spaulders (x1)
    .collect 16704,1,9021,1 << Horde Warlock --Dreadmist Sandals (x1)
    .collect 16699,1,9021,1 << Horde Warlock --Dreadmist Leggings (x1)
    .collect 16701,1,9021,1 << Horde Warlock --Dreadmist Mantle (x1)
    .collect 16734,1,9022,1 << Horde Warrior --Boots of Valor (x1)
    .collect 16732,1,9022,1 << Horde Warrior --Legplates of Valor (x1)
    .collect 16733,1,9022,1 << Horde Warrior --Spaulders of Valor (x1)
    .turnin 8957 >>Entrega la misión La despedida de Anthion << Shaman
    .turnin 9016 >>Entrega la misión La despedida de Anthion << Druid
    .turnin 9017 >>Entrega la misión La despedida de Anthion << Hunter
    .turnin 9018 >>Entrega la misión La despedida de Anthion << Mage
    .turnin 9019 >>Entrega la misión La despedida de Anthion << Priest
    .turnin 9020 >>Entrega la misión La despedida de Anthion << Rogue
    .turnin 9021 >>Entrega la misión La despedida de Anthion << Warlock
    .turnin 9022 >>Entrega la misión La despedida de Anthion << Warrior
    .accept 8960 >>Acepta la misión El triste destino de Bodley
    .target Mokvar

]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#group RestedXP Guías de Contenido de Nivel Máximo
#subgroup Guía del conjunto Cuoroferal << Druid
#subgroup Guía del conjunto Maestro de bestias << Hunter
#subgroup Guía del conjunto Atavío de hechicero << Mage
#subgroup Guía del conjunto Forjaalma << Paladin
#subgroup Guía del conjunto Mantoscuro << Rogue
#subgroup Guía del conjunto Los Cinco Truenos << Shaman
#subgroup Guía del conjunto Brumamorta << Warlock
#subgroup Guía del conjunto Heroísmo << Warrior
#subgroup Guía del conjunto Virtuoso << Priest
#name Parte 4: Casco y Pechera


step
    #optional
    +|cRXP_WARN_Debes completar la Parte 3: Pantalones, Hombreras y Botas antes de comenzar esta parte de la guía|r
    .isQuestAvailable 8951 << Alliance Druid
    .isQuestAvailable 8952 << Alliance Hunter
    .isQuestAvailable 8953 << Alliance Mage
    .isQuestAvailable 8954 << Alliance Paladin
    .isQuestAvailable 8955 << Alliance Priest
    .isQuestAvailable 8956 << Alliance Rogue
    .isQuestAvailable 8958 << Alliance Warlock
    .isQuestAvailable 8959 << Alliance Warrior
    .isQuestAvailable 8957 << Horde Shaman
    .isQuestAvailable 9016 << Horde Druid
    .isQuestAvailable 9017 << Horde Hunter
    .isQuestAvailable 9018 << Horde Mage
    .isQuestAvailable 9019 << Horde Priest
    .isQuestAvailable 9020 << Horde Rogue
    .isQuestAvailable 9021 << Horde Warlock
    .isQuestAvailable 9022 << Horde Warrior
step
    >>Obtén la |T133129:0|t[|cRXP_LOOT_Capucha Corazón Salvaje|r]. La suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Druid
    >>Obtén el |T133126:0|t[|cRXP_LOOT_Almete de acechabestias|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Hunter
    >>Obtén el |T133076:0|t[|cRXP_LOOT_Yelmo Forjaluz|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Paladin
    >>Obtén la |T132767:0|t[|cRXP_LOOT_Corona de devoto|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Priest
    >>Obtén el |T133143:0|t[|cRXP_LOOT_Almete arte sombrío|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Rogue
    >>Obtén el |T133072:0|t[|cRXP_LOOT_Almófar de elementos|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Shaman
    >>Obtén la |T133131:0|t[|cRXP_LOOT_Máscara calígine|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Warlock
    >>Obtén el |T133070:0|t[|cRXP_LOOT_Yelmo de valor|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Warrior
    >>Obtén la |T132768:0|t[|cRXP_LOOT_Corona de magister|r]. Lo suelta el |cRXP_ENEMY_Maestro oscuro Gandling|r en |cFFfa9602Scholomance|r << Mage
    >>|cRXP_WARN_Como alternativa, cómpralos a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16727,1,9002,1 << Alliance Paladin --Lightforge Helm (x1)
    .collect 16720,1,8999,1 << Alliance Druid --Wildheart Cowl (x1)
    .collect 16677,1,9000,1 << Alliance Hunter --Beaststalker's Cap (x1)
    .collect 16693,1,9003,1 << Alliance Priest --Devout Crown (x1)
    .collect 16707,1,9004,1 << Alliance Rogue --Shadowcraft Cap (x1)
    .collect 16698,1,9005,1 << Alliance Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9006,1 << Alliance Warrior --Helm of Valor (x1)
    .collect 16686,1,9001,1 << Alliance Mage --Magister's Crown (x1)
    .collect 16720,1,9007,1 << Horde Druid --Wildheart Cowl (x1)
    .collect 16677,1,9008,1 << Horde Hunter --Beaststalker's Cap (x1)
    .collect 16693,1,9009,1 << Horde Priest --Devout Crown (x1)
    .collect 16707,1,9010,1 << Horde Rogue --Shadowcraft Cap (x1)
    .collect 16667,1,9011,1 << Horde Shaman --Coif of Elements (x1)
    .collect 16698,1,9012,1 << Horde Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9013,1 << Horde Warrior --Helm of Valor (x1)
    .collect 16686,1,9014,1 << Horde Mage --Magister's Crown (x1)
    .equip 1,16727 << Paladin
    .equip 1,16720 << Druid
    .equip 1,16677 << Hunter
    .equip 1,16693 << Priest
    .equip 1,16707 << Rogue
    .equip 1,16698 << Warlock
    .equip 1,16731 << Warrior
    .equip 1,16686 << Mage
    .equip 1,16667 << Shaman
step
    >>Obtén el |T132741:0|t[|cRXP_LOOT_Jubón Corazón Salvaje|r]. Lo suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Druid
    >>Obtén la |T132625:0|t[|cRXP_LOOT_Guerrera de acechabestias|r]. La suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Hunter
    >>Obtén la |T132738:0|t[|cRXP_LOOT_Coraza Forjaluz|r]. Lo suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Paladin
    >>Obtén la |T132652:0|t[|cRXP_LOOT_Toga de devoto|r]. La suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Priest
    >>Obtén la |T132722:0|t[|cRXP_LOOT_Guerrera arte sombrío|r]. La suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Rogue
    >>Obtén el |T132633:0|t[|cRXP_LOOT_Jubón de elementos|r]. Lo suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Shaman
    >>Obtén la |T132690:0|t[|cRXP_LOOT_Toga calígine|r]. La suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Warlock
    >>Obtén la |T132738:0|t[|cRXP_LOOT_Coraza de valor|r]. La suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Warrior
    >>Obtén las |T132666:0|t[|cRXP_LOOT_Togas de magister|r]. Las suelta el |cRXP_ENEMY_General Drakkisath|r en |cFFfa9602Cumbre de Roca Negra Superior|r << Mage
    >>|cRXP_WARN_Como alternativa, cómpralos a |cRXP_FRIENDLY_Pix Xizzix|r en Bahía del Botín a cambio de|r |T133799:0|t[|cRXP_FRIENDLY_Real de Minahonda deslustrado|r] << sod
    .collect 16726,1,9002,1 << Alliance Paladin --Lightforge Breastplate (x1)
    .collect 16706,1,8999,1 << Alliance Druid --Wildheart Vest (x1)
    .collect 16674,1,9000,1 << Alliance Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9003,1 << Alliance Priest --Devout Robe (x1)
    .collect 16721,1,9004,1 << Alliance Rogue --Shadowcraft Tunic (x1)
    .collect 16700,1,9005,1 << Alliance Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9006,1 << Alliance Warrior --Breastplate of Valor (x1)
    .collect 16688,1,9001,1 << Alliance Mage --Magister's Robes (x1)
    .collect 16706,1,9007,1 << Horde Druid --Wildheart Vest (x1)
    .collect 16674,1,9008,1 << Horde Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9009,1 << Horde Priest --Devout Robe (x1)
    .collect 16721,1,9010,1 << Horde Rogue --Shadowcraft Tunic (x1)
    .collect 16666,1,9011,1 << Horde Shaman --Vest of Elements (x1)
    .collect 16700,1,9012,1 << Horde Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9013,1 << Horde Warrior --Breastplate of Valor (x1)
    .collect 16688,1,9014,1 << Horde Mage --Magister's Robes (x1)
    .equip 5,16726 << Paladin
    .equip 5,16706 << Druid
    .equip 5,16674 << Hunter
    .equip 5,16690 << Priest
    .equip 5,16721 << Rogue
    .equip 5,16700 << Warlock
    .equip 5,16730 << Warrior
    .equip 5,16688 << Mage
    .equip 5,16666 << Shaman
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    .accept 8960 >>Acepta la misión El triste destino de Bodley
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    .accept 8960 >>Acepta la misión El triste destino de Bodley
    .target Mokvar
step
    >>|cRXP_BUY_Reúne los siguientes objeto|r:
    >>|cRXP_WARN_Al menos un|r |T132873:0|t[Fragmento luminoso grande]
    >>|cRXP_WARN_Un|r |T134821:0|t[Frasco de poder supremo]
    >>|cRXP_WARN_Cómpralo en la casa de subastas si es posible|r
    .collect 14344,1,8961,1 --Large Brilliant Shard (x1)
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    .reputation 529,honored >>|cRXP_WARN_Consigue reputación honorable con El Alba Argenta|r
step << Alliance
    #completewith next
    .subzone 3197 >>Viaja al Campamento del Orvallo en |cFFfa9602Tierras de la Peste del Oeste|r
step << Alliance
    .goto Western Plaguelands,42.84,83.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Argenta Chispillo|r
    >>|cRXP_BUY_Compra un|r |T133879:0|t[Blandón sacralizado] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto cuesta 120 de oro|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Argent Quartermaster Lightspark
step << Horde
    #completewith next
    .subzone 2268 >>Viaja a la Capilla de la Esperanza de la Luz en |cFFfa9602Tierras de la Peste del Este|r
step << Horde
    .goto Eastern Plaguelands,81.63,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Intendente Miranda Cerrobrecha|r
    >>|cRXP_BUY_Compra un|r |T133879:0|t[Blandón sacralizado] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Esto cuesta 120 de oro|r
    .collect 22014,1,8961,1 --Hallowed Brazier (x1)
    .target Quartermaster Miranda Breechlock
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8960 >>Entrega la misión El triste destino de Bodley
    .accept 8961 >>Acepta la misión Tres reyes de Fuego
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra Superior
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    >>Mata al |cRXP_ENEMY_Piroguardia Brasadivino|r. Despójalo para obtener el |cRXP_LOOT_Ascua del Brasadivino|r
    >>|cRXP_WARN_Este es el primer jefe en|r |cFFfa9602Cumbre de Roca Negra Superior|r
    .complete 8961,2 --Ember of Emberseer (x1)
    .mob Pyroguard Emberseer
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entra en Profundidades de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    >>Mata a |cRXP_ENEMY_Lord Incendius|r. Despójalo para obtener la |cRXP_LOOT_Incendicita de Lord Incendius|r
    .complete 8961,1 --Incendicite of Incendius (x1)
    .mob Lord Incendius
step
    #completewith DukeofCynders
    .zone Silithus >>Viaja a |cFFfa9602Silithus|r
step
    #loop
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    .goto Silithus,38.31,46.42,80,0
    .goto Silithus,27.93,30.66,80,0
    .goto Silithus,20.47,86.11,80,0
    >>Mata a los miembros |cRXP_ENEMY_Crepuscular|r en |cFFfa9602Silithus|r. Despójalos para obtener su conjunto de |T132658:0|t[|cRXP_FRIENDLY_Cultor Crepuscular|r]
    >>|cRXP_WARN_Vas a necesitar varios conjuntos de|r |T132658:0|t[|cRXP_FRIENDLY_Cultor Crepuscular|r] |cRXP_WARN_. Se recomienda que tu grupo tenga al menos 5 conjuntos|r
    >>|cRXP_WARN_Como alternativa, cómpralos en la Casa de Subastas|r
    .collect 20407,1,8961,1 --Twilight Cultist Robe (x1)
    .collect 20406,1,8961,1 --Twilight Cultist Mantle (x1)
    .collect 20408,1,8961,1 --Twilight Cultist Cowl (x1)
    .mob Twilight Marauder
    .mob Twilight Marauder Morna
    .mob Twilight Avenger
    .mob Twilight Geolord
    .mob Twilight Stonecaller
    .mob Twilight Overlord
    .mob Twilight Flamereaver
    .mob Twilight Master
step
    .reputation 609,friendly >>Consigue reputación amistoso con el Círculo Cenarion
    >>|cRXP_WARN_Mata miembros |cRXP_ENEMY_Crepuscular|r o completa las misiones del Círculo Cenarion en Silithus para obtener reputación|r
step
    .goto Silithus,48.62,37.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Huum Ferocrín|r
    .accept 8331 >>Acepta la misión Aurel Hojaurea
    .target Huum Wildmane
    .itemcount 20422,<1
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurel Hojaurea|r
    .turnin 8331 >>Entrega la misión Aurel Hojaurea
    .accept 8332 >>Acepta la misión Los Duques del Consejo
    .target Aurel Goldleaf
    .itemcount 20422,<1
step
    .goto Silithus,38.31,46.42
    .goto Silithus,38.31,46.42,0
    .goto Silithus,27.93,30.66,0
    .goto Silithus,20.47,86.11,0
    >>Viaja a una |cRXP_PICK_Piedra de viento inferior|r en uno de los tres campamentos |cRXP_ENEMY_Crepuscular|r . Están marcados en tu mapa
    >>Invoca a los |cRXP_ENEMY_Templarios|r y mátalos. Despójalos para obtener sus |T133438:0|t[|cRXP_LOOT_Blasones abisales|r]
    >>|cRXP_WARN_Tú o alguien de vuestro grupo debe equipar un conjunto de|r |T132658:0|t[|cRXP_FRIENDLY_Cultor Crepuscular|r] |cRXP_WARN_cada vez para invocar a un|r |cRXP_ENEMY_Templario|r
    .collect 20513,3 --Abyssal Crest (x3)
    .itemcount 20422,<1
    .mob Earthen Templar
    .mob Crimson Templar
    .mob Hoary Templar
    .mob Azure Templar
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurel Hojaurea|r
    .turnin 8332 >>Entrega la misión Los Duques del Consejo
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    .goto Silithus,51.96,38.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aurel Hojaurea|r
    .turnin 8333 >>Entrega la misión Medallón de estatus
    .target Aurel Goldleaf
    .itemcount 20513,3
step
    #label DukeofCynders
    .goto Silithus,37.67,44.81
    .goto Silithus,37.67,44.81,0
    .goto Silithus,24.74,32.68,0
    .goto Silithus,17.24,84.75,0
    >>Viaja a una |cRXP_PICK_Piedra de viento|r en uno de los tres campamentos |cRXP_ENEMY_Crepuscular|r . Están marcados en tu mapa
    >>Invoca a los |cRXP_ENEMY_Duques|r hasta que aparezca el |cRXP_ENEMY_Duque de las Brasas|r |cRXP_WARN_(25% probabilidad de aparición)|r. Mata al Duque de las Brasas y despójalo para obtener el |cRXP_LOOT_Rescoldo de las brasas|r
    >>|cRXP_WARN_Tú o alguien en tu grupo debe tener un|r |T133281:0|t[|cRXP_LOOT_Medallón de estatus de cultor Crepuscular|r] |cRXP_WARN_y debe equiparse un conjunto|r |T132658:0|t[|cRXP_FRIENDLY_Cultor Crepuscular|r] |cRXP_WARN_cada vez para invocar a un nuevo|r |cRXP_ENEMY_Duque|r
    >>|cRXP_WARN_Posiblemente necesites conseguir más|r |T133281:0|t[|cRXP_LOOT_Medallones de estatus de cultor Crepuscular|r] |cRXP_WARN_y conjuntos de|r |T132658:0|t[|cRXP_FRIENDLY_Cultor Crepuscular|r] |cRXP_WARN_si tienes mala suerte|r
    .complete 8961,3 --Cinder of Cynders (x1)
    .mob The Duke of Cynders
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8961 >>Entrega la misión Tres reyes de Fuego
    .acceptmultiple 8962,8963,8964,8965 >>Acepta la misión Componentes importantes
    .target Bodley
step
    #completewith next
    .subzone 2744 >>Viaja a Colmen'Regal en |cFFfa9602Silithus|r
    .isOnQuest 8962
step
    #loop
    .goto Silithus,55.77,71.71,0
    .goto Silithus,60.92,82.04,0
    .goto Silithus,60.43,89.80,0
    .goto Silithus,56.57,86.74,0
    .goto Silithus,54.55,82.84,0
    .goto Silithus,55.77,71.71,70,0
    .goto Silithus,60.92,82.04,70,0
    .goto Silithus,60.43,89.80,70,0
    .goto Silithus,56.57,86.74,70,0
    .goto Silithus,54.55,82.84,70,0
    >>Mata a los enemigos |cRXP_ENEMY_Colmen'Regal|r (élites). Despójalos para obtener los |cRXP_LOOT_Restos druidas|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8962,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8962
step
    #completewith next
    .subzone 2249 >>Viaja al Cañón Levescarcha en |cFFfa9602Cuna del Invierno|r
    .isOnQuest 8963
step
    #loop
    .goto Winterspring,61.44,68.26,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,63.62,69.30,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,60.19,64.96,60,0
    .goto Winterspring,64.06,66.80,60,0
    .goto Winterspring,65.81,69.15,60,0
    .goto Winterspring,65.10,72.07,60,0
    .goto Winterspring,61.50,72.64,60,0
    .goto Winterspring,59.60,69.74,60,0
    .goto Winterspring,58.20,67.59,60,0
    >>Mata |cRXP_ENEMY_Gigantes Machacahielo|r y |cRXP_ENEMY_Valedores Machacahielo|r (élite). Despójalos para obtener la |cRXP_LOOT_Reliquia de Aldea Brisaestelar|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8963,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8963
step
    #completewith next
    .subzone 2266 >>Viajar a Mano de Tyr en |cFFfa9602Tierras de la Peste del Este|r
    .isOnQuest 8964
step
    #loop
    .goto Eastern Plaguelands,84.17,83.38,0
    .goto Eastern Plaguelands,84.17,83.38,60,0
    .goto Eastern Plaguelands,86.39,84.86,20,0
    .goto Eastern Plaguelands,87.36,85.57,15,0
    .goto Eastern Plaguelands,85.23,86.80,30,0
    .goto Eastern Plaguelands,87.16,87.39,30,0
    .goto Eastern Plaguelands,86.36,82.80,30,0
    .goto Eastern Plaguelands,87.69,81.23,40,0
    >>Mata |cRXP_ENEMY_Pretorianos Escarlata|r (élite). Despójalos para obtener la |cRXP_ENEMY_Espada luminosa de zelote|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8964,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8964
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Viaja a la Isla del Purgatorio en |cFFfa9602Laderas de Trabalomas|r I
    .isOnQuest 8965
step
    #loop
    .goto Hillsbrad Foothills,15.72,81.41,0
    .goto Hillsbrad Foothills,19.67,76.92,30,0
    .goto Hillsbrad Foothills,15.50,77.64,30,0
    .goto Hillsbrad Foothills,13.16,81.53,30,0
    .goto Hillsbrad Foothills,14.53,84.33,30,0
    .goto Hillsbrad Foothills,16.14,84.13,30,0
    .goto Hillsbrad Foothills,16.84,81.48,30,0
    .goto Hillsbrad Foothills,15.72,81.41,40,0
    >>Mata |cRXP_ENEMY_Fantasmas|r (élite) en la isla. Despójalos para obtener |cRXP_LOOT_Cenizas de alma del Desterrado|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8965,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8965
step
    #completewith LeftPiecePU
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8962 >>Entrega la misión Componentes importantes
    .target Bodley
    .isQuestComplete 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8963 >>Entrega la misión Componentes importantes
    .target Bodley
    .isQuestComplete 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8964 >>Entrega la misión Componentes importantes
    .target Bodley
    .isQuestComplete 8964
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8965 >>Entrega la misión Componentes importantes
    .target Bodley
    .isQuestComplete 8965
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Acepta la misión La parte izquierda del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8962
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Acepta la misión La parte izquierda del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8963
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Acepta la misión La parte izquierda del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8964
step
    #label LeftPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8966,8967,8968,8969 >>Acepta la misión La parte izquierda del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8965
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8966
step
    >>Mata a |cRXP_ENEMY_Mor Pezuña Gris|r. Despójalo para obtener la |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de Lord Valthalak|r]
    .use 22049 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala del|r |cRXP_ENEMY_Maestro de guerra Voone|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Mor Pezuña Gris|r
    .complete 8966,1 --Mor Grayhoof Slain (x1)
    .complete 8966,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8966
step
    #completewith next
    .zone Feralas >>Viaja a |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8967
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entra por la entrada este de La Masacre
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8967
step
    >>Mata a |cRXP_ENEMY_Isalien|r. Despójala para obtener la |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de Lord Valthalak|r]
    .use 22050 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r|cRXP_ENEMY_Alzzin el Formaferal|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Isalien|r
    .complete 8967,1 --Isalien slain (x1)
    .complete 8967,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8967
step
    #completewith next
    .zone Eastern Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Este|r
    .subzoneskip 2017
    .isOnQuest 8968
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Entra en Stratholme
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8968
step
    >>Mata a |cRXP_ENEMY_Jarien|r y a |cRXP_ENEMY_Sothos|r. Despójalos para obtener la |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de Lord Valthalak|r]
    .use 22051 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_y a|r |cRXP_ENEMY_Sothos|r
    .complete 8968,1 --Jarien slain (x1)
    .complete 8968,2 --Sothos slain (x1)
    .complete 8968,3 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8968
step
    #completewith next
    .zone Western Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Oeste|r
    .subzoneskip 2057
    .isOnQuest 8969
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Entra en Scholomance
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8969
step
    >>Mata a |cRXP_ENEMY_Kormok|r. Despójalo para obtener la |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de Lord Valthalak|r]
    .use 22052 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r |cRXP_ENEMY_Ras Murmuhielo|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Kormok|r
    .complete 8969,1 --Kormok slain (x1)
    .complete 8969,2 --Left Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8969
step
    #completewith AlcazIslandPU
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8966 >>Entrega la misión La parte izquierda del amuleto de Lord Valthalak
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestComplete 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8967 >>Entrega la misión La parte izquierda del amuleto de Lord Valthalak
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestComplete 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8968 >>Entrega la misión La parte izquierda del amuleto de Lord Valthalak
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestComplete 8968
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8969 >>Entrega la misión La parte izquierda del amuleto de Lord Valthalak
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestComplete 8969
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestTurnedIn 8966
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestTurnedIn 8967
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestTurnedIn 8968
step
    #label AlcazIslandPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8970 >>Acepta la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
    .isQuestTurnedIn 8969
step
    #completewith next
    .goto Dustwallow Marsh,72.26,18.28
    .subzone 2079 >>Viaja a la Isla de Alcaz en |cFFfa9602Marjal Revolcafango|r
step
    #loop
    .goto Dustwallow Marsh,76.91,18.24,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,74.89,14.68,50,0
    .goto Dustwallow Marsh,74.38,17.99,50,0
    .goto Dustwallow Marsh,76.91,18.24,50,0
    .goto Dustwallow Marsh,76.56,22.15,50,0
    .goto Dustwallow Marsh,75.49,21.75,50,0
    >>Mata a los |cRXP_ENEMY_Naga Strashaz|r (élite). Despójalos para obtener su |cRXP_LOOT_Kelp de sangre|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8970,1 --Bloodkelp (x20)
    .mob Strashaz Warrior
    .mob Strashaz Myrmidon
    .mob Strashaz Siren
    .mob Strashaz Sorceress
    .mob Strashaz Serpent Guard
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8970 >>Entrega la misión En tu destino veo la Isla de Alcaz...
    .target Bodley
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8985,8986,8987,8988 >>Acepta la misión Más componentes importantes
    .target Bodley
    .isQuestTurnedIn 8970
step
    #completewith next
    .subzone 2744 >>Viaja a Colmen'Regal en |cFFfa9602Silithus|r
    .isOnQuest 8986
step
    #loop
    .goto Silithus,55.77,71.71,0
    .goto Silithus,60.92,82.04,0
    .goto Silithus,60.43,89.80,0
    .goto Silithus,56.57,86.74,0
    .goto Silithus,54.55,82.84,0
    .goto Silithus,55.77,71.71,70,0
    .goto Silithus,60.92,82.04,70,0
    .goto Silithus,60.43,89.80,70,0
    .goto Silithus,56.57,86.74,70,0
    .goto Silithus,54.55,82.84,70,0
    >>Mata a los enemigos |cRXP_ENEMY_Colmen'Regal|r (élites). Despójalos para obtener los |cRXP_LOOT_Restos druidas|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8986,1 --Druidical Remains (x1)
    .mob Hive'Regal Spitfire
    .mob Hive'Regal Hive Lord
    .mob Hive'Regal Slavemaker
    .mob Hive'Regal Ambusher
    .mob Hive'Regal Burrower
    .isOnQuest 8986
step
    #completewith next
    .subzone 2249 >>Viaja al Cañón Levescarcha en |cFFfa9602Cuna del Invierno|r
    .isOnQuest 8985
step
    #loop
    .goto Winterspring,61.44,68.26,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,63.62,69.30,60,0
    .goto Winterspring,61.44,68.26,60,0
    .goto Winterspring,59.64,67.32,60,0
    .goto Winterspring,60.19,64.96,60,0
    .goto Winterspring,64.06,66.80,60,0
    .goto Winterspring,65.81,69.15,60,0
    .goto Winterspring,65.10,72.07,60,0
    .goto Winterspring,61.50,72.64,60,0
    .goto Winterspring,59.60,69.74,60,0
    .goto Winterspring,58.20,67.59,60,0
    >>Mata |cRXP_ENEMY_Gigantes Machacahielo|r y |cRXP_ENEMY_Valedores Machacahielo|r (élite). Despójalos para obtener la |cRXP_LOOT_Reliquia de Aldea Brisaestelar|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8985,1 --Starbreeze Village Relic (x1)
    .mob Frostmaul Giant
    .mob Frostmaul Preserver
    .isOnQuest 8985
step
    #completewith next
    .subzone 2266 >>Viajar a Mano de Tyr en |cFFfa9602Tierras de la Peste del Este|r
    .isOnQuest 8987
step
    #loop
    .goto Eastern Plaguelands,84.17,83.38,0
    .goto Eastern Plaguelands,84.17,83.38,60,0
    .goto Eastern Plaguelands,86.39,84.86,20,0
    .goto Eastern Plaguelands,87.36,85.57,15,0
    .goto Eastern Plaguelands,85.23,86.80,30,0
    .goto Eastern Plaguelands,87.16,87.39,30,0
    .goto Eastern Plaguelands,86.36,82.80,30,0
    .goto Eastern Plaguelands,87.69,81.23,40,0
    >>Mata |cRXP_ENEMY_Pretorianos Escarlata|r (élite). Despójalos para obtener la |cRXP_ENEMY_Espada luminosa de zelote|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8987,1 --Brilliant Sword of Zealotry (x1)
    .mob Scarlet Praetorian
    .isOnQuest 8987
step
    #completewith next
    .goto Hillsbrad Foothills,19.67,76.92
    .subzone 896 >>Viaja a la Isla del Purgatorio en |cFFfa9602Laderas de Trabalomas|r I
    .isOnQuest 8988
step
    #loop
    .goto Hillsbrad Foothills,15.72,81.41,0
    .goto Hillsbrad Foothills,19.67,76.92,30,0
    .goto Hillsbrad Foothills,15.50,77.64,30,0
    .goto Hillsbrad Foothills,13.16,81.53,30,0
    .goto Hillsbrad Foothills,14.53,84.33,30,0
    .goto Hillsbrad Foothills,16.14,84.13,30,0
    .goto Hillsbrad Foothills,16.84,81.48,30,0
    .goto Hillsbrad Foothills,15.72,81.41,40,0
    >>Mata |cRXP_ENEMY_Fantasmas|r (élite) en la isla. Despójalos para obtener |cRXP_LOOT_Cenizas de alma del Desterrado|r
    >>|cRXP_WARN_Esto tiene una probabilidad de caída muy baja y puede llevar bastante tiempo. Se recomienda "farmear" en un grupo de 5 personas|r
    .complete 8988,1 --Soul Ashes of the Banished (x1)
    .mob Cursed Paladin
    .mob Writhing Mage
    .mob Condemned Acolyte
    .mob Condemned Monk
    .mob Cursed Justicar
    .isOnQuest 8988
step
    #completewith RightPiecePU
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8985 >>Entrega la misión Más componentes importantes
    .target Bodley
    .isQuestComplete 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8986 >>Entrega la misión Más componentes importantes
    .target Bodley
    .isQuestComplete 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8987 >>Entrega la misión Más componentes importantes
    .target Bodley
    .isQuestComplete 8987
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8988 >>Entrega la misión Más componentes importantes
    .target Bodley
    .isQuestComplete 8988
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Acepta la mision La parte derecha del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8985
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Acepta la mision La parte derecha del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8986
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Acepta la mision La parte derecha del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8987
step
    #label RightPiecePU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .acceptmultiple 8989,8990,8991,8992 >>Acepta la mision La parte derecha del amuleto de Lord Valthalak
    .target Bodley
    .isQuestTurnedIn 8988
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8989
step
    >>Mata a |cRXP_ENEMY_Mor Pezuña Gris|r. Despójalo para obtener la |T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto Lord Valthalak|r]
    .use 22049 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala del|r |cRXP_ENEMY_Maestro de guerra Voone|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Mor Pezuña Gris|r
    .complete 8989,1 --Mor Grayhoof Slain (x1)
    .collect 22046,1,8989,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob War Master Voone
    .mob Mor Grayhoof
    .isOnQuest 8989
step
    #optional
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8989
step
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    >>|cRXP_WARN_Si perdiste la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r]|cRXP_WARN_, habla con|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtenerla de nuevo|r
    .complete 8989,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8989
step
    #completewith next
    .zone Feralas >>Viaja a |cFFfa9602Feralas|r
    .subzoneskip 2557
    .isOnQuest 8990
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entra por la entrada este de La Masacre
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8990
step
    >>Mata a |cRXP_ENEMY_Isalien|r. Despójala para obtener la |T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto Lord Valthalak|r]
    .use 22050 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r|cRXP_ENEMY_Alzzin el Formaferal|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Isalien|r
    .complete 8990,1 --Isalien slain (x1)
    .collect 22046,1,8990,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Alzzin the Wildshaper
    .mob Isalien
    .isOnQuest 8990
step
    #optional
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8990
step
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    >>|cRXP_WARN_Si perdiste la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r]|cRXP_WARN_, habla con|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtenerla de nuevo|r
    .complete 8990,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8990
step
    #completewith next
    .zone Eastern Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Este|r
    .subzoneskip 2017
    .isOnQuest 8991
step
    #completewith next
    .goto Eastern Kingdoms,55.06,17.51
    .subzone 2017 >>Entra en Stratholme
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8991
step
    >>Mata a |cRXP_ENEMY_Jarien|r y a |cRXP_ENEMY_Sothos|r. Despójalos para obtener la |T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto Lord Valthalak|r]
    .use 22051 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Jarien|r |cRXP_WARN_y a|r |cRXP_ENEMY_Sothos|r
    .complete 8991,1 --Jarien slain (x1)
    .complete 8991,2 --Sothos slain (x1)
    .collect 22046,1,8991,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Balnazzara
    .mob Jarien
    .mob Sothos
    .isOnQuest 8991
step
    #optional
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8991
step
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    >>|cRXP_WARN_Si perdiste la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r]|cRXP_WARN_, habla con|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtenerla de nuevo|r
    .complete 8991,3 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8991
step
    #completewith next
    .zone Western Plaguelands >>Viaja a |cFFfa9602Tierras de la Peste del Oeste|r
    .subzoneskip 2057
    .isOnQuest 8992
step
    #completewith next
    .goto Eastern Kingdoms,52.75,26.41
    .subzone 2057 >>Entra en Scholomance
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
    .isOnQuest 8992
step
    >>Mata a |cRXP_ENEMY_Kormok|r. Despójalo para obtener la |T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto Lord Valthalak|r]
    .use 22052 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r |cRXP_ENEMY_Ras Murmuhielo|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Kormok|r
    .complete 8992,1 --Kormok slain (x1)
    .collect 22046,1,8992,1 --Right Piece of Lord Valthalak's Amulet (x1)
    .mob Ras Frostwhisper
    .mob Kormok
    .isOnQuest 8992
step
    #optional
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,1
    .isOnQuest 8992
step
    .use 22046 >>|cRXP_WARN_Usa la|r |T133320:0|t[|cRXP_LOOT_Parte izquierda del amuleto de lord Valthalak|r]|cRXP_WARN_, la |r|T133318:0|t[|cRXP_LOOT_Parte derecha del amuleto de lord Valthalak|r] |cRXP_WARN_y la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r] |cRXP_WARN_para crear el|r |T133314:0|t[|cRXP_LOOT_Amuleto de lord Valthalak|r]
    >>|cRXP_WARN_Si perdiste la|r |T133316:0|t[|cRXP_LOOT_Parte superior del amuleto de lord Valthalak|r]|cRXP_WARN_, habla con|r |cRXP_FRIENDLY_Bodley|r |cRXP_WARN_para obtenerla de nuevo|r
    .complete 8992,2 --Lord Valthalak's Amulet (x1)
    .use 22047 --Top Piece of Lord Valthalak's Amulet
    .use 21984 --Left Piece of Lord Valthalak's Amulet
    .itemcount 22047,<1
    .isOnQuest 8992
step
    #completewith FinalPrepPU
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8989 >>Entrega la misión La parte derecha del amuleto de Lord Valthalak
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestComplete 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8990 >>Entrega la misión La parte derecha del amuleto de Lord Valthalak
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestComplete 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8991 >>Entrega la misión La parte derecha del amuleto de Lord Valthalak
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestComplete 8991
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8992 >>Entrega la misión La parte derecha del amuleto de Lord Valthalak
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestComplete 8992
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestTurnedIn 8989
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestTurnedIn 8990
step
    #optional
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestTurnedIn 8991
step
    #label FinalPrepPU
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .accept 8994 >>Acepta la misión Últimos preparativos
    .target Bodley
    .isQuestTurnedIn 8992
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra
    >>|cRXP_WARN_Asegúrate de tener un grupo listo|r
step
    >>Mata |cRXP_ENEMY_Orcos|r en Cumbre de Roca Negra. Despójalos para obtener sus |cRXP_LOOT_Brazales Roca Negra|r
    .complete 8994,1 --Blackrock Bracer (x40)
    --too many .mobs, would cause clutter
step
    >>|cRXP_BUY_Consigue un |r |T134821:0|t[Frasco de poder supremo]
    >>|cRXP_WARN_Cómpralo en la casa de subastas si es posible|r
    .collect 13512,1,8994,1 --Flask of Supreme Power (x1)
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8994 >>Entrega la misión Últimos preparativos
    .accept 8995 >>Acepta la misión Mea Culpa, Lord Valthalak
    .target Bodley
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entra en Cumbre de Roca Negra Superior
    >>|cRXP_WARN_Esta es una mazmorra de 10 jugadores. Tú o alguien en tu grupo debe tener el|r |T133343:0|t[|cRXP_LOOT_Sello de ascensión|r] |cRXP_WARN_para poder entrar en Cumbre de Roca Negra Superior|r
step
    .use 22048 >>Mata a |cRXP_ENEMY_Lord Valthalak|r. |cRXP_WARN_Luego usa el|r |T133314:0|t[Amuleto de Lord Valthalak] |cRXP_WARN_en su cadáver|r
    .use 22056 >>|cRXP_WARN_Usa el|r |T133881:0|t[Blandón de señalización] |cRXP_WARN_en la sala de|r |cRXP_ENEMY_La Bestia|r |cRXP_WARN_para invocar a|r |cRXP_ENEMY_Lord Valthalak|r
    .complete 8995,1 --Lord Valthalak slain (x1)
    .complete 8995,2 --Lord Valthalak's Amulet (x1)
    .mob The Beast
    .mob Lord Valthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu de Lord Valthalak|r que aparece
    .turnin 8995 >>Entrega la misión Mea Culpa, Lord Valthalak
    .accept 8996 >>Acepta la misión Regresa junto a Bodley
    .target Spirit of Lord Valthalak
step
    #completewith next
    .subzone 254 >>Viaja a |cFFfa9602Montaña Roca Negra|r
step
    .goto Eastern Kingdoms,48.90,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bodley|r
    .use 22115 >>|cRXP_WARN_Usa el|r |T133878:0|t[Detector de fantasmas extradimensional] |cRXP_WARN_para revelar a|r |cRXP_FRIENDLY_Bodley|r
    .turnin 8996 >>Entrega la misión Regresa junto a Bodley
    .accept 8997 >>Acepta la misión Regreso al principio << Alliance
    .accept 8998 >>Acepta la misión Regreso al principio << Horde
    .target Bodley
step << Alliance
    #completewith next
    .zone Ironforge >>Viaja a |cFFfa9602Forjaz|r
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    .turnin 8997 >>Entrega la misión Regreso al principio
    .accept 8999 >>Acepta la misión Guardar lo mejor para el final << Druid
    .accept 9000 >>Acepta la misión Guardar lo mejor para el final << Hunter
    .accept 9001 >>Acepta la misión Guardar lo mejor para el final << Mage
    .accept 9002 >>Acepta la misión Guardar lo mejor para el final << Paladin
    .accept 9003 >>Acepta la misión Guardar lo mejor para el final << Priest
    .accept 9004 >>Acepta la misión Guardar lo mejor para el final << Rogue
    .accept 9005 >>Acepta la misión Guardar lo mejor para el final << Warlock
    .accept 9006 >>Acepta la misión Guardar lo mejor para el final << Warrior
    .target Deliana
step << Alliance
    .goto Ironforge,43.54,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deliana|r
    >>Necesitarás la |T133129:0|t[|cRXP_LOOT_Capucha Corazón Salvaje|r] y el |T132741:0|t[|cRXP_LOOT_Jubón Corazón Salvaje|r] para entregar esta misión << Druid
    >>Necesitarás el |T133126:0|t[|cRXP_LOOT_Almete de acechabestias|r] y la |T132625:0|t[|cRXP_LOOT_Guerrera de acechabestias|r] para entregar esta misión <<  Hunter
    >>Necesitarás la |T132768:0|t[|cRXP_LOOT_Corona de magister|r] y las |T132666:0|t[|cRXP_LOOT_Togas de magister|r] para entregar esta misión << Mage
    >>Necesitarás el |T133076:0|t[|cRXP_LOOT_Yelmo Forjaluz|r] y la |T132738:0|t[|cRXP_LOOT_Coraza Forjaluz|r] para entregar esta misión << Paladin
    >>Necesitarás la |T132767:0|t[|cRXP_LOOT_Corona de devoto|r] y la |T132652:0|t[|cRXP_LOOT_Toga de devoto|r] para entregar esta misión << Priest
    >>Necesitarás el |T133143:0|t[|cRXP_LOOT_Almete arte sombrío|r] y la |T132722:0|t[|cRXP_LOOT_Guerrera arte sombrío|r] para entregar esta misión << Rogue
    >>Necesitarás la |T133131:0|t[|cRXP_LOOT_Máscara calígine|r] y la |T132690:0|t[|cRXP_LOOT_Toga calígine|r] para entregar esta misión << Warlock
    >>Necesitarás el |T133070:0|t[|cRXP_LOOT_Yelmo de valor|r] y la |T132738:0|t[|cRXP_LOOT_Coraza de valor|r] para entregar esta misión << Warrior
    .collect 16720,1,8999,1 << Alliance Druid --Wildheart Cowl (x1)
    .collect 16677,1,9000,1 << Alliance Hunter --Beaststalker's Cap (x1)
    .collect 16686,1,9001,1 << Alliance Mage --Magister's Crown (x1)
    .collect 16727,1,9002,1 << Alliance Paladin --Lightforge Helm (x1)
    .collect 16693,1,9003,1 << Alliance Priest --Devout Crown (x1)
    .collect 16707,1,9004,1 << Alliance Rogue --Shadowcraft Cap (x1)
    .collect 16698,1,9005,1 << Alliance Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9006,1 << Alliance Warrior --Helm of Valor (x1)
    .collect 16726,1,9002,1 << Alliance Paladin --Lightforge Breastplate (x1)
    .collect 16688,1,9001,1 << Alliance Mage --Magister's Robes (x1)
    .collect 16706,1,8999,1 << Alliance Druid --Wildheart Vest (x1)
    .collect 16674,1,9000,1 << Alliance Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9003,1 << Alliance Priest --Devout Robe (x1)
    .collect 16721,1,9004,1 << Alliance Rogue --Shadowcraft Tunic (x1)
    .collect 16700,1,9005,1 << Alliance Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9006,1 << Alliance Warrior --Breastplate of Valor (x1)
    .turnin 8999 >>Entrega la misión Guardar lo mejor para el final << Druid
    .turnin 9000 >>Entrega la misión Guardar lo mejor para el final << Hunter
    .turnin 9001 >>Entrega la misión Guardar lo mejor para el final << Mage
    .turnin 9002 >>Entrega la misión Guardar lo mejor para el final << Paladin
    .turnin 9003 >>Entrega la misión Guardar lo mejor para el final << Priest
    .turnin 9004 >>Entrega la misión Guardar lo mejor para el final << Rogue
    .turnin 9005 >>Entrega la misión Guardar lo mejor para el final << Warlock
    .turnin 9006 >>Entrega la misión Guardar lo mejor para el final << Warrior
    .target Deliana
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaja a |cFFfa9602Orgrimmar|r
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    .turnin 8998 >>Entrega la misión Regreso al principio
    .accept 9007 >>Acepta la misión Guardar lo mejor para el final << Druid
    .accept 9008 >>Acepta la misión Guardar lo mejor para el final << Hunter
    .accept 9009 >>Acepta la misión Guardar lo mejor para el final << Priest
    .accept 9010 >>Acepta la misión Guardar lo mejor para el final << Rogue
    .accept 9011 >>Acepta la misión Guardar lo mejor para el final << Shaman
    .accept 9012 >>Acepta la misión Guardar lo mejor para el final << Warlock
    .accept 9013 >>Acepta la misión Guardar lo mejor para el final << Warrior
    .accept 9014 >>Acepta la misión Guardar lo mejor para el final << Mage
    .target Mokvar
step << Horde
    .goto Orgrimmar,34.96,38.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokvar|r
    >>Necesitarás la |T133129:0|t[|cRXP_LOOT_Capucha Corazón Salvaje|r] y el |T132741:0|t[|cRXP_LOOT_Jubón Corazón Salvaje|r] para entregar esta misión << Druid
    >>Necesitarás el |T133126:0|t[|cRXP_LOOT_Almete de acechabestias|r] y la |T132625:0|t[|cRXP_LOOT_Guerrera de acechabestias|r] para entregar esta misión <<  Hunter
    >>Necesitarás la |T132768:0|t[|cRXP_LOOT_Corona de magister|r] y las |T132666:0|t[|cRXP_LOOT_Togas de magister|r] para entregar esta misión << Mage
    >>Necesitarás la |T132767:0|t[|cRXP_LOOT_Corona de devoto|r] y la |T132652:0|t[|cRXP_LOOT_Toga de devoto|r] para entregar esta misión << Priest
    >>Necesitarás el |T133143:0|t[|cRXP_LOOT_Almete arte sombrío|r] y la |T132722:0|t[|cRXP_LOOT_Guerrera arte sombrío|r] para entregar esta misión << Rogue
    >>Necesitarás el |T133072:0|t[|cRXP_LOOT_Almófar de elementos|r] y el |T132633:0|t[|cRXP_LOOT_Jubón de elementos|r] para entregar esta misión << Shaman
    >>Necesitarás la |T133131:0|t[|cRXP_LOOT_Máscara calígine|r] y la |T132690:0|t[|cRXP_LOOT_Toga calígine|r] para entregar esta misión << Warlock
    >>Necesitarás el |T133070:0|t[|cRXP_LOOT_Yelmo de valor|r] y la |T132738:0|t[|cRXP_LOOT_Coraza de valor|r] para entregar esta misión << Warrior
    .collect 16720,1,9007,1 << Horde Druid --Wildheart Cowl (x1)
    .collect 16677,1,9008,1 << Horde Hunter --Beaststalker's Cap (x1)
    .collect 16693,1,9009,1 << Horde Priest --Devout Crown (x1)
    .collect 16707,1,9010,1 << Horde Rogue --Shadowcraft Cap (x1)
    .collect 16667,1,9011,1 << Horde Shaman --Coif of Elements (x1)
    .collect 16698,1,9012,1 << Horde Warlock --Dreadmist Mask (x1)
    .collect 16731,1,9013,1 << Horde Warrior --Helm of Valor (x1)
    .collect 16686,1,9014,1 << Horde Mage --Magister's Crown (x1)
    .collect 16706,1,9007,1 << Horde Druid --Wildheart Vest (x1)
    .collect 16674,1,9008,1 << Horde Hunter --Beaststalker's Tunic (x1)
    .collect 16690,1,9009,1 << Horde Priest --Devout Robe (x1)
    .collect 16721,1,9010,1 << Horde Rogue --Shadowcraft Tunic (x1)
    .collect 16666,1,9011,1 << Horde Shaman --Vest of Elements (x1)
    .collect 16700,1,9012,1 << Horde Warlock --Dreadmist Robe (x1)
    .collect 16730,1,9013,1 << Horde Warrior --Breastplate of Valor (x1)
    .collect 16688,1,9014,1 << Horde Mage --Magister's Robes (x1)
    .turnin 9007 >>Entrega la misión Guardar lo mejor para el final << Druid
    .turnin 9008 >>Entrega la misión Guardar lo mejor para el final << Hunter
    .turnin 9009 >>Entrega la misión Guardar lo mejor para el final << Priest
    .turnin 9010 >>Entrega la misión Guardar lo mejor para el final << Rogue
    .turnin 9011 >>Entrega la misión Guardar lo mejor para el final << Shaman
    .turnin 9012 >>Entrega la misión Guardar lo mejor para el final << Warlock
    .turnin 9013 >>Entrega la misión Guardar lo mejor para el final << Warrior
    .turnin 9014 >>Entrega la misión Guardar lo mejor para el final << Mage
    .target Mokvar

]])
