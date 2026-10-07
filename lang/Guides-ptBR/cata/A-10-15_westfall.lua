if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-15 Cerro Oeste
#next 15-20 Redridge
#defaultfor None
<<Alliance

step
    #completewith WestfallEntry
    .zone 52 >>Viaje até Cerro Oeste
step
    .isOnQuest 26378
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Horatio Laine|r
    .turnin 26378 >>Entregue O Chamado ao Heroísmo: Cerro Oeste!
    .accept 26209 >>Aceite Olho Vivo e Faro Fino
	.target Lieutenant Horatio Laine
step
    #label WestfallEntry
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Horatio Laine|r
    .accept 26209 >>Aceite Olho Vivo e Faro Fino
	.target Lieutenant Horatio Laine
step
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>Fale com os |cRXP_FRIENDLY_Homeless Objetos de TBC Citizens|r, os |cRXP_FRIENDLY_West Plains Drifters|r e os |cRXP_FRIENDLY_Transients|r
    >>|cRXP_WARN_Você deve pagá-los para receber as dicas!|r
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 2
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Horatio Laine|r
    .turnin 26209 >>Entregue Olho Vivo e Faro Fino
    .accept 26213 >>Aceite De Olho no Lance: O Clã Pata Molhada
    .accept 26214 >>Aceite De Olho no Lance: Murlocs
	.target Lieutenant Horatio Laine
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Batedores|r e os |cRXP_ENEMY_Riverpaw Gnolls|r. Saqueie-os pela |cRXP_LOOT_Pista de Gnoll Pata Molhada|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    #loop
    .goto 52,55.51,9.11,0
    .goto 52,56.83,10.35,40,0
    .goto 52,55.82,7.95,40,0
    .goto 52,55.51,9.11,40,0
    .goto 52,53.91,9.68,40,0
    .goto 52,52.37,8.88,40,0
    .goto 52,53.42,11.57,40,0
    .goto 52,56.03,10.85,40,0
    >>Mate os |cRXP_ENEMY_Murloc Minor Oracles|r, os |cRXP_ENEMY_Murloc Coastrunners|r e os |cRXP_ENEMY_Murloc Raiders|r. Saqueie-os para obter |cRXP_LOOT_Murloc Clue|r
    .complete 26214,1 --1/1 Murloc Clue
	.mob Murloc Minor Oracle
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    .goto 52,56.46,13.26,0
    .waypoint 52,58.16,10.71,40,0
    .waypoint 52,57.17,15.12,40,0
    .waypoint 52,51.38,15.89,40,0
    .waypoint 52,50.68,14.77,40,0
    .waypoint 52,56.46,13.26,40,0
    >>Mate os |cRXP_ENEMY_Riverpaw Batedores|r e os |cRXP_ENEMY_Riverpaw Gnolls|r. Saqueie-os pela |cRXP_LOOT_Pista de Gnoll Pata Molhada|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26213 >>Entregue De Olho no Lance: O Clã Pata Molhada
    .turnin 26214 >>Entregue De Olho no Lance: Murlocs
    .accept 26215 >>Aceite Conheça o Lu "Dois Sapatos"
step
    .goto 1436/0,1278.700,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lu "Dois Sapatos"|r
    .target Two-Shoed Lou
    .turnin 26215 >>Entregue Conheça o Lu "Dois Sapatos"
    .accept 26228 >>Aceite Cada um no seu Caixote
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jimbo Joanez, o Vela|r
    .target Jimb "Candles" McHannigan
    .accept 26229 >>Aceite "Pego Vela Sim!"
step
    .goto 1436/0,1282.800,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mama Celeste|r
    .target Mama Celeste
    .accept 26230 >>Aceite Banquete de Rei
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Coyotes|r. Saqueie-os pelas |cRXP_LOOT_Caudas|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #loop
    .goto 52,51.5,19.8,40,0
    .goto 52,52.3,21.8,40,0
    .goto 52,50.5,22.8,40,0
    .goto 52,50.2,19.8,40,0
    >>Pegue o |cRXP_LOOT_Fresh Dirt|r no chão
    .complete 26230,2 --|Fresh Dirt: 5/5
step
    #loop
    .goto 52,51.6,17.8,50,0
    .goto 52,53.8,20.8,50,0
    .goto 52,50.0,22.4,50,0
    .goto 52,47.0,20.4,50,0
    .goto 52,48.6,16.2,50,0
    >>Mate os |cRXP_ENEMY_Coyotes|r. Saqueie-os pelas |cRXP_LOOT_Caudas|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #completewith BackOfMine
    .goto 52,53.24,92.20 >>Vá para Jangolode Mina
step
    #completewith BackOfMine
    >>Mate os |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    #completewith BackOfMine
    .goto 52,46.405,19.289
    .cast 79262 >>|cRXP_WARN_Usar|r |T132762:0|t[Velha Casa do Lu "Dois Sapatos"] |cRXP_WARN_no fundo da Jangolode Mina|r
    .use 57761
step
    #label BackOfMine
    .goto 52,46.405,19.289
    .complete 26228,1
    .use 57761 >>|cRXP_WARN_Espere a sequência de RP terminar|r
step
    #loop
    .goto 52,53.24,92.50,0
    .goto 52,46.40,19.28,50,0
    >>Mate os |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jimbo Joanez, o Vela|r
    .target Jimb "Candles" McHannigan
    .turnin 26229 >>Entregue "Pego Vela Sim!"
step
    .goto 1436/0,1278.800,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lu "Dois Sapatos"|r
    .target Two-Shoed Lou
    .turnin 26228 >>Entregue Cada um no seu Caixote
    .accept 26232 >>Aceite As Últimas Palavras do Lu
step
    .goto 1436/0,1282.700,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mama Celeste|r
    .target Mama Celeste
    .turnin 26230 >>Entregue Banquete de Rei
step
    .goto 1436/0,1334.000,-9861.601
    >>|cRXP_WARN_Vá para os |cRXP_ENEMY_Thugs|r atrás da fazenda. Espere a encenação terminar, depois mate-os|r
    .complete 26232,1 --|Eavesdrop on Thugs.: 1/1
    .mob Thug
step
    .goto 1436/0,1276.100,-9855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26232 >>Entregue As Últimas Palavras do Lu
    .accept 26236 >>Aceite Aperto nos Saldanha
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .target Farmer Saldean
    .turnin 26236 >>Entregue Aperto nos Saldanha
    .accept 26237 >>Aceite Tempos Difíceis
step
    .goto 1436/0,1042.100,-10112.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .accept 26241 >>Aceite Ensopado de Cerro Oeste
step
    #completewith next
    >>Saque o |cRXP_LOOT_Okra|r no chão
    .complete 26241,1 --|Okra: 6/6
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Mate os |cRXP_ENEMY_Harvest Watchers|r. Saqueie-os para obter o |T133862:0|t[|cRXP_LOOT_Coração de Guarda-colheitas|r]
    .use 57935 >>|cRXP_WARN_Use o|r |T133862:0|t[|cRXP_LOOT_Coração de Guarda-colheitas|r] |cRXP_WARN_para iniciar a missão|r
    .collect 57935,1,26252,1 -- Harvest Watcher Heart (1)
    .accept 26252 >>Aceite O guarda tem coração
    .complete 26237,1 --|Harvest Watcher slain: 10/10
    .mob Harvest Watcher
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Saque o |cRXP_LOOT_Okra|r no chão
    .complete 26241,1 --|Okra: 6/6
step
    .goto 1436/0,1055.200,-10128.700
    .accept 26252 >>Aceite O guarda tem coração
    .turnin 26237 >>Entregue Tempos difíceis
    .turnin 26252 >>Entregue O guarda tem coração
    .accept 26257 >>Aceite Está vivo!
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Goretusks|r. Saque-os para obter os |cRXP_LOOT_Flanks|r
    >>Mate os |cRXP_ENEMY_Young Fleshrippers|r. Saque-os para obter o |cRXP_LOOT_Stringy Ripa-carne Carne|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1283.100,-10164.700
    .use 57954 >>|cRXP_WARN_Use o|r |T133862:0|t[Coração de Guarda-colheitas] |cRXP_WARN_em um |cRXP_ENEMY_Golem Colheiteiro em Curto-circuito|r para tomar controle dele|r
    .complete 26257,1 --|Overloaded Harvest Golem enabled: 1/1
    .target Overloaded Harvest Golem
step
    .goto 1436/0,1460.500,-10221.601
    >>Mate os |cRXP_ENEMY_Energized Colher Reapers|r
    .complete 26257,2 --|Energized Harvest Reaper slain: 25/25
    .mob Energized Harvest Reaper
step
    .isOnQuest 26257
    .exitvehicle >>|cRXP_WARN_Saia do|r |cRXP_ENEMY_Golem Colheiteiro em Curto-circuito|r
step
    #loop
    .goto 52,41.4,37.4,60,0
    .goto 52,44.6,40.8,60,0
    .goto 52,47.0,46.0,60,0
    .goto 52,51.2,31.2,60,0
    >>Mate os |cRXP_ENEMY_Goretusks|r. Saque-os para obter os |cRXP_LOOT_Flanks|r
    >>Mate os |cRXP_ENEMY_Young Fleshrippers|r. Saque-os para obter o |cRXP_LOOT_Stringy Ripa-carne Carne|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1042.100,-10112.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .turnin 26241 >>Entregue Ensopado de Cerro Oeste
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .target Farmer Saldean
    .turnin 26257 >>Entregue Está vivo!
    .accept 26270 >>Aceite Agradecemos a gentileza
step
    .goto 1436/0,1040.900,-10110.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    .target Salma Saldean
    .turnin 26270 >>Entregue Agradecemos a gentileza
    .accept 26266 >>Aceite Esperança para o povo
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Esperança Saldanha|r
    .target Hope Saldean
    .turnin 26266 >>Entregue Esperança para o povo
    .accept 26271 >>Aceite Saco vazio não fica em pé
step
    .goto 1436/0,1042.800,-10504.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Batedor Galiaan|r
    .target Scout Galiaan
    .accept 26371 >>Aceite A lenda do capitão Calvino
step
    .goto 1436/0,1040.600,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
    .target Captain Danuvin
    .accept 26287 >>Aceite A Brigada de Cerro Oeste
step
    .goto 1436/0,1045.200,-10508.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Miguel Mantoforte|r
    .target Marshal Gryan Stoutmantle
    .accept 26286 >>Aceite Em defesa de Cerro Oeste
step
    #loop
    .goto 52,54.6,44.6,50,0
    .goto 52,55.0,50.6,50,0
    .goto 52,52.2,50.8,50,0
    >>Mate os |cRXP_ENEMY_Riverpaw Brutes|r, os |cRXP_ENEMY_Riverpaw Bandits|r e os |cRXP_ENEMY_Riverpaw Herbalists|r. Saque-os para obter os |cRXP_LOOT_Gnoll Ordens de Ataque|r
    .complete 26287,1 --|Attacking Riverpaw Gnoll slain: 12/12
    .complete 26286,1 --|Gnoll Attack Orders: 1/1
    .mob Riverpaw Brute
    .mob Riverpaw Bandit
    .mob Riverpaw Herbalist
step
    #loop
    .goto 52,56.91,57.72,20,0
    .goto 52,53.94,57.06,20,0
    .goto 52,52.20,55.75,20,0
    .use 57991 >>|cRXP_WARN_Use o|r |T237329:0|t[Ensopado de Cerro Oeste] |cRXP_WARN_ao lado dos |cRXP_FRIENDLY_Homeless|r ao redor de Sentinela Hill|r
    .complete 26271,1 --|Westfall Homeless fed: 20/20
    .target Homeless Stormwind Citizen
    .target West Plains Drifter
    .target Small-time Hustler
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
    .target Captain Danuvin
    .turnin 26287 >>Entregue A Brigada de Cerro Oeste
    .accept 26288 >>Aceite Jango Pintalgas
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Esperança Saldanha|r
    .target Hope Saldean
    .turnin 26271 >>Entregue Saco vazio não fica em pé
step
    .goto 1436/0,1045.000,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Miguel Mantoforte|r
    .target Marshal Gryan Stoutmantle
    .turnin 26286 >>Entregue Em defesa de Cerro Oeste
    .accept 26289 >>Aceite Encontre a agente Marta Hari
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
    .target Innkeeper Heather
    .goto 1436/0,1166.400,-10653.200
    .home >>Defina sua Pedra de Retorno em Colina Sentinela
    .subzoneskip 108,1
step
    >>Mate o |cRXP_ENEMY_Jango Pintalgas|r
    >>Mate os |cRXP_ENEMY_Riverpaw Mystics|r
    >>Mate os |cRXP_ENEMY_Riverpaw Taskmasters|r
    .complete 26288,3 --|Jango Spothide slain: 1/1
    .mob +Jango Spothide
    .goto 52,62.255,76.449
    .complete 26288,1 --|Riverpaw Mystic slain: 5/5
    .mob +Riverpaw Mystic
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
    .complete 26288,2 --|Riverpaw Taskmaster slain: 5/5
    .mob +Riverpaw Taskmaster
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    .target Agent Kearnen
    .turnin 26289 >>Entregue Encontre a Agente Marta Hari
    .accept 26290 >>Aceite Os Segredos da Torre
step
    #completewith next
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .subzone 5289 >>Entre em Mortwake's Torre
step
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .cast 79528 >>|cRXP_WARN_Use a|r |T134724:0|t[Poção de Esconderijo] |cRXP_WARN_enquanto dentro de Mortwake's Torre|r
    .use 58112 >>|cRXP_WARN_Corra passando pelo |cRXP_ENEMY_Mercenário|r na frente da torre. a |cRXP_FRIENDLY_Agente Marta Hari|r os atacará assim que você entrar em combate com eles|r
step
    .goto 52,70.543,74.060
    >>|cRXP_WARN_Cabeça para o topo da torre e aguarde a encenação|r
    .complete 26290,1
step
    #completewith next
    +|cRXP_WARN_Sair de Mortwake's Torre|r
    .subzoneskip 5289,1
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    .target Agent Kearnen
    .turnin 26290 >>Entregue Os Segredos da Torre
    .accept 26291 >>Aceite Problemas no Arroio da Lua
step
    #completewith next
    .hs >>Vá para Sentinela Hill
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.300,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Miguel Mantoforte|r
    .target Marshal Gryan Stoutmantle
    .turnin 26291 >>Entregue Problemas no Arroio da Lua
    .accept 26292 >>Aceite Siga para o Arroio da Lua!
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Danuvin|r
    .target Captain Danuvin
    .turnin 26288 >>Entregue Jango Pintalgas
step
    .goto 1436/0,1543.000,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Alberto|r
    .target Captain Alpert
    .turnin 26292 >>Entregue Siga para o Arroio da Lua!
    .accept 26295 >>Aceite Propaganda
step
    #completewith MoonbrookThugs
    >>Saque o |cRXP_LOOT_Propaganda Misteriosa|r na parede
    >>Saque o |cRXP_LOOT_Panfleto Informativo|r no barril
    >>Saque o |cRXP_LOOT_Moonbrook Times|r no chão
    >>Saque o |cRXP_LOOT_Diário Segredo|r escadas acima na casa
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Abate os |cRXP_ENEMY_Moonbrook Thugs|r. Saque-os por |T237277:0|t[|cRXP_LOOT_Bandana Vermelha|r]
    .use 58117 >>|cRXP_WARN_Use a|r |T237277:0|t[|cRXP_LOOT_Bandana Vermelha|r] |cRXP_WARN_para iniciar a missão|r
    .collect 58117,1,26296,1 -- Red Bandana (1)
    .disablecheckbox
    .accept 26296 >>Aceite Coleta de Provas
    .mob Moonbrook Thug
step
    #label MoonbrookThugs
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Abate os |cRXP_ENEMY_Moonbrook Thugs|r. Saque-os por |cRXP_LOOT_Bandana Vermelha|r
    .complete 26296,1 -- Red Bandana (6)
    .mob Moonbrook Thug
step
    >>Saque o |cRXP_LOOT_Propaganda Misteriosa|r na parede
    >>Saque o |cRXP_LOOT_Panfleto Informativo|r no barril
    >>Saque o |cRXP_LOOT_Moonbrook Times|r no chão
    >>Saque o |cRXP_LOOT_Diário Segredo|r escadas acima na casa
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Alberto|r
    .target Captain Alpert
    .turnin 26296 >>Entregue Coleta de Provas
    .turnin 26295 >>Entregue Propaganda
    .accept 26297 >>Aceite O Alvorecer de um Novo Dia
step
    .goto 1436/0,1484.400,-11020.000
    >>|cRXP_WARN_Cabeça para o centro de Moonbrook e aguarde a encenação|r
    .complete 26297,1 --|Information from Moonbrook Rally gathered: 1/1
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Alberto|r
    .target Captain Alpert
    .turnin 26297 >>Entregue O Alvorecer de um Novo Dia
    .accept 26319 >>Aceite Segredos Revelados
step
    .goto 1436/0,1512.500,-10917.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorálius, o Sábio|r
    .target Thoralius the Wise
    .turnin 26319 >>Entregue Segredos Revelados
    .accept 26320 >>Aceite Visão do Passado
step
    #completewith next
    .goto 1415,40.85,81.98,15,0
    .goto 1415,40.92,81.99,15,0
    .goto 1415,40.90,82.18,10,0
    .goto 1415,40.77,82.58,15,0
    .goto 1415,40.48,82.44,5 >>Entre em Minas Mortas e entre na instância
step
    .isOnQuest 26320
    .cast 79586 >>|cRXP_WARN_Use o|r [Incensório] |cRXP_WARN_enquanto dentro da instância de Minas Mortas|r
    .timer 155,Visão do Passado RP
    .use 58147
step
    .use 58147 >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 26320,1 -- Vision of the Past uncovered 1/1
step
    #completewith next
    .hs >>Vá para Sentinela Hill
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.100,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Miguel Mantoforte|r
    .target Marshal Gryan Stoutmantle
    .turnin 26320 >>Entregue Visão do Passado
    --.accept 26322 >>Accept Rise of the Brotherhood
    --.timer 105,Rise of the Brotherhood RP
step << skip -- quest isn't needed for loremaster
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 26322,1 -- Rise of the Brotherhood witnessed 1/1
step
    .goto 1436/0,2110.100,-10514.500
    >>Abate os |cRXP_ENEMY_Murlocs|r ao longo da costa. Saqueie-os por |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro do Capitão Albernaz|r]
    .use 1357 >>|cRXP_WARN_Use|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro do Capitão Albernaz|r] |cRXP_WARN_para começar a missão|r
    .collect 1357,1,26353,1 -- Captain Sanders' Treasure Map (1)
    .accept 26353 >>Aceite O Tesouro Escondido do Capitão Albernaz
    .mob Murloc Hunter
    .mob Murloc Warrior
step
    .goto 1436/0,2110.100,-10514.500
    >>Clique no |cRXP_PICK_Captain's Objetos de TBC|r no chão
    .turnin 26353 >>Entregue O Tesouro Escondido do Capitão Albernaz
    .accept 26354 >>Aceite O Tesouro Escondido do Capitão Albernaz
step
    .goto 1436/0,1598.700,-10514.800
    >>Clique no |cRXP_PICK_Broken Barril|r no chão
    .turnin 26354 >>Entregue O Tesouro Escondido do Capitão Albernaz
    .accept 26355 >>Aceite O Tesouro Escondido do Capitão Albernaz
step
    .goto 1436/0,1594.700,-9797.400
    >>Clique em |cRXP_PICK_Old Jarra|r no chão
    .turnin 26355 >>Entregue O Tesouro Escondido do Capitão Albernaz
    .accept 26356 >>Aceite O Tesouro Escondido do Capitão Albernaz
step
    #completewith next
    .goto 52,25.97,16.90,20 >>Nade para a pequena ilha
step
    .goto 1436/0,2107.700,-9794.300
    >>Clique no |cRXP_PICK_Locked Baú|r no chão
    .turnin 26356 >>Entregue O Tesouro Escondido do Capitão Albernaz
step
    #completewith next
    .subzone 115 >>Viaje para o Farol de Cerro Oeste
step
    .goto 1436/0,1949.100,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .target Captain Grayson
    .turnin 26371 >>Entregue A Lenda do Capitão Calvino
    .accept 26348 >>Aceite Limpando a Área
    --.accept 26347 >>Accept Keeper of the Flame
    .accept 26349 >>Aceite O Mar Não Está para Peixe
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Murloc Tidehunters|r e os |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Mate |cRXP_ENEMY_Velho Olho-turvo|r. Saque a |cRXP_LOOT_Escama|r dele
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrols along the coast|r
    .complete 26349,1 --|Scale of Old Murk-Eye: 1/1
    .unitscan Old Murk-Eye
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Mate os |cRXP_ENEMY_Murloc Tidehunters|r e os |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    .goto 1436/0,1949.000,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitão Calvino|r
    .target Captain Grayson
    .turnin 26348 >>Entregue Limpando a Área
    .turnin 26349 >>Entregue O Mar Não Está para Peixe
]])
