if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< NightElf
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 13-20 Costa Negra SoD
#displayname 13-20 Costa Negra << NightElf SoD !Priest
#displayname 13-22 Costa Negra << NightElf SoD Priest
#displayname 15-18 Costa Negra << !NightElf SoD
#next 20-22 Costa Negra SoD << !sod/Warrior/Rogue/Druid/Hunter
#next 22-24 Aliança 20-30\Pantanal SoD << sod Priest

-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod
step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6344 >>Entregue Nessa Cantonegro
    .accept 6341 >>Aceite A Recompensa de Teldrassil
    .target Nessa Shadowsong
step << NightElf
	.goto Teldrassil,58.39,94.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >>Entregue A Recompensa de Teldrassil
    .accept 6342 >>Aceite Voo para Auberdine
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Voe para Costa Negra
    .target Vesprystus
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>Salte do barco quando estiver mais próximo da costa de Auberdine
    .subzone 442 >>Nade para Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea << !sod/Hunter/Druid
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_dele. Venda toda a sua outra comida de nível 5 ou inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >>Entregue Voo para Auberdine
    .accept 6343 >>Aceite Retornar a Nessa << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >>Entregue Voo para Auberdine
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_dele. Venda toda a sua outra comida de nível 5 ou inferior|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r no andar de baixo
    .home >>Defina sua Pedra de Regresso para Auberdine << !Druid sod !Priest sod
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >>Viaje escada acima em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cogumelos da Caverna
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cogumelos da Caverna
    .target Barithras Moonshade
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target Terenthis
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
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
    >>|cRXP_WARN_Mande seu ajudante atacar um |cRXP_ENEMY_Ursocardo|r Assim que seu ajudante for atordoado pelo |cRXP_ENEMY_Ursocardo|r abandone seu ajudante e comece a domá-lo|r
    .tame 2163 >>|cRXP_WARN_Use|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um|cRXP_ENEMY_ Ursocardo|r para domesticá-lo|r
    .target Thistle Bear
step << Warlock
    #season 2
    #label ExplorerImpDarkshore
    #sticky
    #completewith DarkshoreEnd
    >>Enquanto está fazendo missões, conjure |T136163:0|t|cRXP_FRIENDLY_[Drenar Alma]|r em inimigos até receber um |T133257:0|t|cRXP_LOOT_Alma de Explorador|r. |cRXP_WARN_Use a para aprender como convocar um|r |T236294:0|t|cRXP_FRIENDLY_[Diabrete Explorador]|r
    .train 445459 >>|cRXP_WARN_Usar|r |T133257:0|t|cRXP_LOOT_Alma do Explorador|r |cRXP_WARN_para aprender como convocar um|r |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshore << Warlock
    #sticky
    #completewith DarkshoreEnd
    #label FelPortalRuneDarkshore
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presentes. Se você encontrar um, convoque a sua |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r] e fale com ele enquanto estiver ao lado de um portal para enviá-lo em uma expedição. Após 10-20 minutos, ele retornará com tesouro e uma chance de lhe dar |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] << Warlock
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presentes. Se você encontrar um, feche-o usando um |T134945:0|t[|cRXP_LOOT_Pergaminho da Recomposição Espacial|r]. Isso lhe dará |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r] << Mage
    >>|cRXP_WARN_Fique atento aos portais até obter a runa|r
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
    .train 427733 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Evocar Guarda Vil] << Warlock
    .train 428878 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Seta Incendiária|r |cRXP_WARN_para treinar|r |T135809:0|t[Seta Incendiária] << Mage
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
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abra o |cRXP_PICK_Criatura Marinha Encalhada|r. Saqueie para obter |cRXP_LOOT_Ossos de Criaturas Marinhas|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Aumente seu|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para poder colher|r |T134187:0|t[Earthroot] |cRXP_WARN_em uma importante missão de classe em breve. Você pode desaprendê-la depois|r
    >>|cRXP_WARN_Se você prefere comprar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_na Casa de Leilões depois, pule este passo|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Suba seu|r |T136065:0|t[Herborismo] |cRXP_WARN_para 15 para conseguir coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma importante missão de classe em breve. Você pode desaprender depois|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>|cRXP_WARN_Colete 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herborismo] e raramente |cRXP_PICK_Baús Danificados|r para uma futura missão de classe|r
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
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Tem alcance de 50 jardas|r
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
    >>Abate os |cRXP_ENEMY_Blackwood Desbravadores|r e os |cRXP_ENEMY_Blackwood Windtalkers|r. Saque-os para obter seus |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r]
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
    .use 209027 >>|cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r] |cRXP_WARN_on a |cRXP_ENEMY_Tiscoral Jovem|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Domínio das Feras|r]
    .collect 208701,1 -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 410110,1
step << Hunter
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 410110 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r] |cRXP_WARN_para treinar|r |T132270:0|t[Domínio das Feras]
    .use 208701
    .itemcount 208701,1
step << !sod/Warrior/Rogue
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    .goto Darkshore,38.90,53.59
    >>Corra em direção à borda do acampamento dos Furbolgs
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
    .xp 11+7300 >>Farme até 7300+/8800xp
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
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .accept 1001 >>Aceite Buzzbox 411
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>Vá em direção a |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step << Priest
    #season 2
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Retornar a Nessa
    .target Laird
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>Viaje até o final da doca, depois pule na água
step << Rogue
    #season 2
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >>Viaje até o final da doca, depois pule na água
    .train 424785,3
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter seus |cRXP_LOOT_Thresher Olhos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step << Rogue
    #season 2
    #optional << !NightElf
    #completewith next
    .goto Darkshore,32.80,37.72,20 >>Nade para a pequena ilha com o farol
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .goto Darkshore,32.729,37.093
    >>Abra a |cRXP_PICK_Lighthouse Stash|r dentro do tronco da árvore. Saque-a para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa of Talho de Sabre|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Abra a |cRXP_PICK_Tartaruga Marinha Descarnada|r. Saqueie para obter |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step << Priest
    #season 2
    .goto Darkshore,30.5,47.5
    >>Clique em |cRXP_PICK_Remnant|r na pequena ilha. Pegue-o para obter o |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    #season 2
    >>Agora você deve obter dois buffs |T135934:0|t|T136057:0|t[Meditação]
    >>Você deve /kneel dentro de um dos seguintes lugares: um poço lunar, Northshire Abbey, Catedral de Ventobravo, os Altares de Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge
    >>Para receber seu segundo buff |T135934:0|t|T136057:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    >>|cRXP_WARN_Se você não conseguir fazer isso agora, pule este passo e complete-o mais tarde|r
    .use 205932
    .itemcount 205932,1
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cogumelos da Caverna
    .target Barithras Moonshade
step
    #xprate <1.5
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis


----Start of Optional Early Level 14 Druid Turnin/train----


step << Druid
    #optional
    #completewith DruidEarlyNessa
    #season 0
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
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
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>|cRXP_WARN_Isso será usado para elevar sua|r |T133971:0|t[Culinária] |cRXP_WARN_mais tarde|r |cRXP_WARN_até 50 depois|r
    >>|cRXP_WARN_Não saia do seu caminho para farmar isso agora. Apenas lembre-se de manter os ovos e comece a pensar em quantas promoções você ainda precisa para alcançar 50 de culinária|r
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
    .goto 1439,43.126,45.593,15 >>Entre na caverna |cRXP_PICK_Pedra Luniscante|r
step << Druid
    #optional
    #completewith EarlyLunaclaw
    #season 0
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Use|r |T132857:0|t[Cenarion Poeira Lunar] |cRXP_WARN_na |cRXP_PICK_Pedra Luniscante|r dentro da caverna para invocar |cRXP_ENEMY_Lunagarra|r na entrada da caverna|r
    .timer 4,Corpo e Coração RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #season 0
    #optional
    #label EarlyLunaclaw
    .goto Darkshore,43.09,45.55
    >>Mate o |cRXP_ENEMY_Lunagarra|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
    .xp <13+9500,1
step << Druid
    #optional
    #label DruidEarlyNessa
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Retornar a Nessa
    .target Laird
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith EarlyBody
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .target Nessa Shadowsong
    .isQuestComplete 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 6001 >>Entregue Corpo e Coração
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step << Druid
    #optional
    #season 0
    #label EarlyBody
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
	.zoneskip Moonglade
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r acima
    .turnin 6121 >>Entregar Lições Renovadas
    .accept 6122 >>Aceitar A Fonte Principal
    .target Dendrite Starblaze
    .isQuestTurnedIn 6001
step << Druid
    #optional
    #season 0
    #completewith AmethStart
    .hs >>Use a pedra do regresso para Costa Negra
    .isQuestTurnedIn 6001



----End of Optional Early Level 14 Druid Turnin/train----



step << NightElf Warrior/NightElf Rogue
    #sticky
    #season 0
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kordram Rochamalho|r e |cRXP_FRIENDLY_Delfrum Barbagulha|r
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .goto Darkshore,38.249,41.008
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .target Kurdram Stonehammer
    .target Delfrum Flintbeard
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elisa Manácero|r
    >>|cRXP_BUY_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >>|cRXP_WARN_Lance|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
    .xp <13,1
step << !sod/Warrior/Rogue
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naram Garralonga|r
    .vendor 4183 >>|cRXP_BUY_Compre uma|r |T135640:0|t[Jambiya] |cRXP_BUY_dele se puder|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step << !Druid sod
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r lá dentro
    .vendor 4182 >>|cRXP_BUY_Compre quantas|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_ou|r |T133634:0|t[Bolsa de Couro Marrom] |cRXP_BUY_você precisar dele|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_ou|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele até sua Aljava/Bolsa de Munição ficar cheia|r << Hunter
    .target Dalmond
step << !Druid sod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step << !Druid sod
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
 step << !sod/Warrior/Rogue
    #optional
    #completewith AsterionTravel << era
    #completewith AsterionTravelSoD << sod
    .goto 1439,43.509,33.207,0
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step << Warrior/Rogue
    #season 2
    .goto 1439,41.901,31.339
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Criatura Marinha Encalhada
step << !Warrior !Rogue
    #season 2
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Viaje até o |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #season 2
    .xp 14-1600 >>Triture o moonkin até faltar 1600 xp para o nível 14
step << skip --logout skip !Warrior !Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>Dirija-se para a caverna próxima
step << skip --logout skip !Warrior !Rogue
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>Abate o Oráculo Luniscante dentro e pule no topo do grande cogumelo no fundo da caverna, depois execute um Logout Pular|cRXP_WARN_ fazendo logout e login novamente|r


----Start of SoD Druid Starsurge segment----

step << Druid
    #optional
    #season 2
    #completewith next
    .subzone 442 >>Viaje para Auberdine
step << Druid
    #season 2
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r lá dentro
    .vendor 4182 >>|cRXP_BUY_Compre quantas|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_ou|r |T133634:0|t[Bolsa de Couro Marrom] |cRXP_BUY_você precisar dele|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_ou|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele até sua Aljava/Bolsa de Munição ficar cheia|r << Hunter
    .target Dalmond
step << Druid
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .target Thundris Windweaver
step << Druid
    #season 2
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
step << Druid
    #season 2
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << Druid
    #season 2
    #softcore
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>|cRXP_WARN_Pegue o barco para Porto Menethil. Você irá agora obter o|r |T135730:0|t[Surto Estelar] |cRXP_WARN_runa em Pântano que é incrivelmente poderosa neste nível|r
    >>|cRXP_WARN_Você pode morrer algumas vezes durante este processo|r
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gruguimdern|r
    >>|cRXP_WARN_Ele te dará um|r |T134052:0|t[|cRXP_LOOT_Charcomelo|r]
    .collect 210499,1 -- Marshroom (1)
    .target Grugimdern
    .train 424718,1
    .link https://youtu.be/fWVaDR-NnKU >>https://youtu.be/fWVaDR-NnKU >> |cRXP_WARN_Clique aqui para referência de vídeo|r
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328,15 >>Vá para o toco de árvore saído da superfície do lago
    .train 424718,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Use o|r |T134052:0|t[|cRXP_LOOT_Charcomelo|r] |cRXP_WARN_para comê-lo|r
    >>|cRXP_WARN_Certifique-se de que está seguro antes de usá-lo, se você morrer terá que pegar o cogumelo novamente|r
    .use 210499
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vodyanoi|r
    >>Você só conseguirá ver este NPC se comer o cogumelo primeiro
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    #season 2
    #softcore
    .train 424718 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa das Estrelas|r] |cRXP_WARN_para treinar|r |T135730:0|t[Surto Estelar]
    .use 210500
    .itemcount 210500,1
step << Druid
    #season 2
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
    .usespell 18960
    >>|cRXP_WARN_Estará em seu grimório|r
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5921 >>Vá para Moonglade
    .target Dendrite Starblaze
    .accept 5929 >>Aceite Espírito do Grande Urso
step << Druid
    #season 2
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
    #season 2
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
    >>|cRXP_WARN_Isso o fará voltar mais rápido|r
step << Druid
    #season 2
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5929 >>Entregue Espírito do Grande Urso
    .target Dendrite Starblaze
    .accept 5931 >>Aceite De Volta a Darnassus - Missão
step << Druid
    #season 2
    .hs >>Use sua Pedra de Regresso para retornar a Darnassus
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .trainer >>Treine suas magias de classe
    .turnin 5931 >>Entregue De Volta para Darnassus - Missão
    .target Mathrengyl Bearwalker
    .accept 6001 >>Aceite Corpo e Coração
step << Druid
    #season 2
    #completewith FlyAuberdine
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid
    #optional
    #season 2
    #label FlyAuberdine
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .target Nessa Shadowsong
step << Druid
    #season 2
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >>Entre na caverna |cRXP_PICK_Pedra Luniscante|r
step << Druid
    #optional
    #season 2
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Use|r |T132857:0|t[Cenarion Poeira Lunar] |cRXP_WARN_na |cRXP_PICK_Pedra Luniscante|r dentro da caverna para invocar |cRXP_ENEMY_Lunagarra|r na entrada da caverna|r
    .timer 4,Corpo e Coração RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 2
    .goto Darkshore,43.09,45.55
    >>Mate o |cRXP_ENEMY_Lunagarra|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid
    #season 2
    .goto 1439,47.314,48.676
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
    .isQuestTurnedIn 4811
step << skip --logout skip Druid
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>Vá para a caverna próxima
step << skip --logout skip Druid
    #optional
    #label OracleLS
    #completewith AsterionTravelSoD
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mate o Luniscante Oráculo dentro e pule no topo do grande cogumelo no fundo da caverna, depois faça um Logout Pular saindo e entrando novamente|r


----End of SoD Druid Starsurge segment----

step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
    .goto 1439,44.168,36.289,15 >>Viaje em direção a |cRXP_FRIENDLY_Astérion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 955 >>Aceite Bashal'Aran
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
    >>Mate |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r. Saqueie-os para obter |cRXP_LOOT_Brinco de Capeta|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Sátiro Deth'ryll|r por enquanto|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >>Abandone Bashal'Aran
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
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>Eles não possuem reaparecimento dinâmico. Ignore esta etapa se não conseguir encontrar nenhum |cRXP_ENEMY_Sátiro Deth'ryll|r
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
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>|cRXP_WARN_Esteja ciente de que eles não têm reaparições dinâmicas|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step << !sod/Warrior/Rogue
    #optional
    #completewith RedCrystal
    #season 2
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step << !Warrior !Rogue
    #season 2
    #sticky
    #completewith MushroomCaveSoD
    >>Mate todos os |cRXP_ENEMY_Ursos de Cardo Raiva|r que você vê. |cRXP_WARN_Você não tem que completar esta missão agora, mas idealmente você deveria ter cerca de 15+ mortos ao entrar na caverna Naga|r << Priest
    >>Mate todos os |cRXP_ENEMY_Ursos de Cardo Raiva|r que você vê. |cRXP_WARN_Você não tem que completar esta missão agora|r << !Priest
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 --Rabid Thistle Bears (20)
    .mob Rabid Thistle Bear
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,50.81,25.50
    >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step << !Warrior !Rogue
    #optional
    #completewith next
    #season 2
    #label MushroomCaveSoD
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>Vá para a Cliffspring Rio Cave
step << !Warrior !Rogue
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 2
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e um |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
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
    .hs >>Use sua Pedra de Regresso para retornar a Auberdine
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>0,1
step << skip --logout skip !Warrior !Rogue
    #optional
    #label MushroomLSSoD
    #completewith CavetoAuberSoD
    #season 2
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salte no topo da rocha no andar superior dentro da caverna. Posicione seu personagem até parecer que está flutuando, depois realize um Logout Pular ao fazer logout e login novamente|r
step
    #season 2 << Warrior/Rogue
    #season 0 << Mage/Warlock/Priest/Paladin/Hunter/Druid
    #completewith LateTurtleStart << era
    #completewith RedCrystal << sod
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
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
    >>Viaje até o |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << skip --logout skip Warrior/Rogue
    #season 2
    .goto 1439/1,-33.200,6141.300,20 >>Vá para a caverna próxima
step << skip --logout skip Warrior/Rogue
    #completewith next
    #season 2
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mate o Luniscante Oráculo dentro e pule no topo do grande cogumelo no fundo da caverna, depois faça um Logout Pular saindo e entrando novamente|r
step << !Warrior !Rogue
    #optional
    #season 2
    #label CavetoAuberSoD
    #completewith CliffspringEnd
    .subzone 442 >>Viaje para Auberdine
step << !Warrior !Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite A Corrupção de Bosque Negro
    .target Thundris Windweaver

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Druid/Warrior
    #season 2 << Warrior/Rogue
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >>Volte a Auberdine
step << Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step << !Warrior !Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target Barithras Moonshade
step << NightElf/Hunter/Druid/Rogue
    #season 2 << Warrior/Rogue
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho << !Druid sod
    .accept 4812 >>Aceite Como cascatas << !Druid sod
    .turnin 4813 >>Entregue Fragmentos incrustados << Druid sod
    .target Sentinel Glynda Nal'Shea
    .xp >17,1 << !Warrior
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
    .xp >17,1
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
    .xp >17,1
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #season 2 << Warrior/Rogue
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step << !Warrior !Rogue
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_Use a|r |T133748:0|t[Vazio Purificação Tigela] |cRXP_WARN_no moonwell de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << NightElf/Hunter/Druid/Warrior/Rogue
    #season 2 << Warrior/Rogue
    #optional
    #season 0 << Hunter/Druid/Rogue/Priest
    #completewith MysteriousCrystalHuntDruidEnd << era
    #completewith Anaya << sod
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior/Rogue
    #optional
    #completewith EarlyCrystalEnd
    #season 2 << Warrior/Rogue
    #season 0 << Hunter/Druid/Rogue/Priest
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
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
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << !Druid sod
    #season 2
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step << skip --logout skip
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-33.200,6141.300,20 >>Vá para a caverna próxima
step <<  skip --logout skip
    #optional
    #label OracleLSTwo
    #completewith MysteriousCrystalHuntDruidEnd
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto 1439/1,-79.100,6134.300
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Mate o Luniscante Oráculo dentro e pule no topo do grande cogumelo no fundo da caverna, depois faça um Logout Pular saindo e entrando novamente|r
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    #optional
    #label MysteriousCrystalHuntDruidEnd
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>Volte a Auberdine
    .isQuestTurnedIn 4811
    .isOnQuest 4812
step
    #season 2 << Hunter
    #season 1 << Druid/Warrior/Rogue/Priest
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Escolha|r |T135641:0|t[Adaga de Madeira Curva] |cRXP_WARN_pois você deveria tentar guardar um|r |T135641:0|t[Dagger] |cRXP_WARN_para sua|r |T132290:0|t[Venenos] |cRXP_WARN_missão depois|r << Rogue
    .turnin 4813 >>Entregue Fragmentos incrustados << !Hunter !Druid
    .turnin 4813,3 >>Entregue Fragmentos incrustados << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
    .isOnQuest 4813
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Cajado de Tordo do Carvalho]
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Retornar a Nessa
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
    .xp 13+9500 >>Farme até 9500+/11400 XP
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
    .isQuestAvailable 6001
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .target Nessa Shadowsong
    .isQuestAvailable 6001
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 6001 >>Entregue Corpo e Coração
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
    .isQuestAvailable 6001
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 6121 >>Entregar Lições Renovadas
    .accept 6122 >>Aceitar A Fonte Principal
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step
    #season 0
    #optional
    #completewith AmethStart
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
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
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
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
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
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
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
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
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
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
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
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
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_WARN_Esteja ciente de que ela tem um tempo de respawn de 7-8 minutos e 4 pontos de spawn diferentes em Ameth'Aran|r
    >>|cRXP_WARN_Se você não conseguir encontrá-la e quiser tentar novamente mais tarde ao custo de potencialmente farmar mais inimigos, pule este passo|r
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
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_WARN_Observe que ela tem um tempo de reaparecimento de 7-8 minutos e 4 pontos de aparição diferentes por toda Ameth'Aran|r
    >>|cRXP_WARN_Você pode querer se agrupar com outras pessoas próximas se não conseguir encontrá-la. Peça no General Bate-papo (/1) para se agrupar com qualquer outra pessoa também procurando por ela|r
    >>|cRXP_WARN_Se você não conseguir encontrá-la e quiser tentar novamente depois ao custo de farmar mais inimigos em breve, pule este passo|r
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
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
    .goto 1439,42.652,63.145
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Clique na |cRXP_PICK_Chama Antiga|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrindEnd
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    >>|cRXP_WARN_Tenha cuidado pois eles|r |T132307:0|t[Fugir] |cRXP_WARN_com menos de 30% de vida|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith FurbolgGrindEnd
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrindEnd
    #season 0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Warrior/Rogue
    #optional
    #completewith LateTurtleStart
    #season 2
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
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
    >>Termine de matar os |cRXP_ENEMY_Rabid Thistle Ursos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !sod/Warrior/Rogue/Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
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
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
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
    .xp 15+11875 >>Farme até 11875+/14400 XP
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
    .xp 15+11000 >>Farme até 11000+/14400xp
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
    .xp 15+600 >>Farme até 600+/14400xp
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
    .xp 14+12210 >>Farme até 12210+/12900xp
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step << !sod/Warrior/Rogue/Priest
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >>Volte a Auberdine
    .isOnQuest 4722
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step << !sod/Warrior/Rogue/Priest
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0 << !Warrior !Rogue
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>Volte para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << !sod/Warrior/Rogue/Priest
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4812 >>Entregue Como cascatas
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite A Esperança de Tharnariun
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !sod/Warrior/Rogue/Priest
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2139 >>Aceite A Esperança de Tharnariun
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
    .accept 986 >>Aceite Um Mestre Perdido << !sod
    .target Terenthis
step << !sod/Warrior/Rogue/Priest
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >>Suba as escadas
step << !sod/Warrior/Rogue/Priest
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r acima
    .accept 965 >>Aceite The Torre of Althalaxx
    .target Sentinel Elissa Starbreeze


----Start of SoD Priest early level 18 wand quest + meditation quest detour----

step << Priest
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .isOnQuest 957
    .target Asterion
step << Priest
    #season 2
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abra o |cRXP_PICK_Blackwood Grão Stores|r. Saqueie-o para obter a |T134939:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso invocará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correrão em sua direção. Esteja pronto para lutar contra eles ou reinicie-os.|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Priest
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Fique atento ao|cRXP_ENEMY_ Ursocardinho|r que pode atordoar você por 2 segundos|r
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
    >>Abra o |cRXP_PICK_Armazéns de Castanha Bosquenero|r. Saque-o para a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso invocará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correrão em sua direção. Esteja pronto para lutar contra eles ou reinicie-os.|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
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
    >>Abra o |cRXP_PICK_Armazéns de Fruta Bosquenero|r. Saque-o para a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso invocará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correrão em sua direção. Esteja pronto para lutar contra eles ou reinicie-os.|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
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
    .cast 16072 >>|cRXP_WARN_Use o|r |T134712:0|t[Cheio Purificação Tigela] |cRXP_WARN_na |cRXP_PICK_Fogueira|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step << Priest
    #season 2
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite The Torre of Althalaxx
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
    >>Abate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saqueie-os para obter |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Priest
    #season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite The Torre of Althalaxx
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
    .xp 18 >>Farme até o nível 18. |cRXP_WARN_Se você estiver longe disso, você pode usar a caverna de cogumelos Naga para fazer logout e pular para Auberdine e entregar as missões em vez disso|r
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Darnassus
    .zoneskip Darnassus
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
    .trainer >>Treine suas magias de classe
    .target Jandria
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maethra Almescória|r
    .accept 78192 >>Aceite Segredos da Luz
    .target Maethra Slagheart
step << Priest
    #season 2
    #sticky
    #completewith next
    .goto 1457,29.179,41.180
    .zone Teldrassil >>Pegue o portal roxo para Rut'Theran Village
step << Priest
    #season 2
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .target Nessa Shadowsong
step << Priest
    #season 2
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
step << Priest
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step << Priest
    #season 2
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763,1 >>Entregue O Bosque Negro Corrompido
    .target Thundris Windweaver
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>Remova a |T134939:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r da sua mochila, pois não é mais necessária
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>Remova |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r da mochila, pois já não é necessário
step << Priest
    #season 2
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>Remova |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r da mochila, pois já não é necessário
step << Priest
    #season 2
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135469:0|t[Varinha de Pedra-da-lua]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .vendor 6301 >>|cRXP_BUY_Compre|r [Temperos Suaves] |cRXP_BUY_dele até que você tenha|r [Temperos Suaves] |cRXP_BUY_em quantidade igual ou maior que a de|r [Ovo Pequeno] |cRXP_BUY_que você possui atualmente|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Entregue Oceano Profundo, Vasto Mar
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaje em direção à |cRXP_PICK_Fogueira|r no chão|r
    +Comece [Culinária] [Ovo Assado com Ervas]. Faça isso até que sua [Culinária] atinja pelo menos o nível 10
    >>Continue evoluindo sua [Culinária] até ficar sem [Ovo Pequeno] << !sod
    >>Há uma missão mais tarde na Floresta do Crepúsculo que exige que sua [Culinária] esteja em 50 ou mais. Você também pode cozinhar isso quando entrar no barco em breve << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros << !sod
    .turnin 4762 >>Entregue Rio Fontescarpa << sod
    .accept 4763 >>Aceite A Corrupção de Bosque Negro << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
    >>Tenha cuidado |cRXP_ENEMY_Filhote de Florestruz|r [Fugir] com menos de 30% de vida
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
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
    >>Abate os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Caranguejo Chunks|r
    >>Considere pular alguns dos inimigos de nível 17 se conseguir bons despojos. |cRXP_WARN_Você não precisa completar esta missão agora|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
----Start of Hunter/Druid 1x and SoD Warrior/Rogue early Althalaxx section (for money+xp)----


step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid/Warrior/Rogue
	#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>Abate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #optional
    #completewith Tower1
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
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
    .goto 1439,54.973,24.885,15 >>Vá em direção a |cRXP_FRIENDLY_Balthule Umbrataque|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite The Torre of Althalaxx
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
    >>Abate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saqueie-os para obter |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid/Warrior/Rogue
#xprate <1.5 << Hunter/Druid
    #season 2 << Warrior/Rogue
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite The Torre of Althalaxx
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
    >>Abate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
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
    >>Abate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
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
    >>Abate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Clique no |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>Vá para a Cliffspring Rio Cave
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>Use o [Amostrador Vazio das Cataratas do Rio Penhasco] na água na entrada da Caverna do Rio Penhasco
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step << Warrior
    #season 1 -- not loading for now
    #optional
    #sticky
    #label EndlessRage
    .goto Darkshore,55.40,36.05,0,0
    >>Mate |cRXP_ENEMY_Lady Sedorax|r. Saque-a pela |T132347:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_é uma élite de nível 18 que também tem outros inimigos ao redor dela. Você pode obtê-lo em vez disso de Cerro Oeste, que é muito mais fácil|r
    >>|cRXP_WARN_Peça no Bate-papo Geral (/1) para se agrupar com alguém que também quer matá-la ou que possa ajudá-lo|r
    >>|cRXP_WARN_Se você não conseguir fazer isso, pule este passo|r
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
    .train 403489 >>|cRXP_WARN_Use a|r |T132347:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para treinar|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e um |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
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
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Salte no topo da rocha no andar superior dentro da caverna. Posicione seu personagem até parecer que está flutuando, depois realize um Logout Pular ao fazer logout e login novamente|r
step
    #optional
    #season 0 << !Warrior !Rogue
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >>Viaje para Auberdine

----Start of SoD 250% xp buff early southern Darkshore one loop----

step << Warrior/Rogue
    #label CliffspringEnd
    #season 2
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite A Corrupção de Bosque Negro
    .target Thundris Windweaver
step << Warrior/Rogue
    #season 2
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaje em direção à |cRXP_PICK_Fogueira|r no chão|r
    +Comece [Culinária] [Ovo Assado com Ervas]. Faça isso até que sua [Culinária] atinja pelo menos o nível 10
    >>Continue evoluindo sua [Culinária] até ficar sem [Ovo Pequeno] << !sod
    >>Há uma missão mais tarde na Floresta do Crepúsculo que exige que sua [Culinária] esteja em 50 ou mais. Você também pode cozinhar isso quando entrar no barco em breve << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step << Warrior/Rogue
    #season 2
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178
step << !Druid
    #season 2
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    #season 2
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    >>|cRXP_WARN_Escolha|r |T135641:0|t[Adaga de Madeira Curva] |cRXP_WARN_pois você deveria tentar guardar um|r |T135641:0|t[Dagger] |cRXP_WARN_para sua|r |T132290:0|t[Venenos] |cRXP_WARN_missão depois|r << Rogue
    .turnin 4813 >>Entregue Fragmentos incrustados << !Hunter !Druid
    .turnin 4813,3 >>Entregue Fragmentos incrustados << Hunter/Druid
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step
    #season 2
    .goto Darkshore,37.78,44.06
    >>|cRXP_WARN_Use a|r |T133748:0|t[Vazio Purificação Tigela] |cRXP_WARN_no moonwell de Auberdine|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step << Warrior/Rogue
    #season 2
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target Barithras Moonshade
step
    #season 2
    .goto Darkshore,37.21,44.22
    >>Clique em |cRXP_PICK_The Wanted Poster|r
    .accept 4740 >>Aceite WANTED: Lodofundo!
step << Druid/Priest
    #season 2
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
step << Warrior/Rogue
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4725
step << Druid/Hunter
    #season 2
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
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
    >>Abate os |cRXP_ENEMY_Blackwood Desbravadores|r e os |cRXP_ENEMY_Blackwood Windtalkers|r. Saque-os para obter seus |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r]
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
    .use 209027 >>|cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r] |cRXP_WARN_on a |cRXP_ENEMY_Tiscoral Jovem|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerar|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Reef Crawler
    .train 416049,1
step << Druid
    #season 2
    #sticky
    #label Treats3
    #requires Treats2
    .train 416049 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para treinar|r |T132131:0|t[Lacerar]
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
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
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
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_WARN_Esteja ciente de que ela tem um tempo de ressurgimento de 7-8 minutos e 4 pontos de ressurgimento diferentes em toda Ameth'Aran. Pule esta missão se ela não estiver lá|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step << !warrior !Rogue !Priest
    #season 2
    #label SealSoD
    .goto 1439,42.373,61.815
    >>Clique na |cRXP_PICK_Chama Antiga|r
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
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_WARN_Tenha em mente que ela tem um tempo de spawn de 7-8 minutos e 4 pontos de spawn diferentes em Ameth'Aran. Pule esta missão se ela não estiver lá|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step << !Priest
    #optional
    #season 2
    #completewith OnuSoD
    >>Mate os |cRXP_ENEMY_Rabid Thistle Ursos|r. |cRXP_WARN_Você não precisa completar esta missão agora, mas idealmente deveria ter pelo menos 15+ derrotados até chegar em Onu|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #season 2
    #completewith OnuSoD
    .goto 1439,43.555,76.293,80 >>Vá para Grove of the Ancients
step
    #season 2
    #label OnuSoD
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 952 >>Entregue no Bosque dos Anciões << Warrior/Rogue
    .turnin 948 >>Entregue Onu
    .accept 944 >>Aceite A Alameda do Mestre
    .target Onu
step
    #season 2
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >>Vá para The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #season 2
    #optional
    #completewith MasterEnd
    >>Mate Discípulos do Crepúsculo|cRXP_ENEMY_ e|r Capangas do Crepúsculo|cRXP_ENEMY_. Saque-os para obter o|r [|cRXP_LOOT_Livro: Os Poderes Inferiores|r]
    *|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Twilight Thugs|r podem|r |T132343:0|t[Desarmar] |cRXP_WARN_você por 6 segundos|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Twilight Disciples|r lançam|r |T135953:0|t[Renovar] |cRXP_WARN_e uma |T135915:0|t[Cura] de 3 segundos|r
    >>|cRXP_WARN_A chance de queda deste item é extremamente baixa. Não faça um esforço especial para obtê-lo|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 2
    .goto 1439,38.537,86.050
    >>Descubra a Clareira do Mestre
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #season 2
    #completewith next
    .cast 5809 >>Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 2
    >>|cRXP_WARN_Clique na|cRXP_PICK_ Tigela de Vidência|r no chão|r
    .turnin 944 >>Entregue The Master's Glaive
    .accept 949 >>Aceite O Acampamento Crepuscular
    .use 5251
step
    #label MasterEnd
    #season 2
    .goto 1439,38.537,86.050
    >>Clique no |cRXP_PICK_Crepúsculo Tomo|r no pedestal norte
    .turnin 949 >>Entregue O Acampamento Crepuscular
    .accept 950 >>Aceite Devolver a Onu
step
    #optional
    #sticky
    #season 2
    .isQuestTurnedIn 949
    .destroy 5251 >>Exclua o |T134715:0|t[Frasco de Vidência] de sua mochila, pois não é mais necessário
step << !Warrior !Druid !Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .target Onu
step
    #sticky
    #label prospector
    #season 2
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>|cRXP_WARN_Você pode ter que esperar ele reaparecer ou outros terminarem a escolta|r
    .turnin 729 >>Entregue The Absent Minded Prospector
    .target Prospector Remtravel
step
    #season 2
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Trilheiro|r. Isto iniciará uma escolta
    .accept 731,1 >>Aceite O Prospector Distraído
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule este passo se você falhar|r << !Warrior
    >>|cRXP_WARN_Você provavelmente não conseguirá fazer solo esta missão!|r Recomendo que nem tente a menos que encontre outro jogador para fazer grupo << Warrior
    >>Pule este passo se você falhar ou não houver ninguém para formar grupo << Warrior
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_clique aqui para um guia em vídeo|r << Hunter
    .link https://youtu.be/md926sh3L6U >>https://youtu.be/md926sh3L6U >> |cRXP_WARN_Clique aqui para um guia passo a passo em vídeo|r << !Hunter
    .target Prospector Remtravel
step
    #requires prospector
    #season 2
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Pule esta etapa se você falhar|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >>https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_clique aqui para um guia em vídeo|r << Hunter
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
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Caranguejo Chunks|r
    >>|cRXP_WARN_Você não precisa completar esta missão agora, mas idealmente você deveria ter pelo menos 4 ao final desta seção|r << !Warrior
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << !Warrior
    #season 2
    .goto 1439,31.251,87.419
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Criatura Marinha Encalhada
    >>|cRXP_WARN_Esta missão pode ser muito difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, senão você pode atrair múltiplos inimigos ao mesmo tempo|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_clique aqui para um guia em vídeo|r << Hunter
step << !Warrior
	#season 2
    .goto 1439,31.229,85.564
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step << !Warrior
	#season 2
    .goto 1439,31.690,83.700
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
	#season 2
    .goto 1439,32.644,80.711
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Criatura Marinha Encalhada
step
    #season 2
    #label SodMurk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Certifique-se de verificar se o|cRXP_ENEMY_ Lodofundo|r já está ativo na água (se alguém já falhou no encontro anteriormente ou deixou o|cRXP_ENEMY_ Caçador Brumagris|r na onda em que ele surge vivo)|r
    >>Abata os |cRXP_ENEMY_Greymist Warriors|r e os |cRXP_ENEMY_Greymist Hunters|r no acampamento
    >>|cRXP_WARN_Mova-se até a Fogueira no centro do acampamento para iniciar o encontro com o|cRXP_ENEMY_ |rLodofundo|r
    >>|cRXP_WARN_3 ondas surgirão da água, cada uma matando a onda anterior: Onda 1 tem 3|cRXP_ENEMY_ Patrulheiros Brumagris|r nível 12-13, Onda 2 tem 2|cRXP_ENEMY_ Guerreiros Brumagris|r nível 15-16, e a Onda 3 tem 1|cRXP_ENEMY_ Lodofundo|r e 1|cRXP_ENEMY_ Caçador Brumagris|r nível 16-17. Você pode se afastar da Fogueira para evitar agredir a próxima onda|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step << Warrior
    #season 2
    .goto Darkshore,35.7,73.5
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Fragmentos de Caranguejo Fino|r
    >>|cRXP_WARN_Pule este passo se não há mais caranguejos por perto|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << !Priest
    #season 2
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4728 >>Aceite Criatura Marinha Encalhada
step << !Priest
    #season 2
    .goto Darkshore,38.9,64.9
    >>Termine de matar os |cRXP_ENEMY_Rabid Thistle Ursos|r.
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Warrior !Rogue !Priest
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step << skip -- Hunter
    .goto Darkshore,39.5,55.5
    .xp 19+800 >>Triture até ter 800 xp no nível 19. Desta forma você terá nível 20 para treinar em Darnassus após entregar todas as missões

----Start of SoD Priest Ashenvale Meditation quest section----


step << Priest
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
    .target Onu
step << Priest
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_pule este passo se ele não está lá. Pode levar até 25 minutos para ele reaparecer|r
    .accept 5321 >>Aceite A Adormecida Despertou
    .target Kerlonian Evershade
step << Priest
    #season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter a |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Priest
    #season 2
    #completewith towersod
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step << Priest
    #season 2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escorte |cRXP_FRIENDLY_Kerlonian|r para Maestra's Post em Vale Gris|r
    .use 13536 >>|cRXP_WARN_Use o|r |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] |cRXP_WARN_sempre que |cRXP_FRIENDLY_Kerlonian|r adormecer ao seu lado|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos aparecerão apenas se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>Pule este passo se você ainda não completou a missão
    .turnin 5321 >>Entregue A Adormecida Despertou
step << Priest
    #season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>Entregue A Torre de Althalaxx
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>Aceite Cabelo-de-bathran
step << Priest
    #season 2
    #sticky
    #completewith PriestHairSoD
    >>Abata os |cRXP_ENEMY_Forsaken Herbalists|r e os |cRXP_ENEMY_Forsaken Seekers|r enquanto procura pelos Feixes de Planta
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
    >>Abra os |cRXP_PICK_Feixes de Plantas|r no chão. Saque-os para |cRXP_LOOT_Cabelos de Bathran|r
    >>|cRXP_WARN_Parecem pequenos sacos marrons. Podem ser difíceis de ver|r
    .complete 1010,1
    .isOnQuest 1010
step << Priest
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Termine de matar os |cRXP_ENEMY_Forsaken Herbalists|r e os |cRXP_ENEMY_Forsaken Seekers|r
    .complete 78192,1 --Forsaken Herbalist (7)
    .complete 78192,2 --Forsaken Seeker (9)
    .mob Forsaken Herbalist
    .mob Forsaken Seeker
step << Priest
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>Entregue Cabelo-de-bathran
    .accept 1020 >>Aceite A Cura de Orendil
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>>Aprenda a rota de voo para Astranaar
	.target Daelyshia
step << Priest
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
step << Priest
    #season 2
    #optional
    #completewith next
    .hs >>Use a Pedra de Regresso para Auberdine
    >>|cRXP_WARN_Voe de volta se sua Pedra de Retorno estiver em recarga|r
    .zoneskip Darkshore
    .subzoneskip 442
step << Priest
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe de volta para Auberdine
	.target Daelyshia


----End of SoD Priest Ashenvale Meditation quest section----


step
    #season 2
    #completewith CleansingTharnariunSod
    .subzone 442 >>Viaje para Auberdine
step
    .goto 1439,36.621,45.596
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada << !Priest
    .turnin 4730 >>Entregue a Criatura Marinha Encalhada
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada << !Warrior
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada << !Warrior
    .turnin 4733 >>Entregue a Criatura Marinha Encalhada << !Warrior
    .target Gwennyth Bly'Leggonde
step << Warrior
    .goto Darkshore,36.096,44.931
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
    .isQuestComplete 1138
step << !Warrior !Rogue !Priest
    #optional
    #completewith next
    #season 2
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >>Volte para |cRXP_FRIENDLY_Cerellean Garralva|r no cais
step << !Warrior !Rogue !Priest
    #optional
    #season 2
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .goto 1439,37.703,43.393
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
    .target Sentinel Glynda Nal'Shea
step << !Priest
    #label CleansingTharnariunSod
    #season 2
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite A Esperança de Tharnariun
    .target Tharnariun Treetender
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
    .target Terenthis
step << !Warrior !Rogue !Priest
    #season 2
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r acima
    .accept 965 >>Aceite The Torre of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto 1439,37.439,41.839
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Druid
    #season 2
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >>Abandone Colheita da Cura
step
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    .accept 6343 >>Aceite Retornar a Nessa
    .target Laird
    .isQuestComplete 741 << Rogue sod
step << NightElf
    #season 2
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
    .isQuestComplete 741 << Rogue
step << NightElf
    #season 2 << !sod Priest
    #season 1 << sod Priest
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .target Nessa Shadowsong
    .isQuestComplete 741 << Rogue sod
step << !NightElf
    #season 2
    .goto 1439,33.169,40.179,15 >>Vá até o cais do barco de Darnassus
step << !NightElf
    #season 2
    .goto 1439,33.213,39.883
    >>|cRXP_WARN_Evolua sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para o Porto de Menethil, se necessário|r << Warrior/Paladin/Rogue
    .zone Teldrassil >>Pegue o barco para Darnassus
    .zoneskip Stormwind City << Warrior
    .zoneskip Ironforge << Warrior
    .zoneskip Darnassus
    .dungeon !DM << !Dwarf/!Hunter
step << !Druid
    #completewith next
    #season 2
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe um|r |T135157:0|t[Cajado Longo]
    .collect 928,1
    .target Ariyell Skyshadow
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    #season 2
    #completewith next
    +|cRXP_WARN_Equipe|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.16
step << Warrior
    .goto Darnassus,58.72,34.92
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Arias'ta Cantalâmina|r
    .trainer >>Treine suas magias de classe
    .target Arias'ta Bladesinger
step << Hunter
    #season 2
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    >>|cRXP_WARN_Verifique se tem 70 prata restante após o treinamento. Você precisará dela para comprar um arco|r
    .trainer >>Treine suas magias de classe
    .target Jocaste
step << Hunter
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
    .target Chief Archaeologist Greywhisker
    .isQuestComplete 741
step << Hunter
    #completewith startSoD
    #label RecruveReinforcedSoD
    #season 2
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Compre um|r |T135489:0|t[Arco Recurvo Pesado]
    >>|cRXP_WARN_Abasteça-se de|r |T132382:0|t[Sharp Flechas]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforcedSoD
    #completewith next
    #season 2
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    >>Entre no Enclave Cenariano
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    >>|cRXP_WARN_Certifique-se de ter pelo menos 1 ouro e 30 prata após o treinamento. Você precisará disso para comprar armas|r
    .trainer >>Treine suas magias de classe
    .target Syurna
    .isQuestComplete 741
step << Rogue
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe dois|r |T135342:0|t[Cris] adagas
    .collect 2209,2
    .target Ariyell Skyshadow
    .money <0.9860
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .isQuestComplete 741
step << Rogue
    #season 2
    #completewith next
    +|cRXP_WARN_Equipe os dois|r |T135342:0|t[Cris] adagas
    .use 2209
    .itemcount 2209,2
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
step << !Druid !Hunter
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
    .target Chief Archaeologist Greywhisker
    .isQuestComplete 741
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
    .trainer >>Treine suas magias de classe
    .target Jandria
step << Priest
    .goto Darnassus,37.90,82.74
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maethra Almescória|r
    .turnin 78192 >>Entregue Segredos da Luz
    .accept 78193 >>Aceite Segredos da Luz
    .target Maethra Slagheart
step << !Druid !Hunter
    #season 2
    .hs >>Use a Pedra de Regresso para Auberdine
    >>|cRXP_WARN_Voe de volta se sua Pedra de Retorno estiver em recarga|r
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
    .zone Teldrassil >>Pegue o portal roxo para Rut'Theran Village
    .isQuestComplete 741 << Rogue
step << !Druid !Hunter
    #season 2
    #label FlyAuberdineSoD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
    .isQuestComplete 741 << Rogue

----Start of Druid/Hunter Quest+SoD rune section----


step << Druid
    #optional
    #season 2
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 6001 >>Entregue Corpo e Coração
    .accept 26 >>Aceite Uma Lição a Aprender
    .trainer >>Treine suas magias de classe
    >>Você logo receberá muitas runas de gato poderosas, tornando a forma feral a abordagem de leveling mais rápida. |cRXP_WARN_Redistribua seus talentos de Equilíbrio para Feral|r se quiser. Se você pegar o talento de velocidade de movimento para a forma de gato o mais rápido possível, isso vai economizar muito tempo de corrida.
    .target Mathrengyl Bearwalker
    .isQuestComplete 6001
step << Druid
    #season 2
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
    .target Chief Archaeologist Greywhisker
step << Druid/Hunter
    #season 2
    #optional
    #completewith next
    +Vá para Teldrassil para obter |T133816:0|t[Gravar Luvas - Destroçar] << Druid
    +Vá para Teldrassil para obter |T236178:0|t[Tiro Explosivo] << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid/Hunter
    #season 2
    #optional
    .goto 1438,40.411,54.076
    .subzone 141 >>Viagem para Teldrassil
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
    .subzone 262 >>Entre no Ban'ethil Barrow Den
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
    .goto 1438,45.118,57.701,20 >>Caminhe em direção ao |cRXP_ENEMY_Patafúria|r dentro
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
    >>Abate o |cRXP_ENEMY_Patafúria|r no andar de baixo. Saque-o para obter o |T136061:0|t|cRXP_LOOT_[Ídolo de Raiva Ursina]|r << Druid
    >>Abate o |cRXP_ENEMY_Patafúria|r no andar de baixo. Saque-o para obter a |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r << Hunter
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .mob Rageclaw
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step << Druid
    #season 2
    .equip 18,206954 >>|cRXP_WARN_Equipe o|r |T136061:0|t|cRXP_LOOT_[Ídolo de Raiva Ursina]|r
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
    .aura 414824 >>|cRXP_WARN_Enquanto em|r |T132276:0|t[Forma de Urso]|cRXP_WARN_, mantenha 50 ou mais Raiva por 60 segundos|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid/Hunter
    #season 2
    #label Rune
    .train 410025 >>|cRXP_WARN_Use o|r |T136061:0|t|cRXP_LOOT_[Ídolo de Raiva Ursina]|r |cRXP_WARN_para aprender|r |T132135:0|t[Destroçar] << Druid
    .train 410123 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_para aprender|r |T236178:0|t[Tiro Explosivo] << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .use 206954 << Druid
    .use 206169 << Hunter
    .aura -414824 << Druid
step << Druid
    #optional
    #completewith TotL
    .cast 18960 >>Lance Teleporte: Clareira da Lua
    .zoneskip Moonglade
    step << Druid
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 26 >>Entregar Uma Lição a Aprender
    .accept 29 >>Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>Nade para Lake Elune'Ara
    >>Abra o |cRXP_PICK_Bauble Recipiente|r. Saque-o para obter um |T134125:0|t[Adorno de Altar]
    >>|cRXP_WARN_Pode surgir em diferentes locais debaixo d'água|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >>Lance Teleporte: Clareira da Lua
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>Use o [Adorno de Altar] no Santuário da árvore de Remulos.
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 29 >>Entregar Prova do Lago
    .accept 272 >>Aceitar Prova do Leão Marinho
    .target Tajarri
step << Druid/Hunter
    #optional
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore


----End of Druid Quest+SoD rune section----


step << Priest
    #season 2
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Priest
    #season 2
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
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
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 20-22 Costa Negra SoD
#displayname 20-22 Costa Negra << sod !Warrior
#displayname 20-22 Costa Negra/Vale Gris << sod Warrior
#next RestedXP Aliança 20-30\22-24 Pantanal SoD

step
    .goto Darkshore,37.78,44.06
    .use 12346 >>Use a [Tigela de Purificação Vazia] no |cRXP_PICK_Poço Lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 2
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .isOnQuest 957
    .target Asterion
step << Warlock
    #season 2
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label ExplorerImpDarkshoreTwo
    >>Enquanto está fazendo missões, conjure |T136163:0|t|cRXP_FRIENDLY_[Drenar Alma]|r em inimigos até receber um |T133257:0|t|cRXP_LOOT_Alma de Explorador|r. |cRXP_WARN_Use a para aprender como convocar um|r |T236294:0|t|cRXP_FRIENDLY_[Diabrete Explorador]|r
    .train 445459 >>|cRXP_WARN_Usar|r |T133257:0|t|cRXP_LOOT_Alma do Explorador|r |cRXP_WARN_para aprender como convocar um|r |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImpDarkshoreTwo << Warlock
    #sticky
    #completewith TravelMenethilNoDMBoat
    #label FelPortalRuneDarkshore
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presentes. Se você encontrar um, convoque a sua |T236294:0|t[|cRXP_FRIENDLY_Diabrete Explorador|r] e fale com ele enquanto estiver ao lado de um portal para enviá-lo em uma expedição. Após 10-20 minutos, ele retornará com tesouro e uma chance de lhe dar |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] << Warlock
    >>Você está em uma zona com |cRXP_FRIENDLY_Fel Portais|r presentes. Se você encontrar um, feche-o usando um |T134945:0|t[|cRXP_LOOT_Pergaminho da Recomposição Espacial|r]. Isso lhe dará |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r] << Mage
    >>|cRXP_WARN_Fique atento aos portais até obter a runa|r
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
    .train 427733 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Evocar Guarda Vil] << Warlock
    .train 428878 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Seta Incendiária|r |cRXP_WARN_para treinar|r |T135809:0|t[Seta Incendiária] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abra o |cRXP_PICK_Blackwood Grão Stores|r. Saqueie-o para obter |T134939:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso invocará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correrão em sua direção. Esteja pronto para lutar contra eles ou reinicie-os.|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r. Saque-a para obter o |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    >>|cRXP_WARN_Fique atento ao|cRXP_ENEMY_ Ursocardinho|r que pode atordoar você por 2 segundos|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step
    #season 0 << Warrior
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Fique atento ao|cRXP_ENEMY_ Ursocardinho|r que pode atordoar você por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Abra o |cRXP_PICK_Armazéns de Castanha Bosquenero|r. Saque-o para a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso invocará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correrão em sua direção. Esteja pronto para lutar contra eles ou reinicie-os.|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
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
    >>Abra o |cRXP_PICK_Armazéns de Fruta Bosquenero|r. Saque-o para a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso invocará 2 |cRXP_ENEMY_Furbolgs Bosquenero|r que irão atacar e correrão em sua direção. Esteja pronto para lutar contra eles ou reinicie-os.|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_Use o|r |T134712:0|t[Cheio Purificação Tigela] |cRXP_WARN_na |cRXP_PICK_Fogueira|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << Warrior
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Mate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Fique atento ao|cRXP_ENEMY_ Ursocardinho|r que pode atordoar você por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step << skip --logout skip Warrior
    #season 2
    .goto Darkshore,51.48,38.43
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Suba no topo do cogumelo no fundo da caverna de Matriarca do Covil e execute um logout skip ao fazer logout no topo dele|r
step << Warrior
    #optional
    #season 2
    #completewith BlackwoodSod
    .subzone 442 >>Viaje para Auberdine
step
    #season 0 << Warrior
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite The Torre of Althalaxx
    .target Balthule Shadowstrike
step << Paladin
    #season 2
    #optional
    #completewith next
    .goto Darkshore,56.20,26.46
    >>Fique atento a grupos entrando na Torre de Althalaxx. Se você ver alguém, siga atrás deles lentamente para dentro para poder saquear o |cRXP_WARN_Orbe Estranho|cRXP_PICK_ no topo|r
    >>|cRXP_WARN_Cuidado os inimigos nesta torre são impossíveis de matar (Nível 28-31)|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    >>Abra o |cRXP_PICK_Orbe Estranho|r na mesa acima da Torre de Althalaxx. Saque-o para obter o |cRXP_LOOT_Althalaxx Orbe|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step << Warlock
    #season 2
    #optional
    #completewith Parchments
    >>Fique atento a grupos entrando na Torre de Althalaxx. Se você ver alguém, siga atrás deles lentamente para dentro para poder saquear o |cRXP_WARN_Bough of Altek|cRXP_PICK_ no topo para o |T135153:0|t[Bough of Altek]|r
    >>|cRXP_WARN_Isto é para sua|r |T237558:0|t[Metamorfose] |cRXP_WARN_runa depois. Se você não quer fazer isto, pule este passo|r
    >>|cRXP_WARN_Cuidado: os inimigos nesta torre são impossíveis para você matar (nível 28-31)|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
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
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saqueie-os pelo |T134419:0|t[|cRXP_FRIENDLY_Rune of Canalizando|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    #season 2
    #sticky
    #label ChannelingEnd
    #requires Channeling
    .train 403932 >>|cRXP_WARN_use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para treinar|r |T136168:0|t[Mestre Canalizador]
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
    >>Abate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saqueie-os para obter |cRXP_LOOT_Worn Parchments|r
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
    .xp 18+15000 >>Farme até 15000+/19400xp
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    #season 0 << Warrior
    #requires Channeling << Warlock --Season 2
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite The Torre of Althalaxx << !Hunter
    .target Balthule Shadowstrike
step << Priest
    #season 1 -- Skipping this rune cus its useless
    #completewith next
    >>Mate os |cRXP_ENEMY_Mirmidões Escamarraio|r, os |cRXP_ENEMY_Guerreiros Escamarraio|r e as |cRXP_ENEMY_Feiticeiras Escamarraio|r. Saqueie-os para uma |T236364:0|t[|cRXP_LOOT_Oferenda de Shatterspear|r]
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
    >>Saque o |cRXP_LOOT_Mathystra Relics|r no chão
    .complete 951,1 -- Mathystra Relics (6)
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Mate os |cRXP_ENEMY_Mirmidões Escamarraio|r, os |cRXP_ENEMY_Guerreiros Escamarraio|r e as |cRXP_ENEMY_Feiticeiras Escamarraio|r. Saqueie-os para uma |T236364:0|t[|cRXP_LOOT_Oferenda de Shatterspear|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_Use|r |T236364:0|t[|cRXP_LOOT_Oferenda de Shatterspear|r] |cRXP_WARN_no Ídolo Shatterspear submerso para receber|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    #season 1 -- Skipping this rune cus its useless
    .train 425215 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r] |cRXP_WARN_para treinar|r |T237566:0|t[Fé Corrompida]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205905
    .itemcount 205905,1
step << !sod/Hunter/Druid
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .accept 2098 >>Aceite A Recuperação do Giramastro
    .target Gelkak Gyromast
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Abata os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    .goto Darkshore,54.93,12.19
    >>Abata os |cRXP_ENEMY_Greymist Oracles|r e os |cRXP_ENEMY_Greymist Tidehunters|r. Saqueie-os para obter o |cRXP_LOOT_Middle of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento aos|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r [Raio] e ao dano que eles também curam com|cRXP_WARN_ |r[Onda de Cura]|r
    >>|cRXP_WARN_Você pode usar LoS (Linha de Visão) nos|r|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r[Raio] ao redor do navio afundado para evitar receber dano
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step << !sod/Hunter/Druid
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Abata os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
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
    >>Abata os |cRXP_ENEMY_Giant Foreststriders|r. Saque-os para obter o |cRXP_LOOT_Top of Gelkak's Chave|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #xprate <1.59
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Abata os |cRXP_ENEMY_Moonstalker Sires|r e as |cRXP_ENEMY_Moonstalker Matriarchs|r. Saqueie-os para obter as |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Fique atento às|cRXP_ENEMY_ Matriarcas Espreitaluna|r. Elas sempre atacam junto com um|cRXP_ENEMY_ Filhote de Espreitaluna|r ao seu lado|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << !sod/Hunter/Druid
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>|cRXP_WARN_Comece a procurar um grupo para A Vingança do Giramastro/|r|cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r << Warrior/Paladin/Rogue
    .turnin 2098 >>Entregue A Recuperação do Giramastro
    .accept 2078 >>Aceite A Vingança do Giramastro
    .target Gelkak Gyromast
step << !sod/Hunter/Druid
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >>Fale com o|cRXP_FRIENDLY_ Mangual-eliminator Pro Giramastro 4100|r para iniciar a escolta
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Esta missão é MUITO difícil|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step << !sod/Hunter
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step << !sod/Hunter/Druid
    .goto Darkshore,55.81,18.29,10,0
    .goto 1439,56.654,13.484
    #optional
    >>Escolte |cRXP_FRIENDLY_Mangual-eliminator Pro Giramastro 4100|r até |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>Mate |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r uma vez que se tornar hostil
    >>|cRXP_WARN_Esta missão é MUITO difícil|r
    *Use apenas ataques à distância enquanto foge, evite estar ao alcance de corpo a corpo << Druid
    >>|cRXP_WARN_tente fazer esta missão se puder pois economizará tempo depois pois recompensa|r |T134797:0|t[Elixires de Respiração Aquática] |cRXP_WARN_para missões subaquáticas depois|r << !Druid !Warlock
    >>|cRXP_WARN_Usar|r |T136100:0|t[Raízes Enredantes] |cRXP_WARN_nele quando ficar hostil depois crie distância e se mova usando feitiços de lançamento instantâneo|r << Druid
    >>|cRXP_WARN_Se você não conseguir matar o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r, pule este passo|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >>https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step << !sod/Hunter/Druid
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2078 >>Entregue A Vingança de Giramastro
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #season 0 << Warrior
    #completewith BeachedCloak
    .abandon 2078 >>Abandone A Vingança de Giramastro
step << Druid
    #xprate <1.5
    #optional
    #completewith DeerComplete
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter Finos Pedaços de Caranguejo
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step << !sod/Hunter/Druid
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >>Remova |T134459:0|t[Gyromast's Chave] da mochila, pois já não é necessário
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
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
    >>|cRXP_WARN_Use o|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_em|r |cRXP_ENEMY_Cervo Adoentado|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nade para fora na água
    >>Abra a |cRXP_PICK_Caixa-forte Estranha|r. Saqueie-a para obter Meia Pingente de Agilidade Aquática
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshire 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>Vá para Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith BlackwoodSod
    .hs >>Use a Pedra de Regresso para Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step << Druid
    #season 2
    #optional
    #completewith BlackwoodSod
    .goto Moonglade,48.0,67.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sindray|r
    .fly Auberdine >>|cRXP_WARN_Voe para Auberdine se sua Pedra de Retorno ainda está em recarga|r
step << !Warrior
    #season 2
    #optional
    #completewith BlackwoodSod
    .hs >>Use a Pedra de Regresso para Auberdine
    .subzoneskip 442
    .cooldown item,6948,>0,1
step << !Druid !Warrior
    #optional
    #season 2
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >>Corra de volta para Auberdine se sua Pedra de Retorno não está disponível
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue O Bosque Negro Corrompido
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >>Exclua a |T134939:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r da mochila, pois ela não é mais necessária
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >>Remova |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r da mochila, pois já não é necessário
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >>Remova |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r da mochila, pois já não é necessário
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compre uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_e|r |T135435:0|t[Simple Madeira] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Isto é para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_enquanto estiver no barco em breve|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .vendor 6301 >>|cRXP_BUY_Compre|r [Temperos Suaves] |cRXP_BUY_dele até que você tenha|r [Temperos Suaves] |cRXP_BUY_em quantidade igual ou maior que a de|r [Ovo Pequeno] |cRXP_BUY_que você possui atualmente|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
    .target Terenthis
    .isQuestComplete 986
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
    .isQuestComplete 1138
step
    #season 1 << Warrior sod -- won't load
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde


----Start of SoD Warrior short ashenvale bit to catch up xp----


step << Warrior
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
    .target Onu
step << Warrior
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_pule este passo se ele não está lá. Pode levar até 25 minutos para ele reaparecer|r
    .accept 5321 >>Aceite A Adormecida Despertou
    .target Kerlonian Evershade
step << Warrior
    #season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter a |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Warrior
    #season 2
    #sticky
    >>|cRXP_WARN_Escorte |cRXP_FRIENDLY_Kerlonian|r para Maestra's Post em Vale Gris|r
    .use 13536 >>|cRXP_WARN_Use o|r |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] |cRXP_WARN_sempre que |cRXP_FRIENDLY_Kerlonian|r adormecer ao seu lado|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos aparecerão apenas se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Aynasha|r para começar a missão
    .accept 5713 >>Aceite Tiro e Queda
    .target Sentinel Aynasha
step << Warrior
    #season 2
    .goto Darkshore,45.8,90.2
    >>Três ondas de inimigos aparecerão com tempo de sobra entre elas. Você pode matar inimigos adicionais na área enquanto aguarda a próxima onda
    >>|cRXP_WARN_Não esqueça de manter acordado|r |cRXP_FRIENDLY_Kerlonian|r |cRXP_WARN_enquanto faz esta missão. Ele ajudará você com os inimigos|r
    .complete 5713,1
step << Warrior
    #season 2
    #completewith towersod
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step << Warrior
    #season 2
    .goto Ashenvale,26.6,36.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Onaeya|r
    .turnin 5713,1 >>Entregue Tiro e Queda
    .target Sentinel Onaeya
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    >>Pular este passo se você não completou a missão
    .turnin 5321 >>Entregue A Adormecida Despertou
step << Warrior
    #season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>Entregue A Torre de Althalaxx
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>Aceite Cabelo-de-bathran
step << Warrior
    #season 2
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Feixes de Plantas|r no chão. Saque-os para |cRXP_LOOT_Cabelos de Bathran|r
    >>|cRXP_WARN_Parecem pequenos sacos marrons. Podem ser difíceis de ver|r
    .complete 1010,1
    .isOnQuest 1010
step << Warrior
    #season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>Entregue Cabelo-de-bathran
    .accept 1020 >>Aceite A Cura de Orendil
step << Warrior
    #season 2
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>>Aprenda a rota de voo para Astranaar
	.target Daelyshia
step << Warrior
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe de volta para Auberdine
	.target Daelyshia


----End of SoD Warrior short ashenvale bit to catch up xp----


----Start of Druid SoD Wild Strikes run segment----

step << Druid
    #season 2
    #optional
    #completewith next
    +|cRXP_WARN_Você receberá sua|r |T132143:0|t[|cRXP_FRIENDLY_Golpes Selvagens|r] |cRXP_WARN_runa. Isso o levará para a Cordilheira das Torres de Pedra, o que levará um tempo, mas a runa é extremamente poderosa para o resto do nivelamento|r
step << Druid
    .goto 1439,43.555,76.293
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
    .target Onu
step << Druid
    #season 2
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_pule este passo se ele não está lá. Pode levar até 25 minutos para ele reaparecer|r
    .accept 5321 >>Aceite A Adormecida Despertou
    .target Kerlonian Evershade
step << Druid
#season 2
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter a |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step << Druid
#season 2
    #completewith towersod
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step << Druid
#season 2
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escorte |cRXP_FRIENDLY_Kerlonian|r para Maestra's Post em Vale Gris|r
    .use 13536 >>|cRXP_WARN_Use o|r |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] |cRXP_WARN_sempre que |cRXP_FRIENDLY_Kerlonian|r adormecer ao seu lado|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos aparecerão apenas se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step << Druid
#season 2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>Entregue A Adormecida Despertou
    .isQuestComplete 5321
step << Druid
#season 2
    #label towersod
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>Entregue A Torre de Althalaxx
step << Druid
    #season 2
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>>Aprenda a rota de voo para Astranaar
	.target Daelyshia
step << Druid
    #season 2
    .goto Ashenvale,34.8,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Tenysil|r
    .target Sentinel Thenysil
    .accept 1070 >>Aceite Em Guarda nas Torres de Pedra
step << Druid
    #season 2
    .goto Ashenvale,42.4,72.3,30 >>Vá para o caminho Talondeep que leva à Cordilheira das Torres de Pedra
step << Druid
    #season 2
    .goto Stonetalon Mountains,78.2,42.6,40 >>Corra pelo túnel para a Cordilheira das Torres de Pedra
step << Druid
    #season 2
    .goto Stonetalon Mountains,59.8,66.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaela Umbralança|r
    .target Kaela Shadowspear
    .turnin 1070 >>Entregue a missão Em Guarda na Cordilheira das Torres de Pedra
step << Druid
    #season 2
    .goto Stonetalon Mountains,71.5,86.5,40 >>Vá para Grimtotem Village marcada no seu mapa
step << Druid
    #season 2
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Abate |cRXP_ENEMY_Grimtotems|r. Saqueie-os para obter |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    #season 2
    .equip 18,210534 >>|cRXP_WARN_Equipe o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    #season 2
    #sticky
    #completewith wildStrikesEnd
    >>|cRXP_WARN_Lance|r |T136085:0|t[Recrescimento] |cRXP_WARN_ou|r |T136041:0|t[Toque de Cura] |cRXP_WARN_em 10 Bestas diferentes e aliadas como Pets de Caçador/Druids em Forma de Urso/Shamans em Lobo Fantasma|r << Horde
    >>|cRXP_WARN_Lance|r |T136085:0|t[Recrescimento] |cRXP_WARN_ou|r |T136041:0|t[Toque de Cura] |cRXP_WARN_em 10 diferentes Bestas aliadas como Pets de Caçador ou Druidas em Forma de Urso ou Forma de Felino|r << Alliance
    >>Isto pode levar um tempo para completar dependendo de quantas bestas aliadas você encontrar. |cRXP_WARN_Não morra ou desequipe o relicário|r até obter 10 pilhas de inspiração ou seu progresso será perdido
    .train 410021 >>|cRXP_WARN_Use o|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo do Selvagem|r] |cRXP_WARN_para treinar|r |T132143:0|t[Golpes Selvagens]
    .itemcount 210534,1
step << Druid
    #season 2
    #optional
	#completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #season 2
    .goto Moonglade,52.53,40.57
	>>Vá para Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >>Treine suas magias de classe
    .target Loganaar
step << Druid
    #optional
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore

----End of Druid SoD Wild Strikes run segment----



----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of Rogue Poison Quest Section----



step
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
 step << Rogue
    #season 2
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor 1453 >>|cRXP_WARN_Compre quantas|r |T134831:0|t[Cura Potions] |cRXP_WARN_estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
step << Rogue
    #season 2
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_WARN_compre um|r |T133024:0|t[Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step << Rogue
    #season 2
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .target Innkeeper Helbrek
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
step << Rogue
    #season 2
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r acima das escadas
    .target Archaeologist Flagongut
    .turnin 942 >>Entregue The Absent Minded Prospector
    .accept 943 >>Aceite O Prospector Distraído
    .isQuestComplete 942
step << Rogue
    #season 2
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Samor Festivus|r no andar de cima
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item com estoque limitado. Pule este passo se |cRXP_FRIENDLY_Samor Festivus|r não tiver nenhum|r
    .target Samor Festivus
step << Rogue
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de desbloqueio
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
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
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
    .goto Westfall,56.55,52.64,100 >>Corra pela praia e siga até a Colina da Sentinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Rogue
    .train 202 >>Treine Espadas de Duas Mãos << Warrior
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
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
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
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
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo da Cabeça do Grifo. Execute um Logout Pular desconectando e reconectando|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
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
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    >>|cRXP_WARN_Você precisará que seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_chegue a 80+ para uma missão mais tarde|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Metrô Correfundo para Ventobravo
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Trem|r |T132282:0|t[Emboscar] |cRXP_WARN_se tiver dinheiro extra e um |T135641:0|t[Adaga] equipado ou na mochila. Economizará tempo depois|r
    .train 8676 >>Treine |T132282:0|t[Emboscar]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T132320:0|t[Furtividade]|cRXP_WARN_,|r |T133644:0|t[Bater Carteira]|cRXP_WARN_, e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará delas depois|r
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T133644:0|t[Bater Carteira]|cRXP_WARN_e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará delas depois|r
    >>|cRXP_WARN_TENHA MUITO CUIDADO com sua gestão de dinheiro nos próximos passos. Compre apenas feitiços essenciais. Você precisará ter dinheiro para Esfumar-se em breve e 75 pratas para obter uma runa após retornar às Terras do Interior|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>Certifique-se de treinar [Abrir Fechadura] pois você precisará disso mais tarde
    >>|cRXP_WARN_TENHA MUITO CUIDADO com sua gestão de dinheiro nos próximos passos. Compre apenas feitiços essenciais. Você precisará ter dinheiro para Esfumar-se em breve e 75 pratas para obter uma runa após retornar às Terras do Interior|r
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
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
    .goto 1453,75.754,60.369,12 >>Vá em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r dentro da SI:7, no andar superior
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marcia Weller|r dentro
    >>|cRXP_BUY_Compre um|r |T135342:0|t[Cris] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor ou mais barato|r
    >>|cRXP_WARN_Tenha muito cuidado com seu gerenciamento de dinheiro nos próximos passos. Compre apenas uma adaga se você não tiver o dinheiro. Você precisará de dinheiro para sumir logo e 75 de prata para obter uma runa após retornar ao Wetlands|r
    .collect 2209,2 --Kris (2)
    .target Marcia Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre um|r |T135342:0|t[Cris] |cRXP_BUY_dela se conseguir pagar|r
    >>|cRXP_WARN_Tenha muito cuidado com seu gerenciamento de dinheiro nos próximos passos. Compre apenas uma adaga se você não tiver o dinheiro. Você precisará de dinheiro para sumir logo e 75 de prata para obter uma runa após retornar ao Wetlands|r
    .collect 2209,1 --Kris (2)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Equipe o|r |T135342:0|t[Cris]
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] logo, e o resto para entregar mais rapidamente em Montanhas Cristarrubra em breve << !Dwarf
    >>Compre os seguintes itens para entregar mais rapidamente em Montanhas Cristarrubra em breve << Dwarf
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Fortalecer Condor Carne]
    >>|T134321:0|t[Crisp Aranha Carne]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo << !Human
    .fly Westfall >>Voe para Cerro Oeste << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela << !Human
    .fly Redridge >>Voe para Montanhas Cristarrubra << Human
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo da Torre of Azora
    .accept 94 >>Aceite A Olho Vigilante
    .target Theocritus
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r dentro
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .accept 89 >>Aceite The Everstill Ponte
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
    >>Você pode matar alguns dos Gnolls a caminho do Moinho de Alther. Você completará este objetivo na volta
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >>Caminhe para o Moinho de Alther
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
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
    >>Complete matando os |cRXP_WARN_gnolls|r para obter os fragmentos da ponte
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .turnin 89 >>Entregue The Everstill Ponte
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Entregue Moinho de Alther
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>Exclua o |T134328:0|t[Certificate of Thievery] da mochila, pois não é mais necessário
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >>Certifique-se de ter pelo menos 14 mil de XP no nível 21 antes de deixar Redridge. Se você ainda não chegou lá, considere fazer a missão |cRXP_ENEMY_Hilary's Colar|r de |cRXP_FRIENDLY_Shawn|r ou |cRXP_ENEMY_The Perdida Ferramentas|r de |cRXP_FRIENDLY_Foreman Oslow|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra << !Human
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +Equipe a [Espada Longa]
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
    >>Mate os |cRXP_ENEMY_Pygmy Venenom Teia Aranhas|r e os |cRXP_ENEMY_Venom Teia Aranhas|r. Saqueie-os para obter um |cRXP_LOOT_Small Venenom Sac|r e as |cRXP_LOOT_Gooey Pernas de Aranha|r deles
    >>|cRXP_WARN_Você precisa de um |cRXP_LOOT_Small Venenom Sac|r para fazer um|r |T134437:0|t[Antipeçonha] |cRXP_WARN_depois, para remover o efeito|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_mais tarde|r
    >>|cRXP_WARN_Guarde as |cRXP_LOOT_Gooey Pernas de Aranha|r para depois|r
    >>|cRXP_WARN_Se você tem um|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, você pode pular este passo e pedir a ele para remover depois|r
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
    +|cRXP_WARN_==PRESTE ATENÇÃO À PRÓXIMA SEÇÃO==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar Chave Interagir" e vincule a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns dos cantos dentro da torre|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
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
    >>|T133644:0|t[Bater Carteira] o |cRXP_ENEMY_Parasita Défias Mal Formado|r. Saqueie-o pelo |cRXP_LOOT_Defias Torre Chave|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>|cRXP_WARN_Tenha cuidado, pois ele causa MUITO dano. Se sua|r |T132320:0|t[Furtividade] |cRXP_WARN_acabar, use rapidamente|r |T132307:0|t[Disparada] |cRXP_WARN_e fuja|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Suba até o 2º andar mais alto da torre. Enquanto estiver em [Furtividade] |cRXP_WARN_ e as |cRXP_ENEMY_Sentinelas da Torre Défias|r não estiverem perto de você, pule na cadeira, depois na lâmpada, então na estante de livros no topo do local do ponto de referência |r
    >>Saia manualmente de [Furtividade]|cRXP_WARN_, depois pressione sua tecla de atalho "Interagir com Alvo" para abrir o |cRXP_PICK_Baú da Floresta do Crepúsculo|r. Saqueie-o para obter |cRXP_LOOT_Diário de Filipe Pinel|r |r
    >>OBS.: Sua [Furtividade] vai parar de funcionar temporariamente após saquear |cRXP_LOOT_Diário de Filipe Pinel|r
    >>|cRXP_WARN_Esteja preparado para correr se você não matar as |cRXP_ENEMY_Sentinelas da Torre Défias|r no 2º andar. Elas provavelmente vão te manter em aggro permanente (mas sem te atacar) quando você estiver em cima da estante pois é um ponto de evade|r
    >>|cRXP_WARN_Se você tem uma|r |T135641:0|t[Dagger] |cRXP_WARN_na sua mochila ou equipada, você pode lançar|r |T132282:0|t[Emboscar] |cRXP_WARN_nos|cRXP_ENEMY_ Defias Torre Patrollers|r e |cRXP_ENEMY_Defias Torre Sentries|r dentro para matá-los instantaneamente. Esteja preparado para correr depois de matar a primeira |cRXP_ENEMY_Sentinela da Torre Défias|r e lembre-se de que você pode ser atingido de cima. Isso é mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 22-8200 >>Farme até estar 8200 xp do nível 22. Você precisará alcançá-lo em Ventobravo para aprender |T132331:0|t[Sumir], que é necessária para uma runa extremamente poderosa mais tarde
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
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
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
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
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de reequipar sua arma principal se você trocou para uma|r |T135641:0|t[Dagger] |cRXP_WARN_mais cedo|r << Rogue !sod
    .turnin 135 >>Entregue A Irmandade Défias
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >>Entregue A Torre de Klaven
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jasper Fel|r no andar térreo do prédio
    >>Compre reagentes para criar [|cRXP_FRIENDLY_Veneno Instantâneo|r] e [|cRXP_FRIENDLY_Sumir|r] com ele
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Abra seu livro de magias e encontre a habilidade |T136242:0|t[|cRXP_FRIENDLY_Venenos|r] na aba geral. Abra-a e crie 20 Venenos Instantâneos. |cRXP_WARN_Lembre-se de mantê-los aplicados em ambas as suas armas durante o combate|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Tenha muito cuidado com seu gerenciamento de dinheiro nos próximos passos. Compre apenas habilidades essenciais. Você precisará de 75 de prata para obter uma runa após um par de missões nos Pântanos|r
    >>|cRXP_WARN_Treine|r |T132331:0|t[Sumir] e |T132320:0|t[Furtividade] (nível 2) Você precisará dela para desbloquear |T236270:0|t[Mistura Mortífera] em breve
    .train 1856 >>Treine |T132331:0|t[Sumir]
    .train 1785 >>Treine |T132320:0|t[Furtividade] (nível 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Menethil Harbor. |cRXP_WARN_Use sua Pedra de Retorno de Stockades se estiver em recarga|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Entre em Stockades em Ventobravo|r
    >>|cRXP_WARN_Uma vez dentro:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Clique aqui para Copiar + Colar esta macro no chat para fazer ghetto hearth de volta a Auberdine|r
    .zone Darkshore >>|cRXP_WARN_Se você não conseguir fazer isso, volte para Auberdine|r
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
    .subzone 2257 >>Entre no Metrô Correfundo
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
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    .zone Ironforge >>Pegue o Deeprun Tram para Ironforge
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
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
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Menethil >>Voe para Pantanal
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >>Vá para Menethil Harbor
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
    >>Você agora começará a viajar para As Minas Mortas
    >>|cRXP_WARN_Evolua sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para o Porto de Menethil, se necessário|r << Warrior/Paladin/Rogue
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de desbloqueio
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
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
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
    .goto Westfall,56.55,52.64,100 >>Corra pela praia e siga até a Colina da Sentinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .trainer >>Treine suas magias de classe
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 197 >>Treine Machados de Duas Mãos << Warrior
    .train 199 >>Treine Maças de Duas Mãos << Warrior
    .train 266 >>Treine Armas de Fogo << Hunter
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
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
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
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
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
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
    .goto Ironforge,31.32,27.80,12 >>Viaje em direção a |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    >>|cRXP_BUY_Compre até 4|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dela|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
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
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo do pilar acima |cRXP_FRIENDLY_Bink|r, depois caminhe ligeiramente para leste dela até a posição da seta. Posicione seu personagem até parecer que está flutuando, então execute um Logout Pular desconectando e reconectando|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre|r [Grimórios] |cRXP_BUY_para seus mascotes, se desejar|r
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
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe até o topo da cama, depois pule para o topo da estante. Execute um Logout Pular saindo do jogo e retornando|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
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
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe até o topo da cama, depois pule para o topo da estante. Execute um Logout Pular saindo do jogo e retornando|r
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
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Salte no topo da Cabeça do Grifo. Execute um Logout Pular desconectando e reconectando|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
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
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    >>|cRXP_WARN_Você precisará que seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_chegue a 80+ para uma missão mais tarde|r << Rogue !Dwarf
    .zone Stormwind City >>Pegue o Metrô Correfundo para Ventobravo
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karrina Mekenda|r dentro
    .trainer 2879 >>Treine as magias do seu mascote
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer 5515 >>Treine suas magias de classe
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Trem|r |T132282:0|t[Emboscar] |cRXP_WARN_se tiver dinheiro extra e um |T135641:0|t[Adaga] equipado ou na mochila. Economizará tempo depois|r
    .train 8676 >>Treine |T132282:0|t[Emboscar]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T132320:0|t[Furtividade]|cRXP_WARN_,|r |T133644:0|t[Bater Carteira]|cRXP_WARN_, e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará delas depois|r
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de treinar|r |T133644:0|t[Bater Carteira]|cRXP_WARN_e|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_pois você precisará delas depois|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>Certifique-se de treinar [Abrir Fechadura] pois você precisará disso mais tarde
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
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
    .goto 1453,75.754,60.369,12 >>Vá em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r dentro da SI:7, no andar superior
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Mage/Rogue/Warlock
    .train 1180 >>Treine Adagas << Mage/Druid/Priest
    .train 202 >>Treine Espadas de Duas Mãos << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marcia Weller|r dentro
    >>|cRXP_BUY_Compre uma|r [Espada Longa] |cRXP_BUY_com ela|r ou verifique a Casa de Leilões por algo melhor/mais barato
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_WARN_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dela se conseguir pagar|r
    .collect 923,1 --Longsword (1)
    .target Marcia Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +Equipe a [Espada Longa]
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
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duthorian Rall|r. Ele lhe dará o [|cRXP_LOOT_Tomo do Valor|r]
    .use 6776 >>Use o [|cRXP_WARN_Tomo do Valor|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1649 >>Entregue O Tomo de Bravura
    .accept 1650 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marcia Weller|r dentro
    >>|cRXP_BUY_Compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marcia Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_Equipe|r |T135280:0|t[Falx Dácia]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    .vendor 1312 >>|cRXP_BUY_Compre uma|r |T135469:0|t[Varinha do Crepúsculo] |cRXP_BUY_dela se conseguir pagar|r
    >>|cRXP_BUY_Alternativamente, compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_da Casa de Leilões se for mais barata que 52s 47c|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    >>|cRXP_BUY_Compre uma|r |T135469:0|t[Varinha do Crepúsculo] |cRXP_BUY_dela|r
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
    +|cRXP_WARN_Equipe a|r |T135469:0|t[Varinha do Crepúsculo]
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Spackle Cardopomo|r
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Tormento (Rank 2)] |cRXP_BUY_dela|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_Use o|r |T133738:0|t[Grimório of Tormento (Rank 2)]
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
    >>Escale a Torre do Mago. Vá através do Portal Verde
    .goto Stormwind City,39.681,79.538,15 >>Caminhe em direção a |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .train 6756 >>Treine suas magias de classe
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>Entre no The Vazio Quiver dentro do anel do meio do Distrito Comercial
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Frederico Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_e uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Frederico Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_e uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele ou procure na Casa de Leilões por algo melhor ou mais barato|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] logo, e o resto para entregar mais rapidamente em Montanhas Cristarrubra em breve << !Dwarf Rogue
    >>Compre os seguintes itens para entregas mais rápidas em Montanhas Cristarrubra e Bosque do Oeste em breve << Paladin
    >>Compre os seguintes itens para entregar mais rapidamente em Montanhas Cristarrubra em breve << !Paladin !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de Óleo] << Paladin
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Fortalecer Condor Carne]
    >>|T134321:0|t[Crisp Aranha Carne]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] mais tarde, e o resto para entregas mais rápidas em Montanhas Cristarrubra e Bosque do Oeste em breve << !Dwarf Rogue
    >>Compre os seguintes itens para entregas mais rápidas em Montanhas Cristarrubra e Bosque do Oeste em breve << !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T132794:0|t[Frasco de Óleo]
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Fortalecer Condor Carne]
    >>|T134321:0|t[Crisp Aranha Carne]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo << !Human
    .fly Westfall >>Voe para Cerro Oeste << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela << !Human
    .fly Redridge >>Voe para Montanhas Cristarrubra << Human/Warlock
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo da Torre of Azora
    .accept 94 >>Aceite A Olho Vigilante
    .target Theocritus
    .dungeon DM
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r dentro
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Entregue Moinho de Alther
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >>Exclua o |T134328:0|t[Certificate of Thievery] da mochila, pois não é mais necessário
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra << !Human !Warlock
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +Equipe a [Espada Longa]
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
    >>Mate os |cRXP_ENEMY_Pygmy Venenom Teia Aranhas|r e os |cRXP_ENEMY_Venom Teia Aranhas|r. Saqueie-os para obter um |cRXP_LOOT_Small Venenom Sac|r e as |cRXP_LOOT_Gooey Pernas de Aranha|r deles
    >>|cRXP_WARN_Você precisa de um |cRXP_LOOT_Small Venenom Sac|r para fazer um|r |T134437:0|t[Antipeçonha] |cRXP_WARN_depois, para remover o efeito|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_mais tarde|r
    >>|cRXP_WARN_Guarde as |cRXP_LOOT_Gooey Pernas de Aranha|r para depois|r
    >>|cRXP_WARN_Se você tem um|r |T626003:0|t|cFFF48CBAThe Defias Brotherhood|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_amigo, você pode pular este passo e pedir a ele para remover depois|r
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
    +|cRXP_WARN_==PRESTE ATENÇÃO À PRÓXIMA SEÇÃO==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar Chave Interagir" e vincule a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns dos cantos dentro da torre|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
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
    >>|T133644:0|t[Bater Carteira] o |cRXP_ENEMY_Parasita Défias Mal Formado|r. Saqueie-o pelo |cRXP_LOOT_Defias Torre Chave|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>|cRXP_WARN_Tenha cuidado, pois ele causa MUITO dano. Se sua|r |T132320:0|t[Furtividade] |cRXP_WARN_acabar, use rapidamente|r |T132307:0|t[Disparada] |cRXP_WARN_e fuja|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Suba até o 2º andar mais alto da torre. Enquanto estiver em [Furtividade] |cRXP_WARN_ e as |cRXP_ENEMY_Sentinelas da Torre Défias|r não estiverem perto de você, pule na cadeira, depois na lâmpada, então na estante de livros no topo do local do ponto de referência |r
    >>Saia manualmente de [Furtividade]|cRXP_WARN_, depois pressione sua tecla de atalho "Interagir com Alvo" para abrir o |cRXP_PICK_Baú da Floresta do Crepúsculo|r. Saqueie-o para obter |cRXP_LOOT_Diário de Filipe Pinel|r |r
    >>OBS.: Sua [Furtividade] vai parar de funcionar temporariamente após saquear |cRXP_LOOT_Diário de Filipe Pinel|r
    >>|cRXP_WARN_Esteja preparado para correr se você não matar as |cRXP_ENEMY_Sentinelas da Torre Défias|r no 2º andar. Elas provavelmente vão te manter em aggro permanente (mas sem te atacar) quando você estiver em cima da estante pois é um ponto de evade|r
    >>|cRXP_WARN_Se você tem uma|r |T135641:0|t[Dagger] |cRXP_WARN_na sua mochila ou equipada, você pode lançar|r |T132282:0|t[Emboscar] |cRXP_WARN_nos|cRXP_ENEMY_ Defias Torre Patrollers|r e |cRXP_ENEMY_Defias Torre Sentries|r dentro para matá-los instantaneamente. Esteja preparado para correr depois de matar a primeira |cRXP_ENEMY_Sentinela da Torre Défias|r e lembre-se de que você pode ser atingido de cima. Isso é mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
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
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
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
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de reequipar sua arma principal se você trocou para uma|r |T135641:0|t[Dagger] |cRXP_WARN_mais cedo|r << Rogue
    .turnin 135 >>Entregue A Irmandade Défias
    .accept 141 >>Aceitar A Irmandade Défias
    .turnin 2359 >>Entregue A Torre de Klaven << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Comece a montar um grupo para as Minas Mortas
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 141 >>Entregue A Irmandade Défias
    .accept 142 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Vá para Moonbrook
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mate o |cRXP_ENEMY_Mensageiro Défias|r. Saqueie-o para obter a |cRXP_LOOT_Mensagem Misteriosa|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Mensageiro Défias|r aparece em Arroio da Lua. Ele caminha pela estrada ao norte de Arroio da Lua, até a Mina de Costa Dourada e a Mina de Jangolode. Se você não o vir pela estrada, espere-o aparecer em Arroio da Lua|r
    >>|cRXP_WARN_Ele tem um intervalo de reaparecimento de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 142 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Traidor Défias|r
    >>|cRXP_WARN_Você pode precisar esperar pelo |cRXP_FRIENDLY_Traidor Défias|r aparecer se ele não estiver lá|r
    >>|cRXP_WARN_Se você já montou uma equipe, certifique-se de que seu grupo também entregou a parte anterior primeiro antes de iniciar a escolta|r
    .accept 155 >>Aceitar A Irmandade Défias
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>Escolte o |cRXP_FRIENDLY_Traidor Défias|r para Minas Mortas
    >>|cRXP_WARN_Fique sempre ao lado do |cRXP_FRIENDLY_Traidor Défias|r. Esteja pronto para enfrentar |cRXP_ENEMY_Pilhadores Défias|r e |cRXP_ENEMY_Saqueadores Défias|r ao chegar a Arroio da Lua|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 155 >>Entregue A Irmandade Défias
    .accept 166 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .accept 214 >>Aceite Bandanas de Seda Vermelha
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
    >>|cRXP_WARN_Faça grind em |cRXP_ENEMY_Gnolls|r ao sul da Colina do Sentinela enquanto reúne um grupo para as Minas Mortas|r
    .subzone 20 >>Quando seu grupo estiver formado, viaje até Arroio da Lua
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Entre no Esconderijo Défias com seu grupo
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Equipe|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>Você também pode completar isso dentro das Minas Mortas
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
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
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
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
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Equipe|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
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
    >>|cRXP_WARN_Pergunte ao seu grupo se eles podem ficar para ajudar você com a escolta específica de The Defias Brotherhood de |cRXP_FRIENDLY_Dafne Calmafonte|r em breve (se possível)|r << Paladin
    .subzone 920 >>Saia das Minas Mortas pela saída traseira a leste de |cRXP_ENEMY_Edwin VanCleef|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >>Vá para |cRXP_FRIENDLY_Dafne Calmafonte|r em seu campo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dafne Calmafonte|r em seu campo para iniciar sua escolta
    >>|cRXP_WARN_Ela patrulha ao redor ligeiramente em seu campo|r
    >>|cRXP_WARN_Tenha cuidado, pois isso pode ser um pouco difícil. Você enfrentará 3 ondas, de 3, depois 4, depois 5 inimigos de nível 17-18 |cRXP_ENEMY_Bandidos Defias|r
    .turnin 1650 >>Entregue O Tomo de Bravura
    .accept 1651,1 >>Aceite o Tomo da Bravura
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >>https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> CLIQUE AQUI para um guia em vídeo
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>Proteja |cRXP_FRIENDLY_Dafne Calmafonte|r
    >>|cRXP_WARN_Se você ou |cRXP_FRIENDLY_Dafne Calmafonte|r morrer, a missão falhará e você terá que tentar novamente|r
    >>|cRXP_WARN_Tenha cuidado, pois isso pode ser um pouco difícil. Você enfrentará 3 ondas, de 3, depois 4, depois 5 inimigos de nível 17-18 |cRXP_ENEMY_Bandidos Defias|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Dafne Calmafonte|r
    >>|cRXP_WARN_Ela patrulha ao redor ligeiramente em seu campo|r
    .turnin 1651 >>Entregue O Tomo de Bravura
    .accept 1652 >>Aceite o Tomo da Bravura
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >>Vá para o Farol de Cerro Oeste
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite O Mar Não Está para Peixe
    .accept 103 >>Aceite Keeper of the Chamas
    .turnin 103 >>Entregue Keeper of the Chamas
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite O Mar Não Está para Peixe
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite O Mar Não Está para Peixe
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Abata o |cRXP_ENEMY_Velho Olho-turvo|r. Saqueie-o para a |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha para cima e para baixo pela Longshore. Se você não conseguir encontrá-lo, pule esta etapa|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >>Entregue O Mar Não Está para Peixe
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >>Abandone Guardião da Chama
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Entre no Esconderijo Defias sozinho
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>Mate os |cRXP_ENEMY_Defias|r do lado de fora da Instância Minas Mortas. Saqueie-os para obter as |cRXP_LOOT_Red Silk Bandanas|r deles
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>|cRXP_WARN_Se não houver mais |cRXP_ENEMY_Defias|r dentro da Instância Minas Mortas, mate-os do lado de fora|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >>Morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Equipe|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 166 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .turnin 214 >>Entregue Bandanas de Seda Vermelha
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >>Abandone The Unsent Carta. Você fará isso depois
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Use |T135763:0|t[Teleporte: Ventobravo]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .train 2138 >>Treine suas magias de classe
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >>Treine suas magias de classe
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
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1652 >>Entregue O Tomo de Bravura
    .accept 1653 >>Aceite O Teste de Retidão
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19835 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .train 8103 >>Treine suas magias de classe
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1856 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .train 6192 >>Treine suas magias de classe
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .turnin 167 >>Entregue Oh, Irmão...
    .turnin 168 >>Entregue Coletando Memórias
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2040 >>Entregue Ataque Subterrâneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
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
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1652 >>Entregue O Tomo de Bravura
    .accept 1653 >>Aceite O Teste de Retidão
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19835 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .train 8103 >>Treine suas magias de classe
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1856 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .train 6192 >>Treine suas magias de classe
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Use |T135763:0|t[Teleporte: Ventobravo]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r no topo da torre
    .train 2138 >>Treine suas magias de classe
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >>Lance Teleporte: Clareira da Lua
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>Vá para Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8926 >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto estiver no Tram|r
    .zone Ironforge >>Pegue o Deeprun Tram para Ironforge
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 197 >>Treine Machados de Duas Mãos << Warrior
    .train 199 >>Treine Maças de Duas Mãos << Warrior
    .train 266 >>Treine Armas de Fogo << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r no andar de baixo
    >>|cRXP_BUY_Compre o|r |T135427:0|t[Adaga de Arremesso Pesada] |cRXP_BUY_dela|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_Equipe a|r |T135427:0|t[Adaga de Arremesso Pesada]
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gerrig Agarrosso|r dentro
    .turnin 968 >>Entregue Os Poderes de Baixo
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >>Use a pedra do regresso para Costa Negra
    .zoneskip Darkshore
    .dungeon DM


----End of Hunter/All 2x Deadmines section----

    ]])
