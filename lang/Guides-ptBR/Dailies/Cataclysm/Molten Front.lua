if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group A Frente de Fogo
#name A_1_TMF_Início
#next B_1_TSOM_Início
#displayname |cRXP_LOOT_1.0|r - A Invasão

step
    #completewith OpeningtheDoor
	.zone 85 >>Vá para Orgrimmar << Horde
	.zone 84 >>Vá para Ventobravo << Alliance
	.zoneskip 198
step
    #completewith OpeningtheDoor
    .goto 85,51.000,38.221 << Horde
    .goto 84,76.178,18.695 << Alliance
	.zone 198 >>Use o Portal para Hyjal
step
    #label OpeningtheDoor
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29145 >>Aceite Abrindo a Porta dos Fundos
step
    .goto 198/1,-2079.100,4653.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29145 >>Entregue Abrindo a Porta dos Fundos
    .accept 29195 >>Aceite Um Ritual de Chamas
step
    .goto 198/1,-2092.900,4621.800
    >>Mate os |cRXP_ENEMY_Charred Invaders|r até sua barra de progresso completar. Isso fará com que |cRXP_ENEMY_Leyara|r venha pelo portal
    >>Mate |cRXP_ENEMY_Leyara|r
    >>|cRXP_WARN_Você não precisa marcar nela|r
    .complete 29195,1 -- Open the portal to the Firelands (1)
    .mob Charred Invader
    .mob Leyara
step
    .goto 198/1,-2092.900,4621.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 29195 >>Entregue Um Ritual de Chamas
    .accept 29196 >>Aceite Para o Santuário!
step
    .goto 198/1,-2082.800,4424.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29196 >>Entregue Para o Santuário!
    .accept 29197 >>Aceite Pegos de Surpresa
step
    .goto 198/1,-1980.300,4628.000
    >>Mate os |cRXP_ENEMY_Raging Invaders|r perto de |cRXP_FRIENDLY_Tessália Corvina|r
    .complete 29197,2 --|Kill elementals near Thisalee: 6/6
    .mob Raging Invader
    .target Thisalee Crow
step
    .goto 198/1,-2373.900,4560.100
    >>Mate os |cRXP_ENEMY_Raging Invaders|r perto de |cRXP_FRIENDLY_Galho Velho|r
    .complete 29197,1 --|Kill elementals near Elderlimb: 6/6
    .mob Raging Invader
    .target Elderlimb
step
    .goto 198/1,-2699.000,4584.200
    >>Mate os |cRXP_ENEMY_Raging Invaders|r perto de |cRXP_FRIENDLY_Tholo|r e |cRXP_FRIENDLY_Anren|r
    .complete 29197,3 --|Kill elementals near Tholo and Anren: 6/6
    .mob Raging Invader
    .target Tholo
    .target Anren
step
    .goto 198/1,-2082.200,4423.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29197 >>Entregue Pegos de Surpresa
    .accept 29198 >>Aceite O Santuário Não Pode Sucumbir
step
    .goto 198/1,-2080.200,4421.700
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29198,1
step
    .goto 198/1,-2080.200,4421.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 29198 >>Entregue O Santuário Não Pode Sucumbir
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .target Arch Druid Hamuul Runetotem
    .accept 29199 >>Aceite Chamando Reforços
step
    .goto 198/1,-2082.700,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .daily 29123,29149,29127,29163,29166 >>Aceite qualquer missão diária aleatória que for oferecida
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Clique em um |cRXP_FRIENDLY_Filho de Tortolla|r
    >>|cRXP_WARN_Mire para a água e lance|r |T132219:0|t[Chutar Tartaruga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .use 69235 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_nos cadáveres deles|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_Use a|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_para se transformar nas|r |cRXP_FRIENDLY_Asas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_Use a|r |T132172:0|t[Chamar a Revoada] (1) |cRXP_WARN_habilidade perto de|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r e |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Fique parado em frente ao |cRXP_FRIENDLY_Espírito de Malorne|r
    >>|cRXP_WARN_Estes são os cervos fantasmas que carregam aleatoriamente|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>Clique em |cRXP_PICK_Escalando Árvore|r para começar a escalar
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Clique em um |cRXP_FRIENDLY_Ursinho de Hyjal|r enquanto estiver na árvore
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lance|r |T450907:0|t[Subir] (1) |cRXP_WARN_até estar no topo, aponte a seta para o trampolim ao lado do |cRXP_FRIENDLY_Guardião Taldros|r, depois lance|r |T446127:0|t[Taca-urso] (4) |cRXP_WARN_. Lance|r |T450905:0|t[Descer] (2) |cRXP_WARN_e repita o processo|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    .isOnQuest 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29161 >>Entregue Lançamento de Ursos
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isQuestTurnedIn 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isOnQuest 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29125 >>Entregue Entre as Árvores
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isOnQuest 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29147 >>Entregue Chamar a Revoada
    .accept 29148 >>Aceite Asas em Chamas
step
    .isQuestTurnedIn 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29148 >>Aceite Asas em Chamas
step
    .isOnQuest 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29164 >>Entregue Aperfeiçoando o Uivo
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isQuestTurnedIn 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isOnQuest 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29101 >>Entregue Salvem as Tartarugas
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    .isQuestTurnedIn 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>Abate |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para também remover a|r |T136016:0|t[Seta Venenosa Fervente] |cRXP_WARN_debuff de você que |cRXP_ENEMY_Pyrachnis|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_Use o|r |T135139:0|t[Cajado do Guardião] |cRXP_WARN_no |cRXP_PICK_Pile of Cinza|r para invocar|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>Abate |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_Use o|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_perto do portal de chama ocidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>Abate |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>Abate |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Converse com |cRXP_FRIENDLY_Tuga|r para invocar |cRXP_ENEMY_Nêmesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mate o |cRXP_ENEMY_Nêmesis|r
    >>|cRXP_WARN_Parado|cRXP_FRIENDLY_ sob o casco de |rTuga|r para se proteger de|cRXP_ENEMY_ Nêmesis|r |T135830:0|t[Fúria Derretida] |cRXP_WARN_lançamento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entregue Bênção da Natureza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entregue Ecos de Nêmesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entregue O Poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entregue O Chamado da Matilha
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entregue Asas em Chamas
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entregue Suprimentos para o Outro Lado
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entregue Raiva Contra as Chamas
step
    .goto 198/1,-2080.200,4417.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .target Arch Druid Hamuul Runetotem
    .turnin 29199 >>Entregue Chamando Reforços
    .accept 29200 >>Aceite Leyara
step
    .goto 198/1,-1214.200,5236.700
    >>Fale com |cRXP_ENEMY_Leyara|r
    .complete 29200,1 --|Find Leyara: 1/1
    .mob Leyara
step
    .goto 198/1,-2082.700,4424.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29200 >>Entregue Leyara
step
    .goto 198/1,-2076.300,4420.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .accept 29201 >>Aceite Pelos Portões do Inferno
step
    #completewith GatesofHell
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    >>Abate o |cRXP_ENEMY_Lavalorde Obsidiano|r
    .complete 29201,1 --|Secure a foothold in the Firelands: 1/1
    .mob Obsidian Slaglord
step
    #label GatesofHell
    .goto 338,47.151,90.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 29201 >>Entregue Pelos Portões do Inferno
]])


RXPGuides.RegisterGuide([[
#cata
#version 1
#group A Frente de Fogo
#name B_1_TSOM_Início
#next C_1_TSOM_Druids
#displayname |cRXP_FRIENDLY_2.0|r - A Frente Derretida

--Molten Front quests

step
    #completewith WispAway
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .daily 29139,29143 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Rayne Feathersong
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Ferrárbol|r
    .daily 29138 >>Aceite Vítimas de Queimadura
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .daily 29179 >>Aceite Elementos Hostis
    .daily 29304,29141,29142,29137 >>Aceite qualquer missão diária aleatória que for oferecida
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >>|cRXP_WARN_Use a|r |T463860:0|t[Pomada Encantada] |cRXP_WARN_em|r |cRXP_FRIENDLY_Defensores de Hyjal Feridos|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Abate os |cRXP_ENEMY_Charred Vanquishers|r e os |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier


step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate os |cRXP_ENEMY_Cães de Chama|r e os |cRXP_ENEMY_Cães de Chama Antigos|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate os |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Abate os |cRXP_ENEMY_Druida da Chama|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Clique nas |cRXP_PICK_Ash Piles|r no chão
    .complete 29139,1 -- Smothervine planted (5)
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_Leve o |cRXP_FRIENDLY_Fogo-fátuo de Hyjal|r que o segue até um Portal de Fogo|r
    >>|cRXP_WARN_Mate os inimigos que saírem dele. Certifique-se de que o |cRXP_FRIENDLY_Fogo-fátuo de Hyjal|r não morra!|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29179 >>Entregue Elementos Hostis
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29304 >>Entregue Os Cães da Guerra
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29141 >>Entregue Quanto Mais Dura a Queda
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29142 >>Entregue Retorno dos Traidores
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29137 >>Entregue Falha na Defesa
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Ferrárbol|r
    .dailyturnin 29138 >>Entregue Vítimas de Queimadura
    .target Captain Irontree
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .dailyturnin 29139 >>Entregue Agressivo Crescimento
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .dailyturnin 29143 >>Entregue Fogo-fátuo Afastado
    .target Rayne Feathersong




--Hyjal quests

step
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Soren Lunapoente|r
    .target Captain Soren Moonfall
    .daily 29128 >>Aceite Os Protetores de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Clique em um |cRXP_FRIENDLY_Filho de Tortolla|r
    >>|cRXP_WARN_Mire para a água e lance|r |T132219:0|t[Chutar Tartaruga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .use 69235 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_nos cadáveres deles|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_Use a|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_para se transformar nas|r |cRXP_FRIENDLY_Asas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_Use a|r |T132172:0|t[Chamar a Revoada] (1) |cRXP_WARN_habilidade perto de|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r e |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Fique parado em frente ao |cRXP_FRIENDLY_Espírito de Malorne|r
    >>|cRXP_WARN_Estes são os cervos fantasmas que carregam aleatoriamente|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>Clique em |cRXP_PICK_Escalando Árvore|r para começar a escalar
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Clique em um |cRXP_FRIENDLY_Ursinho de Hyjal|r enquanto estiver na árvore
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lance|r |T450907:0|t[Subir] (1) |cRXP_WARN_até estar no topo, aponte a seta para o trampolim ao lado do |cRXP_FRIENDLY_Guardião Taldros|r, depois lance|r |T446127:0|t[Taca-urso] (4) |cRXP_WARN_. Lance|r |T450905:0|t[Descer] (2) |cRXP_WARN_e repita o processo|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    .isOnQuest 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29161 >>Entregue Lançamento de Ursos
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isQuestTurnedIn 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isOnQuest 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29125 >>Entregue Entre as Árvores
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isOnQuest 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29147 >>Entregue Chamar a Revoada
    .accept 29148 >>Aceite Asas em Chamas
step
    .isQuestTurnedIn 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29148 >>Aceite Asas em Chamas
step
    .isOnQuest 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29164 >>Entregue Aperfeiçoando o Uivo
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isQuestTurnedIn 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isOnQuest 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29101 >>Entregue Salvem as Tartarugas
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    .isQuestTurnedIn 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>Abate |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para também remover a|r |T136016:0|t[Seta Venenosa Fervente] |cRXP_WARN_debuff de você que |cRXP_ENEMY_Pyrachnis|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_Use o|r |T135139:0|t[Cajado do Guardião] |cRXP_WARN_no |cRXP_PICK_Pile of Cinza|r para invocar|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>Abate |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_Use o|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_perto do portal de chama ocidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>Abate |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>Abate |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Converse com |cRXP_FRIENDLY_Tuga|r para invocar |cRXP_ENEMY_Nêmesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mate o |cRXP_ENEMY_Nêmesis|r
    >>|cRXP_WARN_Parado|cRXP_FRIENDLY_ sob o casco de |rTuga|r para se proteger de|cRXP_ENEMY_ Nêmesis|r |T135830:0|t[Fúria Derretida] |cRXP_WARN_lançamento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Mate os |cRXP_ENEMY_Charred Flamewakers|r. Saqueie-os para suas |cRXP_LOOT_Flamewaker Escamoso|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r e os |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r. Saqueie-os para suas |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Seething Pyrelords|r. Saqueie-os para seus |cRXP_LOOT_Flame-Wreathed Corações|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r e os |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entregue Bênção da Natureza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entregue Ecos de Nêmesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entregue O Poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entregue O Chamado da Matilha
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entregue Asas em Chamas
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entregue Suprimentos para o Outro Lado
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Entregue Aliviando a Dor
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Entregue Tratando as Feridas
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Entregue Soltando a Pressão
step
    #completewith next
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29128 >>Entregue Os Protetores de Hyjal
    .target General Taldris Moonfall
step
    #completewith FinishDruids
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .accept 29181 >>Aceite Druidas do Gadanho
    --.accept 29214 >>Accept The Shadow Wardens
    .target Malfurion Stormrage
step
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
step
    .isQuestComplete 29181
    .goto 198,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senhor Celeste Omnuron|r
    .turnin 29181 >>Entregue Druidas do Garra
    .target Skylord Omnuron
step
    #label FinishDruids
    .isQuestAvailable 29181
    +|cRXP_WARN_Você completou todas as missões diárias disponíveis para hoje. Recarregue este mesmo guia amanhã (|r|cRXP_FRIENDLY_2.0|r - A Frente Derretida|cRXP_WARN_) para continuar completando as missões diárias até obter o suficiente|r |T513195:0|t[Marcas da Árvore do Mundo]

-- Beginning of Druids questline if turned in
step
    .isQuestTurnedIn 29181
    .goto 198/1,-2740.000,4902.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isara Passorrio|r
    .target Isara Riverstride
    .accept 29182 >>Aceite O Voo dos Corvos da Tempestade
step
    #completewith next
    .isOnQuest 29182
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isQuestComplete 29181
    .goto 338,43.028,80.598
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senhor Celeste Omnuron|r
    .turnin 29182 >>Entregue O Voo dos Corvos da Tempestade
    .target Skylord Omnuron
step
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .daily 29206 >>Aceite Into the Fogo
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escorte e proteja o |cRXP_FRIENDLY_Windcaller|r através do fogo
    >>Mate o |cRXP_ENEMY_Lorde da Pira|r no final
    >>Fale com o |cRXP_FRIENDLY_Senhor Celeste Omnuron|r logo antes do fogo se um |cRXP_FRIENDLY_Windcaller|r não estiver presente
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Nordrala
    .skipgossip
step
    #completewith next
    .subzone 5746 >>|cRXP_WARN_Largue-se pelo grande buraco. Vá para|r |cRXP_FRIENDLY_Tessália Corvina|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tessália Corvina|r
    .dailyturnin 29206 >>Entregue Into the Fogo
    .daily 29264 >>Aceite Flamewakers of the Derretido Fluxo
    .daily 29265 >>Aceite Fogo Flores
    .target Thisalee Crow
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #completewith AnrenEscort
    >>Mate os |cRXP_ENEMY_Sentinelas Flamewaker|r, os |cRXP_ENEMY_Caçadores Flamewaker|r e os |cRXP_ENEMY_Xamã Ardilante|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #completewith AnrenEscort
    >>Saque o |cRXP_LOOT_Luciferns|r no chão
    .complete 29265,1 -- Lucifern (5)
step
    .isQuestTurnedIn 29181
    .goto 338,51.897,30.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anren Buscassombra|r
    .accept 29272 >>Aceite Preciso... Muito... de Água
    .target Anren Shadowseeker
step
    .isOnQuest 29272
    .goto 338,51.897,30.965
    .gossip 53233 >>Fale com |cRXP_FRIENDLY_Anren Buscassombra|r novamente para começar a escolta
    .skipgossip
    .target Anren Shadowseeker
step
    #label AnrenEscort
    .isOnQuest 29272
    .goto 338,42.59,59.85
    >>Escorte |cRXP_FRIENDLY_Anren Buscassombra|r
    >>|cRXP_WARN_Siga-o de perto e pule pelo|r |T514278:0|t[Thermal Ventilação] |cRXP_WARN_ao seu lado|r
    .complete 29272,1 -- Escort Anren Shadowseeker to the front of the cave 1/1
    .target Anren Shadowseeker
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Mate os |cRXP_ENEMY_Sentinelas Flamewaker|r, os |cRXP_ENEMY_Caçadores Flamewaker|r e os |cRXP_ENEMY_Xamã Ardilante|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Saque o |cRXP_LOOT_Luciferns|r no chão
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tessália Corvina|r
    .dailyturnin 29264 >>Entregue Flamewakers of the Derretido Fluxo
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    .aura 98833 >>|cRXP_WARN_Retorne para a grande abertura de onde você pulou. Fique em|r |T514278:0|t[Fonte Termal]|cRXP_WARN_, depois salte para retornar à superfície da Frente Derretida|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidDailies
    .goto 338,33.08,67.62
    +|cRXP_WARN_Salte para retornar à superfície da Frente Derretida|r
    .subzoneskip 5746,1
step
    .isQuestComplete 29272
    .goto 338,35.983,58.988
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r
    .turnin 29272 >>Entregue Preciso... Muito... de Água
    .target Tholo Whitehoof
step
    .isQuestTurnedIn 29272
    .goto 338,35.860,59.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r ou |cRXP_FRIENDLY_Anren Buscassombra|r
    .daily 29273,29274 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Tholo Whitehoof
    .target Anren Shadowseeker
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Entregue Fogo Flores
    .target Choluna
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .daily 29290,29287,29288 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    #label DruidDailies
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arthorn Cantéolo|r
    .daily 29293,29296 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >>Monte o |cRXP_FRIENDLY_Falcão de Fogo Treinado|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Lançar|r |T135821:0|t[Semente de Fogo] (1) |cRXP_WARN_e|r |T451164:0|t[Estouro Flamejante] (2) |cRXP_WARN_to kill|cRXP_ENEMY_ Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r and|r |cRXP_ENEMY_Molten Lords|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_Lançar|r |T514278:0|t[Retorno à Fornalha] (6) |cRXP_WARN_para retornar|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296
    .subzone 5748 >>|cRXP_WARN_Use os Degraus para chegar a Fireplume Serra. Tente usar uma saída de ar no final dos Degraus, pois ao fazer isso você receberá o|r |T236222:0|t[Ventos da Convalescença] |cRXP_WARN_buff que aumenta sua velocidade de ataque e Haste em 100% e permite que você pule muito mais alto e longe do que o Normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Usar|r |T135155:0|t[Termômetro de Dholo] |cRXP_PICK_Lava Pools|r
    >>|cRXP_WARN_Você pode usar|r |T135155:0|t[Termômetro de Dholo] |cRXP_WARN_enquanto permanece na montaria|r
    >>|cRXP_WARN_Salte usando os|r |T514278:0|t[Thermal Ventilação] |cRXP_WARN_localizados em todo Fireplume Peak para chegar ao topo|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>Saque a |cRXP_LOOT_Ovo de Falcão de Fogo|r do topo de Fireplume Peak
    >>|cRXP_WARN_Salte usando os|r |T514278:0|t[Thermal Ventilação] |cRXP_WARN_localizados em todo Fireplume Peak para chegar ao topo|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Clique os |cRXP_FRIENDLY_Injured Druidas do Gadanho|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Druid of the Talon
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Abate os |cRXP_ENEMY_Fire Hawks|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Clique os |cRXP_FRIENDLY_Fire Águia Hatchlings|r
    >>|cRXP_WARN_O topo de Fireplume Peak tem uma grande quantidade deles|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
 step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .dailyturnin 29290 >>Entregue Fogo in the Skies
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .dailyturnin 29287 >>Entregue Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .dailyturnin 29288 >>Entregue Início Young
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arthorn Cantéolo|r
    .dailyturnin 29293 >>Entregue Chamuscado Asas
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arthorn Cantéolo|r
    .dailyturnin 29296 >>Entregue Territorial Birds
    .target Arthorn Windsong
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anren Buscassombra|r
    .dailyturnin 29273 >>Entregue How Quente
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r
    .dailyturnin 29274 >>Entregue Hounds of Shannox
    .target Tholo Whitehoof
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    --.accept 29181 >>Accept Druids of the Talon
    .accept 29214 >>Aceite As Guardiãs das Sombras
    .target Malfurion Stormrage
step
    .isQuestTurnedIn 29181
    +|cRXP_WARN_Você completou todas as missões diárias disponíveis para hoje. Recarregue o (|r|cRXP_ENEMY_2.5|r - A Frente Derretida + Druidas|cRXP_WARN_) guia amanhã para continuar completando as missões diárias até adquirir o suficiente|r |T513195:0|t[Marcas da Árvore do Mundo]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group A Frente de Fogo
#name C_1_TSOM_Druids
--#next D_1_TSOM_Wardens
--Making guide not auto change so user has choice of which daily quests they want to do out of Druids/Wardens
#displayname |cRXP_ENEMY_2.5|r - A Frente Derretida + Druidas

step
    #optional
    .isQuestAvailable 29181
    +|cRXP_WARN_Você deve primeiro coletar 150|r |T513195:0|t[Marcas da Árvore do Mundo] |cRXP_WARN_e entregar a missão [Druidas do Gadanho] para completar as missões diárias para eles|r
    >>|cRXP_WARN_Continue completando o (|r|cRXP_FRIENDLY_2.0|r - A Frente Derretida|cRXP_WARN_) guia até ter o suficiente|r |T513195:0|t[Marcas da Árvore do Mundo]
    .goto 198,47.017,91.361
    .turnin 29181 >>Entregue Druidas do Garra
    .target Skylord Omnuron
step
    #optional
    #completewith HyjalQuests
	.zone 85 >>Vá para Orgrimmar << Horde
	.zone 84 >>Vá para Ventobravo << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Use o Portal para Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Soren Lunapoente|r
    .target Captain Soren Moonfall
    .daily 29128 >>Aceite Os Protetores de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Clique em um |cRXP_FRIENDLY_Filho de Tortolla|r
    >>|cRXP_WARN_Mire para a água e lance|r |T132219:0|t[Chutar Tartaruga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .use 69235 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_nos cadáveres deles|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_Use a|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_para se transformar nas|r |cRXP_FRIENDLY_Asas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_Use a|r |T132172:0|t[Chamar a Revoada] (1) |cRXP_WARN_habilidade perto de|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r e |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Fique parado em frente ao |cRXP_FRIENDLY_Espírito de Malorne|r
    >>|cRXP_WARN_Estes são os cervos fantasmas que carregam aleatoriamente|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>Clique em |cRXP_PICK_Escalando Árvore|r para começar a escalar
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Clique em um |cRXP_FRIENDLY_Ursinho de Hyjal|r enquanto estiver na árvore
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lance|r |T450907:0|t[Subir] (1) |cRXP_WARN_até estar no topo, aponte a seta para o trampolim ao lado do |cRXP_FRIENDLY_Guardião Taldros|r, depois lance|r |T446127:0|t[Taca-urso] (4) |cRXP_WARN_. Lance|r |T450905:0|t[Descer] (2) |cRXP_WARN_e repita o processo|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    .isOnQuest 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29161 >>Entregue Lançamento de Ursos
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isQuestTurnedIn 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isOnQuest 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29125 >>Entregue Entre as Árvores
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isOnQuest 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29147 >>Entregue Chamar a Revoada
    .accept 29148 >>Aceite Asas em Chamas
step
    .isQuestTurnedIn 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29148 >>Aceite Asas em Chamas
step
    .isOnQuest 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29164 >>Entregue Aperfeiçoando o Uivo
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isQuestTurnedIn 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isOnQuest 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29101 >>Entregue Salvem as Tartarugas
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    .isQuestTurnedIn 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>Abate |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para também remover a|r |T136016:0|t[Seta Venenosa Fervente] |cRXP_WARN_debuff de você que |cRXP_ENEMY_Pyrachnis|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_Use o|r |T135139:0|t[Cajado do Guardião] |cRXP_WARN_no |cRXP_PICK_Pile of Cinza|r para invocar|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>Abate |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_Use o|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_perto do portal de chama ocidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>Abate |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>Abate |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Converse com |cRXP_FRIENDLY_Tuga|r para invocar |cRXP_ENEMY_Nêmesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mate o |cRXP_ENEMY_Nêmesis|r
    >>|cRXP_WARN_Parado|cRXP_FRIENDLY_ sob o casco de |rTuga|r para se proteger de|cRXP_ENEMY_ Nêmesis|r |T135830:0|t[Fúria Derretida] |cRXP_WARN_lançamento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Mate os |cRXP_ENEMY_Charred Flamewakers|r. Saqueie-os para suas |cRXP_LOOT_Flamewaker Escamoso|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r e os |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r. Saqueie-os para suas |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Seething Pyrelords|r. Saqueie-os para seus |cRXP_LOOT_Flame-Wreathed Corações|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r e os |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entregue Bênção da Natureza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entregue Ecos de Nêmesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entregue O Poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entregue O Chamado da Matilha
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entregue Asas em Chamas
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entregue Suprimentos para o Outro Lado
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Entregue Aliviando a Dor
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Entregue Tratando as Feridas
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Entregue Soltando a Pressão
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isQuestTurnedIn 29215 -- If turned in quest to unlock Wardens
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .daily 29139,29143 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >>Aceite qualquer missão diária aleatória que for oferecida
    >>|cRXP_WARN_Pule este passo se |cRXP_FRIENDLY_Ricket|r não está oferecendo uma missão aqui hoje|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Ferrárbol|r
    .daily 29138 >>Aceite Vítimas de Queimadura
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .daily 29179 >>Aceite Elementos Hostis
    .daily 29304,29141,29142,29137 >>Aceite qualquer missão diária aleatória que for oferecida
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29128 >>Entregue Os Protetores de Hyjal
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >>|cRXP_WARN_Use a|r |T463860:0|t[Pomada Encantada] |cRXP_WARN_em|r |cRXP_FRIENDLY_Defensores de Hyjal Feridos|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mate os |cRXP_ENEMY_Calcinado Soldiers|r e os |cRXP_ENEMY_Calcinado Vanquishers|r. Saque-os para obter o |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Abate os |cRXP_ENEMY_Charred Vanquishers|r e os |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate os |cRXP_ENEMY_Cães de Chama|r e os |cRXP_ENEMY_Cães de Chama Antigos|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate os |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Abate os |cRXP_ENEMY_Druida da Chama|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Clique nas |cRXP_PICK_Ash Piles|r no chão
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Saque o |cRXP_LOOT_Magmolia|r dentro das pequenas piscinas de lava
    >>|cRXP_WARN_Se um |cRXP_ENEMY_Estoura-lava|r aparecer depois de saquear um, mate-o e saqueie-o para obter o|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Pegue seu |cRXP_FRIENDLY_Açoitadeira Carmesim|r e combata|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lance|r |T135834:0|t[Armadilha Congelante] |cRXP_WARN_em um |cRXP_ENEMY_Escorpião Cospe-brasa|r. Ele lançará|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuamente enquanto sua |cRXP_FRIENDLY_Açoitadeira Carmesim|r bebe-os, deixando você completar este diário com apenas um|r |cRXP_ENEMY_Escorpião Cospe-brasa|r << Hunter
    >>|cRXP_WARN_Os |cRXP_ENEMY_Escorpiões Cospe-brasa|r lançarão|r |T135826:0|t[Ember Pools] |cRXP_WARN_que sua |cRXP_FRIENDLY_Açoitadeira Carmesim|r beberá|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Clique nas |cRXP_PICK_Lava Bolhas|r dentro das lagoas de lava para invocar um |cRXP_ENEMY_Verme de Magmático Subterrâneo|r
    .use 69759 >>|cRXP_WARN_Quando você vê a mensagem de aviso: "O verme está prestes a morder! Coloque a bomba agora!" Use|r |T133710:0|t[O Remédio Amargo]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Clique em |cRXP_PICK_Pedras Magnéticas|r e então pegue |cRXP_LOOT_Meteoritos de Obsidium|r que caem
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_Leve o |cRXP_FRIENDLY_Fogo-fátuo de Hyjal|r que o segue até um Portal de Fogo|r
    >>|cRXP_WARN_Mate os inimigos que saírem dele. Certifique-se de que o |cRXP_FRIENDLY_Fogo-fátuo de Hyjal|r não morra!|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Entregue Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Entregue Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Entregue Some Like It Quente
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .dailyturnin 29139 >>Entregue Agressivo Crescimento
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .dailyturnin 29143 >>Entregue Fogo-fátuo Afastado
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29263 >>Entregue A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29278 >>Entregue Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29295 >>Entregue The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29297 >>Entregue Adeus Adeus Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29179 >>Entregue Elementos Hostis
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29304 >>Entregue Os Cães da Guerra
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29141 >>Entregue Quanto Mais Dura a Queda
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29142 >>Entregue Retorno dos Traidores
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29137 >>Entregue Falha na Defesa
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Ferrárbol|r
    .dailyturnin 29138 >>Entregue Vítimas de Queimadura
    .target Captain Irontree

-- Checking if can turn in The Shadow Wardens before starting Druids quests for the day
step
    .goto 338,47.017,91.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .accept 29214 >>Aceite As Guardiãs das Sombras
    .target Malfurion Stormrage
step
    #completewith THB
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
step
    .isQuestComplete 29214
    .goto 198,26.799,62.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Saynna Tempestapasso|r
    .turnin 29214 >>Entregue As Guardiãs das Sombras
    .target Captain Saynna Stormrunner

-- Beginning of Wardens questline if turned in
step
    #label THB
    .isQuestTurnedIn 29214
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    >>|cRXP_WARN_NOTA: Se você acabou de entregar [As Guardiãs das Sombras] missão e |cRXP_FRIENDLY_Matogarra|r não está oferecendo a você esta missão ainda, você só pode aceitá-la após as missões diárias reiniciarem. Verifique novamente amanhã|r
    .target Matoclaw
    .accept 29215 >>Aceite A caçada começa
step
    #completewith ITF
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29215
    .goto 338,47.584,90.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Saynna Tempestapasso|r
    .turnin 29215 >>Entregue A caçada começa
    .target Captain Saynna Stormrunner
step
    #completewith next
    .goto 338,57.02,66.92,40,0
    .goto 338,71.30,38.43
    .subzone 5744 >>Vá para Wildflame Ponto
step
    .isQuestTurnedIn 29215
    .goto 338,71.309,38.430
    >>Mate um |cRXP_ENEMY_Druida da Chama|r. Ele soltará uma |cRXP_PICK_Bolota Seca|r no chão
    >>|cRXP_WARN_Você deve matar |cRXP_ENEMY_Druidas da Chama|r no Ponto Chama Selvagem. Os nos Campos de Cinzas não contarão|r
    >>Clique na |cRXP_PICK_Bolota Seca|r no chão
    .accept 29245 >>Aceite A Semente Misteriosa
    .mob Druid of the Flame
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .turnin 29245 >>Entregue A Semente Misteriosa
    .accept 29249 >>Aceite Época de Plantio
    .target Avrilla
step
    .isOnQuest 29249
    .goto 338,53.527,90.736
    .cast 8386,6477,6478 >>Clique na |cRXP_PICK_Terra de Un'Goro|r no chão
    .timer 10,Época de Plantio RP
step
    .isQuestTurnedIn 29215
    .goto 338,53.527,90.736
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29249,1 -- Acorn Planted 1/1
step
    .isQuestTurnedIn 29215
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29249 >>Entregue Época de Plantio
    .accept 29254 >>Aceite Açoitadeirinha
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .turnin 29254 >>Entregue Açoitadeirinha
    .target Avrilla
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Avrilla
step -- Embergris 29255
    .isOnQuest 29255
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mate os |cRXP_ENEMY_Calcinado Soldiers|r e os |cRXP_ENEMY_Calcinado Vanquishers|r. Saque-os para obter o |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Saque o |cRXP_LOOT_Magmolia|r dentro das pequenas piscinas de lava
    >>|cRXP_WARN_Se um |cRXP_ENEMY_Estoura-lava|r aparecer depois de saquear um, mate-o e saqueie-o para obter o|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Pegue seu |cRXP_FRIENDLY_Açoitadeira Carmesim|r e combata|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lance|r |T135834:0|t[Armadilha Congelante] |cRXP_WARN_em um |cRXP_ENEMY_Escorpião Cospe-brasa|r. Ele lançará|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuamente enquanto sua |cRXP_FRIENDLY_Açoitadeira Carmesim|r bebe-os, deixando você completar este diário com apenas um|r |cRXP_ENEMY_Escorpião Cospe-brasa|r << Hunter
    >>|cRXP_WARN_Os |cRXP_ENEMY_Escorpiões Cospe-brasa|r lançarão|r |T135826:0|t[Ember Pools] |cRXP_WARN_que sua |cRXP_FRIENDLY_Açoitadeira Carmesim|r beberá|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Entregue Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Entregue Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Entregue Some Like It Quente
    .target Avrilla
step
    #label ITF
    .isQuestTurnedIn 29181
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .daily 29206 >>Aceite Into the Fogo
    .target General Taldris Moonfall
step
    .isOnQuest 29206
    .goto 338,43.15,80.14,10,0
    .goto 338,33.83,67.40
    >>Escorte e proteja o |cRXP_FRIENDLY_Windcaller|r através do fogo
    >>Mate o |cRXP_ENEMY_Lorde da Pira|r no final
    >>Fale com o |cRXP_FRIENDLY_Senhor Celeste Omnuron|r logo antes do fogo se um |cRXP_FRIENDLY_Windcaller|r não estiver presente
    .complete 29206,1 -- Druid of the Talon Windcaller protected 1/1
    .mob Flamewaker Assassin
    .mob Pyrelord
    .target Windcaller Nordrala
    .target Windcaller Voramus
    .skipgossip
step << skip
    .goto 338,34.400,66.213
    .subzone 5746 >>Clique na |cRXP_PICK_Corda de Rapel|r para descer ao Fluxo de Lava
step
    #completewith next
    .subzone 5746 >>|cRXP_WARN_Largue-se pelo grande buraco. Vá para|r |cRXP_FRIENDLY_Tessália Corvina|r
step
    .isQuestTurnedIn 29181
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tessália Corvina|r
    .dailyturnin 29206 >>Entregue Into the Fogo
    .daily 29264 >>Aceite Flamewakers of the Derretido Fluxo
    .daily 29265 >>Aceite Fogo Flores
    .target Thisalee Crow
step
    .isQuestTurnedIn 29272
    .goto 338,41.772,61.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anren Buscassombra|r
    >>|cRXP_WARN_NOTA: Se |cRXP_FRIENDLY_Anren Buscassombra|r não apareceu aqui embaixo, pule este passo|r
    .daily 29274 >>Aceite Cães de Shannox
    .target Anren Shadowseeker
    .questcount <1,29273,29274
step -- 29264 Flamewakers of the Molten Flow
    .isOnQuest 29264
    #sticky
    #label FOTMF
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Mate os |cRXP_ENEMY_Sentinelas Flamewaker|r, os |cRXP_ENEMY_Caçadores Flamewaker|r e os |cRXP_ENEMY_Xamã Ardilante|r
    .complete 29264,1 -- Flamewaker slain (8)
    .mob Flamewaker Sentinel
    .mob Flamewaker Shaman
    .mob Flamewaker Hunter
step
    .isOnQuest 29274
    #sticky
    #label Houndbones
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Mate os |cRXP_ENEMY_Charhounds|r. Saque-os para obter |cRXP_LOOT_Cinzas de Osso de Cão|r
    .complete 29274,1 -- Houndbone Ash (6)
    .mob Charhound
step -- 29265 Fire Flowers
    .isOnQuest 29265
    #sticky
    #label Lucifern
    #loop
    .goto 338,50.15,58.80,70,0
    .goto 338,43.39,51.11,70,0
    .goto 338,51.48,39.68,70,0
    .goto 338,52.74,54.06,70,0
    >>Saque o |cRXP_LOOT_Luciferns|r no chão
    .complete 29265,1 -- Lucifern (5)
step
    #optional
    #requires FOTMF
step
    #optional
    #requires Lucifern
step
    #optional
    #requires Houndbones
step
    .isQuestComplete 29264
    .goto 338,42.541,59.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tessália Corvina|r
    .dailyturnin 29264 >>Entregue Flamewakers of the Derretido Fluxo
    .target Thisalee Crow
step
    #label ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    .aura 98833 >>|cRXP_WARN_Retorne para a grande abertura de onde você pulou. Fique em|r |T514278:0|t[Fonte Termal]|cRXP_WARN_, depois salte para retornar à superfície da Frente Derretida|r
    .subzoneskip 5746,1
step
    #requires ExitUnderground
    #completewith DruidEnd
    .goto 338,33.08,67.62
    +|cRXP_WARN_Salte para retornar à superfície da Frente Derretida|r
    .subzoneskip 5746,1
step
    .isQuestTurnedIn 29272
    .goto 338,35.985,58.974
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r
    .daily 29273 >>Aceite Que Quente
    .disablecheckbox
    .target Tholo Whitehoof
    .questcount <1,29273,29274
step
    .isQuestComplete 29265
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Choluna|r
    .dailyturnin 29265 >>Entregue Fogo Flores
    .target Choluna
step -- Ricket @ DRUIDS
    .isQuestTurnedIn 29282
    .goto 338,36.251,56.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Pular este passo se ela não está aqui|r
    .daily 29263,29278,29295,29297 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Ricket
step
    .isQuestTurnedIn 29181
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .daily 29290,29287,29288 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Morthis Whisperwing
step
    .isQuestTurnedIn 29181
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arthorn Cantéolo|r
    .daily 29293,29296 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Arthorn Windsong
step
    #completewith next
    .goto 338,33.808,57.177
    .isOnQuest 29290
    .vehicle >>Monte o |cRXP_FRIENDLY_Falcão de Fogo Treinado|r
    .target Trained Fire Hawk
step
    .isOnQuest 29290
    >>|cRXP_WARN_Lançar|r |T135821:0|t[Semente de Fogo] (1) |cRXP_WARN_e|r |T451164:0|t[Estouro Flamejante] (2) |cRXP_WARN_to kill|cRXP_ENEMY_ Flamewakers|r, |cRXP_ENEMY_Cinderwebs|r and|r |cRXP_ENEMY_Molten Lords|r
    .complete 29290,1 -- Amassing Flamewakers slain  (100)
    .mob +Flamewaker Centurion
    .mob +Flamewaker Cauterizer
    .mob +Flamewaker Incinerator
    .complete 29290,2 -- Amassing Cinderwebs slain  (40)
    .mob +Cinderweb Skitterer
    .mob +Cinderweb Clutchkeeper
    .mob +Cinderweb Matriarch
    .complete 29290,3 -- Molten Lords slain (3)
    .mob +Molten Lord
step
    .isQuestComplete 29290
    .subzone 5745 >>|cRXP_WARN_Lançar|r |T514278:0|t[Retorno à Fornalha] (6) |cRXP_WARN_para retornar|r
    .subzoneskip 5748
step
    #optional
    #sticky
    .isOnQuest 29287,29288,29293,29296,29273
    .subzone 5748 >>|cRXP_WARN_Use os Degraus para chegar a Fireplume Serra. Tente usar uma saída de ar no final dos Degraus, pois ao fazer isso você receberá o|r |T236222:0|t[Ventos da Convalescença] |cRXP_WARN_buff que aumenta sua velocidade de ataque e Haste em 100% e permite que você pule muito mais alto e longe do que o Normal|r
step
    #sticky
    #label HowHot
    .isOnQuest 29273
    .use 69806 >>|cRXP_WARN_Usar|r |T135155:0|t[Termômetro de Dholo] |cRXP_PICK_Lava Pools|r
    >>|cRXP_WARN_Você pode usar|r |T135155:0|t[Termômetro de Dholo] |cRXP_WARN_enquanto permanece na montaria|r
    >>|cRXP_WARN_Salte usando os|r |T514278:0|t[Thermal Ventilação] |cRXP_WARN_localizados em todo Fireplume Peak para chegar ao topo|r
    .complete 29273,2 --|Northeastern Lava Pool sampled: 1/1
    .goto 338,30.748,31.572,-1
    .complete 29273,1 --|Northwestern Lava Pool sampled: 1/1
    .goto 338,21.364,29.851,-1
    .complete 29273,3 --|Central Lava Pool sampled: 1/1
    .goto 338,23.276,41.385,-1
step
    #sticky
    #label FireHawkEgg
    .isOnQuest 29287
    .goto 338,23.790,41.557
    >>Saque a |cRXP_LOOT_Ovo de Falcão de Fogo|r do topo de Fireplume Peak
    >>|cRXP_WARN_Salte usando os|r |T514278:0|t[Thermal Ventilação] |cRXP_WARN_localizados em todo Fireplume Peak para chegar ao topo|r
    .complete 29287,1 -- Fire Hawk Egg (1)
step
    #sticky
    #label InjuredDruids
    .isOnQuest 29293
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Clique os |cRXP_FRIENDLY_Injured Druidas do Gadanho|r
    .complete 29293,1 -- Druids of the Talon rescued (5)
    .target Injured Druid of the Talon
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #sticky
    #label ObsidiumChips
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Mate os |cRXP_ENEMY_Obsidium Punishers|r. Pegue seus |cRXP_LOOT_Living Obsidium Pedrico|r detritos no chão depois
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step
    #sticky
    #label FireHawks
    .isOnQuest 29296
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Abate os |cRXP_ENEMY_Fire Hawks|r
    .complete 29296,1 -- Fire Hawk slain (5)
    .mob Fire Hawk
step
    .isOnQuest 29288
    #label FireHawkHatchling
    #loop
    .goto 338,28.2,46.7,70,0
    .goto 338,28.5,33.0,70,0
    .goto 338,19.4,29.7,70,0
    .goto 338,16.7,39.4,70,0
    >>Clique os |cRXP_FRIENDLY_Fire Águia Hatchlings|r
    >>|cRXP_WARN_O topo de Fireplume Peak tem uma grande quantidade deles|r
    .complete 29288,1 --  Fire Hawk Hatchling (5)
step
    #optional
    #requires InjuredDruids
step
    #optional
    #requires FireHawkEgg
step
    #optional
    #requires FireHawks
step
    #optional
    #requires HowHot
step
    #optional
    #requires FireHawkHatchling
step
    #optional
    #requires ObsidiumChips
step
    .isQuestComplete 29290
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .dailyturnin 29290 >>Entregue Fogo in the Skies
    .target Morthis Whisperwing
step
    .isQuestComplete 29287
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .dailyturnin 29287 >>Entregue Peaked Interest
    .target Morthis Whisperwing
step
    .isQuestComplete 29288
    .goto 338,34.496,56.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morthis Sussurasa|r
    .dailyturnin 29288 >>Entregue Início Young
    .target Morthis Whisperwing
step
    .isQuestComplete 29293
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arthorn Cantéolo|r
    .dailyturnin 29293 >>Entregue Chamuscado Asas
    .target Arthorn Windsong
step
    .isQuestComplete 29296
    .goto 338,34.295,56.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arthorn Cantéolo|r
    .dailyturnin 29296 >>Entregue Territorial Birds
    .target Arthorn Windsong
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Aceite Golpear no Coração
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Abate um dos |cRXP_ENEMY_Lieutenants of Chamas|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senhor Celeste Omnuron|r
    .dailyturnin 29305 >>Entregue Golpear no Coração
    .target Skylord Omnuron
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29295 >>Entregue The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29273
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anren Buscassombra|r
    .dailyturnin 29273 >>Entregue How Quente
    .target Anren Shadowseeker
step
    .isQuestComplete 29274
    .goto 338,51.555,85.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r
    .dailyturnin 29274 >>Entregue Hounds of Shannox
    .target Tholo Whitehoof

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varlan Galhalto|r
    .accept 29283 >>Aceite O Chamado dos Ancientes
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Galho Velho|r
    .turnin 29283 >>Entregue O Chamado dos Ancientes
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29284 >>Aceite Ajuda dos Ancientes
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Galho Velho|r
    .turnin 29284 >>Entregue Ajuda dos Ancientes
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,36.299,56.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Choluna|r
    .daily 29305 >>Aceite Golpear no Coração
    .target Choluna
step
    .isOnQuest 29305
    .goto 338,50.343,23.036
    >>Abate um dos |cRXP_ENEMY_Lieutenants of Chamas|r
    .complete 29305,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29305
    .goto 338,43.033,80.597
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senhor Celeste Omnuron|r
    .dailyturnin 29305 >>Entregue Golpear no Coração
    .target Skylord Omnuron
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .accept 29281 >>Aceite Armamento Adicional
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29281 >>Entregue Armamento Adicional
    .accept 29282 >>Aceite Bem Armado
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29282 >>Aceite Bem Armado
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Entregue Muito Bem Equipado
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Clique nas |cRXP_PICK_Lava Bolhas|r dentro das lagoas de lava para invocar um |cRXP_ENEMY_Verme de Magmático Subterrâneo|r
    .use 69759 >>|cRXP_WARN_Quando você vê a mensagem de aviso: "O verme está prestes a morder! Coloque a bomba agora!" Use|r |T133710:0|t[O Remédio Amargo]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Clique em |cRXP_PICK_Pedras Magnéticas|r e então pegue |cRXP_LOOT_Meteoritos de Obsidium|r que caem
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Mate os |cRXP_ENEMY_Obsidium Punishers|r. Pegue seus |cRXP_LOOT_Living Obsidium Pedrico|r detritos no chão depois
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >>|cRXP_WARN_Use the|r |T135129:0|t[Mata-passarinho] |cRXP_WARN_em |cRXP_ENEMY_Druida da Chama|r que estão voando no ar|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29263 >>Entregue A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29278 >>Entregue Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29295 >>Entregue The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29297 >>Entregue Adeus Adeus Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayla Tempessombra|r
    .accept 29279 >>Aceite Enchendo o Poço Lunar
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .turnin 29279 >>Entregue Enchendo o Poço Lunar
    .accept 29280 >>Aceite Nutrindo as águas
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .accept 29280 >>Aceite Nutrindo as águas
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayla Tempessombra|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Entregue Nutrindo as Águas
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .accept 29203 >>Aceite Nas Profundezas
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Entre nas Profundezas Ígneas
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Mate |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Saia das Profundezas Ígneas
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 29203 >>Entregue Nas Profundezas
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Você terá recebido correspondência de |cRXP_FRIENDLY_Theresa Pele de Árvore|r com um|r |T514925:0|t[|cRXP_LOOT_Medalhão Chamuscado|r]
    .use 69854 >>|cRXP_WARN_Use o|r |T514925:0|t[|cRXP_LOOT_Medalhão Chamuscado|r] |cRXP_WARN_para começar a missão|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >>Aceite O Medalhão Chamuscado
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >>Viaje para a Clareira da Lua
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravine Saturna|r
    .turnin 29298 >>Entregue O Medalhão Chamuscado
    .accept 29302 >>Aceite Desvendando os Segredos
    .timer 42,Desvendando os Segredos RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravine Saturna|r
    .turnin 29302 >>Entregue Desvendando os Segredos
    .accept 29303 >>Aceite Drama e Família
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >>Voe para Vale Gris
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >>Clique em |cRXP_PICK_Túmulo Noturno de Elfo|r
    .timer 48,Drama e Família RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29303 >>Entregue Drama e Família
    .accept 29310 >>Aceite O Ponto de Equilíbrio
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >>Voe para Monte Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >>Clique em |cRXP_PICK_Pequena Lápide|r
    .timer 59,O Ponto de Equilíbrio RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29310 >>Entregue O Ponto de Equilíbrio
    .accept 29311 >>Aceite O Resto é História
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .turnin 29311 >>Entregue O Resto é História
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Parabéns por desbloquear tudo da Frente Derretida! Continue completando um de (|cRXP_ENEMY_2.5|r - A Frente Derretida + Druidas) ou (|cRXP_PICK_2.5|r - A Frente Derretida + Guardiões) para ganhar mais |T513195:0|t[Marcas da Árvore do Mundo]
    >>|cRXP_FRIENDLY_Zen'Vorka|r vende |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka's Cache|r] por 30 |T513195:0|t[Marcas da Árvore do Mundo] que pode conter um item aleatório de qualidade verde ou o raro companheiro |T294481:0|t[|cFF0070FFPedra Carbonizada|r]
    .target Zen'Vorka
step
    .isQuestAvailable 29214
    #label DruidEnd
    +|cRXP_WARN_Você completou todas as missões diárias disponíveis para hoje. Recarregue este mesmo guia amanhã (|r|cRXP_ENEMY_2.5|r - The Derretido Front + Druids|cRXP_WARN_) para continuar completando as missões diárias até que você tenha adquirido o suficiente|r |T513195:0|t[Marks of the World Árvore]
step
    .isQuestTurnedIn 29214
    +|cRXP_WARN_Você desbloqueou [As Guardiãs das Sombras] missões diárias. Você tem a escolha entre completar missões para Druidas do Gadanho ou As Guardiãs das Sombras. Se você deseja completar missões para Druidas do Gadanho, recarregue este mesmo guia amanhã (|r|cRXP_ENEMY_2.5|r - The Derretido Front + Druids|cRXP_WARN_) ou (|r|cRXP_PICK_2.5|r - The Derretido Front + Wardens|cRXP_WARN_) amanhã se você deseja completar As Guardiãs das Sombras missões. Ambas oferecem o mesmo valor de|r |T513195:0|t[Marks of the World Árvore]
]])

RXPGuides.RegisterGuide([[
#cata
#version 1
#group A Frente de Fogo
#name D_1_TSOM_Wardens
#displayname |cRXP_PICK_2.5|r - The Derretido Front + Wardens

step
    #optional
    .isQuestAvailable 29214
    +|cRXP_WARN_Você deve primeiro coletar 150|r |T513195:0|t[Marks of the World Árvore] |cRXP_WARN_e entregar a missão [As Guardiãs das Sombras] para poder completar as missões diárias delas|r
    .turnin 29214 >>Entregue As Guardiãs das Sombras
    .target Captain Saynna Stormrunner
    .goto 198,26.799,62.157
step
    #optional
    #completewith HyjalQuests
	.zone 85 >>Vá para Orgrimmar << Horde
	.zone 84 >>Vá para Ventobravo << Alliance
	.zoneskip 198
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 85,51.12,38.26 << Horde
    .goto 84,76.199,18.690 << Alliance
    .zone 198 >>Use o Portal para Hyjal
    .zoneskip 338
step
    #optional
    #completewith HyjalQuests
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step --accepted back at sanctuary of malorne
    .goto 198/1,-2088.800,4452.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Soren Lunapoente|r
    .target Captain Soren Moonfall
    .daily 29128 >>Aceite Os Protetores de Hyjal
step
    #loop
    .goto 198,27.108,62.009,5,0
    .goto 198,27.170,62.563,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Mylune|r
    .daily 29125,29147,29164,29101,29161 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29125,29147,29164,29101,29161
    .target Matoclaw
    .target Mylune
step
    #loop
    #label HyjalQuests
    .goto 198,27.527,62.510,5,0
    .goto 198,27.172,62.565,5,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r ou |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .daily 29123,29149,29127,29163,29166,29247,29246,29248 >>Aceite qualquer missão diária aleatória que for oferecida
    .disablecheckbox
    .questcount <1,29123,29149,29127,29163,29166,29247,29246,29248
    .target Matoclaw
    .target Dorda'en Nightweaver
step
    .isOnQuest 29166
    #completewith KillNemesis
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #completewith KillNemesis
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29101
    #loop
    .goto 198,22.89,59.91,70,0
    .goto 198,18.58,56.71,70,0
    .goto 198,15.11,48.85,70,0
    .goto 198,19.97,46.22,70,0
    >>Clique em um |cRXP_FRIENDLY_Filho de Tortolla|r
    >>|cRXP_WARN_Mire para a água e lance|r |T132219:0|t[Chutar Tartaruga] |cRXP_WARN_(1)|r
    .complete 29101,1 -- Child of Tortolla punted into water (5)
    .target Child of Tortolla
step
    .isOnQuest 29164
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .use 69235 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_nos cadáveres deles|r
    .complete 29164,1 -- Howl atop an invader's corpse (10)
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29147
    #completewith next
    .cast 97241 >>|cRXP_WARN_Use a|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_para se transformar nas|r |cRXP_FRIENDLY_Asas de Aviana|r
    .use 69234
step
    .isOnQuest 29147
    #loop
    .goto 198,14.90,45.11,80,0
    .goto 198,10.13,36.76,80,0
    .goto 198,13.24,33.64,80,0
    .goto 198,18.65,40.28,80,0
    .use 69234 >>|cRXP_WARN_Use a|r |T132172:0|t[Chamar a Revoada] (1) |cRXP_WARN_habilidade perto de|cRXP_FRIENDLY_ |rAlpine Songbirds|cRXP_FRIENDLY_, |rForest Owls|r e |cRXP_FRIENDLY_Goldwing Hawks|r
    .complete 29147,1 -- Alpine Songbird gathered (12)
    .target +Alpine Songbird
    .complete 29147,2 -- Forest Owl gathered (5)
    .target +Forest Owl
    .complete 29147,3 -- Goldwing Hawk gathered (2)
    .target +Goldwing Hawk
step
    .isOnQuest 29125
    #loop
    .goto 198,37.32,54.52,70,0
    .goto 198,40.87,55.93,70,0
    .goto 198,36.43,60.73,70,0
    .goto 198,33.45,64.19,70,0
    >>Fique parado em frente ao |cRXP_FRIENDLY_Espírito de Malorne|r
    >>|cRXP_WARN_Estes são os cervos fantasmas que carregam aleatoriamente|r
    .complete 29125,1 --Spirit of Malorne captured (3)
step
    #completewith next
    .goto 198,14.310,33.203
    .vehicle >>Clique em |cRXP_PICK_Escalando Árvore|r para começar a escalar
    .target Climbing Tree
    .isOnQuest 29161
step
    .goto 198,14.310,33.203
    >>Clique em um |cRXP_FRIENDLY_Ursinho de Hyjal|r enquanto estiver na árvore
    .collect 54439,1
    .target Hyjal Bear Cub
    .isOnQuest 29161
step
    .isOnQuest 29161
    .goto 198,14.310,33.203
    *|cRXP_WARN_Lance|r |T450907:0|t[Subir] (1) |cRXP_WARN_até estar no topo, aponte a seta para o trampolim ao lado do |cRXP_FRIENDLY_Guardião Taldros|r, depois lance|r |T446127:0|t[Taca-urso] (4) |cRXP_WARN_. Lance|r |T450905:0|t[Descer] (2) |cRXP_WARN_e repita o processo|r
    .complete 29161,1 --6/6 Hyjal Bear Cubs Rescued
step
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .vehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    #optional
    .isQuestComplete 29161
    .exitvehicle >>|cRXP_WARN_Use|r |T450905:0|t[Descer] (2) |cRXP_WARN_para sair da árvore|r
step
    .isOnQuest 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29161 >>Entregue Lançamento de Ursos
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isQuestTurnedIn 29161
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29162 >>Aceite Bênção da Natureza
step
    .isOnQuest 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29125 >>Entregue Entre as Árvores
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isQuestTurnedIn 29125
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29126 >>Aceite O Poder de Malorne
step
    .isOnQuest 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29147 >>Entregue Chamar a Revoada
    .accept 29148 >>Aceite Asas em Chamas
step
    .isQuestTurnedIn 29147
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29148 >>Aceite Asas em Chamas
step
    .isOnQuest 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29164 >>Entregue Aperfeiçoando o Uivo
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isQuestTurnedIn 29164
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29165 >>Aceite O Chamado da Matilha
step
    .isOnQuest 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29101 >>Entregue Salvem as Tartarugas
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    .isQuestTurnedIn 29101
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .accept 29122 >>Aceite Ecos de Nêmesis
step
    #completewith next
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .cast 97517 >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Pyrachnis|r
    .use 69232
step
    .isOnQuest 29162
    .goto 198/1,-1500.700,4929.300
    .use 69232 >>Abate |cRXP_ENEMY_Pyrachnis|r
    >>|cRXP_WARN_Use o|r |T134093:0|t[Emerald of Aessina] |cRXP_WARN_para também remover a|r |T136016:0|t[Seta Venenosa Fervente] |cRXP_WARN_debuff de você que |cRXP_ENEMY_Pyrachnis|r aplica|r
    .complete 29162,1 --|Pyrachnis slain: 1/1
    .mob Pyrachnis
step
    #completewith next
    .isOnQuest 29126
    .goto 198,41.667,56.130
    .cast 97012 >>|cRXP_WARN_Use o|r |T135139:0|t[Cajado do Guardião] |cRXP_WARN_no |cRXP_PICK_Pile of Cinza|r para invocar|r |cRXP_ENEMY_Galenges|r
    .use 68997
step
    .goto 198,41.667,56.130
    .isOnQuest 29126
    .use 68997 >>Abate |cRXP_ENEMY_Galenges|r
    .complete 29126,1 -- Galenges slain (1)
    .mob Galenges
step
    .isOnQuest 29148
    #completewith next
    .goto 198/1,-1500.700,4929.300
    .cast 97324 >>|cRXP_WARN_Use o|r |T135992:0|t[Pena da Rainha-pássaro] |cRXP_WARN_perto do portal de chama ocidental para invocar|r |cRXP_ENEMY_Millagazor|r
    .use 69212
step
    .isOnQuest 29148
    .goto 198/1,-1500.700,4929.300
    .use 69212 >>Abate |cRXP_ENEMY_Millagazor|r
    .complete 29148,1 -- Millagazor slain (1)
    .mob Millagazor
step
    .isOnQuest 29165
    #completewith next
    .goto 198,41.667,56.130
    .cast 97498 >>|cRXP_WARN_Use o|r |T134298:0|t[Dentada of the Lobo] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Lylagar|r
    .use 69225
step
    .isOnQuest 29165
    .goto 198,41.667,56.130
    .use 69225 >>Abate |cRXP_ENEMY_Lylagar|r
    .complete 29165,1 -- Lylagar slain (1)
    .mob Lylagar
step
    .isOnQuest 29122
    #completewith next
    .goto 198,24.014,55.803
    .gossip 52425,0 >>Converse com |cRXP_FRIENDLY_Tuga|r para invocar |cRXP_ENEMY_Nêmesis|r
    .skipgossip
    .target Tooga
step
    #label KillNemesis
    .isOnQuest 29122
    .goto 198,24.760,55.259
    >>Mate o |cRXP_ENEMY_Nêmesis|r
    >>|cRXP_WARN_Parado|cRXP_FRIENDLY_ sob o casco de |rTuga|r para se proteger de|cRXP_ENEMY_ Nêmesis|r |T135830:0|t[Fúria Derretida] |cRXP_WARN_lançamento|r
    .complete 29122,1 -- Nemesis slain (1)
    .target Tooga
    .mob Nemesis
step
    .isOnQuest 29166
    #loop
    .goto 198,29.53,56.21,70,0
    .goto 198,36.15,52.44,70,0
    .goto 198,35.94,58.80,70,0
    .goto 198,24.27,62.12,70,0
    >>Saque a |cRXP_LOOT_Blueroot Vines|r no chão
    .complete 29166,1
step
    .isOnQuest 29123
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29123,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29149
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29149,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29127
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29127,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step
    .isOnQuest 29163
    #loop
    .goto 198,23.06,59.99,0
    .goto 198,16.01,50.51,0
    .goto 198,10.29,36.11,0
    .goto 198,23.06,59.99,70,0
    .goto 198,19.29,58.54,70,0
    .goto 198,16.01,50.51,70,0
    .goto 198,14.98,43.10,70,0
    .goto 198,10.29,36.11,70,0
    >>Mate os |cRXP_ENEMY_Invasores das Terras do Fogo|r
    .complete 29163,1
    .mob Flame Terror
    .mob Brimstone Hound
    .mob Scarred Acolyte
    .mob Charred Invader
step -- 29248 Releasing the Pressure
    .isOnQuest 29248
    .goto 198,32.0,59.8,70,0
    .goto 198,36.6,54.8,70,0
    .goto 198,39.2,62.6,70,0
    .goto 198,34.6,64.6,70,0
    .goto 198,30.6,52.2,70,0
    >>Mate os |cRXP_ENEMY_Charred Flamewakers|r. Saqueie-os para suas |cRXP_LOOT_Flamewaker Escamoso|r
    .complete 29248,1 -- Flamewaker Scale (100)
    .mob Charred Flamewaker
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #completewith FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r e os |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step -- 29247 Treating the Wounds
    .isOnQuest 29247
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r. Saqueie-os para suas |cRXP_LOOT_Sulfur-Laced Wrappings|r
    .complete 29247,1 -- Sulfur-Laced Wrapping (4)
    .mob Fiery Behemoth
step -- 29246 Relieving the Pain
    .isOnQuest 29246
    #label FinishProtector
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Seething Pyrelords|r. Saqueie-os para seus |cRXP_LOOT_Flame-Wreathed Corações|r
    .complete 29246,1 -- Flame-Wreathed Heart (4)
    .mob Seething Pyrelord
step -- 29128 The Protectors of Hyjal
    .isOnQuest 29128
    #loop
    .goto 198,31.6,74.2,70,0
    .goto 198,30.0,80.2,70,0
    .goto 198,31.2,87.6,70,0
    .goto 198,31.6,95.6,70,0
    .goto 198,36.4,98.0,70,0
    >>Mate os |cRXP_ENEMY_Fiery Behemoths|r e os |cRXP_ENEMY_Seething Pyrelords|r
    .complete 29128,1 -- Invader slain at Sethria's Roost (6)
    .mob Fiery Behemoth
    .mob Seething Pyrelord
step
    .isQuestComplete 29162
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29162 >>Entregue Bênção da Natureza
step
    .isQuestComplete 29122
    .goto 198/1,-2080.000,4439.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r
    .target Mylune
    .dailyturnin 29122 >>Entregue Ecos de Nêmesis
step
    .isQuestComplete 29126
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29126 >>Entregue O Poder de Malorne
step
    .isQuestComplete 29165
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29165 >>Entregue O Chamado da Matilha
step
    .isQuestComplete 29148
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29148 >>Entregue Asas em Chamas
step
    .isQuestComplete 29166
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29166 >>Entregue Suprimentos para o Outro Lado
step
    .isQuestComplete 29123
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29123 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29149
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29149 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29127
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29127 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29163
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .dailyturnin 29163 >>Entregue Raiva Contra as Chamas
step
    .isQuestComplete 29246
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29246 >>Entregue Aliviando a Dor
step
    .isQuestComplete 29247
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29247 >>Entregue Tratando as Feridas
step
    .isQuestComplete 29248
    .goto 198,27.527,62.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorda'en Tecenoites|r
    .target Dorda'en Nightweaver
    .dailyturnin 29248 >>Entregue Soltando a Pressão
step
    #completewith RayneFeathersong
    .isQuestComplete 29128
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isQuestTurnedIn 29215
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .daily 29255,29257,29299 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Avrilla
step
    #label RayneFeathersong
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .daily 29139,29143 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Rayne Feathersong
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >>Aceite qualquer missão diária aleatória que for oferecida
    >>|cRXP_WARN_Pule este passo se |cRXP_FRIENDLY_Ricket|r não está oferecendo uma missão aqui hoje|r
    .target Ricket
step
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Ferrárbol|r
    .daily 29138 >>Aceite Vítimas de Queimadura
    .target Captain Irontree
step
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .daily 29179 >>Aceite Elementos Hostis
    .daily 29304,29141,29142,29137 >>Aceite qualquer missão diária aleatória que for oferecida
    .target General Taldris Moonfall
step
    .isQuestComplete 29128
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29128 >>Entregue Os Protetores de Hyjal
    .target General Taldris Moonfall
step -- 29138 Burn Victims
    .isOnQuest 29138
    #sticky
    #label BurnVictims
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .use 69240 >>|cRXP_WARN_Use a|r |T463860:0|t[Pomada Encantada] |cRXP_WARN_em|r |cRXP_FRIENDLY_Defensores de Hyjal Feridos|r
    .complete 29138,1 -- Wounded Hyjal Defender saved 1/1
    .target Wounded Hyjal Defender
step -- Embergris 29255
    .isOnQuest 29255
    #label Embergris
    #sticky
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Mate os |cRXP_ENEMY_Calcinado Soldiers|r e os |cRXP_ENEMY_Calcinado Vanquishers|r. Saque-os para obter o |cRXP_LOOT_Embergris|r
    .complete 29255,1 -- Embergris (5)
    .mob Charred Soldier
    .mob Charred Vanquisher
step -- 29179 Hostile Elements
    .isOnQuest 29179
    #sticky
    #label HostileElements
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Abate os |cRXP_ENEMY_Charred Vanquishers|r e os |cRXP_ENEMY_Charred Soldiers|r
    .complete 29179,1 -- Charred Combatant slain (8)
    .mob Charred Vanquisher
    .mob Charred Soldier
step -- 29304 The Dogs of War
    .isOnQuest 29304
    #sticky
    #label TheDogs
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate os |cRXP_ENEMY_Cães de Chama|r e os |cRXP_ENEMY_Cães de Chama Antigos|r
    .complete 29304,1 -- Ancient Charhound slain (5)
    .mob Charhound
    .mob Ancient Charhound
step -- 29141 The Harder They Fall
    .isOnQuest 29141
    #sticky
    #label HarderTheyFall
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate os |cRXP_ENEMY_Molten Behemoths|r
    .complete 29141,1 -- Molten Behemoth slain (3)
    .mob Molten Behemoth
step -- 29142 Traitors Return
    .isOnQuest 29142
    #sticky
    #label TraitorsReturn
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,71.0,38.6,45,0
    >>Abate os |cRXP_ENEMY_Druida da Chama|r
    .complete 29142,1 -- Druid of the Flame slain (3)
    .mob Druid of the Flame
step -- 29137 Breach in the Defenses
    .isOnQuest 29137
    #sticky
    #label Breach
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    .goto 338,53.4,53.0,45,0
    .goto 338,40.8,45.0,45,0
    >>Abate |cRXP_ENEMY_Lava Bursters|r
    .complete 29137,1 -- Lava Burster slain (5)
    .mob Lava Burster
step -- 29139 Aggressive Growth
    .isOnQuest 29139
    #sticky
    #label AggressiveGrowth
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>Clique nas |cRXP_PICK_Ash Piles|r no chão
    .complete 29139,1 -- Smothervine planted (5)
step -- Steal Magmolias 29257
    .isOnQuest 29257
    #label StealMagmolias
    #sticky
    #loop
    .goto 338,47.7,59.6,45,0
    .goto 338,41.5,43.6,45,0
    .goto 338,54.5,45.5,45,0
    >>Saque o |cRXP_LOOT_Magmolia|r dentro das pequenas piscinas de lava
    >>|cRXP_WARN_Se um |cRXP_ENEMY_Estoura-lava|r aparecer depois de saquear um, mate-o e saqueie-o para obter o|r |cRXP_LOOT_Magmolia|r
    .complete 29257,1 -- Magmolia (8)
    .mob Lava Burster
step -- Some Like It Hot 29299
    .isOnQuest 29299
    #label LikeItHot
    #sticky
    #loop
    .goto 338,50.6,68.6,45,0
    .goto 338,42.2,60.2,45,0
    .goto 338,42.8,41.8,45,0
    .goto 338,56.2,46.8,45,0
    .goto 338,54.6,61.6,45,0
    >>|cRXP_WARN_Pegue seu |cRXP_FRIENDLY_Açoitadeira Carmesim|r e combata|r |cRXP_ENEMY_Emberspit Scorpions|r << !Hunter
    >>|cRXP_WARN_Lance|r |T135834:0|t[Armadilha Congelante] |cRXP_WARN_em um |cRXP_ENEMY_Escorpião Cospe-brasa|r. Ele lançará|r |T135826:0|t[Ember Pools] |cRXP_WARN_continuamente enquanto sua |cRXP_FRIENDLY_Açoitadeira Carmesim|r bebe-os, deixando você completar este diário com apenas um|r |cRXP_ENEMY_Escorpião Cospe-brasa|r << Hunter
    >>|cRXP_WARN_Os |cRXP_ENEMY_Escorpiões Cospe-brasa|r lançarão|r |T135826:0|t[Ember Pools] |cRXP_WARN_que sua |cRXP_FRIENDLY_Açoitadeira Carmesim|r beberá|r
    .complete 29299,1 -- Help the Crimson Lasher Drink from Ember Pools (6)
    .mob Emberspit Scorpion
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #label MagmaWorm
    #sticky
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Clique nas |cRXP_PICK_Lava Bolhas|r dentro das lagoas de lava para invocar um |cRXP_ENEMY_Verme de Magmático Subterrâneo|r
    .use 69759 >>|cRXP_WARN_Quando você vê a mensagem de aviso: "O verme está prestes a morder! Coloque a bomba agora!" Use|r |T133710:0|t[O Remédio Amargo]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #label ObsidiumMeteorite
    #sticky
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Clique em |cRXP_PICK_Pedras Magnéticas|r e então pegue |cRXP_LOOT_Meteoritos de Obsidium|r que caem
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29143 Wisp Away
    .isOnQuest 29143
    #sticky
    #label WispAway
    #loop
    .goto 338,47.6,79.6,45,0
    .goto 338,43.8,74.0,45,0
    .goto 338,45.8,64.2,45,0
    .goto 338,52.8,64.4,45,0
    .goto 338,53.6,79.6,45,0
    >>|cRXP_WARN_Leve o |cRXP_FRIENDLY_Fogo-fátuo de Hyjal|r que o segue até um Portal de Fogo|r
    >>|cRXP_WARN_Mate os inimigos que saírem dele. Certifique-se de que o |cRXP_FRIENDLY_Fogo-fátuo de Hyjal|r não morra!|r
    .complete 29143,1 -- Close a Fire Portal 1/1
step
    #optional
    #requires MagmaWorm
step
    #optional
    #requires ObsidiumMeteorite
step
    #optional
    #requires Embergris
step
    #optional
    #requires StealMagmolias
step
    #optional
    #requires LikeItHot
step
    #optional
    #requires BurnVictims
step
    #optional
    #requires HostileElements
step
    #optional
    #requires TheDogs
step
    #optional
    #requires HarderTheyFall
step
    #optional
    #requires TraitorsReturn
step
    #optional
    #requires Breach
step
    #optional
    #requires AggressiveGrowth
step
    #optional
    #requires WispAway
step
    .isQuestComplete 29255
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29255 >>Entregue Embergris
    .target Avrilla
step
    .isQuestComplete 29257
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29257 >>Entregue Steal Magmolias
    .target Avrilla
step
    .isQuestComplete 29299
    .goto 338,50.644,87.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avrilla|r
    .dailyturnin 29299 >>Entregue Some Like It Quente
    .target Avrilla
step
    .isQuestComplete 29139
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .dailyturnin 29139 >>Entregue Agressivo Crescimento
    .target Rayne Feathersong
step
    .isQuestComplete 29143
    .goto 338,48.513,86.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rayne Penacanto|r
    .dailyturnin 29143 >>Entregue Fogo-fátuo Afastado
    .target Rayne Feathersong
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29263 >>Entregue A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29278 >>Entregue Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29295 >>Entregue The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29297 >>Entregue Adeus Adeus Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29179
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29179 >>Entregue Elementos Hostis
    .target General Taldris Moonfall
step
    .isQuestComplete 29304
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29304 >>Entregue Os Cães da Guerra
    .target General Taldris Moonfall
step
    .isQuestComplete 29141
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29141 >>Entregue Quanto Mais Dura a Queda
    .target General Taldris Moonfall
step
    .isQuestComplete 29142
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29142 >>Entregue Retorno dos Traidores
    .target General Taldris Moonfall
step
    .isQuestComplete 29137
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .dailyturnin 29137 >>Entregue Falha na Defesa
    .target General Taldris Moonfall
step
    .isQuestComplete 29138
    .goto 338,45.626,86.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Ferrárbol|r
    .dailyturnin 29138 >>Entregue Vítimas de Queimadura
    .target Captain Irontree
step
    .isQuestTurnedIn 29214
    .goto 338,45.589,85.822
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_General Taldris Lunapoente|r
    .daily 29205 >>Aceite a Forlorn Spire
    .target General Taldris Moonfall
step
    .isOnQuest 29205
    .goto 338,54.503,70.816,10,0
    .goto 338,66.301,65.137
    >>Proteja um dos |cRXP_FRIENDLY_Druids|r ao tomar a Torre Desolada
    >>Abata os |cRXP_ENEMY_Lordes da Pira|r e os |cRXP_ENEMY_Flamewatch Sentinels|r no final
    .complete 29205,1 -- Druid Assault Group Protected
    .target Keeper Taldros
    .target Turak Runetotem
    .target Deldren Ravenelm
    .mob Pyrelord
    .mob Flamewatch Sentinel
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marina Laminasa|r
    .dailyturnin 29205 >>Entregue The Forlorn Spire
    .daily 29211,29192 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Marin Bladewing
step
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    .goto 338,66.259,66.141
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r
    >>|cRXP_WARN_Pule este passo se ele não estiver oferecendo esta missão|r
    .daily 29276 >>Aceite A Rainha das Aranhas de Fogo
    .target Tholo Whitehoof
step -- Ricket @ WARDENS
    .isQuestTurnedIn 29282
    .goto 338,66.429,65.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    >>|cRXP_WARN_Pular este passo se ela não está aqui|r
    .daily 29263,29278,29295,29297 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Ricket
step
    .goto 338,66.100,63.908
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deldren Corvelmo|r
    .daily 29189,29159,29160 >>Aceite quaisquer duas missões diárias aleatórias que forem oferecidas
    .disablecheckbox
    .target Deldren Ravenelm
    .questcount <2,29189,29159,29160
step -- Solar Core Destruction 29211
    .isOnQuest 29211
    #label SolarCore
    #sticky
    .goto 338,70.815,38.196
    >>Clique no |cRXP_PICK_Solar Núcleo|r
    .complete 29211,1 -- Solar Core detonated 1/1
step -- The Wardens are Watching 29192
    .isOnQuest 29192
    #label WardensWatching
    #sticky
    #loop
    .goto 338,71.6,44.6,30,0
    .goto 338,72.0,37.4,30,0
    .goto 338,68.8,41.4,30,0
    >>Ataque um |cRXP_ENEMY_Druida da Chama|r até ficar enfraquecido, depois conduza-o para dentro da armadilha |cRXP_FRIENDLY_Shadow Wardens|r
    .complete 29192,1 -- Druid of the Flame captured 1/1
    .mob Druid of the Flame
step -- The Flame Spider Queen 29276
    .isOnQuest 29276
    #label FlameSpider
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Mate |cRXP_ENEMY_Cinderweb Creepers|r. Saque-os para obter |cRXP_LOOT_Flame Venenom|r
    >>Mate |cRXP_ENEMY_Cinderweb Spinners|r. Saque-os para obter |cRXP_LOOT_Searing Teia Fluid|r
    >>|cRXP_WARN_Você também coletará |cRXP_LOOT_Flame Venenom|r e |cRXP_LOOT_Searing Teia Fluid|r deles passivamente enquanto causa dano a eles|r
    .complete 29276,1 -- Flame Venom (8)
    .mob +Cinderweb Creeper
    .complete 29276,2 -- Searing Web Fluid (8)
    .mob +Cinderweb Spinner
step -- Wicked Webs 29189
    .isOnQuest 29189
    #label WickedWebs
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Mate os |cRXP_ENEMY_Cinderweb Cocoons|r
    .complete 29189,1 -- Victims freed  (8)
    .mob Cinderweb Cocoon
step -- Pyrorachnophobia 29159
    .isOnQuest 29159
    #label Pyrorachnophobia
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Mate os |cRXP_ENEMY_Cinderweb Creepers|r e os |cRXP_ENEMY_Cinderweb Spinners|r
    .complete 29159,1 -- Cinderweb spider slain  (8)
    .mob Cinderweb Creeper
    .mob Cinderweb Spinner
step -- Egg-stinction 29160
    .isOnQuest 29160
    #label Eggstinction
    #sticky
    #loop
    .goto 338,69.6,49.8,40,0
    .goto 338,60.6,40.8,40,0
    .goto 338,60.8,61.0,40,0
    >>Abra as |cRXP_PICK_Cinderweb Ovo Sacs|r. Saque-as para obter |cRXP_LOOT_Cinderweb Eggs|r
    .complete 29160,1 -- Cinderweb Egg (20)
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #label ByeByeBurdy
    #sticky
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >>|cRXP_WARN_Use the|r |T135129:0|t[Mata-passarinho] |cRXP_WARN_em |cRXP_ENEMY_Druida da Chama|r que estão voando no ar|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    #optional
    #requires SolarCore
step
    #optional
    #requires WardensWatching
step
    #optional
    #requires FlameSpider
step
    #optional
    #requires WickedWebs
step
    #optional
    #requires Pyrorachnophobia
step
    #optional
    #requires Eggstinction
step
    #optional
    #requires ByeByeBurdy
step
    .isQuestComplete 29160
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Deldren Corvelmo|r
    .dailyturnin 29160 >>Entregue Ovo-stinction
    .target Deldren Ravenelm
step
    .isQuestComplete 29159
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Deldren Corvelmo|r
    .dailyturnin 29159 >>Entregue Pyrorachnophobia
    .target Deldren Ravenelm
step
    .isQuestComplete 29189
    .goto 338,66.100,63.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Deldren Corvelmo|r
    .dailyturnin 29189 >>Entregue Teias Perversas
    .target Deldren Ravenelm
step
    .isQuestComplete 29192
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Marina Laminasa|r
    .dailyturnin 29192 >>Entregue Os Guardiões Estão de Olho
    .target Marin Bladewing
step
    .isQuestComplete 29211
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Marina Laminasa|r
    .dailyturnin 29211 >>Entregue Destruição do Núcleo Solar
    .target Marin Bladewing
step
    .goto 338,64.855,67.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Marina Laminasa|r
    .daily 29210 >>Aceite Aguentar o Calor
    .target Marin Bladewing
step -- this step will autoskip if they completed 29276 earlier
    .goto 338,65.959,66.093
    .isQuestTurnedIn 29272 -- Only offered if completed Druids questline
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anren Buscassombra|r
    >>|cRXP_WARN_Pule este passo se ele não estiver aqui|r
    .daily 29275 >>Aceite Fandral's Methods
    .disablecheckbox
    .target Anren Shadowseeker
    .questcount <1,29275,29276
step -- Enduring the Heat 29210
    .isOnQuest 29210
    .goto 338,57.491,49.532
    >>|cRXP_WARN_Drop down into the Igneous Depths below|r
    .complete 29210,1 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #completewith next
    >>Saque o |cRXP_LOOT_Flame Druida Cajado|r, |cRXP_LOOT_Flame Druida Spellbook|r, |cRXP_LOOT_Flame Druida Reagent Pouch|r e o |cRXP_LOOT_Flame Druida Ídolo|r
    >>|cRXP_WARN_Estes estão espalhados por Igneous Depths|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step -- Enduring the Heat 29210
    .isOnQuest 29210
    #loop
    .goto 338,61.620,52.938,8,0
    .goto 338,66.330,52.184,8,0
    .goto 338,61.386,48.457,8,0
    .goto 338,64.718,59.267,8,0
    .goto 338,68.854,58.329,8,0
    .goto 338,68.109,66.500,8,0
    .goto 338,64.165,66.062,8,0
    .goto 338,60.547,59.997,8,0
    >>|cRXP_WARN_Siga a seta ao redor e clique nas |cRXP_PICK_Flame Proteção Runas|r no chão|r
    >>|cRXP_WARN_Clicar em uma |cRXP_PICK_Flame Proteção Runas|r matará todos os |cRXP_ENEMY_Unstable Flameragers|r atacando você|r
    .complete 29210,2 -- All Flame Runes Destroyed 1/1
step
    .isOnQuest 29275
    #loop
    .goto 338,61.620,52.938,20,0
    .goto 338,66.330,52.184,20,0
    .goto 338,61.386,48.457,20,0
    .goto 338,64.718,59.267,20,0
    .goto 338,68.854,58.329,20,0
    .goto 338,68.109,66.500,20,0
    .goto 338,64.165,66.062,20,0
    .goto 338,60.547,59.997,20,0
    >>Saqueie o |cRXP_LOOT_Flame Druida Cajado|r, o |cRXP_LOOT_Flame Druida Spellbook|r, o |cRXP_LOOT_Flame Druida Reagent Pouch|r e o |cRXP_LOOT_Flame Druida Ídolo|r
    >>|cRXP_WARN_Estes estão espalhados ao redor de Igneous Depths|r
    .complete 29275,1 -- Flame Druid Staff 1/1
    .complete 29275,2 -- Flame Druid Spellbook 1/1
    .complete 29275,3 -- Flame Druid Reagent Pouch 1/1
    .complete 29275,4 -- Flame Druid Idol 1/1
step
    .isQuestComplete 29210
    .goto 338,57.742,49.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teresa Pele de Árvore|r
    .dailyturnin 29210 >>Entregue Aguentar o Calor
    .target Theresa Barkskin
step
    .isQuestTurnedIn 29284
    .goto 338,57.518,49.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalis Caçassombra|r
    .daily 29243 >>Aceite Golpear no Coração
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Abate um dos |cRXP_ENEMY_Lieutenants of Chamas|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
step
    .isQuestComplete 29276
    .goto 338,51.245,85.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anren Buscassombra|r
    .dailyturnin 29276 >>Entregue A Rainha das Aranhas de Fogo
    .target Anren Shadowseeker
step
    .isQuestComplete 29275
    .goto 338,51.547,85.511
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dholo Casco Branco|r
    .dailyturnin 29275 >>Entregue Fandral's Methods
    .target Tholo Whitehoof
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29297 >>Entregue Adeus Adeus Burdy
    .target Damek Bloombeard
step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Saynna Tempestapasso|r
    .dailyturnin 29243 >>Entregue Golpear no Coração
    .target Captain Saynna Stormrunner

--Calling the Ancients unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,44.434,88.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varlan Galhalto|r
    .accept 29283 >>Aceite O Chamado dos Ancientes
    .target Varlan Highbough
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29283
    .goto 198,26.005,61.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Galho Velho|r
    .turnin 29283 >>Entregue O Chamado dos Ancientes
    .target Elderlimb
step
    .isQuestTurnedIn 29283
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29284 >>Aceite Ajuda dos Ancientes
step
    #optional
    #completewith WardenEnd
    .isOnQuest 29284
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29284
    .goto 338,43.812,88.964
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Galho Velho|r
    .turnin 29284 >>Entregue Ajuda dos Ancientes
    .target Elderlimb
step
    .isQuestTurnedIn 29284
    .goto 338,51.713,81.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalis Caçassombra|r
    .daily 29243 >>Aceite Golpear no Coração
    .target Shalis Darkhunter
step
    .isOnQuest 29243
    .goto 338,50.343,23.036
    >>Abate um dos |cRXP_ENEMY_Lieutenants of Chamas|r
    .complete 29243,1 -- Lieutenant of Flame slain
    .mob Ancient Charscale
    .mob Ancient Smoldering Behemoth
    .mob Ancient Firelord
    .mob Cinderweb Queen
    .mob Devout Harbinger
 step
    .isQuestComplete 29243
    .goto 338,47.584,90.552
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Saynna Tempestapasso|r
    .dailyturnin 29243 >>Entregue Golpear no Coração
    .target Captain Saynna Stormrunner
--Complete Calling the Ancients unlock

--Additional Armaments unlock
step
    .isQuestTurnedIn 29182 -- Druids prereq
    .isQuestTurnedIn 29215 -- Warden prereq
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .accept 29281 >>Aceite Armamento Adicional
    .target Damek Bloombeard
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .turnin 29281 >>Entregue Armamento Adicional
    .accept 29282 >>Aceite Bem Armado
step
    .isQuestTurnedIn 29281
    .goto 198/1,-2082.800,4424.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .target Matoclaw
    .accept 29282 >>Aceite Bem Armado
step
    #optional
    #completewith next
    .isOnQuest 29282
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    .target Ricket
    .turnin 29282 >>Entregue Muito Bem Equipado
step
    .isQuestTurnedIn 29282
    .goto 338,46.758,90.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricket|r
    .daily 29263,29278,29295,29297 >>Aceite qualquer missão diária aleatória que for oferecida
    .target Ricket
step -- 29263 A Bitter Pill
    .isOnQuest 29263
    #loop
    .goto 338,43.8,46.8,50,0
    .goto 338,53.6,41.8,50,0
    .goto 338,55.6,54.6,50,0
    .goto 338,44.8,54.4,50,0
    >>Clique nas |cRXP_PICK_Lava Bolhas|r dentro das lagoas de lava para invocar um |cRXP_ENEMY_Verme de Magmático Subterrâneo|r
    .use 69759 >>|cRXP_WARN_Quando você vê a mensagem de aviso: "O verme está prestes a morder! Coloque a bomba agora!" Use|r |T133710:0|t[O Remédio Amargo]
    .complete 29263,1 -- Subterranean Magma Worm slain 1/1
    .mob Subterranean Magma Worm
step -- 29278 Living Obsidium
    .isOnQuest 29278
    #loop
    .goto 338,41.5,49.8,50,0
    .goto 338,46.6,43.1,50,0
    .goto 338,54.6,43.8,50,0
    .goto 338,51.5,51.2,50,0
    >>Clique em |cRXP_PICK_Pedras Magnéticas|r e então pegue |cRXP_LOOT_Meteoritos de Obsidium|r que caem
    .complete 29278,1 -- Obsidium Meteorite (10)
    .target Magnetic Stone
step -- 29295 The Bigger They Are -- DRUIDS ONLY
    .isOnQuest 29295
    #loop
    .goto 338,29.7,28.5,50,0
    .goto 338,16.8,32.5,50,0
    .goto 338,19.5,49.5,50,0
    .goto 338,32.7,43.6,50,0
    >>Mate os |cRXP_ENEMY_Obsidium Punishers|r. Pegue seus |cRXP_LOOT_Living Obsidium Pedrico|r detritos no chão depois
    .complete 29295,1 -- Living Obsidium Chip (10)
    .mob Obsidium Punisher
step -- 29297 Bye Bye Burdy -- WARDENS ONLY
    .isOnQuest 29297
    #loop
    .goto 338,73.03,54.88,50,0
    .goto 338,73.82,38.28,50,0
    .goto 338,63.73,38.76,50,0
    .use 69832 >>|cRXP_WARN_Use the|r |T135129:0|t[Mata-passarinho] |cRXP_WARN_em |cRXP_ENEMY_Druida da Chama|r que estão voando no ar|r
    .complete 29297,1 -- Druids of the Flame in Fire Crow form slain (3)
    .mob Druid of the Flame
step
    .isQuestComplete 29263
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29263 >>Entregue A Bitter Pill
    .target Damek Bloombeard
step
    .isQuestComplete 29278
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29278 >>Entregue Living Obsidium
    .target Damek Bloombeard
step
    .isQuestComplete 29295
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29295 >>Entregue The Bigger They Are
    .target Damek Bloombeard
step
    .isQuestComplete 29297
    .goto 338,46.919,89.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Damek Barbabroto|r
    .dailyturnin 29297 >>Entregue Adeus Adeus Burdy
    .target Damek Bloombeard
--Complete Additional Armaments unlock

--Filling the Moonwell unlock
step
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayla Tempessombra|r
    .accept 29279 >>Aceite Enchendo o Poço Lunar
    .target Ayla Shadowstorm
step
    #optional
    #completewith next
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestComplete 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .turnin 29279 >>Entregue Enchendo o Poço Lunar
    .accept 29280 >>Aceite Nutrindo as águas
    .target Matoclaw
step
    .isQuestTurnedIn 29279
    .goto 198,27.170,62.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Matogarra|r
    .accept 29280 >>Aceite Nutrindo as águas
    .target Matoclaw
step
    #optional
    #completewith next
    .isOnQuest 29280
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29280
    .goto 338,44.087,86.321
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayla Tempessombra|r
    .target Ayla Shadowstorm
    .turnin 29280 >>Entregue Nutrindo as Águas
step
    .isQuestTurnedIn 29280
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .accept 29203 >>Aceite Nas Profundezas
step
    .isOnQuest 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Entre nas Profundezas Ígneas
step
    .isOnQuest 29203
    .goto 338,64.615,59.216
    >>Mate |cRXP_ENEMY_Leyara|r
    .complete 29203,1 -- Leyara slain 1/1
    .mob Leyara
step
    .isQuestComplete 29203
    #completewith next
    .goto 338,57.491,49.532,15 >>Saia das Profundezas Ígneas
    .subzoneskip 5741,1
step
    .isQuestComplete 29203
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .target Malfurion Stormrage
    .turnin 29203 >>Entregue Nas Profundezas
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Você terá recebido correspondência de |cRXP_FRIENDLY_Theresa Pele de Árvore|r com um|r |T514925:0|t[|cRXP_LOOT_Medalhão Chamuscado|r]
    .use 69854 >>|cRXP_WARN_Use o|r |T514925:0|t[|cRXP_LOOT_Medalhão Chamuscado|r] |cRXP_WARN_para começar a missão|r
    .collect 69854,1,29298,1 -- Smoke-Stained Locket (1)
    .accept 29298 >>Aceite O Medalhão Chamuscado
step
    #optional
    #completewith SecretsWithin
    .goto 338,53.026,83.693
    .zone 198 >>Use o Portal para o Monte Hyjal
    .zoneskip 338,1
step
    .isQuestTurnedIn 29203
    #completewith next
    .zone Moonglade >>Viaje para a Clareira da Lua
step
    #label SecretsWithin
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravine Saturna|r
    .turnin 29298 >>Entregue O Medalhão Chamuscado
    .accept 29302 >>Aceite Desvendando os Segredos
    .timer 42,Desvendando os Segredos RP
    .target Rabine Saturna
step
    .isQuestTurnedIn 29203
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29302,1 -- Look into Leyara's memories 1/1
step
    .isQuestTurnedIn 29203
    .goto Moonglade,51.685,45.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ravine Saturna|r
    .turnin 29302 >>Entregue Desvendando os Segredos
    .accept 29303 >>Aceite Drama e Família
    .target Rabine Saturna
step
    .isOnQuest 29303
    #completewith next
    .zone Ashenvale >>Voe para Vale Gris
step
    .isOnQuest 29303
    .goto Ashenvale,40.501,53.281
    .cast 6247 >>Clique em |cRXP_PICK_Túmulo Noturno de Elfo|r
    .timer 48,Drama e Família RP
    .skipgossip
step
    .isOnQuest 29203
    .goto Ashenvale,40.501,53.281
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29303,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29303 >>Entregue Drama e Família
    .accept 29310 >>Aceite O Ponto de Equilíbrio
step
    .isOnQuest 29310
    #completewith next
    .zone 198 >>Voe para Monte Hyjal
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    .cast 6247 >>Clique em |cRXP_PICK_Pequena Lápide|r
    .timer 59,O Ponto de Equilíbrio RP
    .skipgossip
step
    .isOnQuest 29310
    .goto 198,7.561,34.582
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 29310,1 -- Look deeper into Leyara's memories 1/1
    .skipgossip
step
    .isQuestTurnedIn 29203
    >>Clique na notificação 'Entregue' no seu Registro de Missões
    .turnin 29310 >>Entregue O Ponto de Equilíbrio
    .accept 29311 >>Aceite O Resto é História
step
    #optional
    #completewith next
    .isOnQuest 29311
    .goto 198,27.484,56.394
    .zone 338 >>Atravesse o Portal para Terras do Fogo
step
    .isOnQuest 29311
    .goto 338,47.022,91.368
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malfurion Tempesfúria|r
    .turnin 29311 >>Entregue O Resto é História
    .target Malfurion Stormrage
--Complete Filling the Moonwell

step
    #optional
    .isQuestTurnedIn 29284
    .isQuestTurnedIn 29282
    .isQuestTurnedIn 29311
    .goto 338,46.932,90.984
    +Parabéns por desbloquear tudo da Frente Derretida! Continue completando um de (|cRXP_ENEMY_2.5|r - A Frente Derretida + Druidas) ou (|cRXP_PICK_2.5|r - A Frente Derretida + Guardiões) para ganhar mais |T513195:0|t[Marcas da Árvore do Mundo]
    >>|cRXP_FRIENDLY_Zen'Vorka|r vende |T133654:0|t[|cRXP_FRIENDLY_Zen'Vorka's Cache|r] por 30 |T513195:0|t[Marcas da Árvore do Mundo] que pode conter um item aleatório de qualidade verde ou o raro companheiro |T294481:0|t[|cFF0070FFPedra Carbonizada|r]
    .target Zen'Vorka

step
    #label WardenEnd
    +|cRXP_WARN_Você completou todas as missões diárias disponíveis para hoje. Recarregue este mesmo guia amanhã (|r|cRXP_PICK_2.5|r - The Derretido Front + Wardens|cRXP_WARN_) para continuar completando as missões diárias até que tenha adquirido o suficiente|r |T513195:0|t[Marks of the World Árvore]
]])
