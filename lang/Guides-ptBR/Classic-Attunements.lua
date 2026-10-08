if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Guias de Fim de Jogo
#subgroup Sintonizações
#name Sintonização de Onyxia (A)


step
    #completewith next
    .zone Burning Steppes>>|cRXP_WARN_Viagem para|r |cFFfa9602Estepes Ardentes|r
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helendis Flumicórnio|r
    .accept 4182 >>Aceite Ameaça Dragonkin
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,81.8,60.0,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Mate os |cRXP_ENEMY_Black Broodlings|r, os |cRXP_ENEMY_Black Dragonspawns|r, os |cRXP_ENEMY_Black Wyrmkins|r e um |cRXP_ENEMY_Draco Preto|r
    >>|cRXP_ENEMY_Black Dragonspawns|r|cRXP_WARN_,|r |cRXP_ENEMY_Black Wyrmkins|r |cRXP_WARN_e|r |cRXP_ENEMY_Black Drakes|r |cRXP_WARN_são élite. Forme um grupo se necessário|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Drake
    .complete 4182,3 -- Black Drake slain
    .mob +Black Wyrmkin
step
    .isQuestComplete 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helendis Flumicórnio|r
    .turnin 4182 >>Entregue Ameaça Dragonkin
    .accept 4183 >>Aceite The True Masters
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helendis Flumicórnio|r
    .accept 4183 >>Aceite The True Masters
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borgus Braçoforte|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 4183 >>Entregue The True Masters
    .accept 4184 >>Aceite The True Masters
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon|r
    .turnin 4184 >>Entregue The True Masters
    .accept 4185 >>Aceite The True Masters
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Dama Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon|r
    .turnin 4185 >>Entregue The True Masters
    .accept 4186 >>Aceite The True Masters
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge>>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 4186 >>Entregue The True Masters
    .accept 4223 >>Aceite Os Verdadeiros Mestres
    .target Magistrate Solomon
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Burning Steppes >>Voe para Estepes Ardentes
    .target Ariena Stormfeather
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Maximiliano|r
    .turnin 4223 >>Entregue Os Verdadeiros Mestres
    .accept 4224 >>Aceite The True Masters
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4182
    #completewith WindsorPickup
    .goto Burning Steppes,65.236,24.007
    .subzone 251 >>Viaje para Monte Candente
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,65.012,23.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Roto|r
    .complete 4224,1 -- Ragged John's Story (1)
    .skipgossip
    .target Ragged John
step
    #label WindsorPickup
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Maximiliano|r
    .turnin 4224 >>Entregue The True Masters
    .accept 4241 >>Aceite o Marechal Windsor
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entre no Abismo Rocha Negra
    >>|cRXP_WARN_Tenha certeza de que tem um grupo pronto|r
step
    .isQuestTurnedIn 4182
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Vilasboas|r
    >>|cRXP_WARN_Se seu grupo não tem um Ladino você pode precisar matar|r |cRXP_ENEMY_Alto Interrogador Gerstahn|r |cRXP_WARN_para a|r |cRXP_LOOT_Chave da Cela da Prisão|r |cRXP_WARN_para abrir as portas|r
    .turnin 4241 >>Entregue Marechal Vilasboas
    .accept 4242 >>Aceite Esperança Abandonada
step
    .isQuestTurnedIn 4182
    #completewith next
    .subzone 2418 >>Vá para A Vigia de Morgan, nas |cFFfa9602Estepes Ardentes|r
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Maximiliano|r
    >>|cRXP_WARN_A cadeia de missões irá parar aqui até você encontrar|r |T134331:0|t[Bilhete Amassado] |cRXP_WARN_em Abismo Rocha Negra|r
    .turnin 4242 >>Entregue Esperança Abandonada
    .target Marshal Maxwell
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    .isQuestTurnedIn 4242
    .goto Eastern Kingdoms,48.07,62.42
    #completewith next
    .subzone 1584,2 >>Entre no Abismo Rocha Negra
step
    .isQuestTurnedIn 4242
    >>Mate os |cRXP_ENEMY_Anões|r em Abismo Rocha Negra. Saqueie-os para obter |T134331:0|t[Bilhete Amassado]
    .use 11446 >>|cRXP_WARN_Use o|r |T134331:0|t[Bilhete Amassado] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_É importante fazer isso antes de matar os chefes |cRXP_ENEMY_General Forjaversa|r e |rLorde Golem Argelmach|cRXP_ENEMY_|r
    >>|cRXP_WARN_Se você ainda não encontrou isso, limpe a área ao redor do Bloco de Detenção até que ele caia|r
    .collect 11446,1,4264,1 -- A Crumpled Up Note (1)
    .accept 4264 >>Aceite Bilhete Amassado
step
    .isOnQuest 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Vilasboas|r
    .turnin 4264 >>Entregue Bilhete Amassado
    .accept 4282 >>Aceite Um fiapo de esperança
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Vilasboas|r
    .accept 4282 >>Aceite Um fiapo de esperança
step
    .isOnQuest 4282
    >>Mate |cRXP_ENEMY_General Forjaversa|r e |cRXP_ENEMY_Lorde Golem Argelmach|r. Saqueie-os para obter |cRXP_LOOT_Informações Perdidas do Marechal Vilasboas|r
    .complete 4282,1 -- Marshal Windsor's Lost Information (1)
    .complete 4282,2 -- Marshal Windsor's Lost Information (1)
step
    .isQuestTurnedIn 4264
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Vilasboas|r
    >>|cRXP_WARN_CERTIFIQUE-SE DE QUE TODOS OS MEMBROS DO GRUPO ESTEJAM COM A ACEITAÇÃO AUTOMÁTICA DESATIVADA PARA ESTE PASSO! O RestedXP TEM A ACEITAÇÃO AUTOMÁTICA DESATIVADA PARA ESTE PASSO|r
    >>|cRXP_WARN_Aceitar esta missão iniciará a escolta Fuga da Cadeia. Certifique-se de ter limpado toda a área do Bloco de Detenção para facilitar a escolta de |rMarechal Vilasboas|cRXP_FRIENDLY_|r
    .turnin 4282 >>Entregue Um fiapo de esperança
    .accept 4322,1 >>Aceite Fuga da Cadeia!
step
    .isOnQuest 4322
    >>Escolte |cRXP_FRIENDLY_Marechal Vilasboas|r pelo Abismo Rocha Negra
    .complete 4322,1 -- Jail Break! (1)
step
    #completewith Rendezvoes
    .subzone 2418 >>Vá para A Vigia de Morgan nas |cFFfa9602Estepes Ardentes|r
step
    .isQuestComplete 4322
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Maximiliano|r
    .turnin 4322 >>Entregue Fuga da Cadeia!
    .accept 6402 >>Aceite Encontro em Ventobravo
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #label Rendezvoes
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Maximiliano|r
    .accept 6402 >>Aceite Encontro em Ventobravo
    .target Marshal Maxwell
step
    .isQuestTurnedIn 4322
    #completewith next
    .goto StormwindClassic,70.424,85.171,5,0
    .goto StormwindClassic,69.709,86.083
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Escudeiro Rowe|r e |cRXP_FRIENDLY_Reginaldo Vilasboas|r
    >>|cRXP_FRIENDLY_Escudeiro Rowe|r chamará |cRXP_FRIENDLY_Reginaldo Vilasboas|r para chegar depois que você falar com ele nos Portões de Ventobravo
    >>|cRXP_WARN_SE VOCÊ ESTIVER EM UM GRUPO, CERTIFIQUE-SE DE QUE NINGUÉM ACEITE AUTOMATICAMENTE O Grande Baile de Máscaras. A ACEITAÇÃO AUTOMÁTICA FOI DESATIVADA PARA ESTE PASSO|r
    .turnin 6402 >>Entregue Encontro em Ventobravo
    .accept 6403,1 >>Aceite O Grande Baile de Máscaras
    .skipgossip
    .target Squire Rowe
    .target Reginald Windsor
step
    .isQuestTurnedIn 4322
    .goto StormwindClassic,75.955,19.114,-1
    .goto StormwindClassic,76.865,20.830,-1
    >>Escolte |cRXP_FRIENDLY_Reginaldo Vilasboas|r até a Fortaleza de Ventobravo
    >>Não ajude Reginaldo Vilasboas|cRXP_FRIENDLY_ em combate enquanto estiver dentro da Fortaleza. Se fizer isso, há uma grande chance de morrer. Fique no local indicado pela seta e deixe o evento terminar sozinho. Isso levará alguns minutos|r
    .complete 6403,1 -- Reginald's March (1)
    .target Reginald Windsor
step
    .isQuestComplete 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon|r
    .turnin 6403 >>Entregue O Grande Baile de Máscaras
    .accept 6501 >>Aceite O Olho do Dragão
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 6403
    .goto StormwindClassic,77.569,18.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon|r
    .accept 6501 >>Aceite O Olho do Dragão
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .zone Winterspring >>Voe para |cFFfa9602Hibérnia|r
step
    .isQuestTurnedIn 6403
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Realize o pulo da montanha para alcançar |cRXP_FRIENDLY_Haleh|r
    >>O local inicial está marcado no mapa. Siga a seta com cuidado
    >>|cRXP_WARN_Se você tem|r |T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_, você pode usá-los para ganhar|r |T135992:0|t[Queda Lenta] |cRXP_WARN_para tornar o pulo mais fácil|r << !Priest !Mage
    >>|cRXP_WARN_Se você tem|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_ou|r |T132917:0|t[Luz Peninha]|cRXP_WARN_, você pode usá-los para ganhar|r |T135992:0|t[Queda Lenta] |cRXP_WARN_para tornar o pulo mais fácil|r << Mage
    >>|cRXP_WARN_Se você tem|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_ou|r |T132917:0|t[Luz Peninha]|cRXP_WARN_, você pode usá-los para ganhar|r |T135992:0|t[Queda Lenta] |cRXP_WARN_ou|r |T135928:0|t[Levitar] |cRXP_WARN_para tornar o pulo mais fácil|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >>https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Clique aqui para referência de vídeo|r
step
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Haleh|r
    .turnin 6501 >>Entregue O Olho do Dragão
    .accept 6502 >>Aceite Amuleto de Chama Dracônica
    .target Haleh
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    .isQuestTurnedIn 6403
    >>Mate |cRXP_ENEMY_General Drakkisath|r. Saqueie-o para |cRXP_LOOT_Sangue do Campeão do Dragão Negro|r
    .complete 6502,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Winterspring >>Voe para |cFFfa9602Hibérnia|r
step
    #completewith next
    .goto Winterspring,56.60,52.78,0
    .goto Winterspring,56.60,52.78,50,0
    .goto Winterspring,56.36,53.60,30,0
    .goto Winterspring,55.31,53.84,20,0
    .goto Winterspring,54.78,53.30,20,0
    .goto Winterspring,54.51,53.44,20,0
    .goto Winterspring,54.14,52.84,10,0
    .goto Winterspring,53.73,52.04,10,0
    .goto Winterspring,54.54,51.21,30 >>Faça o pulo da montanha para alcançar |cRXP_FRIENDLY_Haleh|r
    >>O local de início está marcado no seu mapa. Siga a seta do waypoint com cuidado
    >>|cRXP_WARN_Se você tem|r |T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_, você pode usá-los para ganhar|r |T135992:0|t[Queda Lenta] |cRXP_WARN_para facilitar o pulo|r << !Priest !Mage
    >>|cRXP_WARN_Se você tem|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_ou|r |T132917:0|t[Luz Peninha]|cRXP_WARN_, você pode usá-los para ganhar|r |T135992:0|t[Queda Lenta] |cRXP_WARN_para facilitar o pulo|r << Mage
    >>|cRXP_WARN_Se você tem|r |T134863:0|t[Noggenfogger Elixirs] |cRXP_WARN_ou|r |T132917:0|t[Luz Peninha]|cRXP_WARN_, você pode usá-los para ganhar|r |T135992:0|t[Queda Lenta] |cRXP_WARN_ou|r |T135928:0|t[Levitar] |cRXP_WARN_para facilitar o pulo|r << Priest
    .link https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >>https://www.youtube.com/watch?v=qjmkIzbfBbQ&ab_channel=RestedXP >> |cRXP_WARN_Clique aqui para referência de vídeo|r
step
    #softcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Cuidado com o círculo azul na frente de |cRXP_FRIENDLY_Haleh|r. Pisar nele o teleportará para dentro da caverna|r
    .turnin 6502 >>Entregue Amuleto Chama Dracônica
    .target Haleh
step
    #hardcore
    .isQuestTurnedIn 6403
    .goto Winterspring,54.54,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haleh|r
    >>|cRXP_WARN_Cuidado! NÃO pise no círculo azul na frente de |cRXP_FRIENDLY_Haleh|r. Isso o teleportará para dentro da caverna com um dragão élite e você pode MORRER|r
    .turnin 6502 >>Entregue Amuleto Dracônico Flamejante
    .target Haleh

]])
RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Guias de Fim de Jogo
#subgroup Sintonizações
#name Onyxia Attunement (H)

step
    #completewith next
    .subzone 340 >>Vá para Kargath nos |cFFfa9602Ermos|r
step
    .goto Badlands,5.81,47.52
	>>Fale com o |cRXP_FRIENDLY_Senhor da Guerra Trincador|r para receber |T133473:0|t[|cRXP_LOOT_Comando do Senhor da Guerra Trincador|r]. Usar-o para aceitar a missão
    .collect 12563,1,4903 --Warlord Goretooth's Command 1/1
    .accept 4903 >>Aceite Comando do Senhor da Guerra
    .target Warlord Goretooth
    .skipgossip 0,1,1,1,1,1
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Esta é uma masmorra de 5-10 pessoas|r
step
    #sticky
    #label ImportantDocuments
    >>Saque |cRXP_LOOT_Important Blackrock Documents|r
    >>Há 4 possíveis pontos de aparição diferentes na masmorra:
    >>|cRXP_WARN_Aos pés de|r |cRXP_ENEMY_Lorde Supremo Wyrmthalak|r
    >>|cRXP_WARN_Em um canto vazio ao lado de|r |cRXP_ENEMY_Senhor da Guerra Voone|r
    >>|cRXP_WARN_Perto de|r |cRXP_ENEMY_Grão-lorde Omokk|r
    >>|cRXP_WARN_Perto de |cRXP_ENEMY_Urok Uivo-da-ruína|r Pilha de Tributo|r
    .complete 4903,4 --Important Blackrock Documents 1/1
step
    >>Mate |cRXP_ENEMY_Grão-lorde Omokk|r, |cRXP_ENEMY_Senhor da Guerra Voone|r e |cRXP_ENEMY_Lorde Supremo Wyrmthalak|r
    .complete 4903,2 --Highlord Omokk 1/1
    .mob +Highlord Omokk
    .complete 4903,3 --War Master Voone 1/1
    .mob +War Master Voone
    .complete 4903,1 --Overlord Wyrmthalak 1/1
    .mob +Overlord Wyrmthalak
step
    #requires ImportantDocuments
    #completewith next
    .subzone 340 >>Vá para Kargath em Ermos
step
    #requires ImportantDocuments
    .goto Badlands,5.81,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senhor da Guerra Trincador|r
    .turnin 4903 >>Entregue Comando do Senhor da Guerra
    .accept 4941 >>Aceite Sabedoria de Eitrigg
    .target Warlord Goretooth
step
    #completewith next
    .zone Orgrimmar >>Vá para |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,34.27,39.35,10,0
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eitrigg|r, conclua a encenação e depois fale com |cRXP_FRIENDLY_Thrall|r
    .turnin 4941 >>Entregue Sabedoria de Eitrigg
    .accept 4974 >>Aceite Pela Horda!
    .target Eitrigg
    .target Thrall
    .skipgossip
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .subzone 1583,2 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    >>Mate Dilacerar Mão Negra. Saqueie-o pela |cRXP_LOOT_Cabeça|r
    .complete 4974,1 --Head of Rend Blackhand 1/1
    .mob Rend Blackhand
step
    #completewith next
    .zone Orgrimmar >>Vá para |cFFfa9602Orgrimmar|r
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 4974 >>Entregue Pela Horda!
    .accept 6566 >>Aceite O Que o Vento Carrega
    .target Thrall
step
    .goto Orgrimmar,31.74,37.82
    >>Ouça a história de |cRXP_FRIENDLY_Thrall|r
    .complete 6566,1 --Thrall's Tale
    .target Thrall
    .skipgossip
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 6566 >>Entregue O Que o Vento Carrega
    .accept 6567 >>Aceite O Campeão da Horda
    .target Thrall
step
    #completewith next
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Sun Rock Retreat >>Voe para Refúgio da Pedra do Sol
    .target Doras
    .zoneskip Stonetalon Mountains
    .zoneskip Desolace
    .zoneskip Feralas
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrulha do Norte ao Sul através de |cFFfa9602Desolação|r. Seu caminho de patrulha está marcado no mapa. Siga a seta do waypoint para garantir que você cubra todo o seu caminho de patrulha|r
    >>|cRXP_WARN_Ele desaparece quando atinge Os Duplos Colossais em |cFFfa9602Feralas|r. Após um temporizador de 5 minutos ele reaparece na |cFFfa9602Beira de Stonetalon/Desolação|r
    .turnin 6567 >>Entregue O Campeão da Horda
    .accept 6568 >>Aceite O Testamento de Rexxar
    .unitscan Rexxar
step
    #completewith next
    .zone Western Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Ocidentais|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myranda, a Bruxa Velha|r
    .turnin 6568 >>Entregue O Testamento de Rexxar
    .accept 6569 >>Aceite Ilusões de Oculus
    .target Myranda the Hag
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    >>Mate qualquer tipo de |cRXP_ENEMY_Dragonkin|r. Saqueie-os por seus |cRXP_LOOT_Black Dragonspawn Olhos|r
    >>|cRXP_WARN_Apenas os |cRXP_ENEMY_Dragonkin|r em Pico da Rocha Negra Superior podem derrubar os |cRXP_LOOT_Olhos|r
    .complete 6569,1 --Black Dragonspawn Eye 20/20
step
    #completewith next
    .zone Western Plaguelands >>Voe para |cFFfa9602Terras Pestilentas Ocidentais|r
step
    .goto Western Plaguelands,50.79,77.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myranda, a Bruxa Velha|r
    .turnin 6569 >>Entregue Ilusões de Oculus
    .accept 6570 >>Aceite Ardeluta
    .target Myranda the Hag
step
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
step
    #completewith Emberstrife1
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entre na Cova do Brandifúmeo
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Cuidado! Certifique-se de usar o|r |T133608:0|t[Amulet of Draconic Subversão] |cRXP_WARN_ANTES DE se aproximar de |cRXP_ENEMY_Ardeluta|r ou ele pode te MATAR|r
    .use 16787
step
    #label Emberstrife1
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ardeluta|r
    .use 16787 >>|cRXP_WARN_Use o|r |T133608:0|t[Amulet of Draconic Subversão] |cRXP_WARN_para se disfarçar|r
    .turnin 6570 >>Entregue Ardeluta
    .accept 6582 >>Aceite O Teste dos Crânios, Áugure
    .accept 6583 >>Aceite O Teste dos Crânios, Somnus
    .accept 6584 >>Aceite O Teste dos Crânios, Chronalis
    .target Emberstrife
step
    #sticky
    #label SkullofDragons
    >>Mate |cRXP_ENEMY_Áugure|r em |cFFfa9602Hibérnia|r
    >>Mate |cRXP_ENEMY_Somnus|r em |cFFfa9602Pântano das Mágoas|r
    >>Mate |cRXP_ENEMY_Chronalis|r em |cFFfa9602Tanaris|r
    >>Saqueie-os por seus |cRXP_LOOT_Skulls|r
    >>|cRXP_WARN_Suas localizações são marcadas no mapa. É recomendado fazer isso com pelo menos 5 jogadores|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .goto Winterspring,52.91,55.77,0
    .complete 6583,1 --The Skull of Somnus 1/1
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .complete 6584,1 --The Skull of Chronalis 1/1
    .goto Tanaris,64.85,50.52
    .unitscan Scryer
    .unitscan Somnus
    .unitscan Chronalis
step
    #completewith next
    .zone Winterspring >>Voe para |cFFfa9602Hibérnia|r
step
    #completewith next
    .goto Winterspring,57.07,49.97
    .subzone 2245 >>Entre na caverna Mazthoril
step
    .goto Winterspring,52.91,55.77
    >>Mate |cRXP_ENEMY_Áugure|r nos fundos da caverna. Saqueie-o por seu |cRXP_LOOT_Crânio|r
    >>|cRXP_WARN_Cuidado com seu|r |T135848:0|t[Sopro Gélido] |cRXP_WARN_habilidade (spray AoE em sua frente)|r
    .complete 6582,1 --The Skull of Scryer 1/1
    .unitscan Scryer
step
    #completewith next
    .zone Swamp of Sorrows >>Voe para |cFFfa9602Pântano das Mágoas|r
step
    #loop
    .goto Swamp of Sorrows,85.85,52.28,0
    .line Swamp of Sorrows,85.85,52.28,84.66,48.44,80.35,45.41,78.44,50.46,79.44,57.58,77.47,62.39,76.08,66.50,76.25,70.23,82.55,72.08,85.42,63.68,86.68,55.89,85.85,52.28
    .goto Swamp of Sorrows,85.85,52.28,50,0
    .goto Swamp of Sorrows,84.66,48.44,50,0
    .goto Swamp of Sorrows,80.35,45.41,50,0
    .goto Swamp of Sorrows,78.44,50.46,50,0
    .goto Swamp of Sorrows,79.44,57.58,50,0
    .goto Swamp of Sorrows,77.47,62.39,50,0
    .goto Swamp of Sorrows,76.08,66.50,50,0
    .goto Swamp of Sorrows,76.25,70.23,50,0
    .goto Swamp of Sorrows,82.55,72.08,50,0
    .goto Swamp of Sorrows,85.42,63.68,50,0
    .goto Swamp of Sorrows,86.68,55.89,50,0
    >>Mate |cRXP_ENEMY_Somnus|r. Saqueie-o por seu |cRXP_LOOT_Crânio|r
    >>|cRXP_WARN_Cuidado com seu|r |T136007:0|t[Sopro Ácido Corrosivo] |cRXP_WARN_habilidade (spray AoE em sua frente)|r
    >>|cRXP_WARN_Ele patrulha em um pequeno círculo ao sul/leste do lago|r
    .complete 6583,1 --The Skull of Somnus 1/1
    .unitscan Somnus
step
    #completewith next
    .zone Tanaris >>Voe para |cFFfa9602Tanaris|r
step
    #completewith next
    .goto Tanaris,61.55,50.54
    .subzone 1941 >>Vá para as Cavernas do Tempo
step
    .goto Tanaris,64.85,50.52
    >>Mate |cRXP_ENEMY_Chronalis|r. Saqueie-o por seu |cRXP_LOOT_Crânio|r
    >>|cRXP_WARN_Cuidado com seu|r |T135831:0|t[Sopro de Areia] |cRXP_WARN_habilidade (spray AoE em sua frente)|r
    .complete 6584,1 --The Skull of Chronalis 1/1
    .unitscan Chronalis
step
    #requires SkullofDragons
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
step
    #requires SkullofDragons
    #completewith Emberstrife2
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entre na Cova do Brandifúmeo
step
    #requires SkullofDragons
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Cuidado! Certifique-se de usar o|r |T133608:0|t[Amulet of Draconic Subversão] |cRXP_WARN_ANTES DE se aproximar de |cRXP_ENEMY_Ardeluta|r ou ele pode te MATAR|r
    .use 16787
step
    #label Emberstrife2
    #requires SkullofDragons
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ardeluta|r
    .use 16787 >>|cRXP_WARN_Use o|r |T133608:0|t[Amulet of Draconic Subversão] |cRXP_WARN_para se disfarçar|r
    .turnin 6582 >>Entregue O Teste dos Crânios, Áugure
    .turnin 6583 >>Entregue O Teste dos Crânios, Somnus
    .turnin 6584 >>Entregue O Teste dos Crânios, Chronalis
    .accept 6585 >>Aceite O Teste dos Crânios, Axtroz
    .target Emberstrife
step
    #completewith next
    .zone Wetlands >>Voe para |cFFfa9602Pantanal|r
step
    #completewith next
    .goto Wetlands,75.44,46.76
    .subzone 1038 >>Voe para os Portões de Presa do Arrastarão
step
    #loop
    .goto Wetlands,83.47,48.78,0
    .line Wetlands,81.41,48.41,83.47,48.78,85.61,50.89
    .goto Wetlands,81.41,48.41,30,0
    .goto Wetlands,83.47,48.78,30,0
    .goto Wetlands,85.61,50.89,30,0
    >>Mate |cRXP_ENEMY_Axtroz|r. Saqueie-o por seu |cRXP_LOOT_Crânio|r
    >>|cRXP_WARN_Cuidado com seu|r |T135831:0|t[Sopro Flamejante] |cRXP_WARN_habilidade (spray AoE em sua frente)|r
    .complete 6585,1 --The Skull of Axtroz 1/1
    .unitscan Axtroz
step
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
step
    #completewith Emberstrife3
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entre na Cova do Brandifúmeo
step
    #hardcore
    #completewith next
    .cast 19937 >>|cRXP_WARN_Cuidado! Certifique-se de usar o|r |T133608:0|t[Amuleto de Subversão Dracônica] |cRXP_WARN_Antes de se aproximar de |cRXP_ENEMY_Ardeluta|r ou ele pode MATÁ-LO|r
    .use 16787
step
    #label Emberstrife3
    .goto Dustwallow Marsh,56.67,87.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ardeluta|r
    .use 16787 >>|cRXP_WARN_Use o|r |T133608:0|t[Amuleto de Subversão Dracônica] |cRXP_WARN_para se disfarçar|r
    .turnin 6585 >>Entregue O Teste das Caveiras, Axtroz
    .accept 6601 >>Aceite Ascensão...
    .target Emberstrife
step
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
step
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrulha de Norte a Sul por |cFFfa9602Desolação|r. Seu caminho de patrulha está marcado no mapa. Siga a seta para garantir que você cubra todo seu caminho de patrulha|r
    >>|cRXP_WARN_Ele desaparece uma vez que atinge The Twin Colossals em |cFFfa9602Feralas|r. Após 5 minutos, ele reaparece em |cFFfa9602Stonetalon/Desolação|r
    .turnin 6601 >>Entregue Ascensão...
    .accept 6602 >>Aceite Sangue do Campeão Dragão Negro
    .unitscan Rexxar
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    .isQuestTurnedIn 6601
    >>Abate |cRXP_ENEMY_General Drakkisath|r. Saque-o em busca do |cRXP_LOOT_Blood of the Dragão Negro Campeão|r
    .complete 6602,1 --Blood of the Black Dragon Champion 1/1
    .mob General Drakkisath
step
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
step
    .isQuestComplete 6602
    #loop
    .line Desolace,55.50,0.50,53.37,5.77,54.61,10.71,56.20,13.14,60.42,16.17,62.27,19.48,63.38,26.21,62.14,32.17,60.49,37.07,57.27,38.21,53.34,37.51,50.46,42.48,49.55,48.56,49.10,54.18,52.25,59.36,54.52,63.72,55.63,67.41,52.04,71.54,50.53,75.40,47.03,75.15,39.99,78.28,39.79,81.92,41.79,85.27,40.68,89.43,41.44,93.66,41.95,96.04
    .line Feralas,45.47,2.89,45.91,4.75,44.95,7.04,45.03,8.93,45.75,10.64,45.94,12.52,46.43,15.18,46.34,20.94,48.19,23.23
    .goto Desolace,55.50,0.50,60,0
    .goto Desolace,53.37,5.77,60,0
    .goto Desolace,54.61,10.71,60,0
    .goto Desolace,56.20,13.14,60,0
    .goto Desolace,60.42,16.17,60,0
    .goto Desolace,62.27,19.48,60,0
    .goto Desolace,63.38,26.21,60,0
    .goto Desolace,62.14,32.17,60,0
    .goto Desolace,60.49,37.07,60,0
    .goto Desolace,57.27,38.21,60,0
    .goto Desolace,53.34,37.51,60,0
    .goto Desolace,50.46,42.48,60,0
    .goto Desolace,49.55,48.56,60,0
    .goto Desolace,49.10,54.18,60,0
    .goto Desolace,52.25,59.36,60,0
    .goto Desolace,54.52,63.72,60,0
    .goto Desolace,55.63,67.41,60,0
    .goto Desolace,52.04,71.54,60,0
    .goto Desolace,50.53,75.40,60,0
    .goto Desolace,47.03,75.15,60,0
    .goto Desolace,39.99,78.28,60,0
    .goto Desolace,39.79,81.92,60,0
    .goto Desolace,41.79,85.27,60,0
    .goto Desolace,40.68,89.43,60,0
    .goto Desolace,41.44,93.66,60,0
    .goto Desolace,41.95,96.04,60,0
    .goto Feralas,45.47,2.89,60,0
    .goto Feralas,45.91,4.75,60,0
    .goto Feralas,44.95,7.04,60,0
    .goto Feralas,45.03,8.93,60,0
    .goto Feralas,45.75,10.64,60,0
    .goto Feralas,45.94,12.52,60,0
    .goto Feralas,46.43,15.18,60,0
    .goto Feralas,46.34,20.94,60,0
    .goto Feralas,48.19,23.23,60,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rexxar|r
    >>|cRXP_FRIENDLY_Rexxar|r |cRXP_WARN_patrulha de Norte a Sul por |cFFfa9602Desolação|r. Seu caminho de patrulha está marcado no mapa. Siga a seta para garantir que você cubra todo seu caminho de patrulha|r
    >>|cRXP_WARN_Ele desaparece uma vez que atinge The Twin Colossals em |cFFfa9602Feralas|r. Após 5 minutos, ele reaparece em |cFFfa9602Stonetalon/Desolação|r
    .turnin 6602 >>Entregue Sangue do Campeão Dragão Negro
    .unitscan Rexxar

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#subgroup Sintonizações
#group RestedXP Guias de Fim de Jogo
#name Harmonização do Núcleo Derretido

step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lothos Fendespéril|r
    .accept 7848 >>Aceite Harmonização com o Núcleo
    .target Lothos Riftwaker
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entre no Abismo Rocha Negra
    >>|cRXP_WARN_Tenha certeza de que tem um grupo pronto|r
step
    #softcore
    >>Vire à direita antes de entrar em The Lyceum e pegue o |cRXP_LOOT_Fragmento de Núcleo|r no chão, do lado de fora do portal |cFFfa9602Núcleo Derretido|r
    >>|cRXP_WARN_A forma mais rápida de chegar aqui é fazendo o pulo 'Lava - Feitiço - Feitiço - Feitiço'. Isso começa da plataforma de|r |cRXP_ENEMY_Lorde Incendius|r
    --.link >> |cRXP_WARN_Click here for video reference|r
    .complete 7848,1 --Core Fragment 1/1
    --VV TODO: Lava skip video
step
    #hardcore
    >>Vire à direita antes de entrar em The Lyceum e pegue o |cRXP_LOOT_Fragmento de Núcleo|r no chão, do lado de fora do portal |cFFfa9602Núcleo Derretido|r
    .complete 7848,1 --Core Fragment 1/1
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    .goto Eastern Kingdoms,48.41,63.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lothos Fendespéril|r
    .turnin 7848 >>Entregue Harmonização com o Núcleo
    .target Lothos Riftwaker
    .isQuestComplete 7848

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guias de Fim de Jogo
#subgroup Sintonizações
#name Harmonização de Blackwing Lair

step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #hardcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Mate o |cRXP_ENEMY_Intendente do Escudo Marcado|r. Saqueie-o para obter |T133473:0|t[|cRXP_LOOT_Comando do Mão Negra|r]. Use-o para aceitar a missão
    >>|cRXP_WARN_Este é um elite forte de nível 55. Faça isso com um grupo por segurança|r
    >>|cRXP_WARN_Ele fica no corredor à direita do portal da instância do Pico da Rocha Negra|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Aceite Comando da Mão Negra
    .unitscan Scarshield Quartermaster
step
    #softcore
    .goto Eastern Kingdoms,48.94,63.92,10,0
    .goto Eastern Kingdoms,49.01,64.12,10,0
    .goto Eastern Kingdoms,49.12,64.09
    .use 18987 >>Mate o |cRXP_ENEMY_Intendente do Escudo Marcado|r. Saqueie-o para obter |T133473:0|t[|cRXP_LOOT_Comando do Mão Negra|r]. Use-o para aceitar a missão
    >>|cRXP_WARN_Ele fica no corredor à direita do portal da instância do Pico da Rocha Negra|r
    .collect 18987,1,7761 --Blackhand's Command 1/1
    .accept 7761 >>Aceite Comando da Mão Negra
    .unitscan Scarshield Quartermaster
step
    #completewith next
    .goto Eastern Kingdoms,48.95,63.89
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Esta é uma masmorra para 10 jogadores. Você ou alguém do seu grupo deve ter o|r |T133343:0|t[|cRXP_LOOT_Selo da Ascensão|r] |cRXP_WARN_para conseguir entrar no Pico Rocha Negra Superior|r
step
    >>Clique na |cRXP_PICK_Marca de Drakkisath|r na sala final do Pico da Rocha Negra Superior, atrás de |cRXP_ENEMY_General Drakkisath|r
    .turnin 7761 >>Entregue Comando da Mão Negra

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guias de Fim de Jogo
#subgroup Chaves
#name Chave do Pico da Rocha Negra Superior

step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Entre no Pico da Rocha Negra
    >>|cRXP_WARN_Tenha certeza de que tem um grupo pronto|r
step
    >>Mate todos os tipos de inimigos em Blackrock Spire até saquear um |T135725:0|t[|cRXP_LOOT_Selo da Ascensão Sem Adornos|r]
    .collect 12219,1,4742 --Unadorned Seal of Ascension
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acrídeo <Legião do Escudo Marcado>|r
    >>|cRXP_WARN_Ao entrar em Hordemar City no início da masmorra, ele estará localizado em uma plataforma à sua esquerda|r
    .accept 4742 >>Aceite Selo da Ascensão
    .target Scarshield Infiltrator
    .target Vaelan
step
    >>Mate |cRXP_ENEMY_Grão-lorde Omokk|r. Saqueie-o para obter |cRXP_LOOT_Gemstone of Spirestone|r
    >>Mate |cRXP_ENEMY_Senhor da Guerra Voone|r. Saqueie-o para obter |cRXP_LOOT_Gemstone of Smolderthorn|r
    >>Mate |cRXP_ENEMY_Lorde Supremo Wyrmthalak|r. Saqueie-o para obter |cRXP_LOOT_Gemstone of Bloodaxe|r
    >>|cRXP_WARN_As|r |cRXP_LOOT_Gemas|r |cRXP_WARN_têm ~30% de chance de queda. Você muito provavelmente terá que completar múltiplas execuções de LBRS|r
    .complete 4742,1 --Gemstone of Spirestone 1/1
    .target +Highlord Omokk
    .complete 4742,2 --Gemstone of Smolderthorn 1/1
    .target +War Master Voone
    .complete 4742,3 --Gemstone of Bloodaxe 1/1
    .target +Overlord Wyrmthalak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acrídeo <Legião do Escudo Marcado>|r
    >>|cRXP_WARN_Quando você entra em Hordemar City no início da masmorra, ele estará localizado em uma plataforma à sua esquerda|r
    .turnin 4742 >>Entregue Selo da Ascensão
    .accept 4743 >>Aceite Selo da Ascensão
    .target Scarshield Infiltrator
    .target Vaelan
step
    #completewith ForgedSeal
    .use 12339 >>|cRXP_WARN_Abra|r |T132595:0|t[Vaelan's Gift] |cRXP_WARN_para saquear|r |T133276:0|t[|cRXP_LOOT_Selo da Ascensão de Metal Bruto|r] |cRXP_WARN_e|r |T134334:0|t[|cRXP_LOOT_Orbe de Energia Dracônica|r]
    .collect 12323,1,4743,1 --Unforged Seal of Ascension
    .collect 12300,1,4743,1 --Orb of Draconic Energy
step
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
step
    #softcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entre na Cova do Brandifúmeo
    >>|cRXP_WARN_Você precisará de um grupo de no mínimo 3 jogadores para completar esta próxima seção|r
step
    #hardcore
    .goto Dustwallow Marsh,54.37,84.22
    .subzone 2158 >>Entre na Cova do Brandifúmeo
    >>|cRXP_WARN_Você precisará de um grupo de no mínimo 3 jogadores para completar esta próxima seção, incluindo um tanque e um curador para segurança!|r
step
    #completewith next
    .cast 16057 >>|cRXP_WARN_Coloque|r |T133276:0|t[|cRXP_LOOT_Selo da Ascensão Não Forjado|r] |cRXP_WARN_no chão antes de puxar|r |cRXP_ENEMY_Ardeluta|r
    .use 12323
step
    #label ForgedSeal
    .goto Dustwallow Marsh,56.67,87.64
    .use 12300 >>|cRXP_WARN_Ataque|r |cRXP_ENEMY_Ardeluta|r. |cRXP_WARN_Quando ele estiver abaixo de 10% dos pontos de vida, use|r |T134334:0|t[|cRXP_LOOT_Esfera de Energia Dracônica|r] |cRXP_WARN_para ganhar controle de|r |cRXP_ENEMY_Ardeluta|r
    >>|cRXP_WARN_Lance|r |T135824:0|t[Chamas da Revoada Negra] |cRXP_WARN_para forjar o|r |T133276:0|t[|cRXP_LOOT_Selo da Ascensão Não Forjado|r] |cRXP_WARN_que você colocou no chão|r
    >>Quando completo, pegue o |cRXP_PICK_Selo da Ascensão Forjado|r no chão
    .complete 4743,1 --Forged Seal of Ascension
    .mob Emberstrife
step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1583 >>Entre no Pico da Rocha Negra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acrídeo <Legião do Escudo Marcado>|r
    >>|cRXP_WARN_Ao entrar em Hordemar City no início da masmorra, ele estará localizado em uma plataforma à sua esquerda|r
    .turnin 4743 >>Entregue Selo da Ascensão
    .target Scarshield Infiltrator
    .target Vaelan

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Alliance
#group RestedXP Guias de Fim de Jogo
#subgroup Chaves
#name Chave de Scolomântia (A)

step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Vá para a Casa de Leilões em qualquer cidade principal e compre 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
	.zone Ironforge >>Vá para |cFFfa9602Ironforge|r
step
    #loop
    .goto Ironforge,33.4,20.0,0
    .goto Ironforge,33.4,20.0,70,0
    .goto Ironforge,25.6,61.6,70,0
    .goto Ironforge,64.8,77.8,70,0
    .goto Ironforge,70.6,48.0,70,0
    .goto Ironforge,65.0,22.6,70,0
    .goto Ironforge,50.4,10.4,70,0
    .goto Ironforge,32.6,21.0,70,0
    .goto Ironforge,40.8,39.4,70,0
    .goto Ironforge,51.2,56.6,70,0
    .goto Ironforge,55.8,35.2,70,0
    .goto Ironforge,33.0,22.4,70,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mensageiro Desçomalho|r
    >>|cRXP_FRIENDLY_Mensageiro Desçomalho|r |cRXP_WARN_patrulha por todo Ironforge|r
    >>|cRXP_WARN_Esta missão também pode ser aceita em|r |cFFfa9602Stormwind City|r |cRXP_WARN_ou|r |cFFfa9602Darnassus|r
    .acceptmultiple 5091,5090,5066 >>Aceite A Chamado às Armas: The Plaguelands!
    .unitscan Courier Hammerfall --IF
    .unitscan Herald Moonstalker --DARN
    .unitscan Crier Goodman --SW
    .isQuestAvailable 5092
step
    #requires ThoriumBars
    #completewith ClearTheWayPU
    .subzone 3197 >>Voe para Chillwind Camp, nas |cFFfa9602Terras Pestilentas Ocidentais|r
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .turnin 5066 >>Entregue Um Chamado às Armas: As Terras Pestilentas!
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5066
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isOnQuest 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .turnin 5091 >>Entregue Um Chamado às Armas: As Terras Pestilentas!
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #optional
    .isQuestTurnedIn 5091
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    .isOnQuest 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .turnin 5090 >>Entregue Um Chamado às Armas: As Terras Pestilentas!
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    #requires ThoriumBars
    #label ClearTheWayPU
    .isQuestTurnedIn 5090
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    #loop
    .goto Western Plaguelands,49.90,76.54,0
    .goto Western Plaguelands,48.70,80.37,60,0
    .goto Western Plaguelands,49.90,76.54,60,0
    .goto Western Plaguelands,50.88,76.14,60,0
    .goto Western Plaguelands,50.05,80.74,60,0
    >>Mate |cRXP_ENEMY_Skeletal Flayers|r e |cRXP_ENEMY_Slavering Carniçais|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .accept 5098 >>Aceite All Along the Watchtowers
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,1 --Tower One marked
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .turnin 5098 >>Entregue All Along the Watchtowers
    .accept 5533 >>Aceite Scolomântia
    .target Commander Ashlam Valorfist
step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >>Remova a |T135432:0|t[Tocha Sinalizadora]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    .turnin 5533 >>Entregue em Scolomântia
    .accept 5537 >>Aceite Fragmentos de Ossos
    .target Alchemist Arbington
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Mate os |cRXP_ENEMY_Descarnado Executores|r e os |cRXP_ENEMY_Descarnado Acólitos|r. Saqueie-os por seus |cRXP_LOOT_Descarnado Fragmentos|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    .turnin 5537 >>Entregue Fragmentos de Ossos
    .accept 5538 >>Aceite Mold Rhymes With...
    .target Alchemist Arbington
step
    #completewith next
    .subzone 976 >>Viaje para Gadgetzan em |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rugov A. Massoaço|r
    >>|cRXP_WARN_Rodando esta missão requer que você pague 15 Ouro|r
    .turnin 5538 >>Entregue Mold Rhymes With...
    .accept 5801 >>Aceite Fogo Plume Forged
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Se você não comprou antes, vá para a Casa de Leilões em uma cidade maior e compre 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .goto Tanaris,51.006,29.345
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bera Rochamalho|r
    .fly Un'Goro >>Voe para Cratera Un'Goro
    .target Bera Stonehammer
    .zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Vá para o topo da montanha em Fogo Plume Serra
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Use a|r |T134457:0|t[Molde de Chave-mestra] |cRXP_WARN_no poço de lava para criar a|r |cRXP_LOOT_Inacabada Chave-mestra|r
    .complete 5801,1 --Unfinished Skeleton Key (1)
step
    #completewith next
    .subzone 3197 >>Vá para Chillwind Camp em |cFFfa9602Terras Pestilentas Ocidentais|r
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    .turnin 5801 >>Entregue Fogo Plume Forged
    .accept 5803 >>Aceite Araj's Scarab
    .target Alchemist Arbington
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Vá para o centro das Ruínas de Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_é uma Élite forte. Recomenda-se matá-lo em um grupo de pelo menos 3 jogadores|r
    .use 12650 >>|cRXP_WARN_Use um|r |T134961:0|t[Amortecedor Sintonizado] |cRXP_WARN_nele se você tem um|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_é um Élite poderoso. É recomendado matá-lo em um grupo de pelo menos 3 jogadores|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_é uma Élite forte e está cercado por muitos inimigos, elimine-os com cuidado. Recomenda-se matá-lo em um grupo de pelo menos 4 jogadores|r
    .use 12650 >>|cRXP_WARN_Use um|r |T134961:0|t[Amortecedor Sintonizado] |cRXP_WARN_nele se você tiver um|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_é um Élite poderoso e está cercado por muitos inimigos, elimine-os com cuidado. É recomendado matá-lo em um grupo de pelo menos 4 jogadores|r
    .complete 5803,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    .turnin 5803 >>Entregue Araj's Scarab
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    .turnin 5505 >>Entregue A Chave a Scolomântia
    .target Alchemist Arbington

]])



RXPGuides.RegisterGuide([[
#classic
#tbc

<< Horde
#group RestedXP Guias de Fim de Jogo
#subgroup Chaves
#name Chave de Scholomância (H)


step
    #sticky
    #label ThoriumBars
    >>|cRXP_WARN_Vá para a Auction House em qualquer grande cidade e compre 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5801,1 --Thorium Bar x2
step
    #completewith next
    .zone Undercity >>Vá para |cFFfa9602Undercity|r
step
    #loop
    .goto Undercity,67.43,46.15,0
    .goto Undercity,67.43,46.15,50,0
    .goto Undercity,71.23,51.64,50,0
    .goto Undercity,72.99,44.19,50,0
    .goto Undercity,70.91,36.25,50,0
    .goto Undercity,65.84,33.54,50,0
    .goto Undercity,60.90,36.56,50,0
    .goto Undercity,58.89,44.30,50,0
    .goto Undercity,60.98,51.69,50,0
    .goto Undercity,66.07,54.64,50,0
    .goto Undercity,70.81,51.49,50,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Baltazar|r
    .acceptmultiple 5093,5094,5095 >>Aceite A Chamado às Armas: The Plaguelands!
    >>|cRXP_WARN_Esta missão também pode ser aceita em|r |cFFfa9602Orgrimmar|r |cRXP_WARN_ou|r |cFFfa9602Trovão Blefe|r
    .unitscan Warcaller Gorlach --ORG
    .unitscan Harbinger Balthazadd --UC
    .unitscan Bluff Runner Windstrider --TB
    .isQuestAvailable 5096
    --VV TODO: Patrol paths
step
    #requires ThoriumBars
	#completewith ScarletDiversionsPU
	.subzone 152 >>Vá para O Baluarte em |cFFfa9602Tirisfal Glades|r
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5093 >>Entregue A Chamado às Armas: The Plaguelands!
    .accept 5096 >>Aceite Scarlet Diversions
	.target High Executor Derrington
    .isOnQuest 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .accept 5096 >>Aceite Scarlet Diversions
	.target High Executor Derrington
    .isQuestTurnedIn 5093
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5094 >>Entregue A Chamado às Armas: The Plaguelands!
    .accept 5096 >>Aceite Scarlet Diversions
	.target High Executor Derrington
    .isOnQuest 5094
step
    #optional
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Aceite Scarlet Diversions
	.target High Executor Derrington
    .isQuestTurnedIn 5094
step
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5095 >>Entregue A Chamado às Armas: The Plaguelands!
    .accept 5096 >>Aceite Diversões Escarlates
	.target High Executor Derrington
    .isOnQuest 5095
step
	.goto Western Plaguelands,26.55,56.18
	>>Clique na |cRXP_PICK_Caixa de Incendiários|r perto do fogo
	.collect 12814,1,5095,1 --Flame in a Bottle (1)
    .isOnQuest 5095
step
    #label ScarletDiversionsPU
    #requires ThoriumBars
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .accept 5096 >>Aceite Scarlet Diversions
	.target High Executor Derrington
    .isQuestTurnedIn 5095
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Clique na |cRXP_PICK_Tenda de Comando|r, depois use seu |T132484:0|t[Estandarte do Flagelo]
	>>|cRXP_WARN_Estes inimigos são relativamente difíceis e podem atrair um ao outro em cadeia, então tenha cuidado|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5096 >>Entregue Diversões Escarlates
    .accept 5098 >>Aceite Em Todas as Torres de Vigia
	.target High Executor Derrington
step
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,4 --Tower Four marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,3 --Tower Three marked
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,2 --Tower Two marked
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre. Você pode fazer isto sem agredir o Élite |cRXP_ENEMY_Senhor da Guerra Descarnado|r dentro|r
    .complete 5098,1 --Tower One marked
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5098 >>Entregue All Along the Watchtowers
    .accept 838 >>Aceite Scolomântia
	.target High Executor Derrington
 step
    #completewith SkeletalFragments
    .isQuestTurnedIn 5098
    .destroy 12815 >>Remova a |T135432:0|t[Tocha Sinalizadora]
step
 	#era/som
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Dithers|r
    .turnin 838 >>Entregue Scolomântia
    .accept 964 >>Aceite Fragmentos de Ossos
	.target Apothecary Dithers
step
    #label SkeletalFragments
    #loop
	.line Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
	.goto Western Plaguelands,46.40,70.00,60,0
	.goto Western Plaguelands,45.60,72.20,60,0
	.goto Western Plaguelands,42.60,71.40,60,0
	.goto Western Plaguelands,41.60,73.20,60,0
	.goto Western Plaguelands,38.80,71.00,60,0
	.goto Western Plaguelands,38.80,68.20,60,0
	.goto Western Plaguelands,40.40,66.40,60,0
	.goto Western Plaguelands,42.60,70.00,60,0
	.goto Western Plaguelands,43.40,64.40,60,0
	.goto Western Plaguelands,45.80,65.80,60,0
	.goto Western Plaguelands,46.40,70.00,60,0
    >>Mate os |cRXP_ENEMY_Skeletal Executioners|r e os |cRXP_ENEMY_Skeletal Acólitos|r. Saqueie-os para obter seus |cRXP_LOOT_Skeletal Fragmentos|r
    .complete 964,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Dithers|r
    .turnin 964 >>Entregue Fragmentos de Ossos
    .accept 5514 >>Aceite Bolor Rima com...
	.target Apothecary Dithers
step
    #completewith next
    .subzone 976 >>Vá para Gadgetzan em |cFFfa9602Tanaris|r
step
    .goto Tanaris,51.46,28.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rugov A. Massoaço|r
    >>|cRXP_WARN_Rodando nesta missão exige que você pague 15 Ouro|r
    .turnin 5514 >>Entregue Mold Rhymes With...
    .accept 5802 >>Aceite Fogo Plume Forged
    .target Krinkle Goodsteel
step
    >>|cRXP_WARN_Se você não as comprou anteriormente, vá à Auction House em qualquer cidade importante e compre 2|r |T133221:0|t[Thorium Bars]
    .collect 12359,2,5802,1 --Thorium Bar x2
step
    #completewith next
    .goto Silithus,48.69,36.67
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runk|r
    .fly Un'Goro >>Voe para Cratera Un'Goro
	.target Runk Windtamer
	.zoneskip Un'Goro Crater
step
    #completewith next
    .goto Un'Goro Crater,49.62,47.56,100 >>Vá para o topo da montanha em Fogo Plume Serra
step
    .goto Un'Goro Crater,49.28,47.04
    .use 14644 >>|cRXP_WARN_Use o|r |T134457:0|t[Molde de Chave-mestra] |cRXP_WARN_no poço de lava para criar o|r |cRXP_LOOT_Chave-mestra Inacabada|r
    .complete 5802,1 --Unfinished Skeleton Key (1)
step
    #completewith next
	.subzone 152 >>Viaje para o Baluarte em |cFFfa9602Tirisfal Glades|r
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dithers|r
    .turnin 5802 >>Entregue Fogo Plume Forged
    .accept 5804 >>Aceite Araj's Scarab
	.target Apothecary Dithers
step
    #completewith ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28,100 >>Vá para o centro das Ruínas de Andorhal
step
    #softcore
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_É uma élite forte. É recomendável matá-lo em um grupo de pelo menos 3 jogadores|r
    .use 12650 >>|cRXP_WARN_Use um|r |T134961:0|t[Amortecedor Sintonizado] |cRXP_WARN_nele se você tiver um|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #softcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_É uma élite forte. É recomendável matá-lo em um grupo de pelo menos 3 jogadores|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    #hardcore
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_É uma élite forte e está cercada por muitos inimigos, limpe-os cuidadosamente. É recomendável matá-lo em um grupo de pelo menos 4 jogadores|r
    .use 12650 >>|cRXP_WARN_Use um|r |T134961:0|t[Amortecedor Sintonizado] |cRXP_WARN_nele se você tiver um|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
    .itemcount 12650,1 --Attuned Dampener
step
    #hardcore
    #label ArajTheSummoner
    .goto Western Plaguelands,45.60,69.28
    >>Abate |cRXP_ENEMY_Araj, o Evocador|r. Pegue o |cRXP_PICK_Filactério de Araj|r no chão para obter |cRXP_LOOT_Araj's Scarab|r
    >>|cRXP_ENEMY_Araj|r |cRXP_WARN_É uma élite forte e está cercada por muitos inimigos, limpe-os cuidadosamente. É recomendável matá-lo em um grupo de pelo menos 4 jogadores|r
    .complete 5804,1 --Araj's Scarab (1x)
    .mob Araj the Summoner
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dithers|r
    .turnin 5804 >>Entregue Araj's Scarab
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dithers|r
    .turnin 5511 >>Entregue A Chave para Scolomântia
	.target Apothecary Dithers

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guias de Fim de Jogo
#subgroup Chaves
#name Abismo Rocha Negra Chave


step
    #completewith next
    .subzone 254 >>Vá para |cFFfa9602Blackrock Mountain|r
step
    #softcoreserver
    #softcore
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Franclorn Forjífice|r
    >>|cRXP_WARN_Você deve ser|r |T132331:0|t[Fantasma] |cRXP_WARN_para conseguir conversar com|r |cRXP_FRIENDLY_Franclorn Forjífice|r
    >>|cRXP_WARN_Morra de propósito na lava em Blackrock Mountain, de preferência perto da entrada do Núcleo Derretido|r
    .accept 3801 >>Aceite Legado dos Ferros Negros
    .turnin 3801 >>Entregue Legado dos Ferros Negros
    .accept 3802 >>Aceite Legado dos Ferros Negros
    .target Franclorn Forgewright
step
    #hardcoreserver
    #completewith next
    .goto 1415,48.656,64.134
    .cast 417803 >>|cRXP_WARN_Clique no|r |cRXP_PICK_Braseiro de Embersight|r |cRXP_WARN_para obter a|r |T136215:0|t[Visão de Brilhâmbar] |cRXP_WARN_efeito negativo|r
step
    #hardcoreserver
    .goto 1415,48.624,64.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Franclorn Forjífice|r
    >>|cRXP_WARN_Você deve ter o|r |T136215:0|t[Visão de Brilhâmbar] |cRXP_WARN_efeito negativo para vê-lo|r
    .accept 3801 >>Aceite Legado dos Ferros Negros
    .turnin 3801 >>Entregue Legado dos Ferros Negros
    .accept 3802 >>Aceite Legado dos Ferros Negros
    .target Franclorn Forgewright
step
    #softcore
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Ressuscite no seu cadáver e entre em Abismo Rocha Negra
    >>|cRXP_WARN_Tenha certeza de que tem um grupo pronto|r
step
    #hardcoreserver
    #completewith next
    .goto Eastern Kingdoms,48.07,62.42
    .subzone 1584,2 >>Entre no Abismo Rocha Negra
    >>|cRXP_WARN_Tenha certeza de que tem um grupo pronto|r
step
    >>Mate |cRXP_ENEMY_Fineous Forjanegra|r. Saqueie-o para obter o |cRXP_LOOT_Ferrovil|r
    >>|cRXP_WARN_Ele patrulha a pedreira fora da câmara de Lorde Incendius|r
    .complete 3802,1 -- Ironfel (1)
    .target Fineous Darkvire
    .isOnQuest 3802
step
    >>Corra de volta para perto do local acima do Anel da Lei
    >>Clique no |cRXP_PICK_Monumento de Franclorn Forjifícil|r
    .turnin 3802 >>Entregue Legado dos Ferros Negros
    .isQuestComplete 3802

    ]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guias de Fim de Jogo
#subgroup Chaves
#name Martelo do Gládio Cruel Chave

step
    #completewith next
    .zone Feralas >>Viaje para |cFFfa9602Feralas|r
    .subzoneskip 2557
step
    #completewith next
    .goto Kalimdor,43.84,67.41,20 >>Entre na entrada oriental de Martelo do Gládio Cruel
    >>|cRXP_WARN_Tenha certeza de que tem um grupo pronto|r
step
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pusillin|r
    >>|cRXP_WARN_Este é um |cRXP_FRIENDLY_Diabrete|r verde no início da instância. Ele correrá após você falar com ele. Você terá que persegui-lo e falar com ele várias vezes até que se torne hostil na câmara The Escondido Reach|r
    .skipgossip
    .unitscan Pusillin
step
    >>Mate |cRXP_ENEMY_Pusillin|r assim que ele se torna hostil. Saqueie-o para o |T134244:0|t[|cRXP_LOOT_Crescent Chave|r]
    .collect 18249,1 --Crescent Key
    .unitscan Pusillin

]])

RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guias de Fim de Jogo
#name Naxxramas Attunement
#subgroup Sintonizações

step
    >>|cRXP_BUY_Coletar os itens seguintes|r:
    >>Cinco |T134135:0|t[|cRXP_FRIENDLY_Arcane Cristais|r]
    >>Dois |T132880:0|t[|cRXP_PICK_Nexus Cristais|r]
    >>Um |T134122:0|t[|cRXP_FRIENDLY_Righteous Orbe|r]
    >>|cRXP_WARN_Compre-os da casa de leilões se possível|r
    >>|cRXP_WARN_Você precisará deles para entregar a missão que sincroniza você com Naxxramas. Alcançar limiares de reputação mais altos com a Aurora Argêntea faz custar menos materiais e ouro!|r
    .collect 12363,5 --Arcane Crystal (x5)
    .collect 20725,2 --Nexus Crystal (x2)
    .collect 12811,1 --Righteous Orb (x1)
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    >>|cRXP_BUY_Coletar os itens seguintes|r:
    >>Dois |T134135:0|t[|cRXP_FRIENDLY_Arcane Cristais|r]
    >>Um |T132880:0|t[|cRXP_PICK_Nexus Cristal|r]
    >>|cRXP_WARN_Compre-os da casa de leilões se possível|r
    >>|cRXP_WARN_Você precisará deles para entregar a missão que sincroniza você com Naxxramas. Alcançar limiares de reputação mais altos com a Aurora Argêntea faz custar menos materiais e ouro!|r
    .collect 12363,2 --Arcane Crystal (x2)
    .collect 20725,1 --Nexus Crystal (x1)
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #completewith AttuneComplete
    .zone Eastern Plaguelands >>Vá para |cFFfa9602Terras Pestilentas Orientais|r
step
    #optional
    .reputation 529,honored >>Obtenha reputação de Honrado com a Aurora Argêntea
    >>|cRXP_WARN_Triturar |cRXP_ENEMY_Morto-vivo|r inimigos em EPL/WPL ou faça masmorras com seu |T133440:0|t[Ordem da Aurora Argêntea] |cRXP_WARN_equipado para coletar e entregar|r |T133447:0|t[Pedra do Flagelo]
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimaga Ângela Santoro|r
    >>|cRXP_WARN_Sua reputação deve estar Honrada para aceitar esta missão|r
    >>|cRXP_WARN_Você também precisará pagar|r |cRXP_WARN_60 ouro|r |cRXP_WARN_para entregar a missão|r
    .accept 9121 >>Aceite A Cidadela Medonha: Naxxramas
    .turnin 9121 >>Entregue A Cidadela Medonha: Naxxramas
    .target Archmage Angela Dosantos
    .reputation 529,revered,>0,1 --Below Revered AD
    .isQuestAvailable 9121 --The Dread Citadel - Naxxramas
step
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimaga Ângela Santoro|r
    >>|cRXP_WARN_Sua reputação deve estar Venerada para aceitar esta missão|r
    >>|cRXP_WARN_Você também precisará pagar|r |cRXP_WARN_30 ouro|r |cRXP_WARN_para entregar a missão|r
    .accept 9122 >>Aceite A Cidadela Medonha: Naxxramas
    .turnin 9122 >>Entregue A Cidadela Medonha: Naxxramas
    .target Archmage Angela Dosantos
    .reputation 529,exalted,>0,1 --Below Exalted AD
    .reputation 529,revered,<0,1 --Revered AD
    .isQuestAvailable 9122 --The Dread Citadel - Naxxramas
step
    #label AttuneComplete
    .goto Eastern Plaguelands,81.523,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimaga Ângela Santoro|r
    >>|cRXP_WARN_Sua reputação deve estar Exaltada para aceitar esta missão|r
    .accept 9123 >>Aceite A Cidadela Medonha: Naxxramas
    .turnin 9123 >>Entregue A Cidadela Medonha: Naxxramas
    .target Archmage Angela Dosantos
    .reputation 529,exalted,<0,1 --Exalted AD
    .isQuestAvailable 9123 --The Dread Citadel - Naxxramas

]])


RXPGuides.RegisterGuide([[
#classic
#tbc

#group RestedXP Guias de Fim de Jogo
#name Sintonização do Cânion do Demônio Caído
#subgroup Sintonizações
<<sod

step
    #completewith next
    .subzone 2479 >>Vá para Emerald Santuário em |cFFfa9602Selva Maleva|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Emissária Caninegro|r
    .accept 84384 >>Aceite Artimanha Demônioíaca
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >>Voe para |cFFfa9602Hibérnia|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
	.line Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
	.goto Winterspring,64.00,22.60,25,0
	.goto Winterspring,65.60,23.20,25,0
	.goto Winterspring,67.60,22.60,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,63.60,16.20,25,0
	.goto Winterspring,65.60,19.60,25,0
	.goto Winterspring,64.00,20.80,25,0
	.goto Winterspring,64.00,22.60,25,0
    >>Mate os |cRXP_ENEMY_Berserk Owlbeasts|r. Saqueie-os por suas |T237413:0|t[|cRXP_LOOT_Owlbeast Pineal Glands|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .subzone 2479 >>Vá para Emerald Santuário em |cFFfa9602Selva Maleva|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Emissária Caninegro|r
    .turnin 84384 >>Entregue Artimanha Demônioíaca
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket

]])
