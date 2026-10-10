if GetLocale() ~= "ptBR" then return end
local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
#mop
<< DK
#group Cavaleiro da Morte Início
#next Aliança 60-70\59-61 Península Fogo do Inferno << Alliance wotlk
#next Horda 60-70\59-61 Península Fogo do Inferno << Horde wotlk
#next RXP Cataclismo 60-80 (H)\59-61 Península Fogo do Inferno << Horde cata
#next RXP Cataclismo 60-80 (A)\59-61 Península Fogo do Inferno << Alliance cata
#next RXP MoP 60-80 (H)\59-61 Península Fogo do Inferno << Horde !wotlk !cata
#next RXP MoP 60-80 (A)\59-61 Península Fogo do Inferno << Alliance !wotlk !cata
#defaultfor DK
#name 55-58 The Scarlet Enclave

step
    .goto 124,51.345,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Lich Rei|r
    .target The Lich King
    .accept 12593 >>Aceite A Serviço do Lich Rei
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Instrutor Razúvio|r
    >>|cRXP_FRIENDLY_Instrutor Razúvio|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 12593 >>Entregue A Serviço do Lich Rei
    .target Instructor Razuvious
    .accept 12619 >>Aceite A Lâmina Rúnica Brasonada
step
    #loop
    .goto 124,47.811,27.771,10,0
    .goto 124,46.8,29.1,40,0
    .goto 124,48.1,27.9,40,0
    .goto 124,49.2,26.5,40,0
    .goto 124,48.1,27.9,40,0
	>>Pegue a |T135410:0|t[|cRXP_LOOT_Espada Gasta pela Batalha|r] de um dos suportes de armas. Aparece em múltiplos locais ao redor das paredes
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .isOnQuest 12619
    .goto 124,47.9,27.6
    .cast 51769 >>|cRXP_WARN_Channel the|r |T135410:0|t[|cRXP_LOOT_Espada Gasta pela Batalha|r] |cRXP_WARN_at the|r |cRXP_PICK_Runeforge|r
    .timer 8,Blasonar Lâmina Rúnica RP
	.use 38607
    .complete 12619,1 --Runebladed Sword (1)
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Instrutor Razúvio|r
    >>|cRXP_FRIENDLY_Instrutor Razúvio|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 12619 >>Entregue A Lâmina Rúnica Brasonada
    .target Instructor Razuvious
    .accept 12842 >>Aceite Forjando Runas: Preparativos para a Batalha
step
    .goto 124,47.9,27.5
    >>|cRXP_WARN_Vá para o |cRXP_PICK_Runeforge|r novamente|r
    >>|cRXP_WARN_Em seu Grimório de Magias (Padrão: P) clique em|r |T237523:0|t[Forjar Runas]
    >>|cRXP_WARN_Grave sua|r |T135335:0|t[|cFF0070FFRuned Laminalma|r] |cRXP_WARN_com|r |T136130:0|t[Runa da Brasa Glacial]
    .complete 12842,1 --Weapon emblazoned (1)
step
    #optional
    #completewith next
    .equip 16,38707 >>|cRXP_WARN_Equipe a|r |T135335:0|t[|cFF0070FFRuned Laminalma|r]
    .use 38707
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Instrutor Razúvio|r
    >>|cRXP_FRIENDLY_Instrutor Razúvio|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 12842 >>Entregue Forjando Runas: Preparativos para a Batalha
    .target Instructor Razuvious
    .accept 12848 >>Aceite A Fome Sem Fim
step
    #optional
    .isOnQuest 12848
    .equip 16,38707 >>|cRXP_WARN_Equipe a|r |T135335:0|t[|cFF0070FFRuned Laminalma|r]
    .use 38707
step
    #completewith next
    .cast 54669 >>Clique em um |cRXP_PICK_Acherus Alma Prisons|r ao longo da parede central interna para liberar um |cRXP_ENEMY_Iniciado Indigno|r
    .timer 17,Iniciado Indigno RP
step
    .goto 124,48.4,29.0
    >>Derrote o |cRXP_ENEMY_Iniciado Indigno|r após o curto RP
    .complete 12848,1 --Unworthy Initiate dominated (1)
    .mob Unworthy Initiate
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Instrutor Razúvio|r
    >>|cRXP_FRIENDLY_Instrutor Razúvio|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 12848 >>Entregue A Fome Sem Fim
    .target Instructor Razuvious
    .accept 12636 >>Aceite O Olho de Áquerus
step << wotlk
    .isOnQuest 12636
    .goto 124,48.660,32.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alquimista Karloff|r
    >>|cRXP_BUY_Compre quatro|r |T133849:0|t[Cadáver Poeira] |cRXP_WARN_dele|r
    .collect 37201,4 --Corpse Dust (4)
    .target Alchemist Karloff
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Lich Rei|r
    .target The Lich King
    .turnin 12636 >>Entregue O Olho de Áquerus
    .accept 12641 >>Aceite A Morte Vem do Alto
step
    .isOnQuest 12641
    .goto 124,51.062,36.310,-1
    .goto 124,52.130,35.220,-1
    .aura 51852 >>Clique em um |cRXP_PICK_Olho de Áquerus Mecanismo de Controle|r
step
    .goto 124,61.42,60.12,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Sifão de Áquerus] (1) |cRXP_WARN_on the Nova Avalon Forja|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Cruzado Escarlate|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Evocar Carniçais] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000Não há seta para este passo. A localização do prédio é marcada no seu mapa. O prédio também tem um grande ícone vermelho Marca do Caçador nele|r
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto 124,61.7,68.2,0
	>>|cRXP_WARN_Lançe|r |T136158:0|t[Sifão de Áquerus] (1) |cRXP_WARN_no Castelo Escarlate|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Cruzado Escarlate|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Evocar Carniçais] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000Não há seta para este passo. A localização do prédio é marcada no seu mapa. O prédio também tem um grande ícone vermelho Marca do Caçador nele|r
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto 124,53.4,70.7,0
	>>|cRXP_WARN_Cast|r |T136158:0|t[Sifão de Áquerus] (1) |cRXP_WARN_on the Nova Avalon Town Hall|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Cruzado Escarlate|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Evocar Carniçais] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000Não há seta para este passo. A localização do prédio é marcada no seu mapa. O prédio também tem um grande ícone vermelho Marca do Caçador nele|r
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto 124,52.2,80.7,0
	>>|cRXP_WARN_Use|r |T136158:0|t[Sifão de Áquerus] (1) |cRXP_WARN_na Capela da Chama Carmesim|r
    >>|cRXP_WARN_Avoid the|r |cRXP_ENEMY_Cruzado Escarlate|r |cRXP_WARN_at all cost. Casting|r |T136119:0|t[Evocar Carniçais] (2) |cRXP_WARN_can also provide a small distraction|r
    >>|cFFFF0000Não há seta para este passo. A localização do prédio é marcada no seu mapa. O prédio também tem um grande ícone vermelho Marca do Caçador nele|r
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
step
    #optional
	#completewith next
 	.aura -51852 >>|cRXP_WARN_Pressione Fuga ou|r |T136190:0|t[Retornar Olho de Áquerus] (5) |cRXP_WARN_para retornar à Masmorra de Ébano|r
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Lich Rei|r
    .target The Lich King
    .turnin 12641 >>Entregue A Morte Vem do Alto
    .accept 12657 >>Aceite O Poder do Flagelo
step
    #completewith next
    .goto 124,50.516,33.404,5 >>Pise no teletransportador roxo para viajar ao nível inferior
step
    .goto 124,48.872,29.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12657 >>Entregue O Poder do Flagelo
    .accept 12850 >>Aceite Apresente-se ao Comandante do Flagelo Thalanor
step
    .goto 124,51.055,34.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante do Flagelo Thalanor|r
    >>|cRXP_FRIENDLY_Comandante do Flagelo Thalanor|r |cRXP_WARN_patrulha levemente|r
    .target Scourge Commander Thalanor
    .turnin 12850 >>Entregue Apresente-se ao Comandante do Flagelo Thalanor
    .accept 12670 >>Aceite Colheita Escarlate
step
	#completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >>Monte no |cRXP_FRIENDLY_Grifo do Flagelo|r para voar até Morte's Fenda
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12670 >>Entregue Colheita Escarlate
    .accept 12678 >>Aceite Se o Caos Dirige, Que o Sofrimento Segure as Rédeas
step
    #optional
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salanar, o Cavalgante|r
    >>|cRXP_FRIENDLY_Salanar, o Cavalgante|r |cRXP_WARN_patrulha Morte's Fenda|r
    .accept 12680 >>Aceite O Grande Roubo de Cavalos
    .target Salanar the Horseman
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olrun, a Voz da Batalha|r
    .accept 12733 >>Aceite O Desafio da Morte
step
    #loop
    .goto 124,53.20,33.45,30,0
    .goto 124,51.69,35.67,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salanar, o Cavalgante|r
    >>|cRXP_FRIENDLY_Salanar, o Cavalgante|r |cRXP_WARN_patrulha Morte's Fenda|r
    .accept 12680 >>Aceite O Grande Roubo de Cavalos
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orithos, o Anuviador Celeste|r
    >>|cRXP_FRIENDLY_Orithos, o Anuviador Celeste|r |cRXP_WARN_patrulha Morte's Fenda|r
    .accept 12679 >>Aceite Hoje Jantaremos em Havenshire
step
	#completewith next
	>>Mate os |cRXP_ENEMY_Cruzado Escarlate|r e os |cRXP_ENEMY_Citizens of Havenshire|r. Pegue as |cRXP_PICK_Flechas de Saronita|r no chão
    >>|cRXP_WARN_Não saia do seu caminho para completar isto agora|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
	.isOnQuest 12680
    .goto 124,57.4,42.3
	.vehicle >>Suba na |cRXP_FRIENDLY_Égua da Vila do Amparo|r ou no |cRXP_FRIENDLY_Garanhão da Vila do Amparo|r. Monte de volta para Morte's Fenda
    >>|cRXP_WARN_Tenha cuidado para evitar o |cRXP_ENEMY_Mestre de Estábulo Kitrik|r que patrulha a área|r
    .target Havenshire Mare
    .target Havenshire Stallion
step
    #loop
    .goto 124,51.69,35.67,35,0
    .goto 124,53.20,33.45,35,0
	>>|cRXP_WARN_Monte de volta para Morte's Fenda|r
    >>|cRXP_WARN_Use|r |T132226:0|t[Galope] (2) |cRXP_WARN_para aumentar a velocidade de movimento|r
    >>|cRXP_WARN_Use|r |T132261:0|t[Entregar Cavalo Roubado] (1) |cRXP_WARN_uma vez junto a|r |cRXP_FRIENDLY_Salanar, o Cavalgante|r
    >>|cRXP_FRIENDLY_Salanar, o Cavalgante|r |cRXP_WARN_patrulha Morte's Fenda|r
    .complete 12680,1 --Horse Successfully Stolen (1)
    .target Salanar the Horseman
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salanar, o Cavalgante|r
    .turnin 12680 >>Entregue O Grande Roubo de Cavalos
    .target Salanar the Horseman
    .accept 12687 >>Aceite No Reino das Sombras
step
    .isOnQuest 12687
    .goto 124,54.6,46.4
    .vehicle >>Mate o |cRXP_ENEMY_Cavalgante Negro de Áquerus|r. Monte no |cRXP_FRIENDLY_Corcel da Morte de Áquerus|r depois
    .mob Dark Rider of Acherus
    .target Acherus Deathcharger
step
    #optional
    .isOnQuest 12687
    .goto 124,51.70,35.76,20 >>Retorne para Morte's Fenda
step
    .goto 124,51.70,35.76
	>>|cRXP_WARN_Use|r |T136129:0|t[Chamado do Cavaleiro] (1) |cRXP_WARN_uma vez em Morte's Fenda. Aguarde a encenação curta|r
    .complete 12687,1 --The Horseman's Challenge (1)
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salanar, o Cavalgante|r
    .turnin 12687 >>Entregue No Reino das Sombras
step
	#completewith DuelDK
	.cast 48778 >>|cRXP_WARN_Você agora tem seu|r |T237534:0|t[Corcel da Morte de Áquerus]|cRXP_WARN_. Certifique-se de adicioná-lo às suas barras de ação no seu painel de Montarias (Padrão: Mudança+P)|r
step
    #loop
    .goto 124,55.9,38.8,50,0
    .goto 124,53.9,45.6,50,0
    .goto 124,56.1,51.9,50,0
	>>Mate os |cRXP_ENEMY_Cruzado Escarlate|r e os |cRXP_ENEMY_Citizens of Havenshire|r. Pegue as |cRXP_PICK_Flechas de Saronita|r no chão
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
    #label DuelDK
	#loop
    .goto 124,51.9,35.4,30,0
    .goto 124,51.0,33.6,30,0
    .goto 124,53.8,30.9,30,0
    >>Fale com os |cRXP_FRIENDLY_Death Cavaleiro Initiates|r e derrote-os em um duelo
	>>|cRXP_WARN_Não saia do alcance de duelo de 30 jardas|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target Death Knight Initiate
    .mob Death Knight Initiate
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orithos, o Anuviador Celeste|r
    >>|cRXP_FRIENDLY_Orithos, o Anuviador Celeste|r |cRXP_WARN_patrulha Morte's Fenda|r
    .turnin 12679 >>Entregue Hoje Jantaremos em Havenshire
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olrun, a Voz da Batalha|r
    .turnin 12733 >>Entregue O Desafio da Morte
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12678 >>Entregue Se o Caos Dirige, Deixe o Sofrimento Segurar as Rédeas
    .accept 12697 >>Aceite Gothik, o Ceifador
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothik, o Ceifador|r
    .target Gothik the Harvester
    .turnin 12697 >>Entregue Gothik, o Ceifador
    .accept 12698 >>Aceite A Dádiva que Continua a Dar
step
    .goto 124,58.396,30.900,20,0
    .goto 124,59.904,31.680,20,0
    .goto 124,60.925,29.682,60,0
    .goto 124,54.1,34.9
    >>|cRXP_WARN_Enter the Havenshire Mina|r
    .use 39253 >>|cRXP_WARN_Use o|r |T133882:0|t[Dádiva do Ceifador] |cRXP_WARN_em |cRXP_ENEMY_Mineradores Escarlates|r enquanto estiverem fora de combate. NÃO os mate ou ataque|r
    >>|cRXP_WARN_Quando você tiver 5 |cRXP_FRIENDLY_Carniçais Escarlates|r seguindo você, volte para|r |cRXP_ENEMY_Gothik, o Ceifador|r
    >>|cRXP_WARN_Abate |cRXP_ENEMY_Scarlet Ghosts|r que estão em combate com você|r
    .complete 12698,1 --Scarlet Ghoul Returned (5)
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothik, o Ceifador|r
    .target Gothik the Harvester
    .turnin 12698 >>Entregue A Dádiva que Continua a Dar
    .accept 12700 >>Aceite Um Ataque de Oportunidade
step
    .goto 124,52.273,33.967
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Valanar|r
    .turnin 12700 >>Entregue Um Ataque de Oportunidade
    .accept 12701 >>Aceite Chacina no Pontal da Luz
    .target Prince Valanar
step
    .isOnQuest 12701
    #label Follow1
    #completewith ScarletCannon
    .goto 124,61.597,32.417,35 >>|cRXP_WARN_Follow the arrow to the to the Scarlet Ship. Largar down the small hill|r
step
    .isOnQuest 12701
    #requires Follow1
    #completewith ScarletCannon
    .goto 124,65.376,32.933,35 >> |cRXP_WARN_Drop down below again|r
step
    .isOnQuest 12701
    #label ScarletCannon
    .goto 124,67.022,38.817,15,0
    .goto 124,67.706,39.023
    .vehicle >>|cRXP_WARN_Run up the ramp onto the Scarlet Ship. Enter o|r |cRXP_PICK_Canhão Escarlate|r
    .target Scarlet Cannon
step
	>>|cRXP_WARN_Cast|r |T136186:0|t[Canhão Escarlate] (1) |cRXP_WARN_to kill the|r |cRXP_ENEMY_Defensor da Armada Escarlate|r
    >>|cRXP_WARN_Cast|r |T136099:0|t[Pulso Eletromagnético] (2) |cRXP_WARN_se algum |cRXP_ENEMY_Defensor da Armada Escarlate|r começar a atacar o seu canhão de perto|r
    .complete 12701,1 --Scarlet Defender (100)
    .mob Scarlet Fleet Defender
step
    .isOnQuest 12701
    .cast vehicle,52588,52589 >>vehicle,52588,52589 >>|cRXP_WARN_Use|r |T135766:0|t[Fuga no Grifo Descarnado] (5) |cRXP_WARN_para retornar à Fenda de Morte|r
    .timer 70,Voo da Fenda da Morte
step
    .goto 124,52.272,33.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12701 >>Entregue Chacina no Pontal da Luz
    .accept 12706 >>Aceite Vitória na Fenda da Morte!
step
    #completewith next
    .goto 124,53.094,32.473
    .fly >>Monte o |cRXP_FRIENDLY_Grifo do Flagelo|r para retornar a Acherus
    .skipgossip
    .target Scourge Gryphon
step
    .goto 124,48.873,29.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12706 >>Entregue Vitória na Fenda da Morte!
    .accept 12714 >>Aceite A Vontade do Lich Rei
step
    .goto 124,47.472,26.550
    .target Lord Thorval
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Thorval|r
    .accept 12849 >>Aceite O Poder de Sangue, Gelo e Profano
	.turnin 12849 >>Entregue O Poder de Sangue, Gelo e Profano
	.trainer >>Treine suas magias de classe << wotlk/cata
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >>Monte no |cRXP_FRIENDLY_Grifo do Flagelo|r para voar até Morte's Fenda
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.459,36.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12714 >>Entregue A Vontade do Lich Rei
    .accept 12715 >>Aceite A Cripta da Memória
step << wotlk
    .isOnQuest 12715
    .goto 124,52.896,35.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hargus, o Imundo <Suprimentos>|r
    >>|cRXP_BUY_Buy 20|r |T133849:0|t[Cadáver Poeira] |cRXP_WARN_from him|r
    .collect 37201,20 --Corpse Dust (20)
    .target Hargus the Geist
step
    .goto 124,55.270,46.179
	>>Clique em |cRXP_PICK_Correios Abandonados|r
    >>|cRXP_WARN_Você também pode usar isto |cRXP_PICK_Caixa de correio|r se você quiser enviar itens para você mesmo|r
    .turnin 12711 >>Entregue Correios Abandonados
step
    .goto 124,55.900,52.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noth, o Pestífero|r
    .target Noth the Plaguebringer
    .accept 12716 >>Aceite O Pedido do Pestífero
step
    #completewith LTTS
    .goto 124,54.007,58.135,20 >>Desça até a Cripta da Memória
step
    .goto 124,54.299,57.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Keleseth|r
    .target Prince Keleseth
    .turnin 12715 >>Entregue A Cripta da Memória
    .accept 12719 >>Aceite Sem Escape e Sem Abrigo
step
    #label LTTS
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Barão Rivendare|r
    .target Baron Rivendare
    .accept 12722 >>Aceite Como Cordeiros no Matadouro
step
	#completewith QuimbyRegistry
	>>Mate os |cRXP_ENEMY_Scarlet Cruzada|r e os |cRXP_ENEMY_Citizens of Nova Avalon|r. Saqueie-os para obter os |cRXP_LOOT_Crânio de Cruzado|r
    >>|cRXP_WARN_Não saia do seu caminho para completar isto agora|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    #completewith next
    .goto 124,52.924,71.237,25 >>Entre na Prefeitura de Nova Avalon
step
    #label QuimbyRegistry
	>>Mate |cRXP_ENEMY_Prefeito Quimby|r. Pegue o |cRXP_PICK_Registro de Nova Avalon|r na mesa
    .complete 12719,1 --Mayor Quimby (1)
    .mob +Mayor Quimby
    .goto 124,52.243,71.152
    .complete 12719,2 --New Avalon Registry (1)
    .goto 124,52.462,71.010
step
    #completewith next
    .goto 124,54.007,58.135,20 >>Volte para a Cripta da Memória
step
    .goto 124,54.301,57.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Keleseth|r
    .target Prince Keleseth
    .turnin 12719 >>Entregue Sem Escape e Sem Abrigo
    .accept 12720 >>Aceite Como Fazer Amigos e Influenciar Inimigos
step
    #optional
    .isQuestComplete 12722
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Barão Rivendare|r
    .target Baron Rivendare
    .turnin 12722 >>Entregue Como Cordeiros no Matadouro
step
	#completewith Dawn
	>>Mate os |cRXP_ENEMY_Scarlet Cruzada|r e os |cRXP_ENEMY_Citizens of Nova Avalon|r. Saqueie-os para obter os |cRXP_LOOT_Crânio de Cruzado|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,61.387,60.722,20,0
    .goto 124,62.065,60.247
	>>Pegue a |cRXP_PICK_Corrente de Ferro|r na parede dentro da Ferraria
    .complete 12716,2 --Iron Chain (1)
step
    #completewith next
    .goto 124,57.676,64.336,15 >>Entre na Estalagem
step
    .goto 124,57.847,62.617,10,0
    .goto 124,57.521,61.883,10,0
    .goto 124,57.856,61.842
	>>Pegue o |cRXP_PICK_Caldeirão Vazio|r no porão
    .complete 12716,1 --Empty Cauldron (1)
step
    .isOnQuest 12720
	.use 39418 >>|cRXP_WARN_Abra|r |T132595:0|t[Caixa Adornada de Joias] |cRXP_WARN_para obter 2|r |T135271:0|t[Persuasor de Keleseth]
    .collect 39371,2 -- Keleseth's Persuader
step
    .isOnQuest 12720
    .equip 16,39371 >>|cRXP_WARN_Equipe|r |T135271:0|t[Persuasor de Keleseth] |cRXP_WARN_em sua Mão Direita|r
    .equip 17,39371 >>|cRXP_WARN_Equipe|r |T135271:0|t[Persuasor de Keleseth] |cRXP_WARN_em sua Mão Esquerda|r
    .use 39371
step
	#label Dawn
    .goto 124,62.4,68.2
	>>|cRXP_WARN_Ataque qualquer um dos |cRXP_ENEMY_Scarlet Cruzada|r até que a missão se complete. Isso pode levar um pouco de tempo se tiver azar|r
    >>|cRXP_WARN_Você deve ter|r |T135271:0|t[Persuasor de Keleseth] |cRXP_WARN_equipado para completar o objetivo|r
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
    #optional
    .isOnQuest 12720
    .equip 16,38707 >>|cRXP_WARN_Equipe a|r |T135335:0|t[|cFF0070FFRuned Laminalma|r]
    .use 38707
step
    #loop
    .goto 124,53.8,71.6,60,0
    .goto 124,54.6,63.8,60,0
    .goto 124,60.6,63.8,60,0
    .goto 124,57.0,68.6,60,0
	>>Mate os |cRXP_ENEMY_Scarlet Cruzada|r e os |cRXP_ENEMY_Citizens of Nova Avalon|r. Saqueie-os para obter os |cRXP_LOOT_Crânio de Cruzado|r
    >>|cRXP_ENEMY_Cidadãos de Nova Avalon|r |cRXP_WARN_podem ser encontrados dentro dos edifícios|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,55.894,52.395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Noth, o Pestífero|r
    .target Noth the Plaguebringer
    .turnin 12716 >>Entregue O Pedido do Pestífero
    .accept 12717 >>Aceite Beberagem Especial do Noth
step
    .goto 124,56.157,52.008
    >>Clique no |cRXP_PICK_Caldeirão da Peste|r
    .turnin 12717 >>Entregue Beberagem Especial do Noth
step
    #optional
    .goto 124,56.157,52.008
    >>Clique no |cRXP_PICK_Caldeirão da Peste|r novamente
    .turnin 12718 >>Entregue Mais Crânios para a Mistura
    .itemcount 39328,20
step
    #completewith BSL
    .goto 124,54.007,58.135,20 >>Volte para a Cripta da Memória
step
    .goto 124,54.678,57.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Barão Rivendare|r
    .target Baron Rivendare
    .turnin 12722 >>Entregue Como Cordeiros no Matadouro
step
    #label BSL
    .goto 124,54.299,57.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Keleseth|r
    .target Prince Keleseth
    .turnin 12720 >>Entregue Como Fazer Amigos e Influenciar Inimigos
    .accept 12723 >>Aceite Atrás das Linhas Escarlates
step
    #completewith next
    .goto 124,56.150,79.986,15 >>Vá para a Taverna Escarlate. Fale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r e com |cRXP_FRIENDLY_Thassarian|r acima
step
    .goto 124,56.249,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r acima
    .target Orbaz Bloodbane
    .turnin 12723 >>Entregue Atrás das Linhas Escarlates
    .accept 12724 >>Aceite O Caminho do Cruzado Justo
step
    .goto 124,56.266,80.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thassarian|r acima
    .target Thassarian
    .accept 12725 >>Aceite Irmãos na Morte
step
    #completewith next
    .goto 124,61.752,68.157,20,0
    .goto 124,62.876,68.650,10 >>Entre no Castelo Escarlate. Desça para o porão
    >>|cRXP_WARN_NÃO libere seu espírito se você morrer. Uma |cRXP_FRIENDLY_Donzela Guerreira Val'kyr|r vai ressuscitá-lo|r
step
    .goto 124,62.954,67.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Koltirus Tecemorte|r no porão
    .target Koltira Deathweaver
    .turnin 12725 >>Entregue Irmãos na Morte
    .accept 12727 >>Aceite Fuga Sangrenta
step
	#completewith next
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
	>>|cRXP_WARN_Não defenda|r |cRXP_FRIENDLY_Koltirus Tecemorte|r
    >>Vá para o topo do andar. Saque o |cRXP_PICK_Cronograma de Patrulha de Nova Avalon|r na mesa
    .complete 12724,1 --New Avalon Patrol Schedule (1)
  step
    .goto 124,62.898,68.109
	>>Entregue para |cRXP_FRIENDLY_Koltirus Tecemorte|r no porão
    >>Mate o |cRXP_ENEMY_Valroth|r. Saque o |cRXP_PICK_Restos do Alto Inquisidor Valroth|r no chão para obter o |cRXP_LOOT_Cabeça de Valroth|r
	>>|cRXP_WARN_Você pode precisar matar inimigos atacando |cRXP_FRIENDLY_Koltirus Tecemorte|r enquanto aguarda |cRXP_ENEMY_Valroth|r aparecer|r
    >>|cRXP_WARN_Se a encenação terminou, fale com |cRXP_FRIENDLY_Koltirus Tecemorte|r novamente para começá-la|r
    >>|cRXP_WARN_Parado no|r |T136178:0|t[Zona Antimagia]|cRXP_WARN_ para reduzir dano de feitiço|r
    .complete 12727,1 --Valroth's Head (1)
    .skipgossip
step
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
    >>Vá para o topo do andar. Saque o |cRXP_PICK_Cronograma de Patrulha de Nova Avalon|r na mesa
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    #optional
    .goto 124,56.157,52.008
    >>Clique no |cRXP_PICK_Caldeirão da Peste|r
    .turnin 12718 >>Entregue Mais Crânios para a Mistura
    .itemcount 39328,20
step
    #completewith ACFV
    .goto 124,56.150,79.986,15 >>Entregue para a Taverna Escarlate. Fale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r e |cRXP_FRIENDLY_Thassarian|r no andar superior
step
	#completewith ACFV
	.destroy 39328 >>Descarte qualquer |T133730:0|t[Crânio de Cruzado] que você tenha
step
    .goto 124,56.254,79.845
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r acima
    .target Orbaz Bloodbane
    .turnin 12724 >>Entregue O Caminho do Cruzado Justo
step
    #label ACFV
    .goto 124,56.266,80.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thassarian|r acima
    .target Thassarian
    .turnin 12727 >>Entregue Fuga Sangrenta
    .accept 12738 >>Aceite Um Grito de Vingança!
step
    .goto 124,52.6,80.7,40,0
    .goto 124,53.1,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cavaleiro Comandante Pestecarpo|r
    >>|cRXP_FRIENDLY_Cavaleiro Comandante Pestecarpo|r |cRXP_WARN_patrulha a Capela|r
    .turnin 12738 >>Entregue Um Grito de Vingança!
    .target Knight Commander Plaguefist
    .accept 12748 >>Aceite Uma Surpresa Especial << Orc
    .accept 12739 >>Aceite Uma Surpresa Especial << Tauren
    .accept 12742 >>Aceite Uma Surpresa Especial << Human
    .accept 12743 >>Aceite Uma Surpresa Especial << NightElf
    .accept 12744 >>Aceite Uma Surpresa Especial << Dwarf
    .accept 12745 >>Aceite Uma Surpresa Especial << Gnome
    .accept 12746 >>Aceite Uma Surpresa Especial << Draenei
    .accept 12747 >>Aceite Uma Surpresa Especial << BloodElf
    .accept 12749 >>Aceite Uma Surpresa Especial << Troll
    .accept 12750 >>Aceite Uma Surpresa Especial << Undead
    .accept 28649 >>Aceite Uma Surpresa Especial << Worgen
    .accept 28650 >>Aceite Uma Surpresa Especial << Goblin
step << Orc
    .goto 124,53.771,83.274
	>>Abate |cRXP_ENEMY_Kug Ferroqueixo|r após a encenação curta
    .complete 12748,1 --Kug Ironjaw (1)
    .mob Kug Ironjaw
step << Tauren
    .goto 124,54.505,83.856
	>>Abate |cRXP_ENEMY_Malar Chifre Bravo|r após a encenação curta
    .complete 12739,1 -- Malar Bravehorn (1)
    .mob Malar Bravehorn
step << Human
    .goto 124,53.536,83.785
	>>Abate |cRXP_ENEMY_Ellen Pontenova|r após a encenação curta
    .complete 12742,1 --|Ellen Stanbridge slain: 1/1
    .mob Ellen Stanbridge
step << NightElf
    .goto 124,54.246,83.908
	>>Abate |cRXP_ENEMY_Yazmina Urzeforte|r após a encenação curta
    .complete 12743,1 -- Yazmina Oakenthorn (1)
    .mob Yazmina Oakenthorn
step << Dwarf
    .goto 124,54.018,83.285
	>>Abate |cRXP_ENEMY_Donovan Pulgelo|r após a encenação curta
    .complete 12744,1 --Donovan Pulfrost (1)
    .mob Donovan Pulfrost
step << Gnome
    .goto 124,53.928,83.803
	>>Abate |cRXP_ENEMY_Goby Plosivo|r após a encenação curta
    .complete 12745,1 -- Goby Blastenheimer  (1)
    .mob Goby Blastenheimer
step << Draenei
    .goto 124,54.538,83.423
	>>Abate |cRXP_ENEMY_Valok, o Íntegro|r após a encenação curta
    .complete 12746,1 -- Valok the Righteous (1)
    .mob Valok the Righteous
step << BloodElf
    .goto 124,54.285,83.303
	>>Abate |cRXP_ENEMY_Lady Eonys|r após a encenação curta
    .complete 12747,1 --Lady Eonys (1)
    .mob Lady Eonys
step << Troll
    .goto 124,53.801,83.756
	>>Abate |cRXP_ENEMY_Iggy Presanegra|r após a encenação curta
    .complete 12749,1 --Iggy Darktusk(1)
    .mob Iggy Darktusk
step << Undead
    .goto 124,53.542,83.304
	>>Abate |cRXP_ENEMY_Antoine Leso|r após a encenação curta
    .complete 12750,1 -- Antoine Brack (1)
    .mob Antoine Brack
step << Worgen
    .goto 124,54.144,83.282
	>>Abate |cRXP_ENEMY_Lorde Harford|r após a encenação curta
    .complete 28649,1 -- Lord Harford (1)
    .mob Lord Harford
step << Goblin
    .goto 124,54.113,83.753
	>>Abate |cRXP_ENEMY_Guto Nadarguto|r após a encenação curta
    .complete 28650,1 -- Gally Lumpstain (1)
    .mob Gally Lumpstain
step
    .goto 124,53.1,82.1,40,0
    .goto 124,52.6,80.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cavaleiro Comandante Pestecarpo|r
    >>|cRXP_FRIENDLY_Cavaleiro Comandante Pestecarpo|r |cRXP_WARN_Patrula a capela|r
    .turnin 12748 >>Entregue Uma Surpresa Especial << Orc
    .turnin 12739 >>Entregue Uma Surpresa Especial << Tauren
    .turnin 12742 >>Entregue Uma Surpresa Especial << Human
    .turnin 12743 >>Entregue Uma Surpresa Especial << Nightelf
    .turnin 12744 >>Entregue Uma Surpresa Especial << Dwarf
    .turnin 12745 >>Entregue Uma Surpresa Especial << Gnome
    .turnin 12746 >>Entregue Uma Surpresa Especial << Draenei
    .turnin 12747 >>Entregue Uma Surpresa Especial << Bloodelf
    .turnin 12749 >>Entregue Uma Surpresa Especial << Troll
    .turnin 12750 >>Entregue Uma Surpresa Especial << Undead
    .turnin 28649 >>Entregue Uma Surpresa Especial << Worgen
    .turnin 28650 >>Entregue Uma Surpresa Especial << Goblin
    .target Knight Commander Plaguefist
	.accept 12751 >>Aceite Um Pouco Como Voltar Pra Casa
step
    #completewith AATO
    .goto 124,56.150,79.986,15 >>Entregue para a Taverna Escarlate. Fale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r e |cRXP_FRIENDLY_Thassarian|r no andar superior
step
    .goto 124,56.268,80.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thassarian|r
    .target Thassarian
    .turnin 12751 >>Entregue Um Pouco Como Voltar Pra Casa
step
    #label AATO
    .goto 124,56.251,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r
    .target Orbaz Bloodbane
    .accept 12754 >>Aceite Emboscada No Penhasco
step
    #completewith ScarletCourier
    .subzone 4360 >>Vá para Scarlet Overlook
step
    #completewith ScarletCourier
    .cast 53061 >>|cRXP_WARN_Use|r |T136065:0|t[Esconderijo Improvisado] |cRXP_WARN_em Scarlet Overlook|r
    .use 39645
step
    #label ScarletCourier
    .goto 124,59.715,76.335
	.use 39645 >>Mate o |cRXP_ENEMY_Mensageiro Escarlate|r. Saque-o para obter |cRXP_LOOT_Pertences do Mensageiro Escarlate|r e |cRXP_LOOT_Mensagem do Mensageiro Escarlate|r
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
    .mob Scarlet Courier
step
    #completewith next
    .goto 124,56.150,79.986,15 >>Vá para Scarlet Tavern. Fale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r acima
step
    .goto 124,56.253,79.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r acima
    .target Orbaz Bloodbane
    .turnin 12754 >>Entregue Emboscada No Penhasco
    .accept 12755 >>Aceite Um Encontro com o Destino
step
    .goto 124,65.663,83.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General-de-exército Abbendis|r
    .target High General Abbendis
    .turnin 12755 >>Entregue Um Encontro com o Destino
    .accept 12756 >>Aceite Surge a Ofensiva Escarlate
step
    #completewith next
    .goto 124,56.150,79.986,15 >>Vá para Scarlet Tavern. Fale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r acima
step
    .goto 124,56.251,79.846
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orbaz Ruinassangue|r acima
    .target Orbaz Bloodbane
    .turnin 12756 >>Entregue Surge a Ofensiva Escarlate
    .accept 12757 >>Aceite Os Exércitos da Cruzada Se Aproximam...
step
    #completewith next
    .goto 124,56.180,80.036
    .subzone 4281 >>|cRXP_WARN_Vá através do|cRXP_PICK_ Portal to Acherus|r atrás de|r |cRXP_FRIENDLY_Orbaz Ruinassangue|r
step
    .goto 124,48.872,29.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12757 >>Entregue Os Exércitos da Cruzada Se Aproximam...
    .accept 12778 >>Aceite O Apocalipse Escarlate
step << wotlk/cata
    .goto 124,46.697,31.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Amal'thazad|r
    .target Amal'thazad
    .trainer >>Treine suas magias de classe
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >>Monte no |cRXP_FRIENDLY_Grifo do Flagelo|r para voar até Morte's Fenda
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Lich Rei|r
    .target The Lich King
    .turnin 12778 >>Entregue O Apocalipse Escarlate
    .accept 12779 >>Aceite O Fim de Todas as Coisas
step
	#completewith next
	.use 39700
	.vehicle >>|cRXP_WARN_Use o|r |T134228:0|t[Chifre de Ninhálgida] |cRXP_WARN_para montar no|r |cRXP_FRIENDLY_Conquistador Ninhálgida|r
step
    #loop
    .goto 124,56.0,62.2,100,0
    .goto 124,55.4,64.8,100,0
    .goto 124,54.8,66.8,100,0
    .goto 124,54.6,69.9,100,0
    .goto 124,54.4,75.6,100,0
    .goto 124,57.0,74.8,100,0
    .goto 124,57.3,71.8,100,0
    .goto 124,60.0,72.2,100,0
    .goto 124,62.6,75.1,100,0
    .goto 124,59.5,66.1,100,0
    .goto 124,59.5,60.2,100,0
    >>|cRXP_WARN_Lance|r |T135851:0|t[Seta da Morte Congelada] (1) |cRXP_WARN_para matar os|cRXP_ENEMY_ Scarlet Soldiers|r e destruir os|r |cRXP_ENEMY_Scarlet Ballistas|r
    >>|cRXP_WARN_Lance|r |T136217:0|t[Devorar Humanoide] (3) |cRXP_WARN_em um|cRXP_ENEMY_ Cruzado Escarlate|r para restaurar vida e mana|r
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .mob +Scarlet Ballista
    .complete 12779,1 --Scarlet Soldiers (150)
step
    #completewith TLKC
    .goto 124,53.575,36.865,30 >>Voe de volta para |cRXP_FRIENDLY_The Lich Rei|r
step
    #completewith TLKC
    .exitvehicle >>|cRXP_WARN_Saia do|r |cRXP_FRIENDLY_Conquistador Ninhálgida|r
step
    #label TLKC
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Lich Rei|r
    .turnin 12779 >>Entregue O Fim de Todas as Coisas
    .target The Lich King
    .accept 12800 >>Aceite O Comando do Lich Rei
step
    #completewith next
    .goto 124,49.3,28.7,45,0
    .goto 124,47.1,24.1,45,0
    .goto 124,39.430,21.142,70,0
    .goto 124,35.161,26.725,80 >>Vá através de The Noxious Passe para Browman Moinho
step
    .goto 124,34.1,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante do Flagelo Thalanor|r
    .turnin 12800 >>Entregue O Comando do Lich Rei
    .target Scourge Commander Thalanor
    .accept 12801 >>Aceite A Luz da Aurora
step
	#completewith next
    .goto 124,34.441,31.107
	.gossipoption 93584 >>|cRXP_WARN_Converse com o|cRXP_FRIENDLY_ Grão-lorde Dárion Mograine|r para começar a encenação|r
    >>|cRXP_WARN_Se ele não está de pé ao lado de |cRXP_FRIENDLY_Comandante do Flagelo Thalanor|r significa que a batalha está em andamento ou em preparação. A informação para isso deve estar no topo da sua tela. Vá para Capela Esperança da Luz e espere a encenação terminar|r
    .skipgossip
    .subzoneskip 2268
    .target Highlord Darion Mograine
step
    .goto 124,39.0,38.5
	>>|cRXP_WARN_Espere a encenação em Capela Esperança da Luz. Você pode se sentar e ficar fora do combate durante a batalha|r
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto 124,39.119,39.069
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .turnin 12801 >>Entregue A Luz da Aurora
    .target Highlord Darion Mograine
    .accept 13165 >>Aceite A Retomada de Áquerus
step
    #optional
    .equip 16,38633 >>|cRXP_WARN_Equipe o|r |T132480:0|t[|cFF0070FFMachadão da Lâmina de Ébano|r]
    .use 38633
    .itemcount 38633,1
step
    #optional
    .equip 16,38632 >>|cRXP_WARN_Equipe o|r |T135335:0|t[|cFF0070FFMontante da Lâmina de Ébano|r]
    .use 38632
    .itemcount 38632,1
step
	#completewith next
	.cast 50977 >>|cRXP_WARN_Lance|r |T135766:0|t[Portão da Morte]
    .usespell 50977
	.subzoneskip 4281
step
	#completewith next
    .subzone 4281 >>|cRXP_WARN_Passe pelo|r |T135766:0|t[Portão da Morte]
step
    .goto 23/0,-5650.600,2375.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .target Highlord Darion Mograine
    .turnin 13165 >>Entregue A Retomada de Áquerus
    .accept 13166 >>Aceite A Batalha pela Fortaleza de Ébano
    .trainer >>Treine suas magias de classe << wotlk/cata
step
    #completewith Pwerk
    .goto 23,83.179,48.888,5 >>Pise no teletransportador roxo para ir ao andar superior
step
    .isOnQuest 13166
    #sticky
    #label Cinderglacier
    #loop
    .waypoint 23,80.873,47.435,20,0
    .waypoint 23,81.227,44.550,20,0
    .waypoint 23,83.156,45.121,20,0
    .cast 53341 >>|cRXP_WARN_Grave sua nova arma com|r |T136130:0|t[Runa da Brasa Glacial] |cRXP_WARN_at the|r |cRXP_PICK_Runeforge|r
step
	#completewith Pwerk
	>>Mate o |cRXP_ENEMY_Flagelo|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #label Pwerk
    .goto 23,81.954,46.315
	>>Mate |cRXP_ENEMY_Retalhoso|r
    .complete 13166,1 --Patchwerk (1)
    .mob Patchwerk
step
    #loop
    .goto 23,80.873,47.435,45,0
    .goto 23,81.227,44.550,45,0
    .goto 23,83.156,45.121,45,0
	>>Mate o |cRXP_ENEMY_Flagelo|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #requires Cinderglacier
	#completewith next
    .goto 23,83.179,48.888,5 >>Pise no teletransportador roxo para viajar ao nível inferior
step
    #requires Cinderglacier
    .goto 23/0,-5650.700,2375.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .turnin 13166 >>Entregue A Batalha pela Fortaleza de Ébano
    .target Highlord Darion Mograine
    .accept 13188 >>Aceite Onde Reis Caminham << Alliance
    .accept 13189 >>Aceite Bênção do Chefe da Guerra << Horde
step << Horde
    .isOnQuest 13189
    .goto 23/0,-5696.000,2348.200
	.zone Durotar >>Pegue o portal para Orgrimmar
step << Horde
    .goto Orgrimmar,31.74,37.82 << wotlk/cata
    .goto Orgrimmar,48.112,70.480 << mop
    .target Thrall << wotlk/cata
    .target Garrosh Hellscream << mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 13189 >>Entregue Bênção do Chefe da Guerra
step << Horde
    .goto Orgrimmar,38.1,85.8 << wotlk
    .goto Orgrimmar,35.478,69.111 << cata/mop
	.zone Blasted Lands >>Pegue o Portal para as Terras Devastadas
    .zoneskip Orgrimmar,1
step << Alliance
    .isOnQuest 13188
    .goto 23/0,-5659.900,2324.400
	.zone Elwynn Forest >>Pegue o portal para Ventobravo
step << Alliance
    .goto Stormwind City,79.989,38.468 << wotlk
    .goto 84/0,232.200,-8363.000 << cata/mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Varian Wrynn|r
    .target King Varian Wrynn
    .turnin 13188 >>Entregue Onde Reis Caminham
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >>Pegue o Portal para as Terras Devastadas na Torre do Mago
    .zoneskip Stormwind City,1
]])
