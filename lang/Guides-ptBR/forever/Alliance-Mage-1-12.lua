if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 1-10 Floresta de Elwynn Mago AdE
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun de Mago
#defaultfor Human
#next 10-12 Lagoa Modan Mago AdE
step
    #sticky
    #completewith next
    .goto 1429/0,-136.52,-8933.53
    +Você selecionou um guia destinado a Humanos. Você deve escolher a zona inicial que corresponda à zona em que você começa << Gnome
    +Observe que você selecionou o guia AdE. O AdE é normalmente muito mais difícil que mago de alvo único, mas MUITO mais rápido
step
    >>Apague sua Pedra de Retorno
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .accept 783 >>Aceite Uma Ameaça Interior
step
    .goto 1429/0,-162.62,-8902.59
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 783 >>Entregue Uma Ameaça Interior
.target Marshal McBride
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .accept 5261 >>Aceite Enzo Peleteiro
step
    .goto 1429/0,-68.11,-8874.67
    .vendor >>Abate lobos até ter 50 moedas de cobre em lixo de vendedor. Venda para o comerciante, depois compre 10 de água de Irmão Dânio.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >>Farme até o nível 2
step
    .goto 1429/0,-161.82,-8870.05
>>Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
.target Eagan Peltskinner
    .accept 33 >>Aceite Lobos Além da Fronteira
step
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    .goto 1429/0,-64.64,-8881.62,40,0
    .goto 1429/0,-68.11,-8809.87,40,0
    .goto 1429/0,-116.70,-8800.61,40,0
    >>Abate Lobos Jovens na área para Carne
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    .goto 1429/0,-109.76,-8756.63,40,0
    .goto 1429/0,-189.59,-8777.46,40,0
    >>Abate Kobold Daninho na área
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto 1429/0,-161.82,-8870.05
.target Eagan Peltskinner
>>Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 33 >>Entregue Lobos Além da Fronteira
step
    .goto 1429/0,-116.70,-8900.14
    .vendor >>lixo de vendedor, depois compre mais 10 de água de Irmão Dânio
step
    .goto 1429/0,-162.62,-8902.59
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
.target Marshal McBride
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3104 >>Aceite Carta Glífica
step
    .xp 3 >>Farme até o nível 3
step
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    .goto 1429/0,-113.23,-8779.78,40,0
    .goto 1429/0,-81.99,-8684.88,40,0
    .goto 1429/0,-151.41,-8726.54,40,0
    >>Abate Operários Kobold
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto 1429/0,-120.17,-8897.82
    .xp 3+1110 >>Farme até 1110+/1400xp no caminho de volta para a cidade
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>vender lixo
step
    .goto 1429/0,-162.62,-8902.59
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
.target Marshal McBride
    .accept 21 >>Aceite Escaramuça na Serra do Eco
step
    >>Suba as escadas
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-182.65,-8865.42,15,0
    .goto 1429/0,-188.23,-8851.58
.target Khelden Bremen
>>Fale com |cRXP_FRIENDLY_Gaspar Melchior|r
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .accept 18 >>Aceite Irmandade de Ladrões
step
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-328.42,-9147.80,60,0
    .goto 1429/0,-397.84,-9036.70,60,0
    .goto 1429/0,-363.13,-8909.39,60,0
    >>Abate Capangas Defias. Saqueie-os para Bandanas
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto 1429/0,-136.52,-8933.53
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .turnin 18 >>Entregue Irmandade de Ladrões
.target Deputy Willem
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .accept 3903 >>Aceite Madel Quintana
step
    .goto 1429/0,-120.17,-8897.82
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1429/0,-363.13,-8909.39,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    .goto 1429/0,-120.17,-8673.31,60,0
    .goto 1429/0,-213.88,-8564.52,60,0
    >>Abate Trabalhadores na mina
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>Faça grind até 5
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3903 >>Entregue Madel Quintana
.target Milly Osworth
    .accept 3904 >>Aceite Colheita da Madel
step
    #som
    #phase 3-6
    .goto 1429/0,-224.30,-8846.90
.target Milly Osworth
>>Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3903 >>Entregue Madel Quintana
step
    #era/som
    >>Pegue os Baldes de Uvas no campo
    .goto 1429/0,-356.19,-9082.99
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-460.31,-9055.21
    >>Abate Garrick e saqueie sua Cabeça
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >>Farme no caminho de volta até 1175+/2800xp
    .goto 1429/0,-224.30,-8846.90
step
    #era/som
    .goto 1429/0,-224.30,-8846.90
>>Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3904 >>Entregue Colheita da Madel
.target Milly Osworth
    .accept 3905 >>Aceite Manifesto das Uvas
step
    .goto 1429/0,-136.52,-8933.53
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .turnin 6 >>Entregue Recompensa por Garrick Patatenra
step
    .goto 1429/0,-162.62,-8902.59
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 21 >>Entregue Escaramuça na Serra do Eco
.target Marshal McBride
    .accept 54 >>Aceite Relatório para Vila Dourada
step
     #era/som
     >>Suba a escada principal
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,15,0
    .goto 1429/0,-181.64,-8902.13
.target Brother Neals
>>Fale com o |cRXP_FRIENDLY_Irmão Neals|r
    .turnin 3905 >>Entregue Manifesto das Uvas
step
    .goto 1429/0,-47.28,-9043.64
.target Falkhaan Isenstrider
>>Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,164.44,-9339.91,200 >>Morra e reviva no Anjo da Cura, ou corra para Goldshire
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1429/0,74.02,-9465.52
>>Fale com o |cRXP_FRIENDLY_Marechal Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
.target Marshal Dughan
    .accept 62 >>Aceite A Mina Fundaprofunda
step
    .goto 1429/0,46.43,-9460.26,15,0
    >>Logo à sua esquerda ao entrar na Estalagem
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
step
    .goto 1429/0,16.20,-9462.65
.target Innkeeper Farley
>>Fale com o |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 2158 >>Entregue Descanso e Relaxamento
    .home >>Defina sua Pedra de Regresso para Vila Dourada
step
    .xp 6 >>Faça grind até 6
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >>Suba. Aprenda seus feitiços de classe
step
    .goto 1429/0,74.20,-9497.30
.target Remy "Two Times"
>>Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
step
    #sticky
    #completewith BoarMeat1
    >>Comece matando alguns javalis que você vê para Carne de Javali
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Fale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Fale com |cRXP_FRIENDLY_Mama Campedra|r
    .accept 88 >>Aceite Princesa Tem Que Morrer!
step
    #sticky
    #completewith Candles
    >>Pegue algumas Velas de Kobolds próximos
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >>Pegue um pouco de Pó de Ouro de Kobolds próximos
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>Farme inimigos a leste fora da mina
    .goto 1429/0,38.38,-9923.69
>>Fale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
.target Billy Maclure
    .accept 86 >>Aceite Juntando a Fome...
step
    #label BoarMeat1
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Fale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >>Aceite Jovens Amantes
step
    .goto 1429/0,63.78,-10008.82
    .vendor >>Compre tanto leite quanto puder do comerciante
step
    #sticky
    #completewith next
    >>Mate javalis para Carne de Javali
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
>>Fale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .turnin 106 >>Entregue Jovens Amantes
.target Tommy Joe Stonefield
    .accept 111 >>Aceite Fale com a Vovó
step
    .goto 1429/0,407.40,-9918.55
    >>Termine de obter Carne de Javali
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto 1429/0,338.47,-9889.69
>>Fale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 86 >>Entregue Juntando a Fome...
.target "Auntie" Bernice Stonefield
    .accept 84 >>Aceite ...com a Vontade de Comer
step
    .goto 1429,34.945,83.855
>>Fale com |cRXP_FRIENDLY_Vovó Campedra|r
    .turnin 111 >>Entregue Fale com a Vovó
.target Gramma Stonefield
    .accept 107 >>Aceite Bilhete para Durval
step
    #sticky
    #label KoboldCandles
    >>Pegue Velas de Kobolds próximos
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >>Pegue Pó de Ouro de Kobolds próximos
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Farme inimigos a leste fora da mina
    .goto 1429/0,38.38,-9923.69
>>Fale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue ...com a Vontade de Comer
.target Billy Maclure
    .accept 87 >>Aceite Dentadouro
step
    >>Entre na mina
    .goto 1429/0,129.73,-9844.49
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Mate Dentadouro para pegar o Colar de Berenice
    .goto 1429/0,88.08,-9744.96--??
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Farme até 1600+/4500 XP
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto 1429/0,338.47,-9889.69
.target "Auntie" Bernice Stonefield
>>Fale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
step
    >>Farme inimigos de volta a Goldshire
    .xp 7+2690 >>Farme até 2690+/4500 XP
    .goto 1429/0,74.20,-9497.30
step
    .goto 1429/0,74.20,-9497.30
>>Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
.target Remy "Two Times"
    .accept 40 >>Aceite Perigo Anfíbio
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1429/0,74.02,-9465.52
>>Fale com o |cRXP_FRIENDLY_Marechal Delegado Durão|r
    .turnin 40 >>Entregue Perigo Anfíbio
.target Marshal Dughan
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1429/0,33.14,-9460.75
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
.target William Pestle
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Colete Alga
step
    .xp 8 >>Farme até o nível 8
step
    .money <0.1250
    .goto 1429/0,8.25,-9464.89
    .vendor >>Compre uma bolsa de 6 espaços de Brog
step
    .goto 1429/0,18.66,-9476.47,12,0
    .goto 1429/0,36.02,-9471.84
    .trainer >>Suba as escadas. Aprenda seus feitiços de classe
step
    .goto 1429/0,16.20,-9462.65
    .vendor >>Compre Água do nível 5 até 40
step
    >>Mate Murlocs para o leste e saqueie-os por Alga Frond. Mate os inimigos na ilha se você ainda precisar de alguns
    .goto 1429/0,-116.70,-9404.71,60,0
    .goto 1429/0,-248.59,-9434.80,50,0
    .goto 1429/0,-463.78,-9393.14,50,0
    .goto 1429/0,-422.13,-9481.10,50,0
    .goto 1429/0,-331.89,-9485.73,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Entre na mina e continue seguindo o caminho do meio
    .goto 1429/0,-609.56,-9189.46,60,0
    .goto 1429/0,-560.97,-9101.50
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-1032.06,-9610.23
>>Fale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
.target Guard Thomas
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
step
    #sticky
    #completewith Prowlers
    >>Mate os Espreitadores enquanto faz outras missões
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Mate Ursos enquanto faz outras missões. Mate qualquer um que vir
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-987.88,-9335.28
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Fale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
step
    .goto 1429/0,-1355.79,-9469.52
    .vendor >>Venda lixo e repare equipamentos
step
    #sticky
    #completewith Bundles
    >>Tenha cuidado com os feixes de toras na base das árvores
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto 1429/0,-1234.31,-9224.18,60 >>Vá em direção ao cadáver do guarda
step
    .goto 1429/0,-1234.31,-9224.18
    >>Mate os inimigos ao redor do cadáver. Puxe os 2 inimigos em frente às cabanas, afaste-se e transforme um em ovelha enquanto mata o outro, depois mate o inimigo transformado. Saque o cadáver no chão
    >>Tenha cuidado pois esta missão pode ser difícil
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    .goto 1429/0,-1130.18,-9383.88,40,0
    .goto 1429/0,-1369.67,-9314.45,40,0
    >>Comece a voltar correndo e termine os feixes
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto 1429/0,-1289.22,-9469.80
.target Supervisor Raelen
>>Fale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
step
    #label Prowlers
    .xp 9 >>Suba até o nível 9
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
.target Sara Timberlain
>>Fale com |cRXP_FRIENDLY_Sara Albernaz|r
    .accept 83 >>Aceite Tecidos de Linho Vermelho
step
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    .goto 1429/0,-1126.71,-9689.41,40,0
    .goto 1429/0,-1230.84,-9876.89,40,0
    .goto 1429/0,-1310.67,-9717.18,40,0
    >>Mate os últimos inimigos para Proteja a Fronteira
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto 1429/0,-1032.06,-9610.23
>>Fale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
.target Guard Thomas
    .accept 39 >>Aceite Entregar o Relatório de Tomás
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
>>Fale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r
-->>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r
-->>Talk to |cRXP_FRIENDLY_Marshal Dughan|r
--
-->>Talk to |cRXP_FRIENDLY_Marshal Haggard|r
-->>Talk to |cRXP_FRIENDLY_Deputy Rainer|r
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
step
    #sticky
    #completewith Princess
    >>Tenha cuidado com Escritura de Cerro Oeste dos Defias (queda sortuda)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
step
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    >>Comece circulando pela fazenda, matando os Defias e saqueando-os por Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto 1429/0,-873.34,-9772.73
    >>Mate Princesa. Usar a Poção de Cura Inferior de antes se necessário. Saque-a para obter o Collar
    >>Você também pode pular entre as cercas na borda da fazenda para matar Princesa e seus guardas
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto 1429/0,-1366.20,-9552.85,120 >>Morra e ressurja no Anjo da Cura se estiver com pouca vida, caso contrário apenas corra de volta e entregue
step
    .goto 1429/0,-1223.90,-9534.33
.target Sara Timberlain
>>Fale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .isQuestComplete 83
step
    .goto 1433/0,-1741.68,-9644.29
    .zone Redridge Mountains >>Farme no caminho para Redridge
step
    #softcore
    #sticky
    #completewith next
    +Morra para os inimigos aqui
    .goto 1433/0,-1813.97,-9710.17
step
    #softcore
    >>Ressurja no Anjo da Cura
    .goto 1433/0,-2022.37,-9394.52,100 >>Ressurja no Anjo da Cura
step
    #softcore
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    #hardcore
    >>Corra em direção à Rota de Voo. Tenha muito cuidado para não atrair inimigos ou morrer no caminho. Tente ficar na estrada e fique atento
    .goto 1433/0,-2235.11,-9435.06
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    .hs >>Use sua Pedra de Retorno para Goldshire
step
    .goto 1429/0,33.14,-9460.75
    >>Não espere pela encenação dele
.target William Pestle
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
step
    .goto 1429/0,70.72,-9462.58
>>Fale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
.target Marshal Dughan
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda
step
    .goto 1429/0,87.87,-9456.65
.target Smith Argus
.target Verner Osgood
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >>Aceite Tarefa de Elmore
step
    .goto 1429/0,88.08,-9464.89
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1429/0,33.14,-9460.75
.target William Pestle
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 114 >>Aceite A fuga
step
    >>Saia da estalagem e vá para o sul
    .goto 1429/0,36.02,-10013.45
.target Maybell Maclure
>>Fale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
step
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Fale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88 >>Entregue Princesa Tem que Morrer
step
    .goto 1429/0,695.47,-9663.95
.target Deputy Rainer
>>Fale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
step
    .isOnQuest 184
    .goto 1436/0,916.67,-9852.67
.target Farmer Furlbrow
>>Fale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .turnin 184 >>Entregue Escritura do Furlbrow
step
    .goto 1436/0,919.54,-9853.04
.target Verna Furlbrow
>>Fale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
step
    .goto 1436/0,1042.11,-10112.11
.target Salma Saldean
>>Fale com |cRXP_FRIENDLY_Salma Saldanha|r
    .turnin 36 >>Entregue Cozido de Costa Negra
step
    #softcore
    #sticky
    #completewith next
    .goto 1436/0,1207.17,-10552.67,150 >>Morra e ressurja no Anjo da Cura, ou corra para Sentinela Hill
step
    .goto 1436/0,1045.22,-10508.800
.target Gryan Stoutmantle
>>Fale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Miguel Mantoforte
step
    .goto 1436/0,1021.60,-10500.61
    .vendor >>vender lixo
.target Quartermaster Lewis
>>Fale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido
step
    #phase 3-6
    .goto 1436/0,1042.11,-10112.11
    .xp 11+3750 >>Farme até 3750+/8800xp
step
    .goto 1436/0,1035.67,-10627.33
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
>>Fale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
.target Thor
    .accept 6281 >>Aceite Continue para Ventobravo
    .fly Stormwind >>Voe para Ventobravo
step
    .goto 1453/0,625.49,-8857.89
    >>Escolha foguetes. Eles têm dano muito bom e podem ser usados para dividir inimigos
.target Morgan Pestle
>>Fale com |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61 >>Entregue Carregamento para Ventobravo
step
    #era/som
    .goto 1453/0,613.39,-8796.05
    .trainer >>Treine Espadas de Uma Mão
step
    .goto 1453/0,382.18,-8701.93
.target Osric Strang
>>Fale com |cRXP_FRIENDLY_Larso Norde|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    >>Comerciante e Conserto
step
    #completewith next
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Fale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >>Entregue Tarefa de Elmore
step
    .goto 1453/0,684.64,-8387.31
.target Grimand Elmore
>>Fale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
step
    #sticky
    #completewith next
    .goto 1453/0,521.98,-8353.25,20 >>Entre no Metrô Correfundo
step
    >>Pegue o bonde quando chegar, depois desça quando chegar do outro lado
.target Monty
>>Fale com |cRXP_FRIENDLY_Monty|r
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
step
    >>Usar a flauta nos ratos espalhados ao redor
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Fale com |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
step
    .goto 1455/0,-1322.37,-4838.32,30 >>Entre em Ironforge
step
    .goto 1455/0,-1152.40,-4821.13
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
step
    #phase 3-6
    .goto 1455/0,-928.40,-4614.46
     .trainer >>Treine suas magias de classe
step
    #sticky
    #completewith next
    .goto 1426/0,-832.79,-5022.97,100 >>Saia de Ironforge
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,12 >>Suba esta parte da montanha
step
    >>Mate Ragash. Saque a Dentada dele
    >>Puxe-o até o guarda ao sul da fazenda. Faça 51%+ de dano a ele
    >>Tenha cuidado pois esta missão pode ser difícil
    .goto 1426/0,-1280.97,-5390.70
    .goto 1426/0,-1289.83,-5669.780,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
step
    >>Farme um pouco durante o trajeto
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Comerciante, compre comida+água
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 433 >>Aceite O Funcionário Público
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Mate os Troggs na caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Farme até 6350+/7600
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
step
    #era/som--xpgate
    .xp 11
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Lixo de vendedor, compre 30 bebidas de nível 5 de Kazan
    .trainer >>Treine Culinária com Ghilm. Você precisará disso para pegar 2 missões extras depois.
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
step
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Mate Ronhagarra. Saque sua Garra
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
step
    .goto 1426/0,-2354.62,-4898.20,25 >>Passe pelo túnel para Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
<< Gnome Mage
#name 1-10 Dun Morogh Mago AdE
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun de Mago
#defaultfor Dwarf/Gnome
#next 10-12 Lagoa Modan Mago AdE
step
    #era/som
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa. << Human
    +Observe que você selecionou o guia AdE. O AdE é normalmente muito mais difícil que mago de alvo único, mas MUITO mais rápido
step
    #phase 3-6
    #sticky
    #completewith next
    .goto 1426/0,328.18,-6214.85
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa. << Human
    +Nota que você selecionou o guia AdE. AdE é tipicamente muito mais difícil do que Mago de alvo único, mas com as mudanças recentes de 100% de XP de missão, também é mais lento.
step
    >>Apague sua Pedra de Retorno
    .goto 1426/0,328.18,-6214.85
.target Sten Stoutarm
>>Fale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Equipadores Anões
step
    >>Mate os Lobos. Saque sua Carne
    .goto 1426/0,388.61,-6333.02
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >>Farme até o nível 2
step
    .goto 1426/0,324.58,-6224.67
    >>Lixo de vendedor. Compre 15 Água. Farme lobos extras se você não tiver dinheiro suficiente.
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto 1426/0,328.18,-6214.85
>>Fale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179 >>Entregue Equipadores Anões
.target Sten Stoutarm
    .accept 233 >>Aceite Entrega de Correio do Vale Coldridge
    .accept 3114 >>Aceite Memorando Glífico
step
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Fale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .accept 170 >>Aceite Uma Nova Ameaça
step
    #sticky
    #completewith Rockjaw
    >>Mate os Troggs Pedraqueixo Normais que você vê
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    .goto 1426/0,477.26,-6264.07,30,0
    .goto 1426/0,565.91,-6244.37,30,0
    >>Mate os Troggs Pedraqueixo Parrudos
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto 1426/0,688.98,-6222.47
>>Fale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
.target Talin Keeneye
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correio do Vale Coldridge
step
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    .goto 1426/0,708.73,-6257.50,40,0
    .goto 1426/0,792.46,-6221.38,40,0
    .goto 1426/0,762.91,-6142.58,40,0
    .goto 1426/0,679.18,-6162.28,40,0
    >>Mate javalis na área
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto 1426/0,688.98,-6222.47
.target Talin Keeneye
>>Fale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
step
    .xp 3+860 >>Farme até 860+/1400 XP
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
    .goto 1426/0,669.33,-6339.58,40,0
    .goto 1426/0,610.23,-6257.50,40,0
    .goto 1426/0,437.86,-6382.27,40,0
step
    #label Rockjaw
    .goto 1426/0,567.09,-6362.99
>>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Coldridge Valley Malha Entrega
.target Grelin Whitebeard
    .accept 182 >>Aceite The Trolls Cave
step
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    >>Uma vez aceita, um temporizador de 5 minutos começará. Relaxe e siga o guia
step
    .goto 1426/0,388.61,-6421.67
    >>Suba por aqui e mate os Troggs se você não terminou com eles até agora
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Se você foi muito lento e falhou na missão cronometrada, vá e pegue-a novamente
    .goto 1426/0,570.83,-6372.42,0
.target Nori Pridedrift
>>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto 1426/0,383.68,-6057.22
.target Durnan Furcutter
>>Fale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
step
    #label Scalding1
    .goto 1426/0,383.68,-6057.22
>>Fale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
.target Durnan Furcutter
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>vender lixo
step
    .goto 1426/0,388.17,-6056.10
.target Marryk Nurribit
>>Fale com |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >>Entregue Glyphic Memorandum
    .trainer >>Treine suas magias de classe
step
    >>Corra para fora do bunker
    .goto 1426/0,339.36,-6214.82
.target Balir Frosthammer
>>Fale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
step
    .goto 1426/0,324.58,-6224.67
    .vendor >>Compre 10 de água
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto 1426/0,506.81,-6477.48,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    .goto 1426/0,684.11,-6480.77,30,0
    .goto 1426/0,772.76,-6362.57,30,0
    >>Mate os Filhotes Jubafria do Trolls
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto 1426/0,570.83,-6372.42
.target Nori Pridedrift
>>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
step
    .goto 1426/0,567.09,-6362.99
>>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 182 >>Entregue The Trolls Cave
.target Grelin Whitebeard
    .accept 218 >>Aceite O Diário Roubado
step
    #requires Mug
    .goto 1426/0,482.18,-6500.47,30,0
    .goto 1426/0,373.83,-6470.92,15,0
    .goto 1426/0,295.03,-6513.60
    >>Entre na caverna dos Trolls. Mate Grik'nir, depois saqueie-o para obter o Diário de Grelin
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Farme até aqui
    .goto 1426/0,565.91,-6365.85
>>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
.target Grelin Whitebeard
    .accept 282 >>Aceite Observações de Senir
step
    >>Farme alguns inimigos até aqui
    .goto 1426/0,153.00,-6235.86
>>Fale com o |cRXP_FRIENDLY_Montanhista Thalos|r
    .turnin 282 >>Entregue Observações de Senir
.target Mountaineer Thalos
    .accept 420 >>Aceite Observações de Senir
step
    .goto 1426/0,132.51,-6247.65
.target Hands Springsprocket
>>Fale com |cRXP_FRIENDLY_Mãos Rodamola|r
    .accept 2160 >>Aceite Suprimentos para Tannok
step
    .goto 1426/0,122.66,-6227.95,20,0
    .goto 1426/0,43.86,-6044.08,20 >>Atravesse o túnel
step
    #sticky
    #completewith BoarMeat44
    >>Mate os javalis para obter 4 Carnes de Javali
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >>Mate os javalis para obter 6 Costelas de Javali
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>Farme javalis a nordeste em direção a Kharanos
    .goto 1426/0,9.38,-5942.30,45,0
    .goto 1426/0,-54.64,-5863.50,45,0
    .goto 1426/0,-359.99,-5705.90
    .xp 5+2415 >>Suba para 2415/+2800 XP
step
    #softcore
    .goto 1426/0,-512.67,-5686.2,120 >>Morra e ressuscite no Curador Espiritual, ou corra para Kharanos. Certifique-se de que sua subzona NÃO é Coldridge Passe
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Fale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
step
    #completewith next
    .goto 1426/0,-497.89,-5633.67
    .vendor >>vender lixo
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Fale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
step
    .goto 1426/0,-576.69,-5748.58
    .xp 6 >>Faça grind até 6
step
    .goto 1426/0,-523.35,-5590.82
.target Tannok Frosthammer
>>Fale com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160 >>Entregue Suprimentos para Tannok
step
    >>Andar de cima
    .goto 1426/0,-537.29,-5587.70
    .trainer >>Treine suas magias de classe
step
    .goto 1426/0,-532.37,-5600.83
    .home >>Defina sua Pedra de Retorno em Cervaforte Distillery
    .vendor >>Compre o máximo de bebida nível 5 que puder pagar
step
    .goto 1426/0,-464.45,-5573.78
.target Tharek Blackstone
>>Fale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas Para Gradaço
step
    .goto 1426/0,-632.15,-5466.540
    >>NÃO mate ursos no caminho
.target Pilot Bellowfiz
>>Fale com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Fale com |cRXP_FRIENDLY_Piloto Marchapedra|r
    .accept 313 >>Aceite The Grizzled Den
step
    .goto 1426/0,-680.12,-5489.20
.target Beldin Steelgrill
>>Fale com |cRXP_FRIENDLY_Beldin Gradaço|r
    .turnin 400 >>Entregue Ferramentas Para Gradaço
step
    #label BoarMeat44
    .goto 1426/0,-664.55,-5499.710
.target Loslor Rudge
>>Fale com |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
step
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    .goto 1426/0,-758.92,-5522.03,40,0
    .goto 1426/0,-734.29,-5646.80,40,0
    .goto 1426/0,-665.34,-5646.80,40,0
    .goto 1426/0,-655.49,-5548.30,40,0
    .goto 1426/0,-561.92,-5502.33,40,0
    .goto 1426/0,-571.77,-5416.97,40,0
    .goto 1426/0,-340.29,-5600.83,40,0
    >>Obtenha os itens para Provisões Para a Vaporeta
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto 1426/0,-632.15,-5466.540
>>Fale com |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões Para a Vaporeta
.target Pilot Bellowfiz
    .accept 318 >>Aceite Sempre-aceso
step
    >>Volte para a estalagem
    .goto 1426/0,-507.74,-5587.70,20,0
    .goto 1426/0,-532.37,-5600.83
    .vendor >>Compre o máximo de bebida nível 5 que puder pagar
    >>Você pode comprar uma Faca de Esfolamento fora da estalagem se quiser, é melhor do que um cajado até obter uma arma com +stats
step
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    .goto 1426/0,-291.04,-5676.35,40,0
    .goto 1426/0,-286.12,-5590.98,40,0
    .goto 1426/0,-217.17,-5499.05,40,0
    >>Entre na caverna. Abata os Wendigos. Saque-os pelas Crinas
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Saque o caixote
    .goto 1426/0,-369.84,-5745.30
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto 1426/0,-197.47,-5932.45,30,0
    .goto 1426/0,-201.51,-6015.520
.target Hegnar Rumbleshot
>>Fale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .vendor >>Fale com o comerciante e repare
step
    .xp 7 >>Farme até o nível 7
step
    >>Farme alguns inimigos no caminho
    .goto 1426/0,68.48,-5728.88,50,0
    .goto 1426/0,29.08,-5584.42,50,0
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Fale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-Seca
step
    .goto 1426/0,299.96,-5387.42
    .vendor >>Fale com o comerciante. Compre até 20 bebidas nível 5
step
    #sticky
    #label Evershine
    .goto 1426/0,314.73,-5380.85
>>Fale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
.target Rejold Barleybrew
    .accept 319 >>Aceite Tudo Pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Fale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .accept 310 >>Aceite A Guerra das Cervejas
step
    #label Ribs
    #requires Evershine
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    .goto 1426/0,250.71,-5154.30,60,0
    .goto 1426/0,408.31,-5187.13,60,0
    .goto 1426/0,388.61,-5311.90,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,531.43,-5426.82,60,0
    .goto 1426/0,324.58,-5577.85,60,0
    >>Mate os Ursos, os Javalis e os Leopardos. Vá do norte→oeste→sul
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Termine de coletar as Costelas de Javali
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto 1426/0,315.28,-5378.39
>>Fale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 319 >>Entregue Tudo Pela Sempre-aceso
.target Rejold Barleybrew
    .accept 320 >>Aceite Fale Novamente com Urrabolha
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Farme até 4360+/4500XP
step
    .xp 7+3735 >>Farme até 3735+/4500XP
step
    .hs >>Vá para Kharanos
step
    .goto 1426/0,-532.37,-5600.83
    >>Compre um Rapsódia Malt e uma Trovão Ale de Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto 1426/0,-542.22,-5597.55,10,0
    .goto 1426/0,-547.63,-5607.07
    >>Desça, fale com Jarven e entregue-lhe o Trovão Ale
    >>Espere o barril ficar 'sem guarda', depois entregue
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    .goto 1426/0,-502.82,-5597.55
.target Ragnar Thunderbrew
>>Fale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
     >>Venda a receita quando visitar um vendedor
step
    .xp 8 >>Farme até o nível 8
step
    .goto 1426/0,-537.29,-5587.70
    .trainer >>Treine suas magias de classe
    >>Aprenda Polimorfia
step
    .goto 1426/0,-532.37,-5600.83
    .vendor >>Compre até 30 bebidas de nível 5 do estalajadeiro
step
    .goto 1426/0,-499.17,-5644.37
.target Senir Whitebeard
>>Fale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .accept 287 >>Aceite A Fortaleza Jubafria
step
    .goto 1426/0,-641.80,-5473.18
.target Pilot Stonegear
>>Fale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil Canjento
step
    .goto 1426/0,-632.15,-5466.540
.target Pilot Bellowfiz
>>Fale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 320 >>Fale novamente com Urrabolha
step
    #era/som
    >>Entre no edifício
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Fale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .accept 412 >>Aceite Operação Remendão
step
    .goto 1426/0,-320.59,-5354.58,25,0
    .goto 1426/0,-271.34,-5367.72,25 >>Corra pela rampa para Tremulerva
step
    .goto 1426/0,-212.24,-5364.43,30,0
    .goto 1426/0,-241.79,-5308.62,30,0
    .goto 1426/0,-153.14,-5190.42,30,0
    .goto 1426/0,-271.34,-5003.27,30,0
    >>Mate inimigos nesta área. Tenha cuidado se precisar limpar o acampamento do meio. Você pode puxar os inimigos das cabanas e fazer LoS atrás delas se precisar de 2 inimigos adicionais. Se tiver azar, corra para a outra área
    >>Saque caixas no chão
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >>Use Polimorfia em Velho Barbafria, depois saque as carnes
    .goto 1426/0,-94.04,-5646.80
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,98.03,-5574.57
.target Tundra MacGrann
>>Fale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
step
    .goto 1426/0,304.88,-5380.85
    .vendor >>Compre até 20 bebidas de nível 5 adicionais
step
    #sticky
    #label Stout
    .goto 1426/0,315.28,-5378.39
>>Fale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 315 >>Entregue em Em Busca da Cerveja Perfeita
.target Rejold Barleybrew
    .accept 413 >>Aceite Cerveja Tremeluz
step
    .goto 1426/0,315.42,-5372.02
.target Marleth Barleybrew
>>Fale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 311 >>Fale novamente com Marleth
step
    #era/som
    #requires Stout
    .goto 1426/0,462.48,-5288.92,40,0
    .goto 1426/0,580.68,-5167.43,40,0
    .goto 1426/0,541.28,-5302.05,40,0
    .goto 1426/0,605.31,-5321.75,40,0
    .goto 1426/0,551.13,-5367.72,40,0
    >>Mate os Gnomos Leprosos. Saque-os para obter Engrenagens e Cremalheiras
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >>Suba até o nível 9
step
    .goto 1426/0,595.46,-5545.02,35 >>Entre na caverna
step
    .goto 1426/0,713.66,-5528.60,40,0
    .goto 1426/0,753.06,-5613.97,40,0
    >>Mate os Headhunters dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Avance com cuidado até este recanto da caverna, matando inimigos
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto 1426/0,649.63,-5568.00,15 >>Volte para cima pela caverna
step
    #softcore
    >>Pule para baixo; depois você morre e corre de volta
    .goto 1426/0,669.33,-5590.98
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >>Morra e reviva no Anjo da Cura
step
    #hardcore
   .goto 1426/0,-499.17,-5644.37,150 >>Use o Lar se estiver disponível; caso contrário, lute de volta até Kharanos
step
    .goto 1426/0,-499.17,-5644.37
>>Fale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 287 >>Entregue em A Fortaleza Jubafria
.target Senir Whitebeard
    .accept 291 >>Aceite Os Relatórios
step
    #era/som
    .goto 1426/0,-453.57,-5499.05
.target Razzle Sprysprocket
>>Fale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .turnin 412 >>Entregue em Operação Remendão
step
    .goto 1426/0,-1157.84,-5604.12,50,0
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
step
    #sticky
    #completewith next
    .goto 1426/0,-1266.19,-5528.60,14,0
    .goto 1426/0,-1261.27,-5499.05,10 >>Suba esta parte da montanha
step
    >>Mate Ragash. Saque a Dentada dele
    >>Puxe-o até o guarda ao sul da fazenda. Faça 51%+ de dano a ele
    >>Tenha cuidado pois esta missão pode ser difícil
    .goto 1426/0,-1280.97,-5390.70
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto 1426/0,-1305.59,-5512.18
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
step
    >>Farme um pouco durante o trajeto
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Venda itens descartáveis. Compre comida/água se necessário
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 433 >>Aceite O Funcionário Público
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
step
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    .goto 1426/0,-1674.97,-5735.45,30,0
    .goto 1426/0,-1684.82,-5627.10,30,0
    .goto 1426/0,-1738.99,-5541.73,30,0
    .goto 1426/0,-1788.24,-5620.53,30,0
    >>Mate os Troggs na caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto 1426/0,-1600.30,-5726.590
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
step
    #completewith next
    .goto 1426/0,-1591.24,-5712.47
    .vendor >>Venda lixo e repare equipamentos
step
    .goto 1426/0,-1581.39,-5715.75
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
step
    .goto 1426/0,-1502.59,-5837.23,40,0
    .goto 1426/0,-1679.89,-5787.98,40,0
    .goto 1426/0,-1694.67,-5646.8,40,0
    .xp 10 >>Triture até o nível 10 nos Troggs
step
    .goto 1426/0,-1576.47,-5673.07
    .vendor >>Venda o lixo de vendedor, compre até 30 bebidas de nível 5 de Kazan
    .trainer >>Treine Culinária com Ghilm. Você precisará disso para pegar 2 missões extras depois.
step
    .goto 1426/0,-2325.07,-5164.15
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
step
    >>Triture no caminho
    .goto 1426/0,-2123.14,-5065.65
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Mate Ronhagarra. Saque sua Garra
    .goto 1426/0,-2137.92,-5072.22
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto 1426/0,-2329.60,-5163.76
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
step
    >>Volte pelo túnel que você veio
    .goto 1426/0,-2118.22,-5541.73,50,0
    .goto 1426/0,-2251.19,-5633.67,25,0
    .goto 1426/0,-2447.11,-5479.74
>>Fale com o |cRXP_FRIENDLY_Montanhista Cervevada|r
    .turnin 413 >>Entregue Cerveja Tremeluz
.target Mountaineer Barleybrew
    .accept 414 >>Aceite Cerveja para Kadrell
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 Lagoa Modan Mago AdE
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun de Mago
#defaultfor Human Mage/Gnome Mage
#next 12-18 Costa Negra Mago AdE
step
    #era/som
    #completewith next
    +Enquanto você completa missões em Loch Modan, guarde todos os Nacos de Carne de Javali que conseguir e NÃO os venda. Você precisará deles depois.
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Fale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Entre no bunker pelas costas
.target Captain Rugelfuss
>>Fale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .accept 267 >>Aceite A Ameaça Trogg
step << Gnome
    .goto 1432/0,-2818.49,-5742.10,45 >>Corra para a Entrada dos Troggs
step << Gnome
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    .goto 1432/0,-2821.25,-5819.36,50,0
    .goto 1432/0,-2950.89,-5804.64,50,0
    .goto 1432/0,-2846.07,-5979.40,50,0
    >>Mate os Stonesplinter Troggs. Saque-os pelos Dentes.
    >>Tenha cuidado pois esta missão pode ser difícil. Corra se você agredir 2 inimigos acidentalmente.
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto 1432/0,-2602.54,-5832.73
.target Mountaineer Cobbleflint
>>Fale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
step << Gnome
    .goto 1432/0,-2634.59,-5842.81
    >>Entre no bunker pelas costas
.target Captain Rugelfuss
>>Fale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
step << Human
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vá a um comerciante e repare seu equipamento
step << Human
    .goto 1432/0,-2676.82,-4825.93
>>Fale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 353 >>Entregue Entrega para Lançatroz
.target Mountaineer Stormpike
    .accept 307 >>Aceite Patas Nojentas
step << Human
    #sticky
    #completewith next
    >>Mate as Aranhas para obter Ichor de Aranha
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>Mate os Ursos para obter Carne de Urso
    .collect 3173,3 --Collect Bear Meat (x3)
    >>Mate os Javalis para obter Intestinos de Javali
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto 1432/0,-2961.92,-5366.82,130 >>Triture inimigos no caminho para a missão de culinária posterior
step
    >>Corra para Thelsamar. NÃO defina sua Pedra de Retorno. << Gnome
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Fale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
step << Human
    #sticky
    .abandon 1338 >>Abandone Ordens dos Lançatroz. Isso desbloqueará a Tarefa do Montanhista Lançatroz.
step
    .goto 1432/0,-2953.65,-5381.54
    .vendor >>Compre 1-2 bolsas de 6 espaços para expandir sua mochila
step
    .goto 1432/0,-2972.96,-5377.86
    .vendor >>Compre alimentos e bebidas (procure ter 40 bebidas de nível 5 e 20 comidas de nível 5)
step
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Procure Kadrell. Ele patrulha pela estrada de Thelsamar.
.target Mountaineer Kadrell
>>Fale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
step
    #sticky
    #completewith Thelsamar1
    >>Mate as Aranhas na zona para Chouriço de Thelsamar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Mate os Ursos na zona para Chouriço de Thelsamar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>Mate os Javalis na zona para Chouriço de Thelsamar
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Fale com o comerciante e repare
step << Gnome
    .goto 1432/0,-2676.82,-4825.93
>>Fale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
.target Mountaineer Stormpike
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
step << Gnome
    #label Thelsamar1
    .goto 1432/0,-2923.58,-4803.910,130 >>Farme alguns inimigos para Intestinos de Javali, Carne de Urso e Ichor de Aranha no caminho
step << Human
    #label Thelsamar1
    .goto 1432/0,-3077.77,-4984.19,130 >>Farme alguns inimigos para Intestinos de Javali, Carne de Urso e Ichor de Aranha no caminho
step
    #sticky
    #completewith Gear
    >>Mate os Ratos do Túnel. Saqueie-os pelas Orelhas.
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto 1432/0,-2972.96,-4822.30,45 >>Vá à entrada da caverna enquanto mata ratos.
step
    #label Gear
    .goto 1432/0,-2972.96,-4853.58,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2956.41,-4945.56,12,0
    .goto 1432/0,-2978.47,-4934.52,12,0
    .goto 1432/0,-2995.02,-4941.88,12,0
    .goto 1432/0,-2983.99,-4894.05,12,0
    .goto 1432/0,-2967.44,-4892.21,12,0
    .goto 1432/0,-2997.78,-4868.29,12,0
    .goto 1432/0,-2972.96,-4853.58,12,0
    >>Colete as caixas que você encontra na caverna. Tenha cuidado porque isso é difícil no nível 11.
    >>Tenha cuidado pois os Geomancianos lançam Chamas de Proteção (Imunidade ao Fogo) após alguns segundos.
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto 1432/0,-3081.36,-4902.88
    >>Mate os Ratos do Túnel. Saqueie-os pelas Orelhas.
    >>Tente matar os Vermes em vez dos Kobolds/Geomancianos.
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>Mate as Aranhas na zona para Chouriço de Thelsamar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Mate os Ursos na zona para Chouriço de Thelsamar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>Mate os Javalis na zona para Chouriço de Thelsamar
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto 1432/0,-2636.44,-4816.79,60 >>Corra de volta ao bunker, farmando no caminho.
step
    .goto 1432/0,-2658.51,-4822.30
    .vendor >>Vá ao vendedor e repare.
step
    .goto 1432/0,-2675.06,-4824.14
>>Fale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz << Human
.target Mountaineer Stormpike
    .accept 1338 >>Aceite Ordens dos Lançatroz << Human
step
    #sticky
    #label Meat9
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34,40,0
    .goto 1432/0,-2846.07,-4682.50,40,0
    .goto 1432/0,-2782.63,-4770.80,40,0
    .goto 1432/0,-2835.04,-4976.83,40,0
    .goto 1432/0,-2915.03,-5044.89,40,0
    .goto 1432/0,-3080.53,-5100.08,40,0
    .goto 1432/0,-2735.74,-4684.34
    >>Mate os Ursos. Saqueie-os por Carne
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19,40,0
    .goto 1432/0,-2766.08,-4866.45,40,0
    .goto 1432/0,-2926.07,-5232.53,40,0
    .goto 1432/0,-2992.27,-5055.93,40,0
    .goto 1432/0,-3069.5,-5078.01,40,0
    .goto 1432/0,-2873.66,-4789.19
    >>Mate as Aranhas. Saqueie-as por Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51,40,0
    .goto 1432/0,-3017.09,-5219.65,40,0
    .goto 1432/0,-2815.73,-5147.91,40,0
    .goto 1432/0,-2757.81,-4952.91,40,0
    .goto 1432/0,-2782.63,-4903.25,40,0
    .goto 1432/0,-3041.92,-5129.51
    >>Mate os Javalis. Saqueie-os por Intestinos
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto 1432/0,-2892.97,-5405.45,80.0,0
    .goto 1432/0,-3019.85,-5335.55,80.0,0
    .goto 1432/0,-3006.06,-5252.77
    >>Procure Kadrell. Ele patrulha pela estrada de Thelsamar.
.target Mountaineer Kadrell
>>Fale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    .turnin 416 >>Entregue Pegando Ratos
step
    #requires Ichor9
    .goto 1432/0,-2954.42,-5394.10
.target Vidra Hearthstove
>>Fale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
step
    #era/som
    .goto 1432/0,-2952.55,-5381.91
    .vendor >>Compre 6 espaços de mochila até estar cheio. Também compre 1 Pederneira e Lenha, e 2 Madeira Simples.
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >>Farme até o nível 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto 1432/0,-3781.70,-5702.36
    .vendor >>Procure Aldren para um Cinto do Homem Sábio. Compre-o se você puder pagar. Guarde-o para depois.
step << Gnome
    #requires RatCatching
    .goto 1432/0,-3812.59,-5694.63
.target Prospector Ironband
>>Fale com o |cRXP_FRIENDLY_Prospector Bandaferro|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
step << Gnome
    #softcore
    .goto 1432/0,-3872.73,-5646.07
    .deathskip >>Morra e reviva em Thelsamar
step << Gnome
    #hardcore
    >>Corra de volta para Thelsamar. Entre no prédio.
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Fale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
>>Fale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
.target Jern Hornhelm
    .accept 301 >>Aceite Apresente-se a Altaforja
step << Gnome
    #softcore
    >>Entre no prédio
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Fale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
>>Fale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
.target Jern Hornhelm
    .accept 301 >>Aceite Apresente-se a Altaforja
step
    #requires RatCatching
    .goto 1432/0,-2929.93,-5424.95
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
>>Fale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entregue Alunos Brilhantes << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Aceite Carona para Altaforja << Gnome
    .fly Ironforge >>Voe para Altaforja
step << Human
    .goto 1455/0,-928.25,-4614.46
    .trainer >>Treine suas magias de classe
step << skip --logout skip << Human
    #completewith next
    +Vá para a escadaria atrás dos treinadores de paladino no fundo da sala. Suba até o meio aproximadamente e coloque-se na borda das escadas até parecer que você está flutuando. Desconecte-se e reconecte-se.
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >>https://www.youtube.com/watch?v=E8b90bzJMSI >> CLIQUE AQUI para referência
    >>Use o logout para chegar à frente de Ironforge
step << Human
    .goto 1455/0,-810.36,-5039.71,120 >>Saia de Altaforja
step << Gnome
    .goto 1455/0,-1303.79,-4631.18
>>Fale com o |cRXP_FRIENDLY_Prospector Lançatroz|r
    .turnin 301 >>Entregue Apresente-se a Altaforja
.target Prospector Stormpike
    .accept 302 >>Aceite Pólvora para Bandaferro
step << Gnome
    >>Volte para The Great Forja, depois vire à direita e entre no prédio
    .goto 1455/0,-1105.66,-4722.04,30,0
    .goto 1455/0,-1120.92,-4708.11
>>Fale com |cRXP_FRIENDLY_Golnir Topadão|r
    .turnin 6391 >>Entregue Carona para Altaforja
.target Golnir Bouldertoe
    .accept 6388 >>Aceite Grif Trovino
step << Gnome
    .goto 1455/0,-1026.28,-4872.56
.target Senator Barin Redstone
>>Fale com |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .turnin 291 >>Entregue Os Relatórios
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
>>Fale com |cRXP_FRIENDLY_Grif Trovino|r
    .turnin 6388 >>Entregue Grif Trovino
.target Gryth Thurden
    .accept 6392 >>Aceite Retornar com Brock
    .fly Thelsamar >>Voe para Thelsamar
step << Gnome
    >>Entre no prédio
    .goto 1432/0,-3018.75,-5350.08,20,0
    .goto 1432/0,-3014.88,-5367.00
.target Brock Stoneseeker
>>Fale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
.target Jern Hornhelm
>>Fale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 302 >>Entregue Pólvora para Bandaferro
step << Gnome
    .hs >>Vá para Kharanos
step << Gnome
    .goto 1426/0,-537.29,-5587.04
    .trainer >>Treine suas magias de classe
step
    #hardcore
    #completewith next
    .goto 1426/0,-1124.84,-5283.99,150 >>Vá para o local de skip
step
    #hardcore
    .goto 1426/0,-1128.29,-5282.35,40,0
    .goto 1426/0,-1172.62,-5325.03,40,0
    .goto 1426/0,-1207.09,-5325.03,40,0
    .goto 1426/0,-1212.02,-5265.93,40,0
    .goto 1426/0,-1192.32,-5219.97,40,0
    .goto 1426/0,-1103.67,-5174.0,40,0
    .goto 1426/0,-1167.69,-5144.45,40,0
    .goto 1426/0,-1236.64,-5147.73,40,0
    .goto 1426/0,-1433.64,-4586.28,40,0
    .goto 1426/0,-1438.57,-4287.50,40,0
    .goto 1426/0,-1428.72,-4231.68,40,0
    .goto 1426/0,-1473.04,-4205.42,40,0
    .goto 1426/0,-1492.74,-4156.17,40,0
    .goto 1437/0,-1241.48,-4000.12,50,0
    .goto 1437/0,-1121.55,-4013.90,40,0
    .goto 1437/0,-1084.33,-3947.75,40,0
    .goto 1437/0,-1014.03,-3911.92,40,0
    .goto 1437/0,-889.97,-3809.94,40,0
    >>Abra este link e siga-o em outra tela.
    >>Execute o skip Deathless Dun Morogh -> Pantanal
    >>Evite os crocodilos ao atravessar o mar
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> CLIQUE AQUI para referência
    .goto 1437/0,-889.97,-3809.94,80 >>Vá para Menethil Harbor
step
    #softcore
    .goto 1426/0,309.81,-5108.33,50 >>Corra para aqui
step
    #softcore
    .goto 1426/0,280.26,-4963.87,15 >>Corra para cima da montanha em direção ao norte
step
    #softcore
    .goto 1426/0,206.38,-4832.53,15 >>Continue subindo até aqui
step
    #softcore
    .goto 1426/0,176.83,-4770.15,15,0
    .goto 1426/0,176.83,-4704.48,15,0
    .goto 1437/0,-869.29,-3344.13,60,0
    .deathskip >>Continue correndo direto para o norte, caia e morra, depois ressurja
step
    #softcore
    #completewith next
    .goto 1437/0,-914.78,-3435.09,60 >>Nade para a costa
step
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    .vendor >>Se você tiver 8 pratas, procure Tubo de Bronze de Nélio Allen e compre se estiver disponível
step
    .money <0.04
    .goto 1437/0,-724.55,-3699.69
    .vendor >>Procure Poções de Cura com Dewin, compre até ter apenas 1 prata
step
    .goto 1437/0,-782.45,-3793.40
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Espere aqui o barco. Crie uma Fogueira de Acampamento do seu livro de magia e comece a cozinhar os pedaços de carne de javali que você salvou antes. Você precisa de pelo menos 10 de habilidade agora e 50 depois (então cozinhe tudo)
    .goto 1437/0,-583.95,-3727.25
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>Suba no barco quando chegar. Pegue-o para Costa Negra. Se você terminou de cozinhar, comece a convocar o máximo de água de nível 5 possível
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>Suba no barco quando chegar. Pegue-o para Costa Negra. Comece a convocar o máximo de água de nível 5 possível
]])

