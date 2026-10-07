if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-18 Costa Negra
#next 15-20 Redridge
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .turnin 26383 >>Entregue Os Ventos da Mudança << !Worgen
    .turnin 26385 >>Entregue Os Ventos da Mudança << Worgen
    .accept 13518 >>Aceite A Última Onda de Sobreviventes
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .accept 13518 >>Aceite A Última Onda de Sobreviventes
	.target Dentaria Silverglade
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r
    .accept 13522 >>Aceite A Ameaça das Águas
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Mate os |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garralva|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaldyn|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Mate os |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r
    .turnin 13522 >>Entregue A Ameaça das Águas
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dantaria Clarargêntea|r
    .turnin 13518 >>Entregue A Última Onda de Sobreviventes
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Serendia Carvalhora|r |cFFfa9602patrulhando para cima e para baixo as escadas na Estalagem|r
    .accept 13520 >>Aceite A Dádiva dos Mares
	.target Serendia Oakwhisper
step
    .goto 62,50.964,18.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kyteran|r
    .home >>Defina sua Pedra de Retorno em Lor'danel
    .target Innkeeper Kyteran
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r
    .accept 13521 >>Aceite Caixazorra 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Corrupted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Pegue |cRXP_PICK_Encrusted Clams|r embaixo d'água
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Mate os |cRXP_ENEMY_Corrupted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>Clique na |cRXP_PICK_Caixazorra 413|r no chão
    .turnin 13521 >>Entregue Caixazorra 413
    .accept 13527 >>Aceite Gosto Não se Discute
step
    .goto 62,55.1,21.0
    >>Saqueie o |cRXP_FRIENDLY_Ursocardo em Putrefação|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r
    .turnin 13527 >>Entregue Gosto Não se Discute
    .accept 13528 >>Aceite Caixazorra 723
	.target Wizbang Cranktoggle
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Serendia Carvalhora|r |cFFfa9602patrulhando para cima e para baixo as escadas na Estalagem.|r
    .turnin 13520 >>Entregue A Dádiva dos Mares
	.target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irlara Luzalbor|r
    .trainer >>Treine suas magias de classe
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanla Frondarcos|r
    .trainer >>Treine suas magias de classe
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >>Treine suas magias de classe
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >>Treine suas magias de classe
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenral Noctéolas|r
    .trainer >>Treine suas magias de classe
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Lunala|r
    .trainer >>Treine suas magias de classe
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dular|r
    .trainer >>Treine suas magias de classe
    .target Dular
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Mate os |cRXP_ENEMY_Ursos|r. Saqueie-os para obter |cRXP_LOOT_Entranhas de Ursocardo Corrompido|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>Clique na |cRXP_PICK_Caixazorra 723|r no chão
    .turnin 13528 >>Entregue Caixazorra 723
    .accept 13554 >>Aceite Uma Cura no Escuro
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun|r
    .accept 13529 >>Aceite A Raiz da Corrupção
	.target Tharnariun
step
    #completewith GrellsIchor
	>>Mate os |cRXP_ENEMY_Vile Grells|r e os |cRXP_ENEMY_Vile Corrupters|r. Saqueie-os para obter |cRXP_LOOT_Foul Ichor|r e o |T134245:0|t[|cRXP_LOOT_Corruptor's Chave-mestra|r]
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Corruptor's Chave-mestra|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Aceite O Arauto da Boa Sorte
	.mob Vile Grell
	.mob Vile Corruptor
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>Abra as |cRXP_PICK_Cages|r por toda a caverna
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Abate |cRXP_ENEMY_Zenn Cascovil|r
    >>|cRXP_ENEMY_Zenn Cascovil|r |cRXP_WARN_fica no nível inferior da caverna|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    #label GrellsIchor
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>Clique em |cRXP_PICK_Disgusting Workbench|r no fundo da caverna
    .accept 13831 >>Aceite Uma Prescrição Problemática
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
	>>Mate os |cRXP_ENEMY_Vile Grells|r e os |cRXP_ENEMY_Vile Corrupters|r. Saqueie-os para obter |cRXP_LOOT_Foul Ichor|r e o |T134245:0|t[|cRXP_LOOT_Corruptor's Chave-mestra|r]
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Corruptor's Chave-mestra|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Aceite O Arauto da Boa Sorte
	.mob Vile Grell
	.mob Vile Corruptor
step
    #completewith next
    .hs >>Vá para Lor'Danel
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r e |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 13554 >>Entregue Uma Cura no Escuro
	.target +Wizbang Cranktoggle
    .goto 62,51.142,19.658
    .turnin 13557 >>Entregue Uma Prescrição Problemática
    .turnin 13831 >>Entregue Uma Prescrição Problemática
    .turnin 13529 >>Entregue A Raiz da Corrupção
	.target +Tharnariun Treetender
    .goto 62,51.134,19.709
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .target Volcor
    .accept 13564 >>Aceite Companheiro Perdido
    .goto 62,50.943,18.026
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .target Cerellean Whiteclaw
    .accept 13563 >>Aceite Amor Eterno
    .goto 62,50.821,17.884
step
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r |cRXP_WARN_patrulha por toda a Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>Aceite A Última Chama de Bashal'Aran
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arya Lumedouro|r
    .target Arya Autumnlight
    .accept 13561 >>Aceite O Conforto dos Altaneiros
step
    .goto 62,45.958,34.240
    >>Clique em |cRXP_PICK_The Chama Final of Bashal'Aran|r no chão
    .complete 13562,1
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Cursed Highbornes|r e os |cRXP_ENEMY_Writhing Highbornes|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,48.482,36.634
    >>Abate |cRXP_ENEMY_Anaya Correalba|r. Saque-a para obter |cRXP_LOOT_Anaya's Pendant|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>Mate os |cRXP_ENEMY_Cursed Highbornes|r e os |cRXP_ENEMY_Writhing Highbornes|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arya Lumedouro|r
    .target Arya Autumnlight
    .turnin 13561 >>Entregue O Conforto dos Altaneiros
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Karithus|r
    .target Keeper Karithus
    .turnin 13564 >>Entregue Companheiro Perdido
    .accept 13566 >>Aceite Materiais de Ritual
    .accept 13598 >>Aceite Remédios Amargos
step
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Serafina|r
    .target Seraphine
    .accept 13565 >>Aceite Duplamente Expulsas
step
    .goto 62,40.944,38.615
    >>Clique nos |cRXP_PICK_Moonstalkers|r dormindo próximo às árvores para saqueá-los por seus |cRXP_LOOT_Bigode|r
    *|cRXP_WARN_Apenas alguns dos inimigos são neutros e podem ser saqueados|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>Clique em |cRXP_PICK_Mottled Does|r para saqueá-los por seus |cRXP_LOOT_Hair|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>Abate |cRXP_ENEMY_Lady Najaína|r
    .complete 13565,1 --|1/1 Lady Janira slain
    .unitscan Lady Janira
step
#loop
    .goto 62,47.071,41.609,0
    .goto 62,47.429,40.389,0
    .goto 62,48.422,40.225,0
    .goto 62,49.074,39.158,0
    .goto 62,47.071,41.609,30,0
    .goto 62,47.429,40.389,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,49.074,39.158,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,48.422,40.225,30,0
    >>Saque |cRXP_LOOT_Fuming Toadstools|r no chão
    .use 45911 >>Abate |cRXP_ENEMY_Darkscale Batedores|r. |cRXP_WARN_Use a|r |T134413:0|t[Raiz Petrificada] |cRXP_WARN_nos seus cadáveres|r
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>Clique nos |cRXP_PICK_Hungry Thistle Ursos|r bebendo água próximo ao leito do rio para saqueá-los por seus |cRXP_LOOT_Fur|r
    *|cRXP_WARN_Apenas alguns dos inimigos são neutros e podem ser saqueados|r
    .complete 13566,3 --|3/3 Thistle Bear Fur
step
    #requires janira
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Serafina|r
    .target Seraphine
    .turnin 13565 >>Entregue Duplamente Expulsas
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Karithus|r
    .target Keeper Karithus
    .turnin 13566 >>Entregue Materiais de Ritual
    .turnin 13598 >>Entregue Remédios Amargos
    .accept 13569 >>Aceite O Ritual de União
step
    #completewith next
    .goto 62,42.938,39.031
    .aura 64198 >>Clique em |cRXP_PICK_Grovekeeper's Incenso|r no chão
    .skipgossip
step
    .goto 62,43.683,39.926
    .turnin 13567>>Fale com o |cRXP_FRIENDLY_Great Stag Espírito|r
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Karithus|r
    .target Keeper Karithus
    .turnin 13569 >>Entregue O Ritual de União
    .accept 13599 >>Aceite O Retorno de Garratroz
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .isOnQuest 13601
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa Alinya|r
    .target Priestess Alinya
    .turnin 13601 >>Entregue Socorro aos Refugiados
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Selarin|r e |cRXP_FRIENDLY_Corvin Magnalua|r
    .accept 13542 >>Aceite Contra o Vento
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .accept 13543 >>Aceite Martelos São para Quebrar
    .accept 13573 >>Aceite O Retorno de Malfurion
    .goto 62,42.681,45.151
    .target +Corvine Moonrise
step
    #completewith WindmasterTzuTzu
    >>Mate os |cRXP_ENEMY_Frenzied Cyclones|r. Saqueie-os pelas |T236968:0|t[|cRXP_LOOT_Braçadeiras de Ciclone Frenético|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>Mate |cRXP_ENEMY_Domanimbus Juba Agreste|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .mob Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>Mate |cRXP_ENEMY_Senhor Celeste Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .mob Skylord Braax
step
    #label WindmasterTzuTzu
    .goto 62,37.829,42.721
    >>Mate |cRXP_ENEMY_Domanimbus Juba Agreste|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .mob Windmaster Tzu-Tzu
step
    #loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>Mate os |cRXP_ENEMY_Frenzied Cyclones|r. Saqueie-os pelas |T236968:0|t[|cRXP_LOOT_Braçadeiras de Ciclone Frenético|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>|cRXP_WARN_Use the|r |T236968:0|t[Braçadeiras de Ciclone Frenético] |cRXP_WARN_next to the Auberdine moonwell|r
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Selarin|r e |cRXP_FRIENDLY_Corvin Magnalua|r
    .turnin 13542 >>Entregue Contra o Vento
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .turnin 13543 >>Entregue Martelos São para Quebrar
    .goto 62,42.681,45.151
    .target +Corvine Moonrise

--
step
    .goto 62,43.662,53.441
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 13573 >>Entregue O Retorno de Malfurion
    .accept 13575 >>Aceite A Terra Corre no Sangue
    .accept 13577 >>Aceite O Último dos Coruscantes
    .accept 13579 >>Aceite O Protetor de Ameth'Aran
--
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aruum|r
    .target Aroom
    .turnin 13577 >>Entregue O Último dos Coruscantes
    .accept 13578 >>Aceite O Adeus de Aruum
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>Pegue o |cRXP_LOOT_Slain Wildkin Peninha|r no chão
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aruum|r
    .target Aroom
    .turnin 13578 >>Entregue O Adeus de Aruum
    .accept 13582 >>Aceite O Fogo de Eluna
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>Mate o |cRXP_ENEMY_Huruu, o Guardião da Chama|r. Saqueie-o por |cRXP_LOOT_Elune's Tocha|r
    >>|cRXP_ENEMY_Huruu, o Guardião da Chama|r |cRXP_WARN_patrols slightly|r
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aruum|r
    .target Aroom
    .turnin 13582 >>Entregue O Fogo de Eluna
    .accept 13583 >>Aceite O Juramento dos Coruscantes
--
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ancião Pata Castanha|r
    .target Elder Brownpaw
    .turnin 13575 >>Entregue A Terra Corre no Sangue
    .accept 13576 >>Aceite Ajuda Mútua

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>Mate os |cRXP_ENEMY_Unbound Fogo Elementals|r
    >>|cRXP_WARN_Use the|r |T136061:0|t[Reconfortando Totem] |cRXP_WARN_on their corpses|r
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ancião Pata Castanha|r
    .target Elder Brownpaw
    .turnin 13576 >>Entregue Ajuda Mútua
    .accept 13580 >>Aceite Elementais Agitados
step
    #completewith next
    .goto 62,38.77,60.82,25,0
    .goto 62,39.66,62.12,30 >>Vá para o altar no topo da pequena colina
step
    .goto 62,39.66,62.12
    .cast 65361 >>|cRXP_WARN_Use the|r |T135839:0|t[Totem Reconfortante Energizado] |cRXP_WARN_next to the altar then defend it|r
    .use 46546
    .isOnQuest 13580
step
    .goto 62,39.66,62.12
    .use 46546 >>|cRXP_WARN_Defend the|r |T135839:0|t[Totem Reconfortante Energizado] |cRXP_WARN_against the attackers|r
    .complete 13580,1 --|1/1 Ritual of Soothing complete
    .mob Fire Elemental Remnant
    .mob Fire Elemental Rager
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ancião Pata Castanha|r
    .target Elder Brownpaw
    .turnin 13580 >>Entregue Elementais Agitados
    .accept 13581 >>Aceite O Juramento dos Bosquenero
--
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13579 >>Entregue O Protetor de Ameth'Aran
    .accept 13584 >>Aceite Terra em Polvorosa
step
#loop
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>Mate os |cRXP_ENEMY_Enraged Terra Elementals|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13584 >>Entregue Terra em Polvorosa
    .accept 13585 >>Aceite Jura de Proteção
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 13581 >>Entregue O Juramento dos Bosquenero
    .turnin 13583 >>Entregue O Juramento dos Coruscantes
    .turnin 13585 >>Entregue Jura de Proteção
    .accept 13586 >>Aceite Sonho Esmeralda
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >>Vá para a Caverna Quebraterra
    .subzoneskip 4708
step
    .goto 62,49.003,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClique em Portal do Pesadelo e fale com |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13586 >>Entregue Sonho Esmeralda
    .accept 13587 >>Aceite Pesadelo Lúcido
step
    .goto 62,49.06,55.97,40,0
    .goto 62,50.115,55.431
    >>Mate o |cRXP_ENEMY_Guardião Pesadelo|r. Saqueie-o pelo |cRXP_LOOT_Emerald Pergaminho|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.210,56.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13587 >>Entregue Pesadelo Lúcido
    .accept 13940 >>Aceite Deixando os Sonhos para Trás
    .timer 30,Deixando os Sonhos para Trás RP
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 13940 >>Entregue Deixando os Sonhos para Trás
    .accept 13588 >>Aceite O Olho de Todas as Tempestades
step
    .goto 62,43.555,53.701
    >>Fale com |cRXP_FRIENDLY_Thessera|r para tomar o voo, use sua primeira habilidade para matar os |cRXP_ENEMY_Twilight Riders|r e o |cRXP_ENEMY_Portal do Crepúsculo|r no meio
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>Usar a segunda habilidade para pousar o seu Drake
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 13588 >>Entregue O Olho de Todas as Tempestades
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Lor'danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r |cRXP_WARN_patrulha por toda a Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>Entregue A Última Chama de Bashal'Aran
    .accept 13589 >>Aceite Os Invasores Lança Partida
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Serendia Carvalhora|r |cFFfa9602patrulhando para cima e para baixo as escadas na Estalagem.|r
    .turnin 13599 >>Entregue O Retorno de Garratroz
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .target Cerellean Whiteclaw
    .turnin 13563 >>Entregue Amor Eterno
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .target Gorbold Steelhand
    .accept 13560 >>Aceite Um Oceano Não Tão Profundo
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>Clique em |cRXP_PICK_Isca Bot Painel de Controle|r ao lado de Gary
    .target Gary
    >>Usar o robô para matar os Murlocs ao redor dos navios afundados próximos
    .complete 13560,1

step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irlara Luzalbor|r
    .trainer >>Treine suas magias de classe
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanla Frondarcos|r
    .trainer >>Treine suas magias de classe
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >>Treine suas magias de classe
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >>Treine suas magias de classe
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenral Noctéolas|r
    .trainer >>Treine suas magias de classe
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Lunala|r
    .trainer >>Treine suas magias de classe
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dular|r
    .trainer >>Treine suas magias de classe
    .target Dular
step
    #optional
    .maxlevel 18,DarkshoreEnd
step
#requires glynda2
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tenente Moira Brisastral|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>Entregue Os Invasores Lança Partida
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 13504 >>Aceite Os Operários Lança Partida
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .accept 13505 >>Aceite Vestígios dos Altaneiros
    .target Balthule Shadowstrike
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>Mate os |cRXP_ENEMY_Shatterspear Overseers|r. Saqueie-os pelas |T134939:0|t[|cRXP_LOOT_Ordens do Supervisor|r]
    >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_LOOT_Ordens do Supervisor|r] |cRXP_WARN_para iniciar a missão|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>Aceite Motivo de Preocupação

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>Mate |cRXP_ENEMY_Os operários Lança Partida|r
    >>Pegue as |cRXP_LOOT_Highborne Relics|r no chão
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic
    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 13505 >>Entregue Vestígios dos Altaneiros
    .target Balthule Shadowstrike
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 13504 >>Entregue Os Operários Lança Partida
    .accept 13507 >>Aceite Ataque os Atacantes
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tenente Moira Brisastral|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>Entregue Motivo de Preocupação
    .accept 13508 >>Aceite Resposta Rápida
    .turnin 13505 >>Entregue Vestígios dos Altaneiros
    .accept 13509 >>Aceite Suprimentos de Guerra
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>Mate os |cRXP_ENEMY_Horde Enforcers|r e os |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >>|cRXP_WARN_Use the|r |T135433:0|t[Sentinela Tocha] |cRXP_WARN_on the |cRXP_PICK_Shatterspear Armaments|r around the Horda camp|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .target Alanndarian Nightsong
    .turnin 13508 >>Entregue Resposta Rápida
    .accept 13511 >>Aceite Desejo Amargo
step
    .goto 62,64.122,5.336
    >>Mate |cRXP_ENEMY_Rit'ko|r. Saqueie-o para obter a |cRXP_LOOT_Chave da Jaula do Torturador Shatterspear|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.500,5.455
    >>Clique em |cRXP_PICK_Shatterspear Jaula|r
    .target Sentinel Aynasha
    .accept 13510 >>Aceite Bem na Hora!
step
    #label escort1a
    .goto 62,60.21,6.9
    >>|cRXP_WARN_Escolte|r |cRXP_FRIENDLY_Sentinela Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>Mate os |cRXP_ENEMY_Horde Enforcers|r e os |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >>|cRXP_WARN_Use the|r |T135433:0|t[Sentinela Tocha] |cRXP_WARN_on the |cRXP_PICK_Shatterspear Armaments|r around the Horda camp|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 13507 >>Entregue Ataque os Atacantes
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tenente Moira Brisastral|r
    .target Lieutenant Morra Starbreeze
    .turnin 13509 >>Entregue Suprimentos de Guerra
    .turnin 13510 >>Entregue Bem na Hora!
    .turnin 13511 >>Entregue Desejo Amargo
    .accept 13512 >>Aceite Golpes Estratégicos
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .accept 13513 >>Aceite No Limite
    .target Balthule Shadowstrike
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathias Matagreste|r
    .target Mathas Wildwood
    .accept 13844 >>Aceite O Saque de Althalaxx
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >>|cRXP_WARN_Use the|r |T136021:0|t[Lança Dríade] |cRXP_WARN_to kill|r |cRXP_ENEMY_Sheyla Tempestece|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .mob Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>Mate os |cRXP_ENEMY_Shatterspear Xamãs|r. Saqueie-os para obter os |cRXP_LOOT_Shatterspear Amuletos|r
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>Mate |cRXP_ENEMY_Tírio Paçagrado|r no topo da torre
    >>Saqueie o |cRXP_LOOT_Tomo do Narassin|r localizado no andar intermediário da torre
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >>|cRXP_WARN_Use the|r |T136021:0|t[Lança Dríade] |cRXP_WARN_to kill|r |cRXP_ENEMY_Lorenth Trovejada|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathias Matagreste|r
    .target Mathas Wildwood
    .turnin 13844 >>Entregue O Saque de Althalaxx
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>Entregue No Limite
    .target Balthule Shadowstrike
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tenente Moira Brisastral|r
    .turnin 13512 >>Entregue Golpes Estratégicos
    .accept 13590 >>Aceite A Frente de Batalha
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r
    .accept 13514 >>Aceite A Ira dos Anciões
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >>|cRXP_WARN_Monte o|r |cRXP_FRIENDLY_Protetor Vingativo|r
    .target Vengeful Protector
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>|cRXP_WARN_Cast|r |T136025:0|t[Onda de Choque] (1) |cRXP_WARN_to kill|r |cRXP_ENEMY_Shatterspear Trolls|r
    >>|cRXP_WARN_Cast|r |T135734:0|t[Surto Lunar] (2) |cRXP_WARN_to burn Shatterspear buildings|r
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .mob +Shatterspear Champion
    .mob +Shatterspear Priestess
    .mob +Shatterspear Raider
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .isOnQuest 13514
    .exitvehicle >>|cRXP_WARN_Saia do|r |cRXP_FRIENDLY_Protetor Vingativo|r
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Sandrya Luméluna|r
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>Entregue A Frente de Batalha
    .accept 13515 >>Aceite O Fim da Ameaça
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >>Fale com a |cRXP_FRIENDLY_Caçadora Sandrya Luméluna|r para começar o ataque
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>Mate o |cRXP_ENEMY_Jor'kil, o Ranca-Alma|r. Saqueie-o para |T133466:0|t[|cRXP_LOOT_Carta de Grito Infernal|r]
    .use 46318 >>|cRXP_WARN_Use|r |T133466:0|t[|cRXP_LOOT_Carta de Grito Infernal|r] |cRXP_WARN_para iniciar a missão|r
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>Aceite Conexões Perturbadoras
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Sandrya Luméluna|r
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>Entregue O Fim da Ameaça
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r
    .target Kerlonian Evershade
    .turnin 13514 >>Entregue A Ira dos Anciões
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Lor'danel
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .target Gorbold Steelhand
    .turnin 13560 >>Entregue Um Oceano Não Tão Profundo
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Patrulheira Glynda Nal'Shea|r, ela patrulha a área ao redor do poço lunar.
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>Entregue Conexões Perturbadoras
step
    .goto 62,50.129,19.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .target Cerellean Whiteclaw
    .accept 13570 >>Aceite A Lembrança de Auberdine
    .turnin 13570 >>Entregue A Lembrança de Auberdine
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irlara Luzalbor|r
    .trainer >>Treine suas magias de classe
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanla Frondarcos|r
    .trainer >>Treine suas magias de classe
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >>Treine suas magias de classe
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >>Treine suas magias de classe
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kenral Noctéolas|r
    .trainer >>Treine suas magias de classe
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Lunala|r
    .trainer >>Treine suas magias de classe
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dular|r
    .trainer >>Treine suas magias de classe
    .target Dular
step
    #optional
    #label DarkshoreEnd

--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teldira Plumaluna|r
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>Voe para Bosque dos Anciãos
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Foriel Folharga|r
    .target Foriel Broadleaf
    .accept 13525 >>Aceite O Que Está Acontecendo com os Pelursos Bosquenero?
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balren da Garra|r
    .target Balren of the Claw
    .turnin -13902 >>Entregue Os Preparativos para a Ofensiva
    .accept 13892 >>Aceite Não Deixe Rastros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kathrena Fiálgida|r
    .target Kathrena Winterwisp
    .accept 13881 >>Aceite Consumido
step
#questguide
#completewith furbolgs
    >>Mate os |cRXP_ENEMY_Consumed Thistle Ursos|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.031,79.192
    >>|cRXP_WARN_Nade para a |cRXP_PICK_Devoradora Artefato|r debaixo de água|r
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ancião Brolg|r
    .target Elder Brolg
    .turnin 13525 >>Entregue O Que Está Acontecendo com os Pelursos Bosquenero
    .accept 13526 >>Aceite Pata de Urso
step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Pegue as |cRXP_LOOT_Bear's Paws|r no chão
    >>|cRXP_WARN_Parecem pequenas plantas|r
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >>Vá para The Master's Glaive
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >>|cRXP_WARN_Use a|r |T133236:0|t[Estatueta de Pantera] |cRXP_WARN_para se transformar em uma Pantera|r
    .use 46696
step
#questguide
    .goto 62,40.634,84.297
    >>|cRXP_WARN_Vá até o |cRXP_ENEMY_Encarregado Balsoth|r e espere a encenação terminar|r
    >>|cRXP_WARN_Nota: se você levar dano de queda você perderá o buff de Pantera|r
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    .goto 62,45.311,75.131
    >>Clique no popup de missão sob seu minimapa para entregar a missão
    >>|cRXP_WARN_Se você não consegue fazer isso volte e fale com|r |cRXP_FRIENDLY_Balren of the Garra|r
    .turnin 13892 >>Entregue Não Deixe Rastros
    .accept 13948 >>Aceite Redobrando a Espionagem
    .target Balren of the Claw
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >>|cRXP_WARN_Use a|r |T133236:0|t[Estatueta de Pantera] |cRXP_WARN_para se transformar em uma Pantera novamente|r
    >>|cRXP_WARN_Dissimule até a|r |cRXP_ENEMY_Voz da Ruína Trevellion|r |cRXP_WARN_até o topo do andaime. Espere o RP novamente|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Faceless Ones|r pois têm detecção de furtividade|r
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ancião Brolg|r
    .target Elder Brolg
    .turnin 13526 >>Entregue Pata de Urso
    .accept 13544 >>Aceite A Bênção do Urso
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>Mate o |cRXP_ENEMY_Papa-jardas|r. Saque-o pelas |cRXP_LOOT_Tailfeathers|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>Mate os |cRXP_ENEMY_Consumed Thistle Ursos|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >>|cRXP_WARN_Use o|r |T134189:0|t[Urso's Paw Bundle] |cRXP_WARN_perto da|r |cRXP_PICK_Ancient Urso Estátua|r
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balren da Garra|r e |cRXP_FRIENDLY_Larien|r
    .turnin 13948 >>Entregue Redobrando a Espionagem
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    .accept 13896 >>Aceite Conhecimento Revelado
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kathrena Fiálgida|r
    .target Kathrena Winterwisp
    .turnin 13881 >>Entregue Consumido
    .accept 13882 >>Aceite As Sementes da Vida
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r para receber a |cRXP_LOOT_Seed of the Terra|r
    .complete 13882,1
    .skipgossip
    .target Onu
step
#questguide
    #sticky
    #label skyseed
    #loop
    .goto 62,41.860,77.050,0
    .goto 62,44.292,78.937,0
    .goto 62,40.902,79.825,0
    .waypoint 62,41.860,77.050,40,0
    .waypoint 62,44.292,78.937,40,0
    .waypoint 62,40.902,79.825,40,0
    >>|cRXP_WARN_Procure os |cRXP_FRIENDLY_Darkshore Wisps|r voando ao redor. Clique neles assim que se aproximarem do chão|r
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ancião Brolg|r e |cRXP_FRIENDLY_Gren Pelo Rasgado|r
    .turnin 13544 >>Entregue A Bênção do Urso
    .accept 13545 >>Aceite A Purificação dos Aflitos
    .target +Elder Brolg
    .goto 62,43.515,81.018
    .accept 13572 >>Aceite Os Braseiros Flamejade
    .target +Gren Tornfur
    .goto 62,43.576,81.023
step
#questguide
    #loop
    #sticky
    #label braziers
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Clique nos |cRXP_PICK_Jadefire Braziers|r espalhados ao redor do acampamento
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>|cRXP_WARN_Use o|r |T237425:0|t[Ramalhete Abençoado] |cRXP_WARN_em um |cRXP_ENEMY_Pelurso Bosquenero|r, depois mate o |cRXP_ENEMY_Espírito de Corrupção|r |cRXP_WARN_que surge|r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gren Pelo Rasgado|r e o |cRXP_FRIENDLY_Ancião Brolg|r
    .turnin 13572 >>Entregue Os Braseiros Flamejade
    .target +Gren Tornfur
    .goto 62,43.576,81.023
    .turnin 13545 >>Entregue A Purificação dos Aflitos
    .accept 13546 >>Aceite O Profanador
    .target +Elder Brolg
    .goto 62,43.515,81.018
step
#questguide
    .goto 62,46.754,84.038
    >>Mate |cRXP_ENEMY_Zarax, o Profanador|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ancião Brolg|r
    .target Elder Brolg
    .turnin 13546 >>Entregue O Profanador
step
#questguide
#loop
    .goto 62,38.060,79.195,0
    .goto 62,38.645,78.225,0
    .goto 62,37.263,76.834,0
    .goto 62,37.999,74.396,0
    .goto 62,38.060,79.195,20,0
    .goto 62,38.645,78.225,20,0
    .goto 62,37.263,76.834,20,0
    .goto 62,37.999,74.396,20,0
    >>Abra as |cRXP_PICK_Glittering Conchas|r no chão. Pegue-as para obter a |cRXP_LOOT_Seed of the Sea|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Groff|r
    .target Archaeologist Groff
    .turnin 13896 >>Entregue Conhecimento Revelado
    .accept 13893 >>Aceite Soggoth e Kronn
    .accept 13907 >>Aceite Limpando as Ruínas
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo-júnior Ferd|r
    .target Jr. Archaeologist Ferd
    .accept 13912 >>Aceite Os Segredos Engolidos
step
#questguide
    .goto 62,37.695,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    .target Prospector Remtravel
    .accept 13911 >>Aceite O prospector no mundo da lua
    >>|cRXP_WARN_Isso iniciará uma missão de escolta|r
step
#questguide
    #completewith prospector
    #optional
    >>Mate os |cRXP_ENEMY_Greymist Refugees|r e os |cRXP_ENEMY_Oráculo Brumagris|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    >>|cRXP_WARN_Escolte o |cRXP_FRIENDLY_Prospector Trilheiro|r pela Escavação|r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo-júnior Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13911 >>Entregue O prospector no mundo da lua
step
#questguide
#label prospector
    .goto 62,37.023,83.441
    >>Clique no |cRXP_PICK_Mud-Crusted Ancient Disco|r debaixo da água
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>Mate os |cRXP_ENEMY_Greymist Refugees|r e os |cRXP_ENEMY_Oráculo Brumagris|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Groff|r
    .target Archaeologist Groff
    .turnin 13907 >>Entregue Limpando as Ruínas
    .accept 13909 >>Aceite Como uma onda no mar
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo-júnior Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13912 >>Entregue Os Segredos Engolidos
    .accept 13918 >>Aceite O Terminal dos Titãs
step
#questguide
#completewith next
    >>Pegue os |cRXP_PICK_Floating Brumagris Destroços|r ao longo da costa
    .complete 13909,1
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>|cRXP_WARN_Use o|r |T134519:0|t[Enterrado Artefato Detector] |cRXP_WARN_para revelar os |cRXP_PICK_Buried Destroços|r ao longo da costa. Pegue-os para obter os|r |cRXP_LOOT_Fragmento de Dispositivo Antigo|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>Pegue os |cRXP_PICK_Floating Brumagris Destroços|r ao longo da costa
    .complete 13909,1
step
#questguide
    .use 46702 >>|cRXP_WARN_Use o|r |T132997:0|t[Fragmento de Dispositivo Antigo] |cRXP_WARN_para combiná-los no|r |cRXP_LOOT_Dispositivo Antigo com Gavetas|r
    .complete 13918,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Groff|r e o |cRXP_FRIENDLY_Arqueólogo-júnior Ferd|r
    .turnin 13909 >>Entregue Como uma onda no mar
    .accept 13910 >>Aceite Um Novo Lar
    .target +Archaeologist Groff
    .goto 62,37.645,82.832
    .turnin 13918 >>Entregue O Terminal dos Titãs
    .target +Jr. Archaeologist Ferd
    .goto 62,37.747,82.932
step
#questguide
    .goto 62,35.905,81.942
    .use 46385 >>|cRXP_WARN_Use o|r |T132281:0|t[Marvelous Mobile Murloc Manor Maker] |cRXP_WARN_ao lado do|r |cRXP_PICK_Brumagris Local de Construção Murloc|r
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Groff|r
    .target Archaeologist Groff
    .turnin 13910 >>Entregue Um Novo Lar
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larien|r
    .target Larien
    .turnin 13893 >>Entregue Soggoth e Kronn
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kathrena Fiálgida|r
    .target Kathrena Winterwisp
    .turnin 13882 >>Entregue As Sementes da Vida
    .accept 13925 >>Aceite Um Pingo de Prevenção
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .target Onu
    .accept 13895 >>Aceite O Sono dos Ancientes
step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aros|r
    .target Aros
    .turnin 13895 >>Entregue O Sono dos Ancientes
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Assassino Skamanegra|r
    .target Darkscale Assassin
    .accept 13953 >>Aceite Há Nagas entre Nós
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balren da Garra|r e |cRXP_FRIENDLY_Felros|r
    .turnin 13953 >>Entregue Há Nagas entre Nós
    .accept 13899 >>Aceite O Senhor da Guerra dos Skamanegra
    .target +Balren of the Claw
    .goto 62,45.303,75.129
    .accept 13898 >>Aceite A Maré se Vira contra Nós
    .target +Felros
    .goto 62,45.352,75.115
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .use 46363 >>|cRXP_WARN_Use o|r |T133749:0|t[Broto Vivificante] |cRXP_WARN_em um|cRXP_ENEMY_ Cervo-de-cauda-branca|r, |cRXP_ENEMY_Ursocardo Grisalho|r, |cRXP_ENEMY_Matriarca Espreitaluna|r ou|r |cRXP_ENEMY_Espreitaluna Macho|r
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target Moonstalker Matriarch
    .target Moonstalker Sire
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kathrena Fiálgida|r
    .target Kathrena Winterwisp
    .turnin 13925 >>Entregue Um Pingo de Prevenção
    .accept 13885 >>Aceite Em Defesa da Costa Negra
step
#questguide
#completewith next
    .goto 62,44.474,75.350
    .vehicle >>|cRXP_WARN_Conversar|cRXP_FRIENDLY_ com |rOrseus|r para montar um|cRXP_FRIENDLY_ Hipogrifo|r
    .skipgossip
step
#questguide
    >>|cRXP_WARN_Cast|r |T136065:0|t[Proteger Animal Selvagem] (1) |cRXP_WARN_em|cRXP_ENEMY_ Grizzled Thistle Ursos|r, |cRXP_ENEMY_Moonstalkers|r e|r |cRXP_ENEMY_Whitetail Cervo|r
    .complete 13885,1 -- Grizzled Thistle Bear Protected (8)
    .target +Grizzled Thistle Bear
    .complete 13885,2 -- Moonstalker Protected (8)
    .target +Moonstalker
    .complete 13885,3 -- Whitetail Deer Protected (8)
    .target +Whitetail Deer
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kathrena Fiálgida|r
    .target Kathrena Winterwisp
    .turnin 13885 >>Entregue Em Defesa da Costa Negra
    .accept 13891 >>Aceite O Devorador da Costa Negra
step
#questguide
    #completewith next
    .goto 62,45.031,79.192
    .cast 65207 >>|cRXP_WARN_Use o|r |T133749:0|t[Broto Vivificante] |cRXP_WARN_no|cRXP_PICK_ Artefato Devorador|r submerso para invocar|r |cRXP_ENEMY_Yoth'al, o Devorador|r
    .timer 10,O Devorador da Costa Negra RP
    .use 46370
step
#questguide
    .goto 62,45.031,79.192
    .use 46370 >>Abate |cRXP_ENEMY_Yoth'al, o Devorador|r
    .complete 13891,1
    .mob Yoth'al the Devourer
step
#questguide
    #completewith AzsharaOffering
    >>Abate |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,33.43,83.65,50,0
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>Abate |cRXP_ENEMY_Senhor da Guerra Coléricus|r
    >>Clique no cadáver |cRXP_FRIENDLY_Senhor da Guerra Wrathspines|r depois
    .mob Warlord Wrathspine
    .turnin 13899 >>Entregue O Senhor da Guerra dos Skamanegra
    .accept 13900 >>Aceite A Oferenda a Azshara
step
#questguide
    #label AzsharaOffering
    .goto 62,32.874,84.131
    >>|cRXP_WARN_Sair|r da caverna e vá para o terraço acima da entrada
    >>Abate as |cRXP_ENEMY_Darkscale Priestesses|r
    .complete 13900,1 --|1/1 Offering to Azshara prevented
    .timer 64,A Oferenda a Azshara RP
    .mob Darkscale Priestess
step
#questguide
#completewith next
    +Espere|cRXP_WARN_ a encenação com |cRXP_ENEMY_Rainha Azshara|r e aguarde por |cRXP_FRIENDLY_Malfurion Tempesfúria|r chegar|r
step
#questguide
    .goto 62,32.796,84.294
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .turnin 13900 >>Entregue A Oferenda a Azshara
    .accept 13897 >>Aceite A Batalha pela Costa Negra
    .target Malfurion Stormrage
step
#questguide
    .goto 62,32.874,84.131
    >>Abate |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
#completewith next
    .cast 80230 >>|cRXP_WARN_Viagem para o Gládio do Mestre e use o|r |T237377:0|t[Trompa dos Anciãos]
    .use 58365
step
#questguide
    .goto 62,40.552,83.946
    .use 58365 >>Abate |cRXP_ENEMY_Avatar de Soggoth|r
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balren da Garra|r
    .turnin 13897 >>Entregue A Batalha pela Costa Negra
    --.accept 26408 >> Accept Ashes in Ashenvale
    .target Balren of the Claw
    .goto 62,45.305,75.134
step
#questguide
    .goto 62,45.352,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Entregue A Maré se Vira contra Nós
    .target Felros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kathrena Fiálgida|r
    .target Kathrena Winterwisp
    .turnin 13891 >>Entregue O Devorador da Costa Negra
step
#questguide
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Lor'danel
]])
