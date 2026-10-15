if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< NightElf
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 13-20 Costa Oscura SoD
#displayname 13-20 Costa Oscura << NightElf SoD !Priest
#displayname 13-22 Costa Oscura << NightElf SoD Priest
#displayname 15-18 Costa Oscura << !NightElf SoD
#next 20-22 Costa Oscura SoD << !sod/Warrior/Rogue/Druid/Hunter
#next 22-24 RestedX Alianza 20-30\Los Humedales SoD << sod Priest

-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod
step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6344 >> Entrega la misión Nessa Cantosombrío
    .accept 6341 >> Acepta la misión Las presas de Teldrassil
    .target Nessa Shadowsong
step << NightElf
	.goto Teldrassil,58.39,94.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Entrega la misión Las presas de Teldrassil
    .accept 6342 >> Acepta la misión Vuelo a Auberdine
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >> Vuela a Costa Oscura
    .target Vesprystus
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>Salta del barco cuando esté más cerca de la costa de Auberdine
    .subzone 442 >> Nada hacia Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco << !sod/Hunter/Druid
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Cómprale hasta 40|r |T133918:0|t[Pargos de lodo boquilargos] |cRXP_WARN_. Vende toda tu otra comida de nivel 5 o inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine
    .accept 6343 >> Acepta la misión Regreso a Nessa << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Entrega la misión Vuelo a Auberdine
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Cómprale hasta 40|r |T133918:0|t[Pargos de lodo boquilargos] |cRXP_WARN_. Vende toda tu otra comida de nivel 5 o inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaussiy|r abajo
    .home >> Establece tu Piedra de hogar en Auberdine << !Druid sod !Priest sod
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >> Viaja escaleras arriba hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >> Acepta la misión Tierras apestadas
    .target Tharnariun Treetender
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acepta la misión La extensión de la amenaza
    .target Terenthis
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Envía tu mascota a atacar al |cRXP_ENEMY_Oso Cardo|r. Una vez que tu mascota sea aturdida por el |cRXP_ENEMY_Oso Cardo|r, abandona tu mascota y empieza a domesticarla|r
    .tame 2163 >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo|r para domesticarlo|r
    .target Thistle Bear
step << Warlock
    #season 2
    #label ExplorerImpDarkshore
    #sticky
    #completewith DarkshoreEnd
    >>Mientras haces misiones lanza |T136163:0|t|cRXP_FRIENDLY_[Drenar alma]|r en los enemigos hasta que recibas un |T133257:0|t|cRXP_LOOT_Alma del Expedicionario|r. |cRXP_WARN_Úsalo para aprender a invocar un|r |T236294:0|t|cRXP_FRIENDLY_[Diablillo explorador]|r
    .train 445459 >>|cRXP_WARN_Usa|r |T133257:0|t|cRXP_LOOT_Alma de expedicionario|r |cRXP_WARN_para aprender a invocar a un|r |T236294:0|t[|cRXP_FRIENDLY_Diablillo explorador|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshore << Warlock
    #sticky
    #completewith DarkshoreEnd
    #label FelPortalRuneDarkshore
    >>Estás en una zona con |cRXP_FRIENDLY_Portales vil|r presentes. Si encuentras uno invoca tu |T236294:0|t[|cRXP_FRIENDLY_Diablillo explorador|r] y habla con él mientras estés junto a un portal para enviarlo a una expedición. Después de 10-20 minutos regresará con botín y tendrá la oportunidad de otorgarte |T134419:0|t[|cRXP_FRIENDLY_Runa del guardia vil|r] << Warlock
    >>Estás en una zona con |cRXP_FRIENDLY_Portales vil|r presentes. Si encuentras uno ciérralo usando un |T134945:0|t[|cRXP_LOOT_Pergamino de reparación espacial|r]. Esto te otorgará |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r] << Mage
    >>|cRXP_WARN_Mantente atento a los portales hasta que obtengas la runa|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Skips if you don't have a Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRuneDarkshore
    #sticky
    #completewith DarkshoreEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Guardia vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Invocar guardia vil] << Warlock
    .train 428878 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    >>|cRXP_WARN_Puede que necesites entrar al agua para encontrarlos|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abre la |cRXP_PICK_Criatura marina varada|r. Despójala para obtener los |cRXP_LOOT_Huesos de criatura marina|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recolectar|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante en pronto. Puedes desaprenderla después|r
    >>|cRXP_WARN_Si prefieres comprar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_de la Casa de Subastas después, omite este paso|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo rabioso|r. Tiene un rango de 50 yardas|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step << Hunter
    #season 2
    #sticky
    #label Treats1
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r. Despójalos para obtener sus |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats2
    #requires Treats1
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.088,55.085,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .use 209027 >> |cRXP_WARN_Usa los|r |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r] |cRXP_WARN_en un |cRXP_ENEMY_Reptador de arrecife joven|r para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r]
    .collect 208701,1 -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 410110 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría de bestias|r] |cRXP_WARN_para aprender|r |T132270:0|t[Maestría de bestias]
    .use 208701
    .itemcount 208701,1
step << !sod/Warrior/Rogue
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    .goto Darkshore,38.90,53.59
    >>Corre hacia el borde del Campamento Fúrbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >> Mata enemigos hasta alcanzar 7300+/8800xp
step << Hunter
    #season 2
    #optional
    #requires Treats3
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
    .accept 1001 >> Acepta la misión La caja mecánica 411
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
    .accept 1001 >> Acepta la misión La caja mecánica 411 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .accept 1001 >> Acepta la misión La caja mecánica 411
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entrega la misión Varado
    .accept 4681 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Viaja hacia |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step << Priest
    #season 2
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .target Laird
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    .accept 963 >> Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Viaja al final del muelle, luego salta al agua
step << Rogue
    #season 2
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Viaja al final del muelle, luego salta al agua
    .train 424785,3
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Mata a los |cRXP_ENEMY_Trilladores de Costa Oscura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step << Rogue
    #season 2
    #optional << !NightElf
    #completewith next
    .goto Darkshore,32.80,37.72,20 >> Nada hacia la pequeña isla con el Faro
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .goto Darkshore,32.729,37.093
    >>Abre el |cRXP_PICK_Alijo de faro|r dentro del tronco del árbol. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .cast 402265 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Abre la |cRXP_PICK_Tortuga marina esquelética|r. Despójala para obtener los |cRXP_LOOT_Restos de tortuga marina|r
    .complete 4681,1 --Sea Turtle Remains (1)
step << Priest
    #season 2
    .goto Darkshore,30.5,47.5
    >>Haz clic en el |cRXP_PICK_Resto|r en la isla pequeña. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    #season 2
    >>Debes obtener dos "buffs" de |T135934:0|t|T136057:0|t[Meditaciones]
    >>Debes hacer /kneel (arrodillarte) en uno de los siguientes lugares: Una poza de la luna, Abadía de Villanorte, Catedral de Ventormenta, Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz
    >>Para recibir tu segundo "buff" de |T135934:0|t|T136057:0|t[Meditación] debes hacer /kneel frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray mientras te seleccionan como objetivo
    .train 402849 >> |cRXP_WARN_Una vez que tengas ambos "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] |cRXP_WARN_para aprender|r |T136149:0|t[Palabra de las Sombras: muerte]
    >>|cRXP_WARN_Si no puedes hacerlo ahora, omite este paso y hazlo después|r
    .use 205932
    .itemcount 205932,1
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .accept 947 >> Acepta la misión La cueva de las setas
    .target Barithras Moonshade
step
    #xprate <1.5
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4811 >> Acepta la misión El cristal rojo
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .accept 2138 >> Acepta la misión La limpieza de la infección
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target Terenthis


----Start of Optional Early Level 14 Druid Turnin/train----


step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-10)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al nivel 50|r  |cRXP_WARN_después|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Solo recuerda guardar los huevos y empieza a pensar cuántos puntos de habilidad aún necesitas para alcanzar 50 de cocina|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto 1439,43.126,45.593,15 >> Entra en la cueva de la |cRXP_PICK_Piedra de lechúcico lunar|r
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Usa el|r |T132857:0|t[Polvo de luna Cenarion] |cRXP_WARN_en la |cRXP_PICK_Piedra de lechúcico lunar|r dentro de la cueva para invocar a |cRXP_ENEMY_Garraluna|r en la entrada de la cueva|r
    .timer 4,Cuerpo y corazón RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #season 0
    #optional
    #label EarlyLunaclaw
    .goto Darkshore,43.09,45.55
    >>Mata a |cRXP_ENEMY_Garraluna|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
    .xp <13+9500,1
step << Druid
    #optional
    #label DruidEarlyNessa
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .target Laird
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith EarlyBody
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 6001 >> Entrega la misión Cuerpo y corazón
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    #label EarlyBody
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 6121 >> Entrega la misión Nuevas lecciones
    .accept 6122 >> Acepta la misión La fuente del envenenamiento
    .target Dendrite Starblaze
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    #completewith AmethStart
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .isQuestTurnedIn 6001



----End of Optional Early Level 14 Druid Turnin/train----



step << NightElf Warrior/NightElf Rogue
    #sticky
    #season 0
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurdram Rocamartillo|r y |cRXP_FRIENDLY_Delfrum Barbasílex|r
    .train 2575 >> Aprende |T134708:0|t[Minería]
    .goto Darkshore,38.249,41.008
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .target Kurdram Stonehammer
    .target Delfrum Flintbeard
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elisa Mano de Acero|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .xp <13,1
step << !sod/Warrior/Rogue
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naram Garralarga|r
    .vendor 4183 >>|cRXP_BUY_Cómprale una|r |T135640:0|t[Jambiya] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step << !Druid sod
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r dentro
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrón pequeñas] |cRXP_BUY_o|r |T133634:0|t[Carteras de cuero marrón] |cRXP_BUY_como necesites|r
    >>|cRXP_BUY_Cómprale|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_o|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_hasta que tu carcaj/bolsa de proyectiles esté llena|r << Hunter
    .target Dalmond
step << !Druid sod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .accept 958 >> Acepta la misión Las herramientas de los Altonato << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
 step << !sod/Warrior/Rogue
    #optional
    #completewith AsterionTravel << era
    #completewith AsterionTravelSoD << sod
    .goto 1439,43.509,33.207,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step << Warrior/Rogue
    #season 2
    .goto 1439,41.901,31.339
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4723 >> Acepta la misión Criatura marina varada
step << !Warrior !Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #season 2
    .xp 14-1600 >>Mata lechúcicos lunares hasta que te falten 1600xp para alcanzar el nivel 14
step << skip --logout skip !Warrior !Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >> Dirígete a la cueva cercana
step << skip --logout skip !Warrior !Rogue
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mata al Oráculo lechúcico lunar dentro y salta sobre el hongo grande en el fondo de la cueva, luego realiza un "Logout Skip" desconectándote y volviendo a entrar|r


----Start of SoD Druid Starsurge segment----

step << Druid
    #optional
    #season 2
    #completewith next
    .subzone 442 >> Viaja a Auberdine
step << Druid
    #season 2
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r dentro
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrón pequeñas] |cRXP_BUY_o|r |T133634:0|t[Carteras de cuero marrón] |cRXP_BUY_como necesites|r
    >>|cRXP_BUY_Cómprale|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_o|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_hasta que tu carcaj/bolsa de proyectiles esté llena|r << Hunter
    .target Dalmond
step << Druid
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .accept 954 >> Acepta la misión Bashal'Aran
    .target Thundris Windweaver
step << Druid
    #season 2
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
step << Druid
    #season 2
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << Druid
    #season 2
    #softcore
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> |cRXP_WARN_Toma el barco hacia el Puerto de Menethil. Ahora irás y conseguirás la runa|r |T135730:0|t[Oleada de estrellas] |cRXP_WARN_en Los Humedales que es increíblemente poderosa a este nivel|r
    >>|cRXP_WARN_Es posible que mueras algunas veces durante este proceso|r
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grugimdern|r
    >>|cRXP_WARN_Te dará un|r |T134052:0|t[|cRXP_LOOT_Champiñón de pantano|r]
    .collect 210499,1 -- Marshroom (1)
    .target Grugimdern
    .train 424718,1
    .link https://youtu.be/fWVaDR-NnKU >> |cRXP_WARN_Haz clic aquí para ver el vídeo de referencia|r
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328,15 >> Ve al tocón de árbol que sobresale de la superficie del lago
    .train 424718,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Usa el|r |T134052:0|t[|cRXP_LOOT_Champiñón de pantano|r] |cRXP_WARN_para comerlo|r
    >>|cRXP_WARN_Asegúrate de estar a salvo antes de usarlo, si mueres tendrás que conseguir el champiñón de nuevo|r
    .use 210499
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vodyanoi|r
    >>Solo podrás ver a este PNJ si primero te comes el champiñón
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .train 424718 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de las estrellas|r] |cRXP_WARN_para aprender|r |T135730:0|t[Oleada de estrellas]
    .use 210500
    .itemcount 210500,1
step << Druid
    #season 2
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .usespell 18960
    >>|cRXP_WARN_Estará en tu libro de hechizos|r
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5921 >> Entrega la misión Claro de la Luna
    .target Dendrite Starblaze
    .accept 5929 >> Acepta la misión Espíritu del gran oso
step << Druid
    #season 2
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del gran oso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
    #season 2
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    >>|cRXP_WARN_Esto te hará regresar más rápido|r
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5929 >> Entrega la misión Espíritu del gran oso
    .target Dendrite Starblaze
    .accept 5931 >> Acepta la misión El regreso a Darnassus
step << Druid
    #season 2
    .hs >> Usa tu Piedra de hogar para regresar a Darnassus
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .trainer >> Aprende tus hechizos de clase
    .turnin 5931 >> Entrega la misión El regreso a Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acepta la misión Cuerpo y corazón
step << Druid
    #season 2
    #completewith FlyAuberdine
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid
    #optional
    #season 2
    #label FlyAuberdine
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << Druid
    #season 2
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Entra en la cueva de la |cRXP_PICK_Piedra de lechúcico lunar|r
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Usa el|r |T132857:0|t[Polvo de luna Cenarion] |cRXP_WARN_en la |cRXP_PICK_Piedra de lechúcico lunar|r dentro de la cueva para invocar a |cRXP_ENEMY_Garraluna|r en la entrada de la cueva|r
    .timer 4,Cuerpo y corazón RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 2
    .goto Darkshore,43.09,45.55
    >>Mata a |cRXP_ENEMY_Garraluna|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid
    #season 2
    .goto 1439,47.314,48.676
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
    .isQuestTurnedIn 4811
step << skip --logout skip Druid
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >> Dirígete a la cueva cercana
step << skip --logout skip Druid
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mata al Oráculo lechúcico lunar dentro y salta sobre el hongo grande en el fondo de la cueva, luego realiza un "Logout Skip" desconectándote y volviendo a entrar|r


----End of SoD Druid Starsurge segment----

step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
    .goto 1439,44.168,36.289,15 >> Viaja hacia |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Grells salvajes|r y a los |cRXP_ENEMY_Duendes vil|r por el camino|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Mata a los |cRXP_ENEMY_Grells salvaje|r y a los |cRXP_ENEMY_Duendes vil|r. Despójalos para obtener sus |cRXP_LOOT_Pendientes grell|r
    >>|cRXP_WARN_Evita matar a los |cRXP_ENEMY_Sátiros Deth'ryll|r por ahora|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >> Abandona la misión Bashal'Aran
    .isQuestAvailable 955
step
    #xprate >1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_No tienen reapariciones dinámicas. Omite este paso si no encuentras ningún|r |cRXP_ENEMY_Sátiro Deth'ryll|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    #xprate <1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_Ten en cuenta que no tienen reapariciones dinámicas|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step << !sod/Warrior/Rogue
    #optional
    #completewith RedCrystal
    #season 2
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step << !Warrior !Rogue
    #season 2
    #sticky
    #completewith MushroomCaveSoD
    >>Mata a todos los |cRXP_ENEMY_Osos cardo rabiosos|r que veas. |cRXP_WARN_No tienes que completar esta misión ahora pero idealmente deberías haber matado alrededor de 15+ antes de entrar en la cueva naga|r << Priest
    >>Mata a todos los |cRXP_ENEMY_Osos cardo rabiosos|r que veas. |cRXP_WARN_No tienes que completar esta misión ahora|r << !Priest
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bears (20)
    .mob Rabid Thistle Bear
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,50.81,25.50
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step << !Warrior !Rogue
    #optional
    #completewith next
    #season 2
    #label MushroomCaveSoD
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step << !Warrior !Rogue
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 2
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << !Warrior !Rogue
    .hs >> Usa tu Piedra de hogar para regresar a Auberdine
    >>|cRXP_BUY_Compra comida/agua si es necesario|r << !Warrior !Rogue
	>>|cRXP_BUY_Compra comida si es necesario|r << Warrior/Rogue
    .cooldown item,6948,>0,1
step << skip --logout skip !Warrior !Rogue
    #optional
    #label MushroomLSSoD
    #completewith CavetoAuberSoD
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salta encima de la roca en el piso superior dentro de la cueva. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un Logout Skip desconectando y volviendo a entrar|r
step
    #season 2 << Warrior/Rogue
    #season 0 << Mage/Warlock/Priest/Paladin/Hunter/Druid
    #completewith LateTurtleStart << era
    #completewith RedCrystal << sod
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step << Warrior/Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Viaja hasta el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << skip --logout skip Warrior/Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >> Dirígete a la cueva cercana
step << skip --logout skip Warrior/Rogue
    #completewith next
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mata al Oráculo lechúcico lunar dentro y salta sobre el hongo grande en el fondo de la cueva, luego realiza un "Logout Skip" desconectándote y volviendo a entrar|r
step << !Warrior !Rogue
    #optional
    #season 2
    #label CavetoAuberSoD
    #completewith CliffspringEnd
    .subzone 442 >> Viaja a Auberdine
step << !Warrior !Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Druid/Warrior
    #season 2 << Warrior/Rogue
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Regresa a Auberdine
step << Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step << !Warrior !Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step << NightElf/Hunter/Druid/Rogue
    #season 2 << Warrior/Rogue
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo << !Druid sod
    .accept 4812 >> Acepta la misión Agua en cascada << !Druid sod
    .turnin 4813 >> Entrega la misión Los trozos del interior << Druid sod
    .target Sentinel Glynda Nal'Shea
    .xp >17,1 << !Warrior
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
    .xp >17,1
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
    .xp >17,1
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #season 2 << Warrior/Rogue
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << NightElf/Hunter/Druid/Warrior/Rogue
    #season 2 << Warrior/Rogue
    #optional
    #season 0 << Hunter/Druid/Rogue/Priest
    #completewith MysteriousCrystalHuntDruidEnd << era
    #completewith Anaya << sod
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #completewith EarlyCrystalEnd
    #season 2 << Warrior/Rogue
    #season 0 << Hunter/Druid/Rogue/Priest
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << !Druid sod
    #season 2
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Haz clic en el |cRXP_PICK_Cristal rojo misterioso|r
    >>|cRXP_WARN_Ten cuidado con los dos grupos de 2 |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r al oeste del |cRXP_PICK_Cristal rojo misterioso|r ya que las parejas más cercanas entre sí están vinculadas por agro|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step << skip --logout skip
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-33.200,6141.300,20 >> Dirígete a la cueva cercana
step <<  skip --logout skip
    #optional
    #label OracleLSTwo
    #completewith MysteriousCrystalHuntDruidEnd
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mata al Oráculo lechúcico lunar dentro y salta sobre el hongo grande en el fondo de la cueva, luego realiza un "Logout Skip" desconectándote y volviendo a entrar|r
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    #optional
    #label MysteriousCrystalHuntDruidEnd
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Regresa a Auberdine
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_ya que deberías intentar guardar una|r |T135641:0|t[Daga] |cRXP_WARN_para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r << Rogue
    .turnin 4813 >> Entrega la misión Los trozos del interior << !Hunter !Druid
    .turnin 4813,3 >> Entrega la misión Los trozos del interior << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
    .isOnQuest 4813
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_Equipa el|r |T135145:0|t[Bastón de roble]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .target Laird
step << Druid
    #optional
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 13+9500 >> Mata enemigos hasta alcanzar 9500+/11400xp
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
    .isQuestAvailable 6001
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
    .isQuestAvailable 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 6001 >> Entrega la misión Cuerpo y corazón
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
    .isQuestAvailable 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .accept 6121 >> Acepta la misión Nuevas lecciones
    .trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 6121 >> Entrega la misión Nuevas lecciones
    .accept 6122 >> Acepta la misión La fuente del envenenamiento
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step
    #season 0
    #optional
    #completewith AmethStart
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #loop
    #season 0
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Mata a los |cRXP_ENEMY_Lechúcico lunar|r. Despójalos para obtener sus |T132832:0|t|cRXP_LOOT_[Huevos pequeños]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_al 10 después|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !sod/Warrior/Rogue/Priest
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de reaparición diferentes en Ameth'Aran|r
    >>|cRXP_WARN_Si no la encuentras y quieres volver a intentarlo más tarde a costa de tener que matar más criaturas pronto, omite este paso|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step << !sod/Warrior/Rogue/Priest
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de reaparición diferentes en Ameth'Aran|r
    >>|cRXP_WARN_Quizás quieras agruparte con otros jugadores cercanos si no la encuentras. Pregunta en el canal General (/1) para formar grupo con cualquiera que también la esté buscando|r
    >>|cRXP_WARN_Si no la encuentras y quieres volver a intentarlo más tarde a costa de tener que matar más criaturas pronto, omite este paso|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Mata a los |cRXP_ENEMY_Altonatos malditos|r, a los |cRXP_ENEMY_Altonatos en pena|r y a los |cRXP_ENEMY_Altonatos gemebunda|r. Despójalos para obtener sus |cRXP_LOOT_Reliquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .accept 953 >> Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
    .goto 1439,42.652,63.145
    >>Haz clic en la |cRXP_PICK_La caída de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Tysha Filoluna|r
    .turnin 953 >> Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrindEnd
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado ya que|r |T132307:0|t[Huyen] |cRXP_WARN_cuando tienen menos del 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith FurbolgGrindEnd
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrindEnd
    #season 0
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Warrior/Rogue
    #optional
    #completewith LateTurtleStart
    #season 2
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Priest
    #season 2
    .goto Darkshore,42.0,66.6
    .goto Darkshore,42.0,64.5,0
    .goto Darkshore,42.0,68.2,0
    .goto Darkshore,38.7,68.0,0
    .goto Darkshore,38.7,66.3,0
    .goto Darkshore,38.7,64.5,0
    >>Termina de matar a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !sod/Warrior/Rogue/Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
step << !sod/Warrior/Rogue/Priest
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #xprate <1.5
    #optional
    #requires Treats3 << Druid --Season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+11875 >> Mata enemigos hasta alcanzar 11875+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+11000 >> Mata enemigos hasta alcanzar 11000+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #requires Treats3 << Druid --Season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 15+600 >> Mata enemigos hasta alcanzar 600+/14400xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 14+12210 >> Mata enemigos hasta alcanzar 12210+/12900xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step << !sod/Warrior/Rogue/Priest
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Regresa a Auberdine
    .isOnQuest 4722
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step << !sod/Warrior/Rogue/Priest
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0 << !Warrior !Rogue
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    >>|cRXP_WARN_Es posible que necesites esperar a que termine su Roleplay si alguien más acaba de entregar la misión|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4811 >> Entrega la misión El cristal rojo
    .accept 4812 >> Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << !sod/Warrior/Rogue/Priest
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de agua vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Entrega la misión La extensión de la amenaza
    .accept 986 >> Acepta la misión El maestro perdido << !sod
    .target Terenthis
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Sube las escaleras
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze


----Start of SoD Priest early level 18 wand quest + meditation quest detour----

step << Priest
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .isOnQuest 957
    .target Asterion
step << Priest
    #season 2
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener |T134939:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Cachorros cardo|r que pueden aturdirte durante 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << Priest
    #season 2
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Abre las |cRXP_PICK_Provisiones de nueces de los Bosque Negro|r. Despójalo para obtener la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Abre las |cRXP_PICK_Provisiones de fruta de los Bosque Negro|r. Despójalas para obtener la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Usa el|r |T134712:0|t[Cuenco de purificación lleno] |cRXP_WARN_en la |cRXP_PICK_Fogata|r para invocar a|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corrupción de los Bosque Negro RP
    .use 12347
step << Priest
    #season 2
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Mata a |cRXP_ENEMY_Xabraxxis|r. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae en el suelo. Despójala para obtener el |cRXP_LOOT_Dije de corrupción|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Priest
    #season 2
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << skip --logout skip Priest
    #season 2
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    .xp 18 >> Mata enemigos hasta el nivel 18. |cRXP_WARN_Si estás muy lejos de esto, puedes usar la cueva de setas de los naga para hacer un "logout skip" a Auberdine y entregar las misiones en su lugar|r
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Darnassus
    .zoneskip Darnassus
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jandria|r
    .trainer >> Aprende tus hechizos de clase
    .target Jandria
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maethra Curoescoria|r
    .accept 78192 >> Acepta la misión Los secretos de la Luz
    .target Maethra Slagheart
step << Priest
    #season 2
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >> Toma el portal morado a la Aldea Rut'theran
step << Priest
    #season 2
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
step << Priest
    #season 2
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
step << Priest
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << Priest
    #season 2
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763,1 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Destruye la |T134939:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step << Priest
    #season 2
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135469:0|t[Varita de piedra lunar]
    .use 15204
    .itemcount 15204,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.61

----End of SoD Priest early level 18 wand quest + meditation quest detour----


step << !Hunter
    #season 0 << Druid/Priest
    #season 2 << Warrior/Rogue
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .vendor 6301 >>|cRXP_BUY_Cómprale|r |T134059:0|t[Especias suaves] |cRXP_BUY_hasta que tengas|r |T134059:0|t[Especias suaves] |cRXP_BUY_en cantidad igual o mayor que los|r |T132832:0|t[Huevos pequeños] |cRXP_BUY_que tienes actualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .turnin 982 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaja hacia la|cRXP_PICK_ Hoguera|r en el suelo|r
    +Empieza con |T133971:0|t[Cocina] |cRXP_WARN_elaborando|r |T132834:0|t[Huevo a las finas hierbas]|cRXP_WARN_. Haz esto hasta que tu|r |T133971:0|t[Cocina] |cRXP_WARN_haya alcanzado al menos el nivel 10|r
    >>|cRXP_WARN_Continúa subiendo el nivel de tu|r |T133971:0|t[Cocina] |cRXP_WARN_ hasta que se te acaben los|r |T132832:0|t[Huevos pequeños] << !sod
    >>|cRXP_WARN_Hay una misión en Bosque del Ocaso más adelante que requiere que tu|r |T133971:0|t[Cocina] |cRXP_WARN_sea de nivel 50 o superior. También puedes cocinar esto cuando subas al barco pronto|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 958 >> Entrega la misión Las herramientas de los Altonato << !sod
    .turnin 4762 >> Entrega la misión El Río Fonroca << sod
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mata a los |cRXP_ENEMY_Volantones zancudos del bosque|r y a los |cRXP_ENEMY_Zancudos del bosques|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    >>|cRXP_WARN_Ten cuidado, los|r |cRXP_ENEMY_Volantones zancudos del bosque|r |T132307:0|t[Huyen] |cRXP_WARN_al <30% de salud|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>Considera saltarte algunos de nivel 17 si obtienes buen botín. |cRXP_WARN_No es necesario que completes esta misión ahora|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>|cRXP_WARN_Usa el|r |T134865:0|t[Tubo de ensayo vacío] |cRXP_WARN_en la base del Río Fonroca|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
----Start of Hunter/Druid 1x and SoD Warrior/Rogue early Althalaxx section (for money+xp)----


step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Viaja hacia |cRXP_FRIENDLY_Balthule Golpesombra|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r del suelo
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Viaja a la Cueva del Río Fonroca
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>|cRXP_WARN_Usa la|r |T134776:0|t[Muestra vacía de Salto de Fonroca] |cRXP_WARN_en el agua en la entrada de la Cueva del Río Fonroca|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step << Warrior
    #season 1 -- not loading for now
    #optional
    #sticky
    #label EndlessRage
    .goto Darkshore,55.40,36.05,0,0
    >>Mata a |cRXP_ENEMY_Lady Sedorax|r. Despójala para obtener la |T132347:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_es un enemigo élite de nivel 18 que además tiene otros enemigos a su alrededor. Puedes optar en su lugar por conseguirla en Páramos de Poniente, lo cual es mucho más fácil|r
    >>|cRXP_WARN_Pide por el chat General (/1) formar grupo con cualquiera que también esté buscando matarla o que pueda ayudarte|r
    >>|cRXP_WARN_Si no puedes hacer esto, omite este paso|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
    .group
step << Warrior
    #season 1 -- not loading for now
    #sticky
    #label EndlessRageEnd
    #requires EndlessRage
    #optional
    .train 403489 >>|cRXP_WARN_Usa la|r |T132347:0|t[|cRXP_FRIENDLY_Runa de Ira infinita|r] |cRXP_WARN_para aprender|r |T132347:0|t[Ira infinita]
    .use 208741
    .itemcount 208741,1
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>Despoja los |cRXP_LOOT_Boletos rudos|r y una |cRXP_LOOT_Oronja verde|r del suelo
    >>|cRXP_WARN_Quédate en la sección superior. Si no hay una |cRXP_LOOT_Oronja verde|r al final del lado superior, baja y consigue uno de la sala del sur abajo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jinetes de olas Escama Tormentosa|r lanzan|r |T135836:0|t[Aspersión] |cRXP_WARN_(Ataque a distancia instantáneo: Causa daño a los enemigos cercanos y los lanza hacia atrás) - asegúrate de no estar en una posición donde te puedan tirar del nivel superior de la cueva|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << skip --logout skip Warrior/Rogue
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salta encima de la roca en el piso superior dentro de la cueva. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un "Logout Skip" desconectando y volviendo a entrar|r
step
    #optional
    #season 0 << !Warrior !Rogue
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Viaja a Auberdine

----Start of SoD 250% xp buff early southern Darkshore one loop----

step << Warrior/Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step << Warrior/Rogue
    #season 2
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaja hacia la|cRXP_PICK_ Hoguera|r en el suelo|r
    +Empieza con |T133971:0|t[Cocina] |cRXP_WARN_elaborando|r |T132834:0|t[Huevo a las finas hierbas]|cRXP_WARN_. Haz esto hasta que tu|r |T133971:0|t[Cocina] |cRXP_WARN_haya alcanzado al menos el nivel 10|r
    >>|cRXP_WARN_Continúa subiendo el nivel de tu|r |T133971:0|t[Cocina] |cRXP_WARN_ hasta que se te acaben los|r |T132832:0|t[Huevos pequeños] << !sod
    >>|cRXP_WARN_Hay una misión en Bosque del Ocaso más adelante que requiere que tu|r |T133971:0|t[Cocina] |cRXP_WARN_sea de nivel 50 o superior. También puedes cocinar esto cuando subas al barco pronto|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step << Warrior/Rogue
    #season 2
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178
step << !Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    #season 2
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_ya que deberías intentar guardar una|r |T135641:0|t[Daga] |cRXP_WARN_para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r << Rogue
    .turnin 4813 >> Entrega la misión Los trozos del interior << !Hunter !Druid
    .turnin 4813,3 >> Entrega la misión Los trozos del interior << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en la Poza de la Luna de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << Warrior/Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barithras Sombra Lunar|r
    .turnin 947 >> Entrega la misión La Cueva de las Setas
    .accept 948 >> Acepta la misión Onus
    .target Barithras Moonshade
step
    #season 2
    .goto Darkshore,37.21,44.22
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
step << Druid/Priest
    #season 2
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Kimlya|r
    .home >> Establece tu Piedra de hogar en Astranaar
    .target Innkeeper Kimlya
step << Warrior/Rogue
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4725
step << Druid/Hunter
    #season 2
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Acepta la misión Rico marisco
    .target Gubber Blump
step << Druid
    #season 2
    #sticky
    #label Treats1
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r. Despójalos para obtener sus |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats2
    #requires Treats1
    #loop
    .goto 1439,36.091,51.501,0
    .goto 1439,35.088,55.085,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .use 209027 >> |cRXP_WARN_Usa los|r |T237270:0|t[|cRXP_LOOT_Bocados de cangrejo|r] |cRXP_WARN_en un |cRXP_ENEMY_Reptador de arrecife joven|r para recibir la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Reef Crawler
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 416049 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para aprender|r |T132131:0|t[Lacerar]
    .use 208687
    .itemcount 208687,1
step << !Warrior !Rogue !Priest
    #season 2
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step << !Warrior !Rogue !Priest
    #season 2
    #sticky
    #completewith SealSoD
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de aparición diferentes en Ameth'Aran. Omite esta misión si no está allí|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step << !warrior !Rogue !Priest
    #season 2
    #label SealSoD
    .goto 1439,42.373,61.815
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener su |cRXP_LOOT_Colgante|r
    >>|cRXP_WARN_Ten en cuenta que tiene un tiempo de reaparición de 7-8 minutos y 4 puntos de aparición diferentes en Ameth'Aran. Omite esta misión si no está allí|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step << !Priest
    #optional
    #season 2
    #completewith OnuSoD
    >>Mata |cRXP_ENEMY_Osos cardo s|r. |cRXP_WARN_No tienes que completar esta misión ahora pero lo ideal es que hayas matado a más de 15 para cuando llegues a Onu|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #season 2
    #completewith OnuSoD
    .goto 1439,43.555,76.293,80 >> Viaja al Páramo de los Ancianos
step
    #season 2
    #label OnuSoD
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 952 >> Entrega la misión El Páramo de los Ancianos << Warrior/Rogue
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    #season 2
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >> Viaja a La Espada del Maestro
    .subzoneskip 449
    .isOnQuest 944
step
    #season 2
    #optional
    #completewith MasterEnd
    >>Mata a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    *|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Matones Crepuscular|r te pueden|r |T132343:0|t[Desarmar] |cRXP_WARN_durante 6 segundos|r << Rogue/Paladin/Warrior
    *Ten cuidado ya que los |cRXP_WARN_Discípulos Crepuscular|cRXP_ENEMY_ lanzan|r |T135953:0|t[Renovar] |ry un|cRXP_WARN_ |T135915:0|t[Sanar] de 3 segundos|r
    >>|cRXP_WARN_La probabilidad de caída de este objeto es extremadamente baja. No te desvíes de tu ruta para conseguirlo|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 2
    .goto 1439,38.537,86.050
    >>Descubre La Espada del Maestro
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #season 2
    #completewith next
    .cast 5809 >> |cRXP_WARN_Usa la|r |T134715:0|t[Ampolla de adivinación] |cRXP_WARN_y colócala en el suelo|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 2
    >>|cRXP_WARN_Haz clic en el |cRXP_PICK_Cuenco de visión|r del suelo|r
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    #label MasterEnd
    #season 2
    .goto 1439,38.537,86.050
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r en el pedestal del norte
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
step
    #optional
    #sticky
    #season 2
    .isQuestTurnedIn 949
    .destroy 5251 >> Elimina la |T134715:0|t[Ampolla de adivinación] de tu inventario, ya que ya no se necesita
step << !Warrior !Druid !Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .target Onu
step
    #sticky
    #label prospector
    #season 2
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r
    >>|cRXP_WARN_Puede que tengas que esperar a que reaparezca o a que otros terminen la escolta|r
    .turnin 729 >> Entrega la misión El prospector despistado
    .target Prospector Remtravel
step
    #season 2
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Prospector Tripirrem|r. Esto iniciará una escolta
    .accept 731,1 >> Acepta la misión El prospector despistado
    >>|cRXP_WARN_Esta misión es MUY difícil. Omite este paso si fallas|r << !Warrior
    >>|cRXP_WARN_¡Lo más probable es que no puedas completar esta misión en solitario!|r Te recomendaría que ni siquiera lo intentes a menos que encuentres otro jugador para formar un grupo << Warrior
    >>Omite este paso si fallas o no hay nadie para formar un grupo << Warrior
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r << Hunter
    .link https://youtu.be/md926sh3L6U >> |cRXP_WARN_Haz clic aquí para ver una guía en vídeo|r << !Hunter
    .target Prospector Remtravel
step
    #requires prospector
    #season 2
    >>|cRXP_WARN_Acompaña al |cRXP_FRIENDLY_Prospector Tripirrem|r por la Excavación|r
    >>|cRXP_WARN_Esta misión es MUY difícil. Omite este paso si fallas|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Haz clic aquí para ver la guía en vídeo|r << Hunter
    .complete 731,1
    .isOnQuest 731
step << Druid/Hunter/Warrior
    #sticky
    #completewith CompleteThistleBears << Hunter/Druid
    #completewith SodMurk << Warrior
    #season 2
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Mata |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>|cRXP_WARN_No tienes que completar esta misión ahora, pero idealmente deberías tener al menos 4 al final de esta sección|r << !Warrior
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << !Warrior
    #season 2
    .goto 1439,31.251,87.419
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4733 >> Acepta la misión Criatura marina varada
    >>|cRXP_WARN_Esta misión puede ser MUY difícil. Ataca a los |cRXP_ENEMY_Múrlocs|r de 1 en 1, de lo contrario podrías atraer múltiples a la vez|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Haz clic aquí para una guía en video|r << Hunter
step << !Warrior
	#season 2
    .goto 1439,31.229,85.564
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4732 >> Acepta la misión Tortuga marina varada
step << !Warrior
	#season 2
    .goto 1439,31.690,83.700
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4731 >> Acepta la misión Tortuga marina varada
step
	#season 2
    .goto 1439,32.644,80.711
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4730 >> Acepta la misión Criatura marina varada
step
    #season 2
    #label SodMurk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Asegúrate de verificar si |cRXP_ENEMY_Viscoso|r ya está en el agua (si alguien ha fallado previamente el encuentro o dejó al |cRXP_ENEMY_Cazador Brumagris|r en la oleada con la que aparece vivo)|r
    >>Mata a los |cRXP_ENEMY_Guerreros Brumagris|r y a los |cRXP_ENEMY_Cazadores Brumagris|r en el campamento
    >>|cRXP_WARN_Muévete a la Fogata en el centro del campamento para iniciar el encuentro con |cRXP_ENEMY_Viscoso|r:|r
    >>|cRXP_WARN_3 oleadas aparecerán del agua, cada una después de matar la oleada anterior: Oleada 1 tiene 3 nivel 12-13 |cRXP_ENEMY_Correcostas Brumagris|r, Oleada 2 tiene 2 nivel 15-16 |cRXP_ENEMY_Guerreros Brumagris|r, y Oleada 3 tiene un nivel 19 |cRXP_ENEMY_Viscoso|r y un nivel 16-17 |cRXP_ENEMY_Cazador Brumagris|r. Puedes moverte lejos de la Fogata para evitar atraer la siguiente oleada|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step << Warrior
    #season 2
    .goto Darkshore,35.7,73.5
    >>Termina de matar a los |cRXP_ENEMY_Reptadores de marea escamado|r y |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    >>|cRXP_WARN_Omite este paso si no hay más cangrejos cerca|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << !Priest
    #season 2
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>Haz clic en la |cRXP_PICK_Criatura marina varada|r
    .accept 4728 >> Acepta la misión Criatura marina varada
step << !Priest
    #season 2
    .goto Darkshore,38.9,64.9
    >>Termina de matar a los |cRXP_ENEMY_Osos cardo rabiosos|r.
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_si no los matas lo suficientemente rápido (Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Warrior !Rogue !Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
step << skip -- Hunter
    .goto Darkshore,39.5,55.5
    .xp 19+800 >> Mata enemigos repetidamente hasta tener 800xp en el nivel 19. De esta manera tendrás el nivel 20 para aprender habilidades en Darnassus después de entregar todas las misiones

----Start of SoD Priest Ashenvale Meditation quest section----


step << Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
step << Priest
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
step << Priest
    #season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Priest
    #season 2
    #completewith towersod
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
step << Priest
    #season 2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r hasta Atalaya de Maestra en Vallefresno|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>Omite este paso si no has completado la misión
    .turnin 5321 >> Entrega la misión El despertar
step << Priest
    #season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acepta la misión Cabello de Bathran
step << Priest
    #season 2
    #sticky
    #completewith PriestHairSoD
    >>Mata |cRXP_ENEMY_Herboristas Renegados|r y |cRXP_ENEMY_Buscadores Renegado|r mientras buscas los Fardos de plantas
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
    #label PriestHairSoD
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Parecen pequeños sacos marrones. Pueden ser difíciles de ver|r
    .complete 1010,1
    .isOnQuest 1010
step << Priest
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Termina de matar a los |cRXP_ENEMY_Herboristas Renegados|r y |cRXP_ENEMY_Buscadores Renegados|r
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step << Priest
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    >>|cRXP_WARN_Vuela de vuelta si tu piedra de hogar está en enfriamiento|r
    .zoneskip Darkshore
    .subzoneskip 442
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Vuela de vuelta a Auberdine
	.target Daelyshia


----End of SoD Priest Ashenvale Meditation quest section----


step
    #season 2
    #completewith CleansingTharnariunSod
    .subzone 442 >> Viaja a Auberdine
step
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4728 >> Entrega la misión Criatura marina varada << !Priest
    .turnin 4730 >> Entrega la misión Criatura marina varada
    .turnin 4731 >> Entrega la misión Tortuga marina varada << !Warrior
    .turnin 4732 >> Entrega la misión Tortuga marina varada << !Warrior
    .turnin 4733 >> Entrega la misión Criatura marina varada << !Warrior
    .target Gwennyth Bly'Leggonde
step << Warrior
    .goto Darkshore,36.096,44.931
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step << !Warrior !Rogue !Priest
    #optional
    #completewith next
    #season 2
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Regresa a |cRXP_FRIENDLY_Cerellean Zarpablanca|r en el muelle
step << !Warrior !Rogue !Priest
    #optional
    #season 2
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cerellean Zarpablanca|r
    >>|cRXP_WARN_Es posible que necesites esperar a que termine su Roleplay si alguien más acaba de entregar la misión|r
    .turnin 963 >> Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .goto 1439,37.703,43.393
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Glynda Nal'Shea|r
    .turnin 4740 >> Entrega la misión SE BUSCA: ¡Viscoso!
    .target Sentinel Glynda Nal'Shea
step << !Priest
    #label CleansingTharnariunSod
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2138 >> Entrega la misión La limpieza de la infección
    .accept 2139 >> Acepta la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Entrega la misión La extensión de la amenaza
    .target Terenthis
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Elissa Brisa Estelar|r arriba
    .accept 965 >> Acepta la misión La Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto 1439,37.439,41.839
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Druid
    #season 2
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >> Abandona la misión Reunir los ingredientes del remedio
step
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Acepta la misión Regreso a Nessa
    .target Laird
    .isQuestComplete 741 << Rogue sod
step << NightElf
    #season 2
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fly Teldrassil >> Vuela a Teldrassil
    .target Caylais Moonfeather
    .isQuestComplete 741 << Rogue
step << NightElf
    #season 2 << !sod Priest
    #season 1 << sod Priest
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .target Nessa Shadowsong
    .isQuestComplete 741 << Rogue sod
step << !NightElf
    #season 2
    .goto 1439,33.169,40.179,15 >> Viaja al muelle del barco de Darnassus
step << !NightElf
    #season 2
    .goto 1439,33.213,39.883
    >>|cRXP_WARN_Sube el nivel de tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Puerto Menethil si es necesario|r << Warrior/Paladin/Rogue
    .zone Teldrassil >> Toma el barco hacia Darnassus
    .zoneskip Stormwind City << Warrior
    .zoneskip Ironforge << Warrior
    .zoneskip Darnassus
    .dungeon !DM << !Dwarf/!Hunter
step << !Druid
    #completewith next
    #season 2
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Toma el portal morado a Darnassus
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un|r |T135157:0|t[Bastón largo]
    .collect 928,1
    .target Ariyell Skyshadow
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    #season 2
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135157:0|t[Bastón largo]
    .use 928
    .itemcount 928,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    .goto Darnassus,58.72,34.92
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arias'ta Rugefilo|r
    .trainer >> Aprende tus hechizos de clase
    .target Arias'ta Bladesinger
step << Hunter
    #season 2
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    >>|cRXP_WARN_Asegúrate de tener 70 de plata después de aprender habilidades. Lo necesitarás para comprar un arco|r
    .trainer >> Aprende tus hechizos de clase
    .target Jocaste
step << Hunter
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
    .isQuestComplete 741
step << Hunter
    #completewith startSoD
    #label RecruveReinforcedSoD
    #season 2
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Compra un|r |T135489:0|t[Arco corvo pesado]
    >>|cRXP_WARN_Abastécete de|r |T132382:0|t[Flechas afiladas]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforcedSoD
    #completewith next
    #season 2
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    >>Entra en el Enclave Cenarion
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    >>|cRXP_WARN_Asegúrate de tener al menos 1 oro y 30 platas restantes después de aprender habilidades. Lo necesitarás para comprar armas|r
    .trainer >> Aprende tus hechizos de clase
    .target Syurna
    .isQuestComplete 741
step << Rogue
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa dos dagas|r |T135342:0|t[Kris]
    .collect 2209,2
    .target Ariyell Skyshadow
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .isQuestComplete 741
step << Rogue
    #season 2
    #completewith next
    +|cRXP_WARN_Equipa las dos dagas|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,2
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
step << !Druid !Hunter
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
    .isQuestComplete 741
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jandria|r
    .trainer >> Aprende tus hechizos de clase
    .target Jandria
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maethra Curoescoria|r
    .turnin 78192 >> Entrega la misión Los secretos de la Luz
    .accept 78193 >> Acepta la misión Los secretos de la Luz
    .target Maethra Slagheart
step << !Druid !Hunter
    #season 2
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    >>|cRXP_WARN_Vuela de vuelta si tu piedra de hogar está en enfriamiento|r
    .zoneskip Darkshore
    .subzoneskip 442
    .isQuestComplete 741 << Rogue
    .cooldown item,6948,>0,1
step << !Druid !Hunter
    #season 2
    #label startSoD
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >> Toma el portal morado a la Aldea Rut'theran
    .isQuestComplete 741 << Rogue
step << !Druid !Hunter
    #season 2
    #label FlyAuberdineSoD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
    .zoneskip Darkshore
    .isQuestComplete 741 << Rogue

----Start of Druid/Hunter Quest+SoD rune section----


step << Druid
    #optional
    #season 2
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r
    .turnin 6001 >> Entrega la misión Cuerpo y corazón
    .accept 26 >> Acepta la misión Una lección que aprender
    .trainer >> Aprende tus hechizos de clase
    >>Pronto conseguirás muchas runas poderosas de gato, lo que convierte a la forma felina con la especialización Feral en la opción más rápida para subir de nivel.|cRXP_WARN_Reinicia tus talentos de Equilibrio a Feral|r si quieres. Si lo haces, consigue el talento de velocidad de movimiento para la forma de gato lo antes posible, te ahorrará mucho tiempo de desplazamiento.
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step << Druid
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Jefe Mostachogris|r
    .turnin 741 >> Entrega la misión El prospector despistado
    .accept 942 >> Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker
step << Druid/Hunter
    #season 2
    #optional
    #completewith next
    +Ahora irás a Teldrassil para obtener |T133816:0|t[Grabar guantes - Destrozar] << Druid
    +Ahora irás a Teldrassil para obtener |T236178:0|t[Disparo explosivo] << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    .goto 1438,40.411,54.076
    .subzone 141 >> Viaja a Teldrassil
    .subzoneskip 262
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    #label Banethil1
    #completewith Rune
    .goto 1438,40.411,54.076,40,0
    .goto 1438,42.225,54.161,40,0
    .goto 1438,44.474,56.354,40,0
    .goto 1438,44.197,58.040
    .subzone 262 >> Entra en el Túmulo de Ban'ethil
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    #requires Banethil1
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
step << Druid/Hunter
    #season 2
    #loop
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
    .mob Rageclaw
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Equipa el|r |T136061:0|t|cRXP_LOOT_[Ídolo de cólera osuna]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #season 2
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
step << Druid/Hunter
    #season 2
    #label Rune
    .train 410025 >>|cRXP_WARN_Usa el|r |T136061:0|t|cRXP_LOOT_[Ídolo de cólera osuna]|r |cRXP_WARN_para aprender|r |T132135:0|t[Destrozar] << Druid
    .train 410123 >>|cRXP_WARN_Usa la|r |T134419:0|t|cRXP_LOOT_[Runa de Disparo explosivo]|r |cRXP_WARN_para aprender|r |T236178:0|t[Disparo explosivo] << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .use 206954 << Druid
    .use 206169 << Hunter
    .aura -414824 << Druid
step << Druid
    #optional
    #completewith TotL
    .cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .zoneskip Moonglade
    step << Druid
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r
    .turnin 26 >> Entrega la misión Una lección que aprender
    .accept 29 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>Nada al Lago Elune'ara
    >>Abre el |cRXP_PICK_Adorno contenedor|r. Despójalo para obtener un |T134125:0|t[Adorno de altar]
    >>|cRXP_WARN_Puede aparecer en diferentes ubicaciones bajo el agua|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Lanza Teletransporte a: Claro de la Luna
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el árbol del Santuario de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Entrega la misión La prueba del lago
    .accept 272 >> Acepta la misión La prueba del león marino
    .target Tajarri
step << Druid/Hunter
    #optional
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore


----End of Druid Quest+SoD rune section----


step << Priest
    #season 2
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Priest
    #season 2
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM


----End of SoD 250% xp buff early southern Darkshore one loop----

]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
<< !sod/Warrior/Rogue/Hunter/Druid
#group RestedXP Alianza 1-20
#groupid RXP-SRGCE-A1
#name 20-22 Costa Oscura SoD
#displayname 20-22 Costa Oscura << sod !Warrior
#displayname 20-22 Costa Oscura/Vallefresno << sod Warrior
#next RestedXP Alianza 20-30\22-24 Los Humedales SoD

step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Usa el|r |T133748:0|t[Cuenco de purificación vacío] |cRXP_WARN_en el|r |cRXP_PICK_Pozo lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Entrega la misión Bashal'Aran
    .isOnQuest 957
    .target Asterion
step << Warlock
    #season 2
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label ExplorerImpDarkshoreTwo
    >>Mientras haces misiones lanza |T136163:0|t|cRXP_FRIENDLY_[Drenar alma]|r en los enemigos hasta que recibas un |T133257:0|t|cRXP_LOOT_Alma del Expedicionario|r. |cRXP_WARN_Úsalo para aprender a invocar un|r |T236294:0|t|cRXP_FRIENDLY_[Diablillo explorador]|r
    .train 445459 >>|cRXP_WARN_Usa|r |T133257:0|t|cRXP_LOOT_Alma de expedicionario|r |cRXP_WARN_para aprender a invocar a un|r |T236294:0|t[|cRXP_FRIENDLY_Diablillo explorador|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshoreTwo << Warlock
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label FelPortalRuneDarkshore
    >>Estás en una zona con |cRXP_FRIENDLY_Portales vil|r presentes. Si encuentras uno invoca tu |T236294:0|t[|cRXP_FRIENDLY_Diablillo explorador|r] y habla con él mientras estés junto a un portal para enviarlo a una expedición. Después de 10-20 minutos regresará con botín y tendrá la oportunidad de otorgarte |T134419:0|t[|cRXP_FRIENDLY_Runa del guardia vil|r] << Warlock
    >>Estás en una zona con |cRXP_FRIENDLY_Portales vil|r presentes. Si encuentras uno ciérralo usando un |T134945:0|t[|cRXP_LOOT_Pergamino de reparación espacial|r]. Esto te otorgará |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r] << Mage
    >>|cRXP_WARN_Mantente atento a los portales hasta que obtengas la runa|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 428878,1 << Mage
    .train 427733,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRuneDarkshore
    #sticky
    #completewith TravelMenethilNoDMBoat
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 427733 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Guardia vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Invocar guardia vil] << Warlock
    .train 428878 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Descarga de fuego fardo|r |cRXP_WARN_para aprender|r |T135809:0|t[Descarga de fuego fardo] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener |T134939:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r. Despójala para obtener el |T132942:0|t[|cRXP_FRIENDLY_Ídolo feroz|r]
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Cachorros cardo|r que pueden aturdirte durante 2 segundos|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step
    #season 0 << Warrior
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Cachorros cardo|r que pueden aturdirte durante 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Abre las |cRXP_PICK_Provisiones de nueces de los Bosque Negro|r. Despójalo para obtener la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Abre las |cRXP_PICK_Provisiones de fruta de los Bosque Negro|r. Despójalas para obtener la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r
    >>|cRXP_WARN_Despojando esto invocará 2 |cRXP_ENEMY_Fúrbolgs Bosque Negro|r que atacarán y correrán hacia ti. Prepárate para pelear contra ellos o reinícialos|r
    >>|cRXP_WARN_Si ves a |cRXP_ENEMY_Xabraxxis|r gritar en el chat o ves a alguien peleando con él, ayúdalos. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que deja en el suelo. Despójala para obtener el|r |cRXP_LOOT_Dije de corrupción|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Usa el|r |T134712:0|t[Cuenco de purificación lleno] |cRXP_WARN_en la |cRXP_PICK_Fogata|r para invocar a|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,La corrupción de los Bosque Negro RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Mata a |cRXP_ENEMY_Xabraxxis|r. Abre la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae en el suelo. Despójala para obtener el |cRXP_LOOT_Dije de corrupción|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << Warrior
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Cachorros cardo|r que pueden aturdirte durante 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << skip --logout skip Warrior
    #season 2
    .goto Darkshore,51.48,38.43
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salta sobre el hongo en al fondo de la cueva de la Madre del cubil y realiza un "logout skip" desconectándote sobre él|r
step << Warrior
    #optional
    #season 2
    #completewith BlackwoodSod
    .subzone 442 >> Viaja a Auberdine
step
    #season 0 << Warrior
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 965 >> Entrega la misión La Torre de Althalaxx
    .accept 966 >> Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto Darkshore,56.20,26.46
    >>Mantente atento a los grupos que entren en la Torre de Althalaxx. Si ves a alguien, síguelos despacio por el interior para poder despojar el |cRXP_WARN_Orbe extraño|cRXP_PICK_ en lo alto de la torre|r
    >>|cRXP_WARN_Ten cuidado ya que los enemigos de esta torre son imposibles de matar para ti (Nivel 28-31)|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    >>Abre el |cRXP_PICK_Orbe extraño|r en la mesa en lo alto de la Torre de Althalaxx. Despójalo para obtener el |cRXP_LOOT_Orbe de Althalaxx|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step << Warlock
    #season 2
    #optional
    #completewith Parchments
    >>Mantente atento a los grupos que entren en la Torre de Althalaxx. Si ves a alguien, síguelos despacio por el interior para poder despojar la |cRXP_WARN_Rama de Altek|cRXP_PICK_ en la parte superior para obtener la |T135153:0|t[Rama de Altek]|r
    >>|cRXP_WARN_Esto es para tu runa de|r |T237558:0|t[Metamorfosis] |cRXP_WARN_más adelante. Si no quieres hacer esto, omite este paso|r
    >>|cRXP_WARN_Ten cuidado ya que los enemigos de esta torre son imposibles de matar para ti (Nivel 28-31)|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
    .train 403938,1
    .dungeon SFK
    .isQuestAvailable 78680
step << Warlock
    #season 2
    #sticky
    #label Channeling
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .waypoint 1439,55.743,25.915,50,0
    .waypoint 1439,56.047,26.586,50,0
    .waypoint 1439,56.544,26.598,50,0
    .waypoint 1439,57.046,26.234,50,0
    .waypoint 1439,57.278,26.311,50,0
    .waypoint 1439,56.790,27.621,50,0
    .waypoint 1439,56.194,27.071,50,0
    .waypoint 1439,55.815,26.972,50,0
    .waypoint 1439,55.763,26.695,50,0
    .waypoint 1439,55.369,27.025,50,0
    .waypoint 1439,55.231,26.508,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    #season 2
    #sticky
    #label ChannelingEnd
    #requires Channeling
    .train 403932 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mediación|r] |cRXP_WARN_para aprender|r |T136168:0|t[Canalización maestra]
    .use 208750
    .itemcount 208750,1
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #label Parchments << Warlock --Season 2 SFK
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener sus |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    #xprate >1.59
    #season 0 << Warrior
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >> Mata enemigos hasta alcanzar 15000+/19400xp
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #requires Channeling << Warlock --Season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balthule Golpesombra|r
    .turnin 966 >> Entrega la misión La Torre de Althalaxx
    .accept 967 >> Acepta la misión La Torre de Althalaxx << !Hunter
    .target Balthule Shadowstrike
step << Priest
    #season 1 -- Skipping this rune cus its useless
    #completewith next
    >>Mata |cRXP_ENEMY_Mirmidones Escama Tormentosa|r, |cRXP_ENEMY_Guerreros Escama Tormentosa|r y |cRXP_ENEMY_Hechiceras Escama Tormentosa|r. Despójalos para obtener una |T236364:0|t[|cRXP_LOOT_Ofrenda Rompelanzas|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step
    #season 0
    #requires ChannelingEnd << Warlock --Season 2
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
    >>Despoja las |cRXP_LOOT_Reliquias de Mathystra|r del suelo
    .complete 951,1 -- Mathystra Relics (6)
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Mata |cRXP_ENEMY_Mirmidones Escama Tormentosa|r, |cRXP_ENEMY_Guerreros Escama Tormentosa|r y |cRXP_ENEMY_Hechiceras Escama Tormentosa|r. Despójalos para obtener una |T236364:0|t[|cRXP_LOOT_Ofrenda Rompelanzas|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,22.6
    .use 211482 >> |cRXP_WARN_Usa la|r |T236364:0|t[|cRXP_LOOT_Ofrenda Rompelanzas|r] |cRXP_WARN_en el Ídolo Rompelanzas bajo el agua para recibir el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .train 425215 >> |cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un campeón devoto|r] |cRXP_WARN_para aprender|r |T237566:0|t[Fe distorsionada]
    >>|cRXP_WARN_Debes tener el "buff" de|r |T135934:0|t|T136057:0|t[Meditación] |cRXP_WARN_escribiendo /kneel en un área sagrada, como la Abadía de Villanorte, Catedral de Ventormenta, los Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz|r
    .use 205905
    .itemcount 205905,1
step << !sod/Hunter/Druid
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Acepta la misión La búsqueda de Gyromast
    .target Gelkak Gyromast
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    .goto Darkshore,54.93,12.19
    >>Mata |cRXP_ENEMY_Oráculos Brumagris|r y |cRXP_ENEMY_Cazamareas Brumagris|r. Despójalos para obtener la |cRXP_LOOT_Mitad de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con el daño de|cRXP_ENEMY_ |T136048:0|t[Descarga de relámpagos] |rde los|r Oráculos Brumagris|cRXP_WARN_; también pueden curarse con|r |T136052:0|t[Ola de sanación]|r
    >>|cRXP_WARN_Puedes cortar la línea de visión (LoS) de las|cRXP_ENEMY_  |T136048:0|t[Descargas de relámpagos] |rde los|r Oráculos Niebla Gris|cRXP_WARN_ usando el barco hundido para evitar recibir su daño|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step << !sod/Hunter/Druid
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mata a los |cRXP_ENEMY_Reptadores de arrecife enfurecidos|r y a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener la |cRXP_LOOT_Parte inferior de la llave de Gelkak|r
    >>|cRXP_WARN_Ten cuidado con la habilidad|cRXP_ENEMY_ |T132152:0|t[Vapulear] |rde los|r Reptadores de arrecife enfurecidos|cRXP_WARN_. Sus golpes cuerpo a cuerpo pueden infligirte 200 p. de daño al instante|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mata |cRXP_ENEMY_Zancudos del bosque gigantes|r. Despójalos para obtener la |cRXP_LOOT_Parte superior de la llave de Gelkak|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #xprate <1.59
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Mata a los |cRXP_ENEMY_Patriarcas Acechalunas|r y a las |cRXP_ENEMY_Matriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>|cRXP_WARN_Ten cuidado con las |cRXP_ENEMY_Matriarcas Acechalunas|r. Siempre atacan con un |cRXP_ENEMY_Cachorro Acechalunas|r a su lado|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << !sod/Hunter/Druid
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Empieza a buscar grupo para La venganza de Gyromast/|r|cRXP_ENEMY_El Trillomajareitor 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >> Entrega la misión La búsqueda de Gyromast
    .accept 2078 >> Acepta la misión La venganza de Gyromast
    .target Gelkak Gyromast
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Habla con |cRXP_FRIENDLY_El Trillomajareitor 4100|r para empezar la escolta
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Esta misión es MUY difícil|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step << !sod/Hunter
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
step << !sod/Hunter/Druid
    .goto Darkshore,55.81,18.29,10,0
    .goto 1439,56.654,13.484
    #optional
    >>Escolta al |cRXP_FRIENDLY_El Trillomajareitor 4100|r hasta |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Mata a |cRXP_ENEMY_El Trillomajareitor 4100|r cuando se vuelva hostil
    >>|cRXP_WARN_Esta misión es MUY difícil|r
    *Solo usa ataques a distancia mientras huyes de él, evita estar en rango de cuerpo a cuerpo << Druid
    >>|cRXP_WARN_Intenta hacer esta misión si puedes ya que te ahorrarás tiempo después porque ofrece|r |T134797:0|t[Elixires de Respiración acuática] |cRXP_WARN_para misiones submarinas después|r << !Druid !Warlock
    >>|cRXP_WARN_Usa|r |T136100:0|t[Raíces enredadoras] |cRXP_WARN_en él cuando se vuelva hostil, luego crea distancia y "kitea" usando hechizos de lanzamiento instantáneo|r << Druid
    >>|cRXP_WARN_Si no puedes matar a |cRXP_ENEMY_El Trillomajareitor 4100|r, omite este paso|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Haz clic aquí para una guía en video|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step << !sod/Hunter/Druid
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Entrega la misión La venganza de Gyromast
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #season 0 << Warrior
    #completewith BeachedCloak
    .abandon 2078 >> Abandona la misión La venganza de Gyromast
step << Druid
    #xprate <1.5
    #optional
    #completewith DeerComplete
    >>Mata a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Borra la |T134459:0|t[Llave de Gyromast] de tu inventario, ya que ya no la necesitas
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    .accept 4727 >> Acepta la misión Tortuga marina varada
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Usa el|r |T132801:0|t[Bálsamo animal curativo] |cRXP_WARN_en|r |cRXP_ENEMY_Ciervo enfermo|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Nada hacia mar adentro|r
    >>Abre el |cRXP_PICK_Arcón extraño|r. Despójalo para obtener el |cRXP_LOOT_Medio colgante de Agilidad acuática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshire 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith BlackwoodSod
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step << Druid
    #season 2
    #optional
    #completewith BlackwoodSod
    .goto Moonglade,48.0,67.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >>|cRXP_WARN_Vuela a Auberdine si tu Piedra de Hogar aún está en enfriamiento|r
step << !Warrior
    #season 2
    #optional
    #completewith BlackwoodSod
    .hs >> Usa tu Piedra de hogar para ir a Auberdine
    .subzoneskip 442
    .cooldown item,6948,>0,1
step << !Druid !Warrior
    #optional
    #season 2
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Corre de vuelta a Auberdine si tu Piedra de hogar no está disponible
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thundris Tejevientos|r
    .turnin 4763 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Elimina la |T134939:0|t|cRXP_LOOT_[Muestra de grano Bosque Negro]|r de tu inventario, ya que ya no se necesita
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Borra la |T133944:0|t|cRXP_LOOT_[Muestra de nuez Bosque Negro]|r de tu inventario ya que ya no la necesitas
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Borra la |T134013:0|t|cRXP_LOOT_[Muestra de fruta Bosque Negro]|r de tu inventario ya que ya no la necesitas
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compra un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_y una|r |T135435:0|t[Madera simple] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto es para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_mientras estés en el barco pronto|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gorbold Mano de Acero|r
    .vendor 6301 >>|cRXP_BUY_Cómprale|r |T134059:0|t[Especias suaves] |cRXP_BUY_hasta que tengas|r |T134059:0|t[Especias suaves] |cRXP_BUY_en cantidad igual o mayor que los|r |T132832:0|t[Huevos pequeños] |cRXP_BUY_que tienes actualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2139 >> Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Entrega la misión El maestro perdido
    .target Terenthis
    .isQuestComplete 986
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Entrega la misión Rico marisco
    .target Gubber Blump
    .isQuestComplete 1138
step
    #season 1 << Warrior sod -- won't load
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde


----Start of SoD Warrior short ashenvale bit to catch up xp----


step << Warrior
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
step << Warrior
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
step << Warrior
    #season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Warrior
    #season 2
    #sticky
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r hasta Atalaya de Maestra en Vallefresno|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Aynasha|r para comenzar la misión
    .accept 5713 >> Acepta la misión Un tiro. Un muerto.
    .target Sentinel Aynasha
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>Aparecerán tres oleadas de criaturas con algo de tiempo libre entre ellas. Puedes matar enemigos adicionales en la zona mientras esperas a que aparezca la siguiente oleada
    >>|cRXP_WARN_No olvides seguir despertando a|r |cRXP_FRIENDLY_Kerlonian|r |cRXP_WARN_mientras haces esta misión. Él te ayudará con los enemigos|r
    .complete 5713,1
step << Warrior
    #season 2
    #completewith towersod
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
step << Warrior
    #season 2
    .goto Ashenvale,26.6,36.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Onaeya|r
    .turnin 5713,1 >> Entrega la misión Un tiro. Un muerto.
    .target Sentinel Onaeya
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>Omite este paso si no has completado la misión
    .turnin 5321 >> Entrega la misión El despertar
step << Warrior
    #season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Acepta la misión Cabello de Bathran
step << Warrior
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abre los |cRXP_PICK_Fardo de plantas|r en el suelo. Despójalos para obtener |cRXP_LOOT_Cabellos de Bathran|r
    >>|cRXP_WARN_Parecen pequeños sacos marrones. Pueden ser difíciles de ver|r
    .complete 1010,1
    .isOnQuest 1010
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orendil Hojagrande|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Entrega la misión Cabello de Bathran
    .accept 1020 >> Acepta la misión Cura de Orendil
step << Warrior
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelturas Lunablanca|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Entrega la misión Cura de Orendil
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Vuela de vuelta a Auberdine
	.target Daelyshia


----End of SoD Warrior short ashenvale bit to catch up xp----


----Start of Druid SoD Wild Strikes run segment----

step << Druid
    #season 2
    #optional
    #completewith next
    +|cRXP_WARN_Ahora conseguirás tu runa de|r |T132143:0|t[|cRXP_FRIENDLY_Golpes feroces|r] |cRXP_WARN_. Esto te llevará a Sierra Espolón, lo cual tomará un tiempo, pero la runa es extremadamente poderosa para subir de nivel|r
step << Druid
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
step << Druid
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kerlonian Semprumbrío|r para empezar la escolta
    >>|cRXP_WARN_Omite este paso si no está allí. Puede tomar hasta 25 minutos para que reaparezca|r
    .accept 5321 >> Acepta la misión El despertar
    .target Kerlonian Evershade
step << Druid
#season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Druid
#season 2
    #completewith towersod
    .zone Ashenvale >> Viaja al sur a Vallefresno
    .goto Ashenvale,29.7,13.6
step << Druid
#season 2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolta a |cRXP_FRIENDLY_Kerlonian|r hasta Atalaya de Maestra en Vallefresno|r
    .use 13536 >> |cRXP_WARN_Usa el |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] siempre que |cRXP_FRIENDLY_Kerlonian|r se adormezca|r
    >>|cRXP_WARN_Evita correr por la carretera principal lo más posible. Los enemigos aparecerán sólo si estás en el camino|r
    .complete 5321,2
    .isOnQuest 5321
step << Druid
#season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Liladris Rioluna|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Entrega la misión El despertar
    .isQuestComplete 5321
step << Druid
#season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delgren el Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Entrega la misión La Torre de Althalaxx
step << Druid
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Consigue la Ruta de Vuelo de Astranaar
	.target Daelyshia
step << Druid
    #season 2
    .goto Ashenvale,34.8,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Thenysil|r
    .target Sentinel Thenysil
    .accept 1070 >> Acepta la misión Estar de guardia en Espolón
step << Druid
    #season 2
    .goto Ashenvale,42.4,72.3,30 >> Dirígete al Paso del Espolón que lleva a Sierra Espolón
step << Druid
    #season 2
    .goto Stonetalon Mountains,78.2,42.6,40 >> Atraviesa el túnel hacia Sierra Espolón
step << Druid
    #season 2
    .goto Stonetalon Mountains,59.8,66.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaela Lanzasombra|r
    .target Kaela Shadowspear
    .turnin 1070 >> Entrega la misión Estar de guardia en Espolón
step << Druid
    #season 2
    .goto Stonetalon Mountains,71.5,86.5,40 >> Dirígete a la Aldea Tótem Siniestro marcada en tu mapa
step << Druid
    #season 2
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Mata |cRXP_ENEMY_Tótems Siniestros|r. Despójalos para obtener el |T134233:0|t[|cRXP_FRIENDLY_Ídolo de las fieras|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    .equip 18,210534 >> |cRXP_WARN_Equipa el|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo de las fieras|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #sticky
    #completewith wildStrikesEnd
    >>|cRXP_WARN_Lanza|r |T136085:0|t[Recrecimiento] |cRXP_WARN_o|r |T136041:0|t[Toque de sanación] |cRXP_WARN_en 10 Bestias amistosas diferentes tales como mascotas de Cazador/Druidas en Forma de oso/Chamanes en Lobo fantasmal|r << Horde
    >>|cRXP_WARN_Lanza|r |T136085:0|t[Recrecimiento] |cRXP_WARN_o|r |T136041:0|t[Toque de sanación] |cRXP_WARN_en 10 diferentes Bestias amistosas como Mascotas de Cazador o Druidas en Oso/Forma felina|r << Alliance
    >>Esto puede tardar un tiempo en completarse dependiendo de cuántas bestias amistosas encuentres. |cRXP_WARN_NO MUERAS NI TE DESEQUIPES LA RELIQUIA|r hasta que obtengas 10 acumulaciones de inspiración o tu progreso se perderá
    .train 410021 >> |cRXP_WARN_Usa el|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo de las fieras|r] |cRXP_WARN_para aprender|r |T132143:0|t[Golpes feroces]
    .itemcount 210534,1
step << Druid
    #season 2
    #optional
	#completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >> Aprende tus hechizos de clase
    .target Loganaar
step << Druid
    #optional
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore

----End of Druid SoD Wild Strikes run segment----



----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of Rogue Poison Quest Section----



step
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >> Viaja al embarcadero del barco del Puerto de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
 step << Rogue
    #season 2
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r
    .vendor 1453 >> |cRXP_WARN_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_WARN_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Dewin Brillalba|r no tiene ninguna|r
    .target Dewin Shimmerdawn
step << Rogue
    #season 2
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Compra un|r |T133024:0|t[Tubo de bronce]
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Neal Allen|r no tiene ninguno|r
	.target Neal Allen
    .bronzetube
step << Rogue
    #season 2
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Helbrek|r
    .target Innkeeper Helbrek
    .home >> Establece tu Piedra de hogar en el Puerto de Menethil
step << Rogue
    #season 2
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arqueólogo Gargavino|r subiendo las escaleras
    .target Archaeologist Flagongut
    .turnin 942 >> Entrega la misión El prospector despistado
    .accept 943 >> Acepta la misión El prospector despistado
    .isQuestComplete 942
step << Rogue
    #season 2
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Samor Festivus|r arriba
    .vendor >> |cRXP_BUY_Compra tantas|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_como haya disponibles|r
    >>|cRXP_WARN_Este es un artículo de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Samor Festivus|r no tiene ninguna|r
    .target Samor Festivus
step << Rogue
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Salta del final del muelle y nada hacia el punto marcado de la ruta
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utiliza el servicio automático de personaje atascado para ir directamente a Forjaz. Tendrás que desconectar en el lugar, luego navega al menú de ayuda en otro personaje (alternativamente, pega el enlace de personaje atascado a continuación en tu navegador), luego desplázate hacia abajo hasta autoayuda. Haz clic en tu personaje y muévelo. Si no puedes desatascarlo, omite este paso y nada a lo largo de las montañas hacia Páramos de Poniente
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Haz clic aquí para ver el vídeo de referencia
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Haz clic aquí para abrir el enlace al servicio de personaje atascado
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si el sitio web de servicio de personaje atascado no está disponible, nada hacia Páramos de Poniente
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Corre por la costa y dirígete hacia la Colina del Centinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Corre hacia Ventormenta
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Rogue
    .train 202 >> Aprende Espadas de 2 manos << Warrior
    .target Woo Ping
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << skip --logout skip Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de la cabeza del Grifo. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    >>|cRXP_WARN_Necesitarás que tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_sea 80+ para una misión más adelante|r << Rogue !Dwarf
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia Ventormenta
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Billibub Cogspinner
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Aprende|r |T132282:0|t[Emboscada] |cRXP_WARN_si tienes dinero extra y una|r |T135641:0|t[Daga] |cRXP_WARN_equipado o en tu inventario. Te ahorrará tiempo más tarde|r
    .train 8676 >> Aprende |T132282:0|t[Emboscada]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T132320:0|t[Sigilo]|cRXP_WARN_,|r |T133644:0|t[Robar]|cRXP_WARN_, y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T133644:0|t[Robar]|cRXP_WARN_y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión del dinero en los siguientes pasos. Solo compra los hechizos esenciales. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de regresar a Humedales|r
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que la necesitarás más tarde|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión del dinero en los siguientes pasos. Solo compra los hechizos esenciales. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de regresar a Humedales|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Viaja hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r dentro de IV:7 en el piso de arriba
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale un|r |T135342:0|t[Kris] |cRXP_BUY_o revisa la Casa de Subastas por algo mejor o más barato|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión de dinero en los próximos pasos. Solo compra una daga si no tienes dinero. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de volver a Humedales|r
    .collect 2209,2 --Kris (2)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Cómprale un|r |T135342:0|t[Kris] |cRXP_BUY_si te lo puedes permitir|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión de dinero en los próximos pasos. Solo compra una daga si no tienes dinero. Necesitarás dinero para Esfumarse pronto y 75 platas para obtener una runa después de volver a Humedales|r
    .collect 2209,1 --Kris (2)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipa el|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << Dwarf
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Westfall >> Vuela a Páramos de Poniente << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela << !Human
    .fly Redridge >> Vuela a Montañas Crestagrana << Human
    .target Thor
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto de la Torre de Azora
    .accept 94 >> Acepta la misión Un ojo vigilante
    .target Theocritus
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Breanna|r dentro
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .accept 89 >> Acepta la misión El puente sempiterno
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Puedes matar algunos gnolls por el camino al Molino de Alther. Completarás este objetivo en el camino de regreso
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >> Dirígete al Molino de Alther
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Termina matando |cRXP_WARN_gnolls|r para obtener las partes del puente
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Olento|r
    .turnin 89 >> Entrega la misión El puente sempiterno
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Elimina el |T134328:0|t[Certificado de Ratería] de tu inventario, ya que ya no es necesario
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >> Asegúrate de tener al menos 14k de experiencia en el nivel 21 antes de irte de Crestagrana. Si aún no has llegado, considera hacer la misión |cRXP_ENEMY_El collar de Hilary|r de |cRXP_FRIENDLY_Shawn|r o la misión |cRXP_ENEMY_Las herramientas perdidas|r del |cRXP_FRIENDLY_Supervisor Olento|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana << !Human
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo puedes omitir este paso y pedirles que lo eliminen por ti más tarde|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Viaja hasta el 2.º piso de la torre. Mientras estés en|r |T132320:0|t[Sigilo] |cRXP_WARN_y los |cRXP_ENEMY_Avizores de torre Defias|r no estén cerca de ti, Salta en la silla, luego en la lámpara, luego en el estante encima del punto de la ruta|r
    >>|cRXP_WARN_Manualmente desactiva el|r |T132320:0|t[Sigilo]|cRXP_WARN_, luego presiona tu tecla "Interactuar con el objetivo" para abrir el |cRXP_PICK_Cofre de Bosque del Ocaso|r. Despójalo para obtener el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_NOTA: Tu|r |T132320:0|t[Sigilo] |cRXP_WARN_dejará de funcionar temporalmente después de despojar el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_Prepárate para correr si no matas los |cRXP_ENEMY_Avizores de torre Defias|r en el 2.º piso. Lo más probable es que te generen amenaza permanente (aunque no te atacarán) cuando estés encima de la estantería, ya que es un punto de evasión|r
    >>|cRXP_WARN_Si tienes una|r |T135641:0|t[Daga] |cRXP_WARN_en tu inventario o equipada, puedes lanzar|r |T132282:0|t[Emboscada] |cRXP_WARN_en los |cRXP_ENEMY_Guardias de torre Defias|r y |cRXP_ENEMY_Avizores de torre Defias|r de dentro para matarlos instantáneamente. Prepárate para correr después de matar al primer |cRXP_ENEMY_Avizor de torre Defias|r y recuerda que puedes ser golpeado desde arriba. Esto es más lento, pero MUCHO más seguro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zángano Defias deforme|r y los |cRXP_ENEMY_Zánganos Defias|r pueden estar en la entrada de la torre si tienes que salir corriendo de ella|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 22-8200 >> Mata enemigos hasta que te falten 8200xp para alcanzar el nivel 22. Necesitarás alcanzarlo en Ventormenta para aprender |T132331:0|t[Esfumarse] que es requerida para una runa extremadamente poderosa más adelante
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue !sod
    .turnin 135 >> Entrega la misión La hermandad de los Defias
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >> Entrega la misión La torre de Klaven
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jasper Vil|r en la planta baja del edificio
    >>Compra componentes para elaborar |T132273:0|t[|cRXP_FRIENDLY_Veneno instantáneo|r] y |T132331:0|t[|cRXP_FRIENDLY_Esfumarse|r] a este vendedor
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Abre tu libro de hechizos y busca |T136242:0|t[|cRXP_FRIENDLY_Venenos|r] la habilidad de la pestaña general. Ábrela y fabrica 20 Venenos Instantáneos. |cRXP_WARN_Recuerda mantenerlos aplicados a ambas armas durante el combate|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_TEN MUCHO CUIDADO con tu gestión del dinero en los siguientes pasos. Solo compra los hechizos esenciales. Necesitarás 75 platas para obtener una runa después de un par de misiones en Los Humedales|r
    >>|cRXP_WARN_Aprende|r |T132331:0|t[Esfumarse] y |T132320:0|t[Sigilo](rango 2) La necesitarás para desbloquear |T236270:0|t[Brebaje letal] pronto
    .train 1856 >> Aprende |T132331:0|t[Esfumarse]
    .train 1785 >> Aprende |T132320:0|t[Sigilo](rango 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Usa tu Piedra de hogar hacia el Puerto de Menethil. |cRXP_WARN_O realiza un "ghetto hearth" desde las Mazmorras si está en enfriamiento|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entra en Las Mazmorras de Ventormenta|r
    >>|cRXP_WARN_Ya dentro:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Haz clic aquí para copiar + pegar esta macro en el chat para hacer un ghetto hearth de regreso a Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Si no puedes hacer esto, vuelve a Auberdine|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    .zone Ironforge >> Toma el Tranvía Subterráneo a Forjaz
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM

----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Vuela a Los Humedales
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >> Viaja al Puerto de Menethil
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM


----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----

----Start of Hunter Deadmines/All 2x Deadmines Section----
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Ahora viajarás a Las Minas de la Muerte|r
    >>|cRXP_WARN_Sube el nivel de tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Puerto Menethil si es necesario|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Toma el barco al Puerto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Vuela a Forjaz
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Salta del final del muelle y nada hacia el punto marcado de la ruta
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Utiliza el servicio automático de personaje atascado para ir directamente a Forjaz. Tendrás que desconectar en el lugar, luego navega al menú de ayuda en otro personaje (alternativamente, pega el enlace de personaje atascado a continuación en tu navegador), luego desplázate hacia abajo hasta autoayuda. Haz clic en tu personaje y muévelo. Si no puedes desatascarlo, omite este paso y nada a lo largo de las montañas hacia Páramos de Poniente
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Haz clic aquí para ver el vídeo de referencia
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Haz clic aquí para abrir el enlace al servicio de personaje atascado
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM


----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Si el sitio web de servicio de personaje atascado no está disponible, nada hacia Páramos de Poniente
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Corre por la costa y dirígete hacia la Colina del Centinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Corre hacia Ventormenta
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r dentro
    .train 197 >> Aprende Hachas de 2 manos << Warrior
    .train 199 >> Aprende Mazas de 2 manos << Warrior
    .train 266 >> Aprende Armas de Fuego << Hunter
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Viaja hacia |cRXP_FRIENDLY_Ginny Largamora|r dentro
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ginny Largamora|r dentro
    >>|cRXP_BUY_Compra hasta 4|r |T134419:0|t[Runas de teletransporte] |cRXP_BUY_a esta vendedora|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milstaff Ojotrueno|r
    .train 3562 >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima del pilar que está sobre |cRXP_FRIENDLY_Bink|r, luego camina ligeramente al este de ella hacia la posición de la flecha. Posiciona tu personaje hasta que parezca que está flotando, luego realiza un "Logout Skip" desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor 6382 >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorios] |cRXP_BUY_para tus mascotas si lo deseas|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Camina sobre la cama, luego salta sobre la parte superior de la estantería. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >> Entra en la casa de |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Camina sobre la cama, luego salta sobre la parte superior de la estantería. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salta encima de la cabeza del Grifo. Realiza un Logout Skip desconectando y volviendo a entrar|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    >>|cRXP_WARN_Necesitarás que tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_sea 80+ para una misión más adelante|r << Rogue !Dwarf
    .zone Stormwind City >> Toma el Tranvía Subterráneo hacia Ventormenta
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .accept 2040 >> Acepta la misión Asalto subterráneo
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karrina Mekenda|r dentro
    .trainer 2879 >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer 5515 >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .accept 167 >> Acepta la misión Oh, hermano...
    .accept 168 >> Acepta la misión Recolección de recuerdos
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Aprende|r |T132282:0|t[Emboscada] |cRXP_WARN_si tienes dinero extra y una|r |T135641:0|t[Daga] |cRXP_WARN_equipado o en tu inventario. Te ahorrará tiempo más tarde|r
    .train 8676 >> Aprende |T132282:0|t[Emboscada]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T132320:0|t[Sigilo]|cRXP_WARN_,|r |T133644:0|t[Robar]|cRXP_WARN_, y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T133644:0|t[Robar]|cRXP_WARN_y|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que los necesitarás más tarde|r
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Asegúrate de aprender|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_ya que la necesitarás más tarde|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Viaja hacia |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r dentro de IV:7 en el piso de arriba
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renzik "Chafarote"|r y el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .accept 2281 >> Acepta la misión Cita en Crestagrana
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Acepta la misión Mathias y los Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Aprende Espadas de 1 mano << Mage/Rogue/Warlock
    .train 1180 >> Aprende el uso de Dagas << Mage/Druid/Priest
    .train 202 >> Aprende Espadas de 2 manos << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135329:0|t[Espada de verdugo]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135324:0|t[Tizona] |cRXP_BUY_o verifica la Casa de subastas si hay algo mejor/más barato|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Cómprale una|r |T135324:0|t[Tizona] |cRXP_BUY_si puedes permitírtelo|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r. Te dará el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r]
    .use 6776 >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre Valor|r] para iniciar la misión|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Entrega la misión Escrito sobre valor
    .accept 1650 >>Acepta la misión Escrito sobre valor
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Cómprale una|r |T135280:0|t[Dalle dacio] |cRXP_BUY_o busca en la Casa de Subastas algo mejor/más barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    .vendor 1312 >>|cRXP_BUY_Cómprale una|r |T135469:0|t[Varita Alba] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_BUY_Alternativamente, compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_de la Casa de Subastas si es más barato que 52 platas 47 cobres|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r dentro
    >>|cRXP_BUY_Compra una|r |T135469:0|t[Varita Alba] |cRXP_BUY_a esta vendedora|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135469:0|t[Varita Alba]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Tormento (Rango 2)] |cRXP_BUY_a esta vendedora|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_Usa el|r |T133738:0|t[Grimorio Tormento (Rango 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Sube por la Torre de los Magos. Cruza por el Portal Verde
    .goto Stormwind City,39.681,79.538,15 >>Viaja hacia |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Argos Susurro Nocturno|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sheldras Árbol Lunar|r
    .train 6756 >> Aprende tus hechizos de clase
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>Entra en la tienda El Carcaj Vacío dentro del anillo medio del Distrito de Mercaderes
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frederick Hornillos|r
    >>|cRXP_BUY_Cómprale un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_o verifica la Casa de Subastas por algo mejor/más barato|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregas más rápidas en Montañas Crestagrana pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana y Páramos de Poniente pronto << Paladin
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana pronto << !Paladin !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de aceite] << Paladin
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra el |T134437:0|t[Contraveneno] para tu misión posterior de |T132290:0|t[Venenos] , y el resto para entregar misiones más rápido en Montañas Crestagrana y Páramos de Poniente pronto << !Dwarf Rogue
    >>Compra los siguientes objetos para entregas más rápidas en Montañas Crestagrana y Páramos de Poniente pronto << !Rogue/Dwarf Rogue
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134437:0|t[Contraveneno] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de aceite]
    >>|T134172:0|t[Morro de gran Dentosangre]
    >>|T134028:0|t[Carne de cóndor dura]
    >>|T134321:0|t[Carne de araña crujiente]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << !Human
    .fly Westfall >> Vuela a Páramos de Poniente << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela << !Human
    .fly Redridge >> Vuela a Montañas Crestagrana << Human/Warlock
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Redridge >> Vuela a Montañas Crestagrana
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theocritus|r en lo alto de la Torre de Azora
    .accept 94 >> Acepta la misión Un ojo vigilante
    .target Theocritus
    .dungeon DM
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Chef Breanna|r dentro
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wiley el Negro|r en la planta de arriba
    .turnin 65 >> Entrega la misión La hermandad de los Defias
    .accept 132 >> Acepta la misión La hermandad de los Defias
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Entrega la misión Cita en Crestagrana
    .accept 2282 >> Acepta la misión Molino de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_DEBES hacer esto para tu misión de|r |T132290:0|t[Venenos] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Colócate en el punto marcado de la ruta. Posiciona tu cámara y cursor hasta que puedas hacer clic en 3 |cRXP_PICK_Arcones de prácticas|r de una vez sin tener que mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abre los |cRXP_PICK_Arcones de prácticas|r del suelo en Molino de Alther hasta que tu habilidad de|r |T136058:0|t[Forzar cerraduras] sea 80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abre el |cRXP_PICK_Arcón de Lucius|r. Despójalo para obtener la |cRXP_LOOT_Muestra de robo|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Entrega la misión Molino de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Elimina el |T134328:0|t[Certificado de Ratería] de tu inventario, ya que ya no es necesario
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana << !Human !Warlock
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 132 >> Entrega la misión La hermandad de los Defias
    .accept 135 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Mata |cRXP_ENEMY_Telarácnidas venenosa pigmeas|r y |cRXP_ENEMY_Telarácnidas venenosas|r. Despójalas para obtener una |cRXP_LOOT_Glándula de veneno pequeña|r y sus |cRXP_LOOT_Patas pegajosas de araña|r
    >>|cRXP_WARN_Necesitas una|cRXP_LOOT_ Glándula de veneno pequeña|r para hacer un|r |T134437:0|t[Contraveneno] |cRXP_WARN_más tarde para quitar el perjuicio|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Guarda las |cRXP_LOOT_Patas pegajosas de araña|r para más tarde|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladín|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo puedes omitir este paso y pedirles que lo eliminen por ti más tarde|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTA ATENCIÓN A LA SIGUIENTE SECCIÓN==|r
    >>|cRXP_WARN_Presiona Escape, luego ve a -> Opciones -> Controles|r
    >>|cRXP_WARN_Activa "Habilitar tecla de interactuar" y asigna la opción "Interactuar con objetivo" a una tecla|r
    >>|cRXP_WARN_Además, se recomienda activar las placas de nombre enemigas (tecla predeterminada: V) ya que te permite ver a los enemigos detrás de algunas esquinas dentro de la torre|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Kearnen|r
    >>|cRXP_WARN_DEBES hacer esta misión para tus|r |T132290:0|t[Venenos]
    .turnin 2360 >> Entrega la misión Mathias y los Defias
    .accept 2359 >> Acepta la misión La torre de Klaven
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Robar] al |cRXP_ENEMY_Zángano Defias deforme|r. Despójalo para obtener la |cRXP_LOOT_Llave de la torre Defias|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_WARN_El |cRXP_ENEMY_Zángano Defias deforme|r aparece en la entrada de la torre, luego patrulla alrededor del exterior de ella|r
    >>|cRXP_WARN_Ten cuidado ya que él hace MUCHO daño. Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa rápidamente|r |T132307:0|t[Sprint] |cRXP_WARN_y huye|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de madera curva] |cRXP_WARN_para esta misión si no tienes una|r |T135641:0|t[Daga] |cRXP_WARN_equipada|r
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Viaja hasta el 2.º piso de la torre. Mientras estés en|r |T132320:0|t[Sigilo] |cRXP_WARN_y los |cRXP_ENEMY_Avizores de torre Defias|r no estén cerca de ti, Salta en la silla, luego en la lámpara, luego en el estante encima del punto de la ruta|r
    >>|cRXP_WARN_Manualmente desactiva el|r |T132320:0|t[Sigilo]|cRXP_WARN_, luego presiona tu tecla "Interactuar con el objetivo" para abrir el |cRXP_PICK_Cofre de Bosque del Ocaso|r. Despójalo para obtener el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_NOTA: Tu|r |T132320:0|t[Sigilo] |cRXP_WARN_dejará de funcionar temporalmente después de despojar el|r |cRXP_LOOT_Diario de Klaven Mortoalerta|r
    >>|cRXP_WARN_Prepárate para correr si no matas los |cRXP_ENEMY_Avizores de torre Defias|r en el 2.º piso. Lo más probable es que te generen amenaza permanente (aunque no te atacarán) cuando estés encima de la estantería, ya que es un punto de evasión|r
    >>|cRXP_WARN_Si tienes una|r |T135641:0|t[Daga] |cRXP_WARN_en tu inventario o equipada, puedes lanzar|r |T132282:0|t[Emboscada] |cRXP_WARN_en los |cRXP_ENEMY_Guardias de torre Defias|r y |cRXP_ENEMY_Avizores de torre Defias|r de dentro para matarlos instantáneamente. Prepárate para correr después de matar al primer |cRXP_ENEMY_Avizor de torre Defias|r y recuerda que puedes ser golpeado desde arriba. Esto es más lento, pero MUCHO más seguro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Zángano Defias deforme|r y los |cRXP_ENEMY_Zánganos Defias|r pueden estar en la entrada de la torre si tienes que salir corriendo de ella|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> Haz clic AQUÍ para una guía en vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Lanza |T136225:0|t[Forma de piedra] para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Viaja hacia |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .skill firstaid,80 >> |cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_al 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Si tienes un|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_o|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, pídele que te quite el|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_en su lugar|r
    .train 7934 >> |cRXP_WARN_Aprende|r |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Fabrica un |T134437:0|t[Contraveneno]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Usa el |T134437:0|t[Contraveneno] en tus bolsas para quitarte el perjuicio |T136230:0|t[Toque de Zanzil] |r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Entra al cuartel general de IV:7. Sube las escaleras hacia el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Mathias Shaw|r
    >>|cRXP_WARN_Recuerda volver a equipar tu arma principal si cambiaste a una|r |T135641:0|t[Daga] |cRXP_WARN_antes|r << Rogue
    .turnin 135 >> Entrega la misión La hermandad de los Defias
    .accept 141 >> Acepta la misión La hermandad de los Defias
    .turnin 2359 >> Entrega la misión La torre de Klaven << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Forma un grupo para Minas de la Muerte
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 141 >> Entrega la misión La hermandad de los Defias
    .accept 142 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Viaja a Arroyo de la Luna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mata al |cRXP_ENEMY_Mensajero Defias|r. Despójalo para obtener |cRXP_LOOT_Un mensaje misterioso|r
    >>|cRXP_WARN_El |cRXP_ENEMY_Mensajero Defias|r aparece en Arroyo de la Luna. Camina por el camino al norte de Arroyo de la Luna, hacia la Mina de la Costa del Oro y la Mina de Jango. Si no lo ves por el camino, espéralo a que aparezca en Arroyo de la Luna|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 142 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Traidor de los Defias|r
    >>|cRXP_WARN_Es posible que debas esperar a que |cRXP_FRIENDLY_El Traidor de los Defias|r aparezca si no está ahí|r
    >>|cRXP_WARN_Si ya has reunido un grupo, asegúrate de que tu grupo también haya entregado la misión anterior primero antes de comenzar la escolta|r
    .accept 155 >> Acepta la misión La hermandad de los Defias
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>Escolta a |cRXP_FRIENDLY_El Traidor de los Defias|r a Las Minas de la Muerte
    >>|cRXP_WARN_Permanece junto a |cRXP_FRIENDLY_El Traidor de los Defias|r en todo momento. Prepárate para luchar contra |cRXP_ENEMY_Saqueadores Defias|r y |cRXP_ENEMY_Despojadores Defias|r al llegar a Arroyo de la Luna|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 155 >> Entrega la misión La hermandad de los Defias
    .accept 166 >> Acepta la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .accept 214 >> Acepta la misión Pañuelos rojos de seda
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Grindea a los |cRXP_ENEMY_Gnolls|r al sur de Colina Centinela mientras reúnes un grupo para Minas de la Muerte|r
    .subzone 20 >>Una vez que tu grupo esté reunido, viaja a Arroyo de la Luna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entra a la Ladronera de los Defias con tu grupo
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Mata a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_También puedes completar esto dentro de Minas de la Muerte|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata al |cRXP_ENEMY_Supervisor Cardortiga|r. Despójalo para obtener su |cRXP_LOOT_Distintivo|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mata a los |cRXP_ENEMY_Mineros esquelético|r, a los |cRXP_ENEMY_Dinamitadores no-muertos|r y a los |cRXP_ENEMY_Excavadores no-muertos|r. Despójalos para obtener sus |cRXP_LOOT_Tarjetas|r
    >>|cRXP_WARN_Esto se completa FUERA de la Mazmorra|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Entra a la Mazmorra Las Minas de la Muerte
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Mata a |cRXP_ENEMY_Sneed|r. Despójalo para obtener la |cRXP_LOOT_Dentrituradora goblin|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Mata a |cRXP_ENEMY_Edwin VanCleef|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r y |T133471:0|t[|cRXP_LOOT_Una carta sin enviar|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_Pregunta a tu grupo si pueden quedarse un momento para ayudarte con la escolta de |cRXP_FRIENDLY_Daphne Fontana|r exclusiva de paladín dentro de poco (si es posible)|r << Paladin
    .subzone 920 >>Sal de Minas de la Muerte por la salida trasera al este de |cRXP_ENEMY_Edwin VanCleef|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >> Viaja hacia |cRXP_FRIENDLY_Daphne Fontana|r en su campo
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daphne Fontana|r en su campo para iniciar su escolta
    >>|cRXP_WARN_Patrulla alrededor un poco por su campo|r
    >>|cRXP_WARN_Ten cuidado ya que esto puede ser ligeramente difícil. Te enfrentarás a 3 oleadas de 3, luego 4, luego 5 nivel 17-18 |cRXP_ENEMY_Asaltantes Defias|r
    .turnin 1650 >>Entrega la misión Escrito sobre valor
    .accept 1651,1 >>Acepta la misión Escrito sobre valor
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> HAZ CLIC AQUÍ para una guía en vídeo
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>Protege a |cRXP_FRIENDLY_Daphne Fontana|r
    >>|cRXP_WARN_Si tú o |cRXP_FRIENDLY_Daphne Fontana|r morís, la misión fracasará y tendrás que intentarlo de nuevo|r
    >>|cRXP_WARN_Ten cuidado ya que esto puede ser ligeramente difícil. Te enfrentarás a 3 oleadas de 3, luego 4, luego 5 nivel 17-18 |cRXP_ENEMY_Asaltantes Defias|r
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daphne Fontana|r
    >>|cRXP_WARN_Patrulla alrededor un poco por su campo|r
    .turnin 1651 >>Entrega la misión Escrito sobre valor
    .accept 1652 >>Acepta la misión Escrito sobre valor
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Viaja al Faro de Poniente
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .accept 103 >> Acepta la misión Guardián de la Llama
    .turnin 103 >> Entrega la misión Guardián de la Llama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener su |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Viejo Ojosombrío|r |cRXP_WARN_patrulla de arriba a abajo por Playa Larga. Si no lo puedes encontrar, omite este paso|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 104 >> Entrega la misión La amenaza costera
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >> Abandona la misión Guardián de la Llama
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Entra en la Ladronera de los Defias solo
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>Mata a los |cRXP_ENEMY_Defias|r fuera de la Instancia de Minas de la Muerte. Despójalos de sus |cRXP_LOOT_Pañuelos de seda rojos|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Mata a los |cRXP_ENEMY_Defias|r dentro de Las Minas de la Muerte. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de seda rojos|r
    >>|cRXP_WARN_Si no hay más |cRXP_ENEMY_Defias|r dentro de Minas de la Muerte, mátalos fuera en su lugar|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 166 >> Entrega la misión La hermandad de los Defias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Exploradora Riell|r en lo alto de la Torre
    .turnin 214 >> Entrega la misión Pañuelos rojos de seda
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >> Abandona la misión La carta sin enviar. La harás más tarde
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Lanza |T135763:0|t[Teletransporte a: Ventormenta]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Entra en El Cordero Degollado. Baja las escaleras
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Entrega la misión Escrito sobre valor
    .accept 1653 >>Acepta la misión La prueba de rectitud
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19835 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .train 8103 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 1856 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .train 6192 >> Aprende tus hechizos de clase
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wilder Cardortiga|r dentro
    .turnin 167 >> Entrega la misión Oh, hermano...
    .turnin 168 >> Entrega la misión Recolección de recuerdos
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoni la Shilenshiosha|r
    .turnin 2040 >> Entrega la misión Asalto subterráneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Viaja hasta |cRXP_FRIENDLY_Duthorian Rall|r dentro de la Catedral de Ventormenta
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Entrega la misión Escrito sobre valor
    .accept 1653 >>Acepta la misión La prueba de rectitud
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .train 19835 >> Aprende tus hechizos de clase
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Viaja hacia la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro de la Catedral de Ventormenta
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r dentro
    .train 8103 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 1856 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Viaja hacia |cRXP_FRIENDLY_Wu Shen|r dentro del Centro de Mando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu Shen|r en el piso de arriba
    .train 6192 >> Aprende tus hechizos de clase
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Lanza |T135763:0|t[Teletransporte a: Ventormenta]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r en lo alto de la Torre
    .train 2138 >> Aprende tus hechizos de clase
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>Ve al Claro de la Luna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8926 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras estés en el Tranvía|r
    .zone Ironforge >> Toma el Tranvía Subterráneo a Forjaz
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cortallave Volopiñón|r
    .vendor 5175 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r dentro
    .train 197 >> Aprende Hachas de 2 manos << Warrior
    .train 199 >> Aprende Mazas de 2 manos << Warrior
    .train 266 >> Aprende Armas de Fuego << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra la|r |T135427:0|t[Daga arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_Equipa la|r |T135427:0|t[Daga arrojadiza pesada]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gerrig Agarrahueso|r dentro
    .turnin 968 >> Entrega la misión Los Poderes Subyacentes
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >> Usa tu Piedra de hogar para ir a Costa Oscura
    .zoneskip Darkshore
    .dungeon DM


----End of Hunter/All 2x Deadmines section----

    ]])
