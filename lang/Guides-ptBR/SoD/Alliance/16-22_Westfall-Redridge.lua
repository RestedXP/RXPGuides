if GetLocale() ~= "ptBR" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 16-17 Cerro Oeste SoD
#displayname 16-17 Cerro Oeste
#next 17-22 Redridge SoD
#defaultfor !NightElf

step << Paladin
    .goto Stormwind City,74.182,7.465 << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r << Alliance
    >>Compre o |T133745:0|t|cRXP_LOOT_[Itens de MoP]|r dele, use-o para treinar |T135956:0|t[Exorcista] << Paladin
    .collect 226398,1 << Paladin
    .train 415076,1 << Paladin
step
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
    .target Furen Longbeard
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Midaras|r
    .target Nara Meideros
    .accept 78195 >>Aceite Segredos de Eluna
step << Human Paladin
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin -2998 >>Entregue Tomo de Divindade
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    .accept 1780 >>Aceite Tomo de Divindade
    .target Stephanie Turner
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
    >>Fale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1780 >>Entregue Tomo de Divindade
    .target Duthorian Rall
    .accept 1781 >>Aceite Tomo de Divindade
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>Fale com |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Entregue Tomo de Divindade
    .target Gazin Tenorm
    .accept 1786 >>Aceite Tomo de Divindade
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara Midaras|r
    .target Nara Meideros
    .trainer >>Treine suas magias de classe
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
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Spackle Cardopomo|r
    >>|cRXP_BUY_Compre o |T133738:0|t[Grimório de Consumir Sombras (Rank 1)]|r
    .collect 16357,1
    .target Spackle Thornberry
    .train 20387,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A Vinculação
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
step << Priest/Mage/Warlock
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    .vendor 1312 >>|cRXP_BUY_Compre uma|r |T135468:0|t[Bacamarte de Calibre Largo] |cRXP_BUY_dela se você puder pagar (35s)|r
    >>|cRXP_BUY_Alternativamente, compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_na Casa de Leilões se for mais barato|r
    .collect 5208,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_certifique-se de treinar|r |T136058:0|t[Arrombamento] |cRXP_WARN_pois precisará dela para sua missão de classe Ladino em breve|r
    .trainer >>Treine suas magias de classe
    .train 1804 >>Treine [Abrir Fechadura]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na Sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior
    #season 2
    #completewith next
    .gossipoption 109045 >>Fale com o |cRXP_FRIENDLY_Lívia Valforte <Garçom>|r dentro da Estalagem do Parque
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>Fale com |cRXP_ENEMY_Estuardo|r, depois derrote-o. Ele ficará inconsciente a 0%
    .goto Stormwind City,21.213,62.781
    >>Se |cRXP_ENEMY_Estuardo|r não estiver lá, aguarde o seu reaparecimento
    .skipgossipid 109047
    .skipgossipid 109045
    .skipgossipid 109084
    --.train 425447,1
step << Warrior
    #season 2
    .goto Stormwind City,22.608,64.621
    .use 204716 >>Fale com o |cRXP_FRIENDLY_Lívia Valforte <Garçom>|r novamente após derrotar |cRXP_ENEMY_Estuardo|r para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .collect 204716,1
    .train 425447,1 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] |cRXP_WARN_para treinar|r |T236317:0|t[Ataque Frenético]
    >>|cRXP_WARN_Nota: Isso pode ser bastante difícil em solo dependendo do seu nível. Procure ajuda se necessário|r
    .skipgossip 203478,1
    .target Liv Bradford
    .mob Stuart
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lina Fornalha|r
    >>Compre uma |T135612:0|t[Bacamarte de Calibre Largo] (7.4 DPS) ou procure por uma melhoria melhor na Casa de Leilões
    .collect 3023,1
    .money <0.3771
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.3
step << !Human/!Mage
    #season 1 << Rogue
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Treine Cajados << Priest/Warlock/Hunter
    .train 201 >>Treine Espadas de Uma Mão << Mage/Warlock
    .train 202 >>Treine Espadas de Duas Mãos << Warrior/Paladin/Hunter
    --.train 5011 >>Train Crossbows << Hunter
    .target Woo Ping
step << Warrior/Paladin
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>Compre uma |T135353:0|t[Tarasca] (12.6 DPS) ou procure por uma melhoria melhor na Casa de Leilões
    .target Marcia Weller
    .collect 2024,1 --Collect Espadon (1)
    .money <0.6397
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre o |T134437:0|t[Antipeçonha] para sua missão |T132290:0|t[Venenos] logo, e o resto para entregar mais rapidamente em Montanhas Cristarrubra em breve << !Dwarf Rogue
    >>Compre os seguintes itens para entregar mais rapidamente em Montanhas Cristarrubra em breve << !Rogue/Dwarf Rogue
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T134437:0|t[Antipeçonha] << !Dwarf Rogue
    >>|T134172:0|t[Grande Goretusco Snout]
    >>|T134028:0|t[Fortalecer Condor Carne]
    >>|T134321:0|t[Crisp Aranha Carne]
    >>Antipeçonha pode ser feito com a habilidade de primeiros socorros usando um |T134339:0|t[Pequeno Venenom Sac] << Rogue !Dwarf
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step << Mage
    #season 2
    .goto StormwindClassic,55.8,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Orlande Bórgia|r
    >>Verifique se ele tem |T134830:0|t[|cRXP_LOOT_Lesser Cura Potions|r], compre-os se estiverem disponíveis
    .collect 211779,3 >>Compre um par |T135933:0|t[|cRXP_LOOT_Patuá da Compreensão|r] dele
    .target Orlande Bórgia
step << Human
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .turnin 6261 >>Entregue Dungar Tragolongo
    .accept 6285 >>Aceite Retornar a Lewis
    .target Dungar Longdrink
    .isQuestTurnedIn 6281
step << !Human/Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Stormwind >>Aprenda a rota de voo para a Cidade de Ventobravo << !Human
    .fly Redridge >>Voe para Montanhas Cristarrubra << Warlock
    .target Thor
step << !Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .zoneskip Westfall
    .zoneskip Redridge Mountains
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
step << !Human !Warlock
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    .target Innkeeper Farley
step << Mage
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << !Warlock
    .goto 1429/0,73.800,-9465.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>Usar o |cRXP_PICK_Símbolo da Vida|r em |cRXP_FRIENDLY_Henze Faulk|r
>>Fale com |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Entregue Tomo de Divindade
.target Henze Faulk
    .accept 1787 >>Aceite Tomo de Divindade
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>Mate os |cRXP_ENEMY_Defias Ladino Wizards|r ao redor da ilha
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
    .accept 246 >>Aceite Avaliando a Ameaça
    .target Deputy Feldon
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step << !Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>Aceite O Preço dos Sapatos
step << Human/Dwarf Paladin
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .zoneskip Westfall
    .isQuestAvailable 153
step << !Human !Paladin !Warlock
    #completewith next
    .hs >>Use sua Pedra de Retorno para Goldshire
step << !Human !Paladin
    .goto Elwynn Forest,41.71,65.55
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
	.target Smith Argus
    .turnin 118 >>Entregue O Preço dos Sapatos
    .accept 119 >>Aceite Retornar a Verner
step << !Human !Paladin
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r e o |cRXP_FRIENDLY_Capitão Danuvin|r
    .goto Westfall,56.327,47.520
    .turnin -109 >>Entregue Miguel Mantoforte
    .accept 12 >>Aceite A Milícia do Povo
    .target Gryan Stoutmantle
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >>Entregue Volte para Lewis
    .isOnQuest 6285
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .accept 153 >>Aceite Bandanas de Couro Vermelho
step << Rogue
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
    .target Innkeeper Heather
    .home >>Defina sua Pedra de Retorno em Cerro Oeste
step
    >>Mate os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os pelas suas |cRXP_LOOT_Red Couro Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75,0
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step << Mage
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>Mate os |cRXP_ENEMY_Defias Pillagers|r. Saque-os para o |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step << Mage
    .train 401767 >>|cRXP_WARN_Use a|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: TENGI RONEERA]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >>Aceite Os Campos da Morte
step
#loop
    .goto Westfall,37.4,50.6,0
    .goto Westfall,44.8,33.6,0
    .goto Westfall,54.0,32.0,0
    .goto Westfall,51.0,22.0,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76,60,0
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r. Saqueie-os para obter [|cRXP_LOOT_Flasks of Oil|], você vai precisar deles para uma missão depois
    >>Você pode ficar no campo de Saldanha. Eles continuarão ressurgindo se todos forem mortos
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5 -- Flask of Oil (5)
    .mob Harvest Watcher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >>Entregue Campos de Matança
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >>Entregue Bandanas de Couro Vermelho
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >>Entregue The People's Militia
    .accept 65 >>Aceitar A Irmandade Défias
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Redridge >>Voe para Redridge
    .target Thor

]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 17-22 Redridge SoD
#displayname 17-22 Redridge
#next RestedXP Aliança 20-30\22-24 Pantanal SoD
#defaultfor !NightElf


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Oficial Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>Aceite A Ameaça de Rocha Negra
    .target Marshal Marris
    .xp <18,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >>Aceite As Ferramentas Perdidas
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >>Aceite O Preço dos Sapatos
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .turnin 119 >>Entregue Devolver to Verner
    .isOnQuest 119
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .accept 124 >>Aceite A Baying of Gnolls
    .accept 122 >>Aceite Underbelly Escamoso
    .isQuestTurnedIn 119

step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
	.target Magistrate Solomon
    .accept 120 >>Aceite Mensageiro para Ventobravo
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >>Aceite Vendendo Peixe
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_anda ao redor dentro da Estalagem|r
	.target Darcy
    .accept 129 >>Aceite Um Almoço Grátis
step << !Rogue
    .goto Redridge Mountains,27.0,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Estalajadeira Briana|r
    .target Innkeeper Brianna
    .home >>Defina sua Pedra de Regresso para Vila Plácida
    .isQuestAvailable 20
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
	.target Wiley the Black
    .turnin 65 >>Entregue A Irmandade Défias
    .isOnQuest 65
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r ao subir as escadas
    .turnin 65 >>Entregue A Irmandade Défias
    .accept 132 >>Aceitar A Irmandade Défias
	.target Wiley the Black
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >>Aceite Nida's Colar
step
#loop
    >>|cRXP_WARN_Pule no lago|r
    >>Abra a |cRXP_PICK_Glinting Mud|r. Saqueie-a para |cRXP_LOOT_Hilary's Colar|r
    >>|cRXP_WARN_Tem múltiplos locais de aparecimento no lago|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Abra o |cRXP_PICK_Sunken Baú|r. Pegue |cRXP_LOOT_Oslow's Caixa de Ferramentas|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >>Entregue The Perdida Ferramentas
    .accept 89 >>Aceite The Everstill Ponte
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Oficial Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>Aceite A Ameaça de Rocha Negra
    .target Marshal Marris
    .xp <18,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >>Entregue Nida's Colar
step
    #optional
	#completewith threat1
	>>Mate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter os |cRXP_LOOT_Escamoso|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
    .isOnQuest 122
step
    #optional
    #completewith threat1
    >>Mate os |cRXP_ENEMY_Great Goretusks|r. Saque-os para obter seus |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >>Entregue Um Almoço Grátis
    .accept 130 >>Aceite Visite a Herbalista
step
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Mate os |cRXP_ENEMY_Tarantulas|r. Saque-os para obter |cRXP_LOOT_Crisp Aranha Carne|r
    .collect 1081,5,92,1
    .mob Tarantula
step
#loop
    .goto Redridge Mountains,29.49,82.80,0
    .goto Redridge Mountains,32.52,81.78,0
    .goto Redridge Mountains,43.18,72.22,0
    .goto Redridge Mountains,31.13,82.18,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18,45,0
	>>Mate os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
#label threat1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >>Entregue Assessing the Ameaça
step
    #completewith db1
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
    .dungeon DM << !Human
step
    #optional
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 120 >>Entregue Messenger to Objetos de TBC
    .accept 121 >>Aceite Mensageiro para Ventobravo
    .target General Marcus Jonathan
    .isQuestTurnedIn 118
    .dungeon DM << !Human
step
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>Fale com |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Entregue Tomo de Divindade
.target Gazin Tenorm
    .accept 1788 >>Aceite Tomo de Divindade
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>Fale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1788 >>Entregue Tomo de Divindade
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
    .dungeon DM
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lina Fornalha|r
    >>Compre um |T135612:0|t[Persuasor BKP 2700]| (9.6 DPS) ou procure uma melhora melhor na Casa de Leilões
    .collect 3024,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
    .dungeon DM << !Human
step << Rogue
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    .target Marcia Weller
    >>|cRXP_WARN_Compre uma|r |T135342:0|t[Cris]
    >>|cRXP_WARN_Compre algo do Leilão se houver algo mais barato/melhor|r
    .collect 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .dungeon DM << !Human
step << Warrior/Paladin
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_WARN_se tiver dinheiro suficiente. Equipe-a no nível 21|r
    >>|cRXP_WARN_Se você estava usando machadinhas até agora você pode comprar um|r |T133044:0|t[Malho] |cRXP_WARN_para evitar problemas de habilidade de arma por enquanto|r
    >>|cRXP_WARN_Compre algo do Leilão se houver algo mais barato/melhor|r
    .collect 922,1 --Heavy Spiked Mace (1)
    .collect 924,1 --Ironwood Maul (1)
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .dungeon DM << !Human
step << Warlock/Priest
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r dentro
    .vendor 1312 >>|cRXP_BUY_Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela se você puder pagar|r
    .collect 5210,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .dungeon DM << !Human
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 120 >>Entregue Messenger to Objetos de TBC
    .accept 121 >>Aceite Mensageiro para Ventobravo
    .target General Marcus Jonathan
    .dungeon DM << !Human
step
    .goto Elwynn Forest,41.71,65.55
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
	.target Smith Argus
    .turnin 118 >>Entregue O Preço dos Sapatos
    .accept 119 >>Aceite Retornar a Verner
    .dungeon DM << !Human
step << Human
    .dungeon !DM
    .cooldown item,6948,>120,1
    .hs >>Use sua Pedra de Retorno em Lakeshire
    .zoneskip Redridge Mountains
step << Human
#optional
.dungeon !DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Redridge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Oficial Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>Aceite A Ameaça de Rocha Negra
    .target Marshal Marris
    .xp <18,1
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .turnin 119 >>Entregue Devolver to Verner
step
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .accept 124 >>Aceite A Baying of Gnolls
    .accept 122 >>Aceite Underbelly Escamoso
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >>Entregue Messenger to Objetos de TBC
step
    .goto Redridge Mountains,29.71,44.26
    .target Bailiff Conacher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Meirinho Conacher|r
    .accept 91 >>Aceite Solomon's Law
step
    .goto Redridge Mountains,26.75,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClique na |cRXP_FRIENDLY_Cartaz Procurado|r
    .accept 180 >>Aceite Wanted: General Mordente
step
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Entregue Visite a Herbalista
    .accept 131 >>Aceite Entregando Daffodils
    .accept 34 >>Aceite O Penetra
step
#optional
	#completewith BayingOfGnolls
	>>Mate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter os |cRXP_LOOT_Escamoso|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step << !Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Mate os |cRXP_ENEMY_Redridge Brutes|r e os |cRXP_ENEMY_Redridge Mystics|r. Saqueie-os para obter |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    #sticky
    #completewith next
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Abate os |cRXP_ENEMY_Redridge Brutes|r e os |cRXP_ENEMY_Redridge Mystics|r. Saque-os pelos seus |cRXP_LOOT_Piques de Ferro|r e |cRXP_LOOT_Rebites de Ferro|r. |cRXP_WARN_Progress this quest on your way to Alther's Moinho. You will complete it on the way back|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step << Rogue
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery (1)
step << Rogue
    #label BayingOfGnolls
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Complete matando os |cRXP_ENEMY_Redridge Brutes|r e os |cRXP_ENEMY_Redridge Mystics|r. Saque-os pelos seus |cRXP_LOOT_Piques de Ferro|r e |cRXP_LOOT_Rebites de Ferro|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_anda ao redor dentro da Estalagem|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >>Entregue Entregando Daffodils
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >>Entregue A Baying of Gnolls
    .accept 126 >>Aceite Uivando nas Colinas
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 89 >>Entregue The Everstill Ponte
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Entregue Moinho de Alther
    .target Lucius
step << Rogue
#label xp20
    >>Você deve estar no nível 20 aqui. Se você não estiver, faça as missões de Murlocs a leste e suba até o nível 20
    .xp 20


----Start of Rogue Poison and Deadmines section----

step << Rogue
    .goto Redridge Mountains,30.6,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
    .zoneskip Westfall
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Cuidado com sua administração de dinheiro a partir de agora. Você precisará de 75 prata livre quando chegar aos Wetlands para desbloquear uma runa|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << !Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Ariena Stormfeather
step << Rogue
#completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
    .zoneskip Westfall
step << Rogue
.dungeon !DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 132 >>Entregue A Irmandade Défias
    .accept 135 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 141 >>Entregue A Irmandade Défias
    .accept 142 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >>Vá para Moonbrook
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Mate o |cRXP_ENEMY_Mensageiro Défias|r. Saqueie-o para obter a |cRXP_LOOT_Mensagem Misteriosa|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Mensageiro Défias|r aparece em Arroio da Lua. Ele caminha pela estrada ao norte de Arroio da Lua, até a Mina de Costa Dourada e a Mina de Jangolode. Se você não o vir pela estrada, espere-o aparecer em Arroio da Lua|r
    >>|cRXP_WARN_Ele tem um intervalo de reaparecimento de 4-5 minutos|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 142 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Traidor Défias|r
    >>|cRXP_WARN_Você pode precisar esperar pelo |cRXP_FRIENDLY_Traidor Défias|r aparecer se ele não estiver lá|r
    .accept 155 >>Aceitar A Irmandade Défias
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escolte o |cRXP_FRIENDLY_Traidor Défias|r para Minas Mortas
    >>|cRXP_WARN_fique ao lado de |cRXP_FRIENDLY_Traidor Défias|r o tempo todo! esteja pronto para lutar |cRXP_ENEMY_Défias|r ao chegar em Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 155 >>Entregue A Irmandade Défias
    .accept 166 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .accept 214 >>Aceite Bandanas de Seda Vermelha
    .goto Westfall,56.67,47.35
    .target Scout Riell
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTE ATENÇÃO À PRÓXIMA SEÇÃO==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar Chave Interagir" e vincule a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns dos cantos dentro da torre|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
    .target Agent Kearnen
step << Rogue
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
step << Rogue
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
step << Rogue
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
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de reequipar sua arma principal se você trocou para uma|r |T135641:0|t[Dagger] |cRXP_WARN_mais cedo|r << Rogue
    .turnin 2359 >>Entregue A Torre de Klaven
    .turnin 135 >>Entregue A Irmandade Défias
    .target Master Mathias Shaw
step << Rogue
#completewith next
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink
    .zoneskip Westfall
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >>Agora você deve estar procurando um grupo para as Minas Mortas
    >>Triture Gnolls enquanto monta um grupo para Minas Mortas
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Vá para Minas Mortas
step
.dungeon DM
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Defias|r. Saque-os para as |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_Você pode completar isto depois de entrar na Masmorra|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
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
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
step
.dungeon DM
    #completewith DMend
    >>Abata os |cRXP_ENEMY_Defias|r dentro de Minas Mortas. Saqueie-os para |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    >>|cRXP_WARN_Use [|cRXP_LOOT_Carta Não Enviada|r] para iniciar a missão|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >>Aceite A Carta Não Enviada
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >>Viaje até a Colina da Sentinela
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r e com a |cRXP_FRIENDLY_Batedora Riell|r no topo da Torre
    .turnin 166 >>Entregue A Irmandade Défias
    .goto Westfall,56.33,47.52
    .turnin -214 >>Entregue Bandanas de Seda Vermelha
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .turnin 167 >>Entregue Oh, Irmão...
    .turnin 168 >>Entregue Coletando Memórias
    .target Wilder Thistlenettle
    .dungeon DM
step
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2040 >>Entregue Ataque Subterrâneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    .dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Redridge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains


----End of Rogue Poison and Deadmines section----


step
    #optional
    #completewith orcs
    >>Mate os |cRXP_ENEMY_Dire Condors|r. Saque-os para obter |cRXP_LOOT_Tough Condor Carne|r
    >>Mate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter os |cRXP_LOOT_Escamoso|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
    .subzoneskip 997--Render's Valley
step
#completewith next
    >>Mate os |cRXP_ENEMY_Great Goretusks|r. Saque-os para obter seus |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
    .goto Redridge Mountains,49.0,70.0
    >>Mate os |cRXP_ENEMY_Murloc Shorestrikers|r e os |cRXP_ENEMY_Murloc Minor Tidecallers|r. Saque-os para obter suas |cRXP_LOOT_Fins|r e |cRXP_LOOT_Sunfish|r
	>>|cRXP_WARN_Saiba que esta área é um hyperspawn, significando que os |cRXP_ENEMY_Murlocs|r reaparecem rapidamente|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step << Warlock
    #season 2
    #sticky
    #label Incinerate
    .goto Redridge Mountains,76.8,82.2
    .train 416015 >>Mate o |cRXP_ENEMY_Incinerador Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Saque-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r]
    .use 211477>>Esta runa pode ser um pouco difícil, mas é totalmente viável. Apenas mantenha Gar'im assustado; você precisará desta runa para uma missão posterior
    .collect 211477,1
    .disablecheckbox
    .unitscan Incinerator Gar'im
step
    #loop
    >>Abate |cRXP_ENEMY_Blackrock Grunts|r e |cRXP_ENEMY_Blackrock Outrunners|r. Saqueie-os por seus |cRXP_LOOT_Machados|r
	>>|cRXP_WARN_Saiba que os |cRXP_ENEMY_Blackrock Outrunners|r vão lançar |T132149:0|t[Rede] em você|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #requires Incinerate<< Warlock
    .goto Redridge Mountains,61.37,77.10
    >>Mate os |cRXP_ENEMY_Dire Condors|r. Saque-os para obter |cRXP_LOOT_Tough Condor Carne|r
    >>Mate os |cRXP_ENEMY_Black Dragão Whelps|r. Saqueie-os para obter os |cRXP_LOOT_Escamoso|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob +Black Dragon Whelp
    .collect 1080,5,92,1
    .mob +Dire Condor
step << Rogue
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,74.00,79.00,0
    .xp 22-18500 >>Farme até estar 18500 xp longe do nível 22
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
step
    #softcore
    .deathskip >>Morra e reapareça no Curador Espiritual. Você receberá a doença de ressurreição, então não estará lutando contra inimigos por um tempo
    .itemcount 1080,5 --Tough condor meat (5)
    .itemcount 2296,5 --Great goretusk snout (5)
    .itemcount 1221,5 --Underbelly Whelp Scale (6)
    .itemcount 3014,10 --Battleworn Axe (10)
    .xp <21.25
step
    #loop
    >>Mate os |cRXP_ENEMY_Great Goretusks|r. Saque-os para obter seus |cRXP_LOOT_Great Goretusco Snouts|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83,0
    .goto Redridge Mountains,32.25,70.20,0
    .goto Redridge Mountains,31.02,72.14,0
    .collect 2296,5,92,1
    .mob Great Goretusk
step << Rogue
    .xp 22-18500 >>Farme inimigos até estar 18500 xp longe do nível 22
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >>Entregue Venda de Peixes
    .accept 150 >>Aceite Caçadores Murloc
    .turnin 150 >>Entregue Murloc Poachers
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vervo Obom|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 122 >>Entregue Underbelly Escamoso
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Oficial Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>Entregue Blackrock Ameaça
step
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
	.target Ariena Stormfeather
    .fly Stormwind >>Voe para Cidade de Ventobravo
step << !Mage/Paladin/Warlock
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
step << Mage
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    .target +Larimaine Purdue
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
	.target Jennea Cannon
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Certifique-se de ter 75 moedas de prata restantes após o treinamento. Você precisará delas para desbloquear uma runa em breve. Compre apenas habilidades essenciais se necessário|r
    .train 1856 >>|cRXP_WARN_Certifique-se de treinar |T132331:0|t[Sumir].|r |cRXP_WARN_Você precisará dela para desbloquear uma runa em breve|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Paladin
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .trainer >>Treine suas magias de classe
    .target High Priestess Laurena
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Deeprun Tram. Pegue o Bonde para Ironforge
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Warlock
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre um|r |T133738:0|t[Grimório de Tormento (Nível 2)]
    .collect 16346,1
    .disablecheckbox
    .target Jubahl Corpseseeker
    .train 427733,1 --skips if you have a felguard
step << Mage
    .goto Ironforge,25.50,7.04
    >>Fale com |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >>Vá para o ponto de salto. Passe rente ao lado esquerdo da montanha durante o trajeto
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Coma até ficar cheio após cada queda se você não se sente confiante|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUE AQUI para referência (é FORTEMENTE aconselhado que você faça isso)|r
    .goto Dun Morogh,60.65,11.38,20 >>Desça cuidadosamente a encosta da montanha
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Lodogã|r (raro) antes de descer em direção à costa (se ele estiver aparecido)|r
    >>|cRXP_WARN_Cuidado com os |cRXP_ENEMY_Bluegill Raiders|r a oeste quando você chegar ao mar|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUE AQUI para referência (é FORTEMENTE aconselhado que você faça isso)|r
    .goto Wetlands,12.69,60.97,15 >>Vá para Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
    .subzoneskip 150 -- Skips if already in menethil
    .subzoneskip 2104 -- Skips if already in menethil inn
]])
