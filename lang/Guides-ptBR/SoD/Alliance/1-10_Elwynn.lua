if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire SoD
#displayname 1-6 Northshire
#version 1
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-12 Elwynn Forest SoD
#season 2


step << !Human
    #completewith next
    +Você selecionou um guia destinado a Humanos. Você deve escolher a zona inicial que corresponda à zona em que você começa
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
step
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 783 >>Aceite Uma Ameaça Interior
    .target Deputy Willem
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,46.4,40.3
    .xp 2 >>Abate os |cRXP_ENEMY_Lobos Jovens|r até alcançar o nível 2 (4 inimigos)
    >>Certifique-se de saqueá-los, você vai precisar de 15 cobre para runas e treinamento << Rogue/Warrior
    >>Certifique-se de saqueá-los, você vai precisar de 30 cobre para luvas e runas << Mage
    >>Certifique-se de saqueá-los, você vai precisar de 40 cobre para braçadeiras, treinamento e runas << Warlock
step << Mage/Warlock
    .goto Elwynn Forest,47.57,41.43
    >>|cRXP_WARN_Se você não tem 30 cobre em itens de venda, mate mais lobos|r << Mage
    >>|cRXP_WARN_Se você não tem 40 cobre em itens de venda, mate mais lobos|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dálvaro João|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>Venda lixo e compre as |T132952:0|t[Luvas de Tecido Fino], você vai precisar delas para engravar uma runa em breve << Mage
    >>Venda lixo e compre as |T132602:0|t[Braçadeiras de Tecido Fino], você vai precisar delas para engravar uma runa em breve << Warlock
    .collect 2119,1 << Mage --Thin Cloth Gloves (1)
    .collect 3600,1 << Warlock --Thin Cloth Bracers (1)
    .target Dermot Johns
step << Warrior/Rogue/Mage/Warlock
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o lixo e compre|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] << Warrior
    .vendor >>|cRXP_BUY_Venda o lixo e compre |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r]|r << Rogue
    .vendor >>|cRXP_BUY_Compre todas as principais runas AdE|r << Mage
    .vendor >>|cRXP_BUY_Compre todas as seguintes runas:|r << Warlock
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Mage
    .train 400105 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r] para treinar |T132323:0|t[Golpe Sombrio], você vai engravar em breve << Rogue
    .train 403470 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] para treinar |T132342:0|t[Ímpeto da Vitória], você a graverá em breve << Warrior
    .train 401768 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Chama Viva|r] para treinar |T135820:0|t[Chama Viva] << Mage
    .train 415936 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Bomba Viva|r] para treinar |T236220:0|t[Bomba Viva] << Mage
    .train 401759 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Combustão|r] para treinar |T236207:0|t[Combustão] << Mage
    .train 440858 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notas: Orbe Congelado|r] para treinar |T135851:0|t[Orbe Congelado] << Mage
    .train 416009 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Táticas|r] para treinar |T136150:0|t[Táticas Demoníacas] << Warlock
    .train 425476 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] para treinar |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 211477 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r] para treinar |T135789:0|t[Incinerar] << Warlock
    .train 403919 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r] para treinar |T236298:0|t[Assombrar] << Warlock
    .train 403619 >>Usar o |T133733:0|t[Grimório de Armadura Vil] para treinar |T136156:0|t[Armadura Vil] |cRXP_WARN_use-o como seu feitiço de armadura principal|r << Warlock
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
step << Warlock
    #optional
    #sticky
    .aura 403619 >>|cRXP_WARN_Certifique-se de que você se lembra de ativar seu|r |T136156:0|t[Armadura Vil]
step << Warrior
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .accept 77616 >>Aceite A Runa Perdida
    .turnin 77616 >>Entregue A Runa Perdida
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Llane Beshere
step << Warrior/Rogue/Mage/Warlock
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Tecido Fino] << Mage
    .use 2119 << Mage --Thin Cloth Gloves
    .engrave 7 >>Grave |T135820:0|t[Chama Viva] em suas calças << Mage
    .engrave 10 >>Grave |T236220:0|t[Bomba Viva] em suas luvas << Mage
    .engrave 5 >>Grave |T236207:0|t[Combustão] no seu peito << Mage
    .equip 10 >>Equipe as |T132938:0|t[Luvas Encadeadas Manchadas] << Warrior
    .engrave 10 >>Grave |T132342:0|t[Ímpeto da Vitória] nas luvas << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado] << Rogue
    .engrave 10 >>Grave |T132323:0|t[Golpe Sombrio] em luvas << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
    .equip 9 >>Equipe as |T132602:0|t[Braçadeiras de Tecido Fino] << Warlock
    .use 3600 << Warlock --Thin Cloth Bracers
    .engrave 5 >>Grave as |T136150:0|t[Táticas Demoníacas] no seu peito << Warlock
    .engrave 7 >>Grave o |T237562:0|t[Pacto Demoníaco] nas calças << Warlock
    .engrave 9 >>Grave o |T135789:0|t[Incinerar] nas braçadeiras << Warlock
step
    #label Within
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 783 >>Entregue Uma Ameaça Interior
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 5261 >>Aceite Enzo Peleteiro
    .accept 18 >>Aceite Irmandade de Ladrões << Warlock
    .target Deputy Willem
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >>Aceite O Tomo Roubado
    .accept 77621 >>Aceite Poder Roubado << Human
    .turnin 77621 >>Entregue Poder Roubado << Human
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Grave |T132961:0|t[Luvas de Tecido Esfarrapado] |cRXP_WARN_com |T236298:0|t[Assombrar]|r
    .train 403919,3
step << Warlock
    #completewith next
    >>Mate |cRXP_ENEMY_Capangas Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas Vermelhas de Burlap|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Corra para dentro da Tenda no Acampamento Défias|r
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Mate |cRXP_ENEMY_Capangas Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas Vermelhas de Burlap|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    .hs >>Volte para Northshire Valley
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >>Entregue O Tomo Roubado
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
    .usespell 688
step << Warlock
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 18,1 >>Entregue Irmandade de Ladrões
    .target Deputy Willem
step << Warlock
    #optional
    #completewith next
    .equip 16,2224 >>Equipe o |T135641:0|t [Punhal da Milícia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] |cRXP_BUY_e compre o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] dele|r << Priest
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] e |T132540:0|t[Botas] |cRXP_WARN_(não podem ser gravados)|r |cRXP_BUY_e compre |T133745:0|t[|cRXP_FRIENDLY_Itens de MoP|r] e |T134916:0|t[|cRXP_FRIENDLY_Incunábulo do Julgamento|r] dele|r << Paladin
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 226398,1  << Paladin --Testament of Martyrdom
    .collect 205420,1 << Paladin --Libram of Judgement
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    #sticky
    #label Libram
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 226398 << Paladin --Testament of martyrdom
    .use 205420 << Paladin --Libram of Judgement
    .train 402852 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] para treinar |T237570:0|t[Homúnculos] << Priest
    .train 407798 >>Usar o |T133745:0|t[|cRXP_FRIENDLY_Testament of Martírio|r] para treinar |T135961:0|t[Selo do Martírio], |cRXP_WARN_use it as your primary Seal|r << Paladin
    .equip 18 >>Equipe o |T134916:0|t[|cRXP_FRIENDLY_Incunábulo do Julgamento|r], você pode usá-lo após 30 segundos para aprender |T135891:0|t[Golpe do Cruzado] << Paladin
    .engrave 7 >>Grave |T237570:0|t[Homúnculos] em suas calças << Priest
step << Paladin
    #optional
    #completewith Vermin
    .aura 407798 >>Lembre de usar |T135961:0|t[Selo do Martírio] como seu selo
step << Paladin
    #sticky
    #optional
    #requires Libram
    #label LibramLearn
    .train 410002 >>Usar o |T134916:0|t[|cRXP_FRIENDLY_Incunábulo do Julgamento|r] para aprender |T135891:0|t[Golpe do Cruzado]
step << Paladin
    #optional
    #requires LibramLearn
    #completewith PalaQ
    .engrave 10 >>|cRXP_WARN_Procure por qualquer|r |T132952:0|t[Gloves] |cRXP_WARN_gota.|r |cRXP_WARN_Grave-as com|r |T135891:0|t[Golpe do Cruzado]
    >>Se você não encontra nenhuma, você as receberá eventualmente de uma missão de classe
step
    #label EaganWolves
    .goto Elwynn Forest,48.941,40.166
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
    .accept 33 >>Aceite Lobos Além da Fronteira
    .target Eagan Peltskinner
step << Rogue
    #completewith next
    >>Abate |cRXP_ENEMY_Wolves|r e |cRXP_ENEMY_Kobold Daninho|r no caminho para o treinador
    .complete 33,1 --Tough Wolf Meat (8)
    .complete 7,1 -- Kobold Vermin Slain (10)
    .mob Young Wolf
	.mob Timber Wolf
    .mob Kobold Vermin
step << Rogue
    .goto Elwynn Forest,50.6,40.0
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .accept 77618 >>Aceite Três Vezes Roubado
    .turnin 77618 >>Entregue Três Vezes Roubado
    .train 1784 >>Aprenda |T132320:0|t[Furtividade], você a precisará para usar |T135131:0|t[Golpe Sombrio]
    .target Jorik Kerridan
step << Mage
    #optional
    #sticky
    .engrave 15 >>Fique atento a quedas de capa. Uma vez que conseguir uma, grave |T135851:0|t[Orbe Congelado] nela
    >>|cRXP_WARN_Este feitiço é absurdamente poderoso|r
step << Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Assim que você tiver 50c em itens de lixo para vender|r
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Paladin
    #label Vermin
    #completewith next
    >>Abate |cRXP_ENEMY_Kobold Daninho|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Mate |cRXP_ENEMY_Lobos Jovens|r e |cRXP_ENEMY_Lobos Silvestres|r. Saqueie-os para obter |cRXP_LOOT_Carne Dura de Lobo|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Mate |cRXP_ENEMY_Kobold Daninho|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >>Farme até 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 33,2 >>Entregue Lobos Além da Fronteira << Warrior/Paladin/Rogue
    .turnin 33,1 >>Entregue Lobos Além da Fronteira << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Paladin
    #optional
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    +|cRXP_WARN_Triture os |cRXP_ENEMY_Kobold Daninho|r ou os |cRXP_ENEMY_Lobos|r e venda lixo até ter pelo menos 93 cobre|r
    .money >0.0093
    .mob Kobold Vermin
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Paladin
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >>Farme até 1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin
    .goto Elwynn Forest,47.70,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_ Rothgar|r
    >>|cRXP_WARN_Subir de nível com um escudo e uma arma de uma mão no início é muito mais rápido pelo poder das runas de escudo|r
    >>|cRXP_BUY_Venda sucata e compre o|r |T134955:0|t[Escudo Pequeno]
    .collect 17184,1 --Small Shield (1)
    .target Godric Rothgar
step << Paladin
    .goto Elwynn Forest,47.25,41.90
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Janos Punhoforte|r
    >>|cRXP_WARN_Subir de nível com um escudo e uma arma de uma mão no início é muito mais rápido pelo poder das runas de escudo|r
    >>|cRXP_BUY_Venda sucata e compre o|r |T133485:0|t[Clava]
    .collect 2130,1 --Club (1)
    .target Janos Hammerknuckle
step << Paladin
    .equip 16,2130 >>Equipe a |T133485:0|t[Clava]
    .equip 17,17184 >>Equipe o |T134955:0|t[Escudo Pequeno]
    .use 2130 --Club
    .use 17184 --Small Shield
step << Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    +|cRXP_WARN_Triture e venda lixo até ter 1 prata|r
    .money >0.01
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest
    #optional
    #completewith next
    .equip 8,80 >>|cRXP_WARN_Equipe os|r |T132543:0|t[Sapatos Macios Forrados de Pelame], você os usará para gravar uma runa em breve
step << Priest
    .goto Elwynn Forest,47.57,41.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dálvaro João|r
    >>Se você não tiver dinheiro suficiente para ambos os itens |cRXP_WARN_(60 cobre)|r, mate mais |cRXP_ENEMY_Lobos|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>Venda o lixo do comerciante e compre o |T132495:0|t[Cinto de Tecido Fino] e as |T132952:0|t[Luvas de Tecido Fino], você os usará para gravar uma runa em breve
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2119,1 --Thin Cloth Gloves (1)
    .target Dermot Johns
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre mais 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    >>|cRXP_WARN_Certifique-se de guardar 10c ou mais para depois|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Compre todas as seguintes runas:|r
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 235600,1 << Paladin --Rune of Divine Storm
    .collect 211488,1 << Paladin --Rune of the Avenger
    .collect 235602,1 << Paladin --Rune of the Hammer of the Righteous
    .collect 235604,1 << Paladin --Rune of the Shield of Righteousness
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Priest/Paladin
    .train 431663 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epifania|r] para treinar |T136181:0|t[Aparições Corrompidas] << Priest
    .train 425216 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r] para treinar |T237514:0|t[Peste do Caos] << Priest
    .train 402862 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Acólito Perturbado|r] para treinar |T237545:0|t[Penitência] << Priest
    .train 402849 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia da Morte de um Rei|r] para treinar |T136149:0|t[Palavra Sombria: Morte] << Priest
    .train 410014 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Tempestade Divina|r] para treinar |T236250:0|t[Tempestade Divina] << Paladin
    .train 410008 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Vingador|r] para treinar |T135874:0|t[Escudo do Vingador] << Paladin
    .train 410013 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Martelo do Íntegro|r] para treinar |T236253:0|t[Martelo do Íntegro] << Paladin
    .train 440788 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Escudo de Retidão|r] para treinar |T236265:0|t[Escudo de Retidão] << Paladin
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 235600 << Paladin --Rune of Divine Storm
    .use 211488 << Paladin --Rune of the Avenger
    .use 235602 << Paladin --Rune of the Hammer of the Righteous
    .use 235604 << Paladin --Rune of the Shield of Righteousness
step << Paladin
    #sticky
    >>|cRXP_WARN_Procure por qualquer|r |T132624:0|t[Baú]|cRXP_WARN_,|r |cRXP_WARN_ou|r |T133762:0|t[Manto] |cRXP_WARN_que você pode equipar|r
    .engrave 5 >>Grave |T236250:0|t[Tempestade Divina] no seu peito
    .engrave 15 >>Grave |T236265:0|t[Escudo de Retidão] em sua capa
step << Priest/Paladin
    .use 6070 << Paladin --Wolfskin Bracers
    .equip 9 >>Equipe as |T132604:0|t[Braçadeiras de Pele de Lobo] << Paladin
    .engrave 6 >>Grave as |T136181:0|t[Aparições Corrompidas] no seu cinto << Priest
    .engrave 8 >>Grave a |T237514:0|t[Peste do Caos] nas botas << Priest
    .engrave 10 >>Grave |T136149:0|t[Palavra Sombria: Morte] nas luvas << Priest
    .engrave 7 >>Grave o |T135874:0|t[Escudo do Vingador] nas calças << Paladin
    .engrave 9 >>Grave |T236253:0|t[Martelo do Íntegro] em suas Bracers << Paladin
step << Priest/Paladin
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Mate |cRXP_ENEMY_Kobold Daninho|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step << Priest/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >>Farme até 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << !Priest !Mage !Warlock !Rogue !Paladin
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>Lixo de Comerciante
    .target Godric Rothgar
step << Mage
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o refugo para ele e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisar|r
    >>Certifique-se de que você comprou |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Lança de Gelo|r], você o usará para entregar uma missão extra
    .collect 203745,1 --Spell Notes: Ice Lance
    .target Rune Broker
    .skipgossip
step << Mage
    #sticky
    #optional
    #label IceLance
    .train 401760 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Feitiço Notas: Lança de Gelo|r] para treinar |T135844:0|t[Lança de Gelo]
step
    #label CleanupEnd
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3100 >>Aceite Carta Simples << Warrior
    .accept 3101 >>Aceite Carta Consagrada << Paladin
    .accept 3102 >>Aceite Carta Criptografada << Rogue
    .accept 3103 >>Aceite Carta Santificada << Priest
    .accept 3104 >>Aceite Carta Glífica << Mage
    .accept 3105 >>Aceite Carta Corrompida << Warlock
    .target Marshal McBride




----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Vá em direção à |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
step << Mage
    #requires IceLance
    #xprate >1.59
    #season 2
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>Entregue Carta Glífica
    .accept 77620 >>Aceite Pesquisa de Feitiços << Human
    .turnin 77620 >>Entregue Pesquisa de Feitiços << Human
    .trainer >>Treine suas magias de classe
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
    .turnin 3103 >>Entregue Carta Santificada
    .accept 77619 >>Aceite Meditação da Luz << Human
    .turnin 77619 >>Entregue Meditação da Luz << Human
    .trainer >>Treine seus feitiços de classe, |cRXP_WARN_se você não pode pagá-los, pule o treinamento. Você estará principalmente usando habilidades de runa mesmo assim|r
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção à |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo << Paladin
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .turnin 3100 >>Entregue Carta Simples
    .accept 77616 >>Aceite A Runa Perdida << Human
    .turnin 77616 >>Entregue A Runa Perdida << Human
    .train 100 >>Treine |T132337:0|t[Carga]
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 2
    #label PalaQ
    .goto Elwynn Forest,50.433,42.124
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 3101 >>Entregue Carta Consagrada
    .accept 77617 >>Aceite Relíquias da Luz << Human
    .turnin 77617 >>Entregue Relíquias da Luz << Human
    >>|cRXP_WARN_Se você tem dinheiro extra, pode gastá-lo em|r |T135906:0|t[Bênção do Poder], |T135959:0|t[Julgamento] |cRXP_WARN_ou uma|r |T135029:0|t[Chestpiece] |cRXP_WARN_se você ainda não tem nenhum deles. Eu recomendaria priorizar o chestpiece|r
    .target Brother Sammuel
step << Paladin
    #optional
    #completewith RestandR
    .use 2385 --Tarnished Chain Gloves
    .equip 10 >>Equipe as |T132938:0|t|cRXP_LOOT_[Luvas Encadeadas Manchadas]|r se você ainda não encontrou outras luvas
    .engrave 10 >>|cRXP_WARN_Grave o|r |T132938:0|t|cRXP_LOOT_[Luvas Encadeadas Manchadas]|r |cRXP_WARN_com|r |T135891:0|t[Golpe do Cruzado] << Paladin
step << Priest/Warrior/Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith RuneWorkers
    .goto 1429,48.198,41.890,12 >>Saia de Northshire Abbey
step
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,48.171,42.943
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r do lado de fora
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step << !Mage !Priest !Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o refugo para ele e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisar|r
    .target Rune Broker
    .skipgossip
step
    #xprate >1.59
    #season 2
    #label RuneWorkers
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Mate |cRXP_ENEMY_Operários Kobold|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step << Rogue
    #xprate >1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 3102 >>Entregue Carta Criptografada
    .target Jorik Kerridan
step << !Warlock
    #xprate >1.59
    #season 2
    #loop
    #label EarlyRedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Mate |cRXP_ENEMY_Capangas Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas Vermelhas de Burlap|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << !Warlock
    #xprate >1.59
    #season 2
    #requires Shadowstrike2 << Rogue
    #requires EarlyLibram4 << Paladin
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 18,1 >>Entregue Irmandade de Ladrões << Rogue
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Paladin
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Priest
    .turnin 18,3 >>Entregue Irmandade de Ladrões << Warrior
    .turnin 18,5 >>Entregue Irmandade de Ladrões << Mage
    .turnin 18 >>Entregue Irmandade de Ladrões << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .target Deputy Willem
step << Rogue
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >>Equipe o |T135641:0|t [Punhal da Milícia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    .equip 16,5580 >>Equipe o |T133052:0|t[Martelo de Milícia]
    .use 5580
    .itemcount 5580,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.97
step << Warrior
    #completewith RestandR
    .equip 16,1161 >>Equipe o |T135274:0|t [Espada Curta da Milícia]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.01
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Human Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r
    .accept 5623 >>Aceite In Simpatia of the Luz - Missão
    .target Priestess Anetta
    .isOnQuest 77619
    .xp <5,1
step << Human Warrior/Human Paladin
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção à |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo << Paladin
step << Human Paladin
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo
    .turnin 77617 >>Entregue Relíquias da Luz
    .trainer >>Treine suas magias de classe
    .target Brother Sammuel
    .isOnQuest 77617
step << Human Paladin
    #xprate >1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >>|cRXP_WARN_Equipe o|r |T132938:0|t|cRXP_LOOT_[Luvas Encadeadas Manchadas]|r
    .use 2385
    .itemcount 2385,1
    .train 403470,3 << Warrior
    .train 410002,3 << Paladin
    .itemStat 10,LEVEL,<5
step
    #xprate >1.59
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride
step << Human Paladin/Warrior/Priest
    #xprate >1.59
    #season 2
    #optional
    #completewith next
    .goto 1429,48.279,42.171,8 >>Saia de Northshire Abbey
    .isQuestTurnedIn 15 << Warrior/Priest
    .isQuestTurnedIn 18 << Paladin
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entregue Carta Corrompida
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Drusilla La Salle



----End of 2x training section----


step << Priest/Paladin
    .goto Elwynn Forest,48.22,41.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>Venda o lixo do Comerciante e compre todos os|cRXP_BUY_ |T134419:0|t|cRXP_WARN_[Runas]|r que você quer dele|r
    .target Rune Broker
    .skipgossip
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >>Entre na Mina da Serra do Eco
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Mate |cRXP_ENEMY_Operários Kobold|r dentro da Mina da Serra do Eco
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
	#softcore
    #completewith next
    .deathskip >>Morra e volte no Anjo da Cura em Northshire
    .target Anjo da Cura
step
    #xprate >1.49
    #optional
    #completewith RestandR
    .abandon 3904 >>Abandone Colheita da Madel
step
    #xprate >1.49
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >>Farme até 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >>Farme até 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >>Farme até 875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith #label RestandR
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 59,1
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .turnin 21,1 >>Entregue Escaramuça na Serra do Eco << Rogue
    .turnin 21,2 >>Entregue Escaramuça na Serra do Eco << Warrior/Paladin
    .turnin 21,3 >>Entregue Escaramuça na Serra do Eco << !Warrior !Paladin !Rogue
    .accept 54 >>Aceite Relatório para Vila Dourada
    .target Marshal McBride
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r dentro
    .accept 5623 >>Aceite In Simpatia of the Luz - Missão
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#classic
#season 2
#version 1
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 6-12 Elwynn Forest SoD
#displayname 6-12 Elwynn Forest
#next 12-13 Dun Morogh SoD
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >>Voe para Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 87
step
    #softcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135321:0|t [Gládio] |cRXP_BUY_dela se você puder pagar|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135641:0|t [Estilete] |cRXP_BUY_dela se você puder pagar|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_WARN_Compre um|r |T133053:0|t [Malho de Madeira] |cRXP_BUY_dela se você puder pagar|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Smith Argus
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_André Cravo|r
    .vendor >>Lixo de Comerciante
    .target Andrew Krighton
--  .money >1.0
step
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 2158,1 >>Entregue Descanso e Relaxamento << Rogue/Warrior
    .turnin 2158,2 >>Entregue Descanso e Relaxamento << !Rogue !Warrior
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    .target Innkeeper Farley
step
    #optional
    .xp 6 >>Faça grind até 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor 151 >>|cRXP_BUY_Compre o|r |T135641:0|t [Adagas de Arremesso Balanceadas] |cRXP_BUY_dele se você puder pagar|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>Apague o |T135426:0|t[Faca de Arremesso Pequena Degradada] de sua mochila, pois não é mais necessário
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para o andar de baixo
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >>Treine suas magias de classe
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor 6374 >>|cRXP_BUY_Compre o|r |T133738:0|t [Grimório do Pacto de Sangue (Ranque 1)] |cRXP_BUY_dela se você puder pagar. Caso não, compre depois|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >>Entregue Em Favor da Luz
    .accept 5624 >>Aceite Vestimentas da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r lá em cima
    .target Michelle Belle
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor 295 >>|cRXP_BUY_Compre|r |T133995:0|t [Punhal de Dalaran] |cRXP_BUY_dele até ficar com 1 prata|r << Warrior
    .vendor 295 >>|cRXP_BUY_Compre até 20|r |T133995:0|t [Punhal de Dalaran] |cRXP_BUY_dele|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
    .money < 0.1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_no|r |cRXP_FRIENDLY_Guarda Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step << Warrior
    #season 2
    #sticky
    #completewith next
    >>Procure por |cRXP_FRIENDLY_Espadachim Errante|r. Se você o encontrar, pode desafiá-lo para um duelo, que lhe dará a runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem vários pontos de aparição e só pode estar em um deles de cada vez|r
    >>|cRXP_WARN_Você provavelmente não conseguirá derrotá-lo sozinho neste nível. Pule esta etapa se não houver ninguém para ajudá-lo. Você pode voltar depois de atingir o nível 10 e verificar se ele ainda está lá.|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r e |cRXP_FRIENDLY_Mama Campedra|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r << !Rogue
    .accept 85 >>Aceite O Colar Perdido
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Aceite Princesa Tem Que Morrer! << Rogue
	.goto Elwynn Forest,34.660,84.482 << Rogue
    .target +Ma Stonefield << Rogue
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e o |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Juntando a Fome...
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué Madruga|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r |T132815:0|t[Leite Gelado] |cRXP_WARN_que puder pagar|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Venda lixo|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e o |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 86 >>Entregue Juntando a Fome...
    .accept 84 >>Aceite ...com a Vontade de Comer
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vovó Campedra|r lá dentro
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e o |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Abate os |cRXP_ENEMY_Minadores Kobold|r e os |cRXP_ENEMY_Cavadores Kobold|r. Saque-os para obter um |T134168:0|t|cRXP_LOOT_[Cabeça de Kobold Decepada]|r
    >>|cRXP_WARN_Este é um dos três itens que você precisa para desbloquear sua|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r] |cRXP_WARN_para quando você chegar a Ventobravo mais tarde|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #completewith Exchange
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Minadores Kobold|r e nos |cRXP_ENEMY_Cavadores Kobold|r. Saque-os para obter |T134327:0|t|cRXP_LOOT_[Top-Direita Mapa Piece]|r
    >>|cRXP_WARN_Você deve estar|r |T132320:0|t[Furtivo] |cRXP_WARN_para usar|r |T133644:0|t[Bater Carteira]
    >>|cRXP_ENEMY_NOTA:|r |cRXP_WARN_Todos os|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_passos servem para desbloquear a|r |T134536:0|t[Saque Rápido] |cRXP_WARN_runa.|r |cRXP_WARN_É útil, mas não é obrigatória para subir de nível e se torna obsoleta por volta do nível 22 após desbloquear seus venenos. Fique à vontade para pular todos esses passos se não tiver interesse em obter a runa o mais rápido possível e quiser economizar tempo no curto prazo.|r
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step
    #sticky
    #label KoboldEnd
    #completewith BernicesNecklace
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue ...com a Vontade de Comer
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step << Priest
    #sticky
    #label SharedPain
    #completewith BernicesNecklace
    .goto Elwynn Forest,40.6,81.8
    >>Mate os |cRXP_ENEMY_Mineiros Kobold|r. Saque-os para obter |T136222:0|t[|cRXP_FRIENDLY_Lembrança do Aprisionado Salvador|r]
    >>|cRXP_WARN_Não se esforce para obter esta runa agora, você pode consegui-la depois|r
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPain
    #completewith BernicesNecklace
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205945
    .itemcount 205945,1
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entre em um dos maiores espaços abertos da Mina Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 2
    #label BernicesNecklace
    .goto 1429,41.732,78.024
    >>Mate o |cRXP_ENEMY_Dentadouro|r. Saqueie-o para |cRXP_LOOT_Bernice's Colar|r << !Warrior !Priest
    >>Abate |cRXP_ENEMY_Dentadouro|r. Saque-o para obter |cRXP_LOOT_Colar de Bernice|r e a |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r << Warrior
    >>Abate |cRXP_ENEMY_Dentadouro|r. Saque-o para obter |cRXP_LOOT_Colar de Bernice|r e a |T136222:0|t|cRXP_LOOT_[Memória de um Propósito Sombrio]|r << Priest
    >>|cRXP_WARN_Tenha cuidado, pois ele geralmente puxa junto com o |cRXP_ENEMY_Minerador Kobold|r ao lado dele|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Continue matando |cRXP_ENEMY_Mineradores Kobold|r e |cRXP_ENEMY_Kobold Tunnelers|r. Saque-os por seus |cRXP_LOOT_Kobold Velas|r e |cRXP_LOOT_Ouro Poeira|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Rogue
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    .xp 9+2000 >>Farme Kobolds até ter 2000 xp no nível 9.
    >>|cRXP_WARN_Se você não estiver próximo você pode completar a missão do Dentadouro mas matar inimigos é mais eficiente|r
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_Você deve ter um buff|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_digitando /kneel em uma área sagrada como a Abadia do Northshire ou a Catedral de Ventobravo|r
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t|cRXP_LOOT_[Memória de um Propósito Sombrio]|r |cRXP_WARN_para aprender|r |T237514:0|t[Peste do Caos]
    .use 205940
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
	#softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura em Goldshire
    .target Anjo da Cura
step << skip --logout skip
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Salte no topo de um destruidor, os troncos flutuantes, as caixas, ou o carrinho de mina brilhante dentro da caverna. Realize um logout skip saindo do jogo e voltando|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >>Retorne para Goldshire
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_Se possível, encontre um sacerdote em Goldshire com outros|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_Digite /kneel, então faça outro sacerdote digitar /pray em você enquanto está ajoelhado para ganhar seus|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus para usar depois|r
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .turnin 40 >>Entregue Perigo Anfíbio
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor >>Lixo de Comerciante
    .target Corina Steele
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135321:0|t [Gládio] |cRXP_BUY_dela se você puder pagar|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um segundo|r |T135641:0|t[Estilete] |cRXP_BUY_dela se você puder pagar|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith next
    .engrave 10,399960 >>Abra sua folha de personagem e grave |T132304:0|t[|cRXP_FRIENDLY_Mutilar|r] em luvas. É de longe a runa mais forte para lutar contra inimigos.
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dela se você puder pagar|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    >>|cRXP_WARN_Treine|r |T135949:0|t[Purificar] |cRXP_WARN_para adquirir|r |T133815:0|t[Gravar Peitoral - Égide] |cRXP_WARN_logo|r
    .train 1152 >>Treine |T135949:0|t[Purificar]
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Algas
    .target William Pestle
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Seta de Fogo (Rank 2)] |cRXP_BUY_dela se você puder pagar. Se não, você pode comprá-lo mais tarde|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .turnin 5624 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor >>|cRXP_WARN_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_WARN_se necessário|r
	.target Brog Hamfist
    .money <0.2
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_BUY_Compre até 20|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_dele se você puder pagar|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre até 10|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_e 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r << Paladin
    .target Innkeeper Farley
    .money < 0.1
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>Abate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saqueie-os para obter uma |T134169:0|t|cRXP_LOOT_[Cabeça de Murloc Decepada]|r
    >>|cRXP_WARN_Este é um dos três itens que você precisa desbloquear|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r] |cRXP_WARN_para quando você chegar a Objetos de TBC no nível 10|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob Murloc Streamrunner
	.mob Murloc
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #completewith JasperlodeExplore
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Murloc Streamrunners|r e os |cRXP_ENEMY_Murlocs|r. Saqueie-os para o |T134269:0|t|cRXP_LOOT_[Bottom-Direita Mapa Piece]|r
    >>|cRXP_WARN_Você deve estar|r |T132320:0|t[Furtivo] |cRXP_WARN_para usar|r |T133644:0|t[Bater Carteira]
    >>|cRXP_ENEMY_NOTA:|r |cRXP_WARN_Todos os|r |T134327:0|t[|cRXP_LOOT_Pedaço de Mapa|r] |cRXP_WARN_passos são para desbloquear o|r |T134536:0|t[Saque Rápido] |cRXP_WARN_runa.|r |cRXP_WARN_É útil mas não é obrigatório para o nivelamento e torna-se obsoleto por volta do nível 22 após desbloquear seus venenos. Sinta-se à vontade para pular todos esses passos se você não estiver interessado em obter a runa o mais rápido possível e quiser economizar tempo no curto prazo.|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Streamrunner
    .mob Murloc
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Mate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saqueie-os para obter |cRXP_LOOT_Crystal Alga Fronds|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step << Priest
    #sticky
    #label SharedPainTwo
    #completewith JasperlodeExplore
    .goto Elwynn Forest,40.6,81.8
    >>Mate os |cRXP_ENEMY_Mineiros Kobold|r. Saque-os para obter |T136222:0|t[|cRXP_FRIENDLY_Lembrança do Aprisionado Salvador|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #sticky
    #requires SharedPainTwo
    #completewith JasperlodeExplore
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205945
    .itemcount 205945,1
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >>Entre na Mina de Jasperlode
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>Abate os |cRXP_ENEMY_Kobold Geomancers|r. Saqueie-os para obter |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: VACMA IHAV]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Siga o caminho pelo meio para explorar a Mina de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step << Priest
    .goto Elwynn Forest,62.2,57.4
    >>Mate os |cRXP_ENEMY_Mineiros Kobold|r. Saque-os para obter |T136222:0|t[|cRXP_FRIENDLY_Lembrança do Aprisionado Salvador|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    #optional
    #completewith next
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205945
    .itemcount 205945,1
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Lance|r |T135949:0|t[Purificar] |cRXP_WARN_no |cRXP_FRIENDLY_Aventureiro Ferido|r dentro|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Converse com o |cRXP_FRIENDLY_Aventureiro Ferido|r depois de lançar|r |T135949:0|t[Purificar] |cRXP_WARN_nele para receber|r |T134419:0|t[Runa de Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_Use|r |T134419:0|t[Runa de Égide] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Égide]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_Use|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: VACMA IHAV]|r |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
step << Priest
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >>Saia da Mina de Jasperlode
    .subzoneskip 54,1
step << Priest
    #season 2
    #loop
    .goto 1429,74.015,51.810,0
    .goto 1429,72.561,56.666,55,0
    .goto 1429,72.396,54.428,55,0
    .goto 1429,74.015,51.810,55,0
    .goto 1429,75.155,50.751,55,0
    .goto 1429,76.815,48.877,55,0
    .goto 1429,76.676,53.898,55,0
    >>Abate |cRXP_ENEMY_Defias Ladino Magos|r. Saque-os para obter |T135975:0|t|cRXP_LOOT_[Profecia de uma Cidadela Profanada]|r
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    #season 2
    #optional
    #completewith BundleOT
    .train 402852 >>|cRXP_WARN_Use|r |T135975:0|t|cRXP_LOOT_[Profecia de uma Cidadela Profanada]|r |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Você deve ter 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus digitando /kneel em uma área sagrada como Northshire Abbey, Catedral TBC, os Altares da Luz em Anvilmar, Loch Modan ou a Proteção Mística em Ironforge|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    #label GnollMapPiece
    .goto 1429,68.680,54.635,60,0
    .goto 1429,68.135,48.678,60,0
    .goto 1429,68.102,45.049,60,0
    .goto 1429,66.618,40.849
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Riverpaw Corredores|r e os |cRXP_ENEMY_Riverpaw Nanico|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_ENEMY_NOTA:|r |cRXP_WARN_Todos os|r |T134327:0|t[|cRXP_LOOT_Map Piece|r] |cRXP_WARN_passos são para desbloquear o|r |T134536:0|t[Saque Rápido] |cRXP_WARN_runa.|r |cRXP_WARN_É útil, mas não é obrigatório para subir de nível e se torna obsoleto por volta do nível 22 após desbloquear seus venenos. Sinta-se à vontade para pular todos esses passos se você não estiver interessado em obter a runa o mais rápido possível e quiser economizar tempo no curto prazo.|r
    >>|cRXP_WARN_Se você decidir pular conseguir a runa, você pode pular ir para Redridge por enquanto e apenas usar sua Pedra de Retorno ou deathskip de volta direto para Goldshire|r
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith AcceptBundle
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #softcore
    #season 2
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Fino|r
    .vendor >>Venda itens e repare
    .target Rallic Finn
    .train 398196,1
    .isQuestAvailable 5545
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Defias|r. Saqueie-os pelo |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_Nota: Isto também pode vir de qualquer outro membro |cRXP_ENEMY_Defias|r em Elwynn Forest|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Use qualquer um dos|r |T134327:0|t[|cRXP_LOOT_Map Pieces|r] |cRXP_WARN_para combiná-los no|r |T134269:0|t[|cRXP_LOOT_Elwynn Mapa do Tesouro|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Elwynn Mapa do Tesouro|r] |cRXP_WARN_na localização da seta. Isto fará com que um |cRXP_PICK_Tesouro Enterrado|r apareça|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Abra o |cRXP_PICK_Tesouro Enterrado|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << Priest/Rogue
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #softcore
    #completewith RRFP
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_CUIDADO: Vá para a estrada principal e evite qualquer inimigo próximo no caminho|r
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step << Priest/Rogue
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
    .subzoneskip 87 --Skip the Quick Draw steps if the user went back to goldshire instead
step
    #optional
    #completewith CollectKelp
    .hs >>Use sua Pedra de Retorno para Goldshire
    .subzoneskip 87
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
    .timer 9,Colete alga RP
    .accept 114 >>Aceite A fuga
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não treine outros feitiços para economizar dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 76 >>Entregue A Mina de Jaspe
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor >>Lixo de Comerciante
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .accept 1097 >>Aceite Tarefa de Elmore
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >>Suba até o nível 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_não treine pois você precisa economizar dinheiro para depois|r
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .accept 2998 >>Aceite Tomo de Divindade
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wagner Nascimento|r e |cRXP_FRIENDLY_Rêmulo Marcos|r
    .trainer >>Treine suas magias de classe
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >>Aceite Convocação de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Suba
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .accept 5635 >>Aceite Prece Desesperada
    .trainer >>Treine suas magias de classe
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >>Treine suas magias de classe
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não treine outros feitiços para economizar dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step
    #completewith PrincessFinish
    #optional
    .abandon 59 >>Abandone Armadura de Pano e Couro
step << Warrior
    #season 2
    #sticky
    #completewith GoldtoothEnd
    >>Procure por |cRXP_FRIENDLY_Espadachim Errante|r enquanto corre. Se você o encontrar, você pode desafiá-lo para um duelo, que lhe dará a runa de |T132334:0|t[|cRXP_FRIENDLY_Sanguíneo Frenesi|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>Viaje para The Maclure Vineyards
step
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    #label GoldtoothEnd
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
    .turnin 88 >>Entregue Princesa Tem que Morrer << Rogue
    .target "Auntie" Bernice Stonefield
step
    #optional
    #completewith next
    .abandon 88 >>Abandone Princesa Tem que Morrer! já que você não completou a missão
step << Warrior
    #season 2
    .goto Elwynn Forest,30.0,73.4
    >>Verifique o local marcado para o |cRXP_FRIENDLY_Espadachim Errante|r. Se ele estiver lá, desafie-o para um duelo, o que lhe concederá a runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >>Viaje para Westbrook Garrison


----Start of Paladin 1.5x Martyrdom Rune section----


step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
    .target Deputy Rainer
step << Paladin
    #xprate >1.59
    #season 2
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Abate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Corredores|r. Saque-os para obter |T132889:0|t[Linho]. Você precisará de 10 para uma missão em breve
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
    .isQuestAvailable 1644

----Start of Warrior Gnoll Head section----


step << Warrior
    #xprate >1.49
    #season 2
    #label Garrison
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
    .target Deputy Rainer
step << Warrior
    #season 2
    .goto Elwynn Forest,25.3,70.2
    >>Verifique o local marcado para o |cRXP_FRIENDLY_Espadachim Errante|r. Se ele estiver lá, desafie-o para um duelo, o que lhe concederá a runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Elwynn Forest,22.3,73.3
    >>Procurei o local marcado para o |cRXP_FRIENDLY_Espadachim Errante|r. Se ele estiver lá, desafie-o para um duelo, que lhe dará a runa de |T132334:0|t[|cRXP_FRIENDLY_Sanguíneo Frenesi|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #xprate >1.49
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mate o |cRXP_ENEMY_Riverpaw Nanico|r e o |cRXP_ENEMY_Riverpaw Outrunners|r. Saque-os para obter um |T134163:0|t[|cRXP_LOOT_Cabeça de Gnoll Decepada|r]
    >>|cRXP_WARN_Este é um dos três itens que você precisa desbloquear|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r] |cRXP_WARN_para quando você chegar a Objetos de TBC no nível 10|r
    .collect 204478,1 -- Severed Gnoll Head (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r << Warlock
    .accept 176 >>Aceite Wanted: "Hogger" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Mate o |cRXP_ENEMY_Riverpaw Nanico|r e o |cRXP_ENEMY_Riverpaw Outrunners|r enquanto corre. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r]
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] |cRXP_WARN_é um drop extremamente raro. Ignorar este passo se você não conseguir|r
    >>|cRXP_ENEMY_Rude Mordelogo|r |cRXP_WARN_é um spawn raro, mas tem 100% de chance de drop|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>Aceite O Coletor
    .unitscan Gruff Swiftbite
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_no |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Usar|r |T136163:0|t[Drenar Alma] |cRXP_WARN_Quando Hogger está prestes a morrer. Se ele morrer enquanto sob o efeito dele, você receberá um|r |T134085:0|t[Estilhaço de Alma Maculado] |cRXP_WARN_Que é usado para desbloquear a runa de|r |T136169:0|t[Sifão da Alma]
    >>|cRXP_WARN_Pule este passo se você não conseguir obter o estilhaço de alma ou Hogger não estiver disponível. A runa não é muito forte.|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .collect 205019,1 --Tainted Soul shard
    .disablecheckbox
    .unitscan Hogger
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >>Abandone O Coletor
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>Viaje até Cerro Oeste
step
    #xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 184 >>Entregue Escritura do Furlbrow
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Paladin !Warlock
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    #requires Charred
--XXREQ Placeholder invis step
step
step << !Paladin !Warlock
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r dentro
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 36 >>Entregue Cozido de Costa Negra
    .target Salma Saldean
step << !Paladin !Warlock
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >>Aceite Os Campos da Morte
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >>Acumule até 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >>Acumule até 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << Paladin/Warlock
    .goto Westfall,62.3,35.4
    .zone Westfall >>Nade para Cerro Oeste através do rio
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
-- .subzoneskip 108
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Miguel Mantoforte
    .target Gryan Stoutmantle
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dela. Elas são comidas de nível 5 muito baratas|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .accept 153 >>Aceite Bandanas de Couro Vermelho
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
    .accept 6281 >>Aceite Continue para Ventobravo
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>Use o |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Defias Batedor|r para o |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_Há uma chance muito alta de que o|r |T133644:0|t[Bater Carteira] |cRXP_WARN_falhará porque você está sub-level. Se isso acontecer, pule este passo e voe para Ventobravo. Você o completará em Loch Modan em breve|r
    >>|cRXP_WARN_NÃO atraia o |cRXP_ENEMY_Batedor Défias|r SENÃO ELE IRÁ|r |T132331:0|t[Sumir] |cRXP_WARN_E DESAPARECER POR 3-5 MINUTOS. ENTRE EM|r |T132320:0|t[Furtividade] |cRXP_WARN_CEDO!|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Defias Batedor|r pode aparecer nas colinas|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolha a|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como recompensa. Causa dano decente e pode ser usado para "Divisão pulling", o que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
    .isQuestComplete 61
step << !Rogue
    #optional << Warlock/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine 1h Espadas e Báculos << Warlock
    .trainer >>Treine Cajados << Priest
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock
    .money <0.3 << Warrior/Paladin
step << Warlock
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Cajados
    .target Woo Ping
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Cidade de Ventobravo
    .target Innkeeper Allison
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 2998 >>Entregue Tomo de Divindade
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19834 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 647 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1685 >>Entregue Gakin's Summons
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r usando |T136126:0|t[Conversão de Vida] e ficando parado sobre a Objetos de Cata ao seu lado
    .target Anjo da Cura
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>Saia de Ventobravo
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Voe para Goldshire
step << Warlock
    #optional
    #completewith LockGoldshireEnd
    >>Procure por qualquer |cRXP_ENEMY_Bicho|r correndo ao redor perto do curador espiritual. Lance |T136163:0|t[Drenar Alma] nele para receber um |T134095:0|t[Pure Estilhaço de Alma]
    .collect 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Skip if no Hogger shard
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada]
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 123 >>Entregue O Coletor
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada]
    .turnin 176 >>Entregue Wanted: "Hogger"
    .target Marshal Dughan
step << Warlock
    #label SoulSiphon
    .goto Elwynn Forest,44.0,66.2
    >>|cRXP_WARN_Dirija-se ao porão da Estalagem de Goldshire|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deimon Kane <Corretor de Almas>|r. Conclua seu diálogo para negociar os estilhaços de alma por |T134419:0|t[Runa do Sifão da Alma]
    .collect 205022,1
    .train 403920,1
    .itemcount 205020,1 --Pure Soul Shard (1)
    .itemcount 205019,1 --Tainted Soul Shard (1)
step << Warlock
    #optional
    #requires SoulSiphon
    #completewith next
    .train 403920 >>Usar a |T134419:0|t[Runa do Sifão da Alma] para treinar |T136169:0|t[Sifão da Alma]
    .use 205022
    .train 403920,1
    .itemcount 205022,1
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Vara de Luta Balanceada]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #label LockGoldshireEnd
    --Invisible step
step << Warlock
    #optional
    >>|cRXP_WARN_Triture no caminho. Procure treinar sua|r |T135145:0|t[Vara de Luta Balanceada] |cRXP_WARN_habilidade|r
    .subzone 62 >>Vá para o Brackwell Abóbora Mathiaz
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é uma queda muito rara. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    >>|cRXP_WARN_Triturar no caminho. Certifique-se de que você tem pelo menos 2|r |T134075:0|t[Estilhaços de Alma] |cRXP_WARN_usando|r |T136163:0|t[Drenar Alma]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Cuidado com inimigos no caminho|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_MANTENHA-SE NA ESTRADA PRINCIPAL E EVITE QUALQUER INIMIGO PRÓXIMO NO CAMINHO|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step << Warlock
    .hs >>Use sua Pedra de Retorno para Ventobravo, pule este passo e pegue a rota de voo se estiver em recarga
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
    .zoneskip Stormwind City
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use a|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para invocar um|r |cRXP_ENEMY_Invocado Emissário do Caos|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>Entregue A Vinculação


----Warlock Elwynn Voidwalker Section End----


step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Fale com |cRXP_FRIENDLY_Viktoria Mattos <Caçadora de Monstros>|r para entregar |T134168:0|t[|cRXP_LOOT_Cabeça de Kobold Decepada|r] e receber |T134455:0|t[Monster Hunter's First Runa Fragmento]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Fale com |cRXP_FRIENDLY_Viktoria Mattos <Caçadora de Monstros>|r para entregar |T134169:0|t[|cRXP_LOOT_Cabeça de Murloc Decepada|r] e receber |T134455:0|t[Monster Hunter's Second Runa Fragmento]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Fale com |cRXP_FRIENDLY_Viktoria Mattos <Caçadora de Monstros>|r para entregar |T134163:0|t[|cRXP_LOOT_Cabeça de Gnoll Decepada|r] e receber |T134455:0|t[Monster Hunter's Third Runa Fragmento]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >>|cRXP_WARN_Use qualquer um dos|r |T134455:0|t[Monster Hunter's Runa Fragmentos] |cRXP_WARN_para criar a|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204703
    .itemcount 204703,1
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larso Norde|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .accept 6261 >>Aceite Dungar Tragolongo
    .target Osric Strang
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de que você tem pelo menos 24 de prata restante após o treinamento. Você precisará disso para obter uma Gun em Ironforge para usar suas runas|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Certifique-se de que tem pelo menos 24 prata restante após o treinamento. Você precisará dela para conseguir uma Gun em Ironforge para poder usar suas runas|r
    .train 1766 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <12,1
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue A Warrior's Treinamento
    .accept 1639 >>Aceite Bartolino the Bêbado - Missão
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino the Bêbado - Missão
    .accept 1640 >>Aceite Beat Bartolino - Missão
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataque |cRXP_ENEMY_Bartolino|r. Ele se renderá a 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>Entregue Beat Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >>Entre na Catedral de Ventobravo
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .turnin 5635 >>Entregue Prece Desesperada
    .train 8092 >>Treine suas magias de classe
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .turnin 5634 >>Entregue Prece Desesperada
    .train 8092 >>Treine suas magias de classe
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .trainer >>Treine suas magias de classe
    .target High Priestess Laurena
    .train 13908,3
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>Entre no Beco da Garganta Cortada na Cidade de Objetos de TBC no Distrito dos Anões
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Suba as escadas da casa|r
    >>Abra o |cRXP_PICK_Baú Empoeirado|r. Saque-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    >>|cRXP_WARN_Fazer isso irá invocar dois |cRXP_ENEMY_Cut-throat Muggers|r de nível 10 que irão atacá-lo|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r << Alliance
    >>Compre o |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r dele, use-o para treinar |T135961:0|t[Selo do Martírio] << Paladin
    .collect 226398,1 << Paladin
step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r << Alliance
    >>Se você tem muito dinheiro de sobra, pode comprar os dois outros Testamentos de Milton para uso posterior << Paladin
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .money <5
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >>Entregue Tarefa de Elmore
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaita Baixaforja|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Você aprenderá|r |T134708:0|t[Mineração] |cRXP_WARN_mais tarde|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Pegue o Bonde das Profundezas para o lado de Ironforge|r
    >>|cRXP_WARN_Aumente de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lance|r |T136221:0|t[Evocar Emissário do Caos] |cRXP_WARN_e|r |T135230:0|t[Criar Pedra de Vida] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio no lado de Ironforge do Tram de Profundezas
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_Use a|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em |cRXP_ENEMY_Deeprun Ratos|r dentro do Bonde das Profundezas|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r dentro do Tram de Profundezas
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Pegue o Bonde das Profundezas para o lado de Ironforge|r
    >>|cRXP_WARN_Aumente de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lance|r |T136221:0|t[Evocar Emissário do Caos] |cRXP_WARN_e|r |T135230:0|t[Criar Pedra de Vida] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio no lado de Ironforge do Tram de Profundezas
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_Use a|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em |cRXP_ENEMY_Deeprun Ratos|r dentro do Bonde das Profundezas|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r dentro do Tram de Profundezas
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_se necessário enquanto espera o trem|r << Rogue/Warrior/Paladin
    .zone Ironforge >>Pegue o Bonde para Ironforge
step
    .zone Ironforge >>Entre em Ironforge
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>Vá para |cRXP_FRIENDLY_Bilban Lançachave|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    >>|cRXP_WARN_Guarde 20s 70c para depois|r
    .train 2687 >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    #label WarriorTrain
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    >>|cRXP_WARN_Guarde 20s 70c para depois|r
    .train 5242 >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>Entre no Timberline Armas Building
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 2567 >>Treine Arremesso << Warrior
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >>Treine Maças de Duas Mãos << Warrior
    .train 266 >>Treine Armas de Fogo << Rogue
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thalgus Punhostrondo|r abaixo das escadas
    >>|cRXP_BUY_Compre um|r |T135613:0|t[Cano de Atirar do Caçador] e |T132384:0|t[Munição Pesada] |cRXP_BUY_dele|r
    .collect 2511,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money <0.14
    .target Thalgus Punhostrondo
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thalgus Punhostrondo|r descendo as escadas
    >>|cRXP_BUY_Compre um|r |T135611:0|t[Bacamarte Ornado] e |T132384:0|t[Munição Pesada] |cRXP_BUY_dele|r
    .collect 2509,1 --Collect Hunter's Boomstick (1)
    .collect 2519,200 --Heavy Shot (200)
    .money >0.14
    .target Thalgus Punhostrondo
    .itemcount 2511,<1
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >>Saia do Timberline Armas Building
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Dumalte|r para iniciar uma luta
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e conjure|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r << Warrior
    >>|cRXP_WARN_Tente enxotar ele usando|r |T132316:0|t[|cRXP_FRIENDLY_Cortar Tendão|r] |cRXP_WARN_e|r |T132324:0|t[|cRXP_FRIENDLY_Arremesso|r] << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e conjure|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r << Warrior
    >>|cRXP_WARN_Depois de derrotar |cRXP_ENEMY_Dumalte|r:|r
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Repreensão] << Paladin
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Repreensão]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r << Paladin
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Ataque Frenético] << Warrior
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Ataque Frenético]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r << Warrior
    >>|cRXP_WARN_NOTA: Isto pode ser difícil de fazer sozinho. Procure por ajuda, ou você será instruído a completá-lo novamente mais tarde no guia|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Repreensão] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Repreensão]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Repreensão]
    >>|cRXP_WARN_Lembre-se de colocar|r |T134919:0|t[Repreensão] |cRXP_WARN_nas suas barras de ações|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Ataque Frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .train 425447,3
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,26.8,8.6,12 >>Vá para |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 122 >>Treine suas magias de classe
    .target Dink
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 145 >>Treine suas magias de classe
    .target Dink
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,26.8,8.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 1460 >>Treine suas magias de classe
    .target Dink
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Brandur Ferromalho dentro
    .train 633 >>Treine suas magias de classe
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19834 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 647 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #ssf
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Saia de Ironforge e caminhe para o leste em direção a Ragash|r
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
step << skip --logout skip
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Salte bem no topo da |cRXP_PICK_Caixa de correio|r, depois realize um Pulo de Logout ao fazer logout e voltar|r
    .isQuestAvailable 314
    ]])
