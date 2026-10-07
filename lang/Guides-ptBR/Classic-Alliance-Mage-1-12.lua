if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Floresta de Elwynn Mago AdE
#version 1
#group RestedXP Maga da Aliança
#defaultfor Human
#next 10-12 Lagoa Modan Mago AdE
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Você selecionou um guia destinado a Humanos. Você deve escolher a zona inicial que corresponda à zona em que você começa << Gnome
    +Observe que você selecionou o guia AdE. O AdE é normalmente muito mais difícil que mago de alvo único, mas MUITO mais rápido
step
    >>Apague sua Pedra de Retorno
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .accept 783 >>Aceite Uma Ameaça Interior
step
    .goto Elwynn Forest,48.923,41.606
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 783 >>Entregue Uma Ameaça Interior
.target Marshal McBride
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .accept 5261 >>Aceite Enzo Peleteiro
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>Abate lobos até ter 50 moedas de cobre em lixo de vendedor. Venda para o comerciante, depois compre 10 de água de Irmão Dânio.
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >>Farme até o nível 2
step
    .goto Elwynn Forest,48.9,40.2
>>Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
.target Eagan Peltskinner
    .accept 33 >>Aceite Lobos Além da Fronteira
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>Abate Lobos Jovens na área para Carne
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>Abate Kobold Daninho na área
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 33 >>Entregue Lobos Além da Fronteira
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>lixo de vendedor, depois compre mais 10 de água de Irmão Dânio
step
    .goto Elwynn Forest,48.923,41.606
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
.target Marshal McBride
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3104 >>Aceite Carta Glífica
step
    .xp 3 >>Farme até o nível 3
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>Abate Operários Kobold
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>Farme até 1110+/1400xp no caminho de volta para a cidade
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>vender lixo
step
    .goto Elwynn Forest,48.923,41.606
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
.target Marshal McBride
    .accept 21 >>Aceite Escaramuça na Serra do Eco
step
    >>Suba as escadas
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>Fale com |cRXP_FRIENDLY_Gaspar Melchior|r
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .accept 18 >>Aceite Irmandade de Ladrões
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>Abate Capangas Defias. Saqueie-os para Bandanas
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .turnin 18 >>Entregue Irmandade de Ladrões
.target Deputy Willem
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .accept 3903 >>Aceite Madel Quintana
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>Abate Trabalhadores na mina
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>Faça grind até 5
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3903 >>Entregue Madel Quintana
.target Milly Osworth
    .accept 3904 >>Aceite Colheita da Madel
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target Milly Osworth
>>Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3903 >>Entregue Madel Quintana
step
    #era/som
    >>Pegue os Baldes de Uvas no campo
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Abate Garrick e saqueie sua Cabeça
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >>Farme no caminho de volta até 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3904 >>Entregue Colheita da Madel
.target Milly Osworth
    .accept 3905 >>Aceite Manifesto das Uvas
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>Fale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .turnin 6 >>Entregue Recompensa por Garrick Patatenra
step
    .goto Elwynn Forest,48.923,41.606
>>Fale com o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 21 >>Entregue Escaramuça na Serra do Eco
.target Marshal McBride
    .accept 54 >>Aceite Relatório para Vila Dourada
step
     #era/som
     >>Suba a escada principal
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>Fale com o |cRXP_FRIENDLY_Irmão Neals|r
    .turnin 3905 >>Entregue Manifesto das Uvas
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >>Morra e reviva no Anjo da Cura, ou corra para Goldshire
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Elwynn Forest,42.105,65.927
>>Fale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
.target Marshal Dughan
    .accept 62 >>Aceite A Mina Fundaprofunda
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>Logo à sua esquerda ao entrar na Estalagem
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>Fale com o |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 2158 >>Entregue Descanso e Relaxamento
    .home >>Defina sua Pedra de Regresso para Vila Dourada
step
    .xp 6 >>Faça grind até 6
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >>Suba as escadas. Aprenda seus feitiços de classe
step
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
step
    #sticky
    #completewith BoarMeat1
    >>Comece matando alguns javalis que você vê para Carne de Javali
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Fale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Fale com |cRXP_FRIENDLY_Mama Campedra|r
    .accept 88 >>Aceite Princesa Tem Que Morrer!
step
    #sticky
    #completewith Candles
    >>Pegue Velas de Kobolds próximos
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >>Pegue Pó de Ouro de Kobolds próximos
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>Farme inimigos a leste fora da mina
    .goto Elwynn Forest,43.132,85.722
>>Fale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
.target Billy Maclure
    .accept 86 >>Aceite Juntando a Fome...
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Fale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >>Aceite Jovens Amantes
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Compre tanto leite quanto puder do comerciante
step
    #sticky
    #completewith next
    >>Mate javalis para Carne de Javali
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>Fale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .turnin 106 >>Entregue Jovens Amantes
.target Tommy Joe Stonefield
    .accept 111 >>Aceite Fale com a Vovó
step
    .goto Elwynn Forest,32.5,85.5
    >>Termine de obter Carne de Javali
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
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
    .goto Elwynn Forest,43.132,85.722
>>Fale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue ...com a Vontade de Comer
.target Billy Maclure
    .accept 87 >>Aceite Dentadouro
step
    >>Entre na mina
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>Mate Dentadouro para pegar o Colar de Berenice
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>Farme até 1600+/4500 XP
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Fale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
step
    >>Farme inimigos de volta a Goldshire
    .xp 7+2690 >>Farme até 2690+/4500 XP
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
.target Remy "Two Times"
    .accept 40 >>Aceite Perigo Anfíbio
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Elwynn Forest,42.105,65.927
>>Fale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 40 >>Entregue Perigo Anfíbio
.target Marshal Dughan
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Elwynn Forest,43.283,65.721
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
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Compre uma bolsa de 6 espaços de Brog
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >>Suba as escadas. Aprenda seus feitiços de classe
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Compre Água do nível 5 até 40
step
    >>Mate Murlocs para o leste e saqueie-os por Alga Frond. Mate os inimigos na ilha se você ainda precisar de alguns
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Entre na mina e continue seguindo o caminho do meio
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
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
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Fale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >>Venda lixo e repare equipamentos
step
    #sticky
    #completewith Bundles
    >>Tenha cuidado com os feixes de toras na base das árvores
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >>Vá em direção ao cadáver do guarda
step
    .goto Elwynn Forest,79.8,55.5
    >>Mate os inimigos ao redor do cadáver. Puxe os 2 inimigos em frente às cabanas, afaste-se e transforme um em ovelha enquanto mata o outro, depois mate o inimigo transformado. Saque o cadáver no chão
    >>Tenha cuidado pois esta missão pode ser difícil
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>Comece a voltar correndo e termine os feixes
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Fale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
step
    #label Prowlers
    .xp 9 >>Suba até o nível 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Fale com |cRXP_FRIENDLY_Sara Albernaz|r
    .accept 83 >>Aceite Tecidos de Linho Vermelho
step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>Mate os últimos inimigos para Proteja a Fronteira
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,73.973,72.179
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
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>Comece circulando pela fazenda, matando os Defias e saqueando-os por Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>Mate Princesa. Usar a Poção de Cura Inferior de antes se necessário. Saque-a para obter o Collar
    >>Você também pode pular entre as cercas na borda da fazenda para matar Princesa e seus guardas
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Morra e ressurja no Anjo da Cura se estiver com pouca vida, caso contrário apenas corra de volta e entregue
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Fale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>Farme no caminho para Redridge
step
    #softcore
    #sticky
    #completewith next
    +Morra para os inimigos aqui
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>Ressurja no Anjo da Cura
    .goto Redridge Mountains,20.8,56.6,100 >>Ressurja no Anjo da Cura
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    #hardcore
    >>Corra em direção à Rota de Voo. Tenha muito cuidado para não atrair inimigos ou morrer no caminho. Tente ficar na estrada e fique atento
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    .hs >>Use sua Pedra de Retorno para Goldshire
step
    .goto Elwynn Forest,43.283,65.721
    >>Não espere pela encenação dele
.target William Pestle
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
step
    .goto Elwynn Forest,42.2,65.8
>>Fale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
.target Marshal Dughan
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
-->>Talk to |cRXP_FRIENDLY_Smith Argus|r
    .accept 1097 >>Aceite Tarefa de Elmore
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 114 >>Aceite A fuga
step
    >>Saia da estalagem e vá para o sul
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Fale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Fale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88 >>Entregue Princesa Tem que Morrer
step
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Fale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Fale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .turnin 184 >>Entregue Escritura do Furlbrow
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Fale com |cRXP_FRIENDLY_Vera Taturana|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Fale com |cRXP_FRIENDLY_Salma Saldanha|r
    .turnin 36 >>Entregue Cozido de Costa Negra
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >>Morra e ressurja no Anjo da Cura, ou corra para Sentinela Hill
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Fale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Miguel Mantoforte
step
    .goto Westfall,57.002,47.169
    .vendor >>vender lixo
.target Quartermaster Lewis
>>Fale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >>Farme até 3750+/8800xp
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
>>Fale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
.target Thor
    .accept 6281 >>Aceite Continue para Ventobravo
    .fly Stormwind >>Voe para Ventobravo
step
    .goto StormwindClassic,56.2,64.6
    >>Escolha foguetes. Eles têm dano muito bom e podem ser usados para dividir inimigos
.target Morgan Pestle
>>Fale com |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61 >>Entregue Carregamento para Ventobravo
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >>Treine Espadas de Uma Mão
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Fale com |cRXP_FRIENDLY_Larso Norde|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    >>Comerciante e Conserto
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Fale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >>Entregue Tarefa de Elmore
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Fale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Entre no Metrô Correfundo
step
    >>Pegue o bonde quando chegar, depois desça quando chegar do outro lado
.target Monty
>>Fale com |cRXP_FRIENDLY_Monty|r
    .accept 6661 >>Aceite Ratos de Porão
step
    >>Usar a flauta nos ratos espalhados ao redor
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Fale com |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >>Entregue Ratos de Porão
step
    .goto Ironforge,77.0,51.0,30 >>Entre em Ironforge
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >>Treine suas magias de classe
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Saia de Ironforge
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>Suba esta parte da montanha
step
    >>Mate Ragash. Saque a Dentada dele
    >>Puxe-o até o guarda ao sul da fazenda. Faça 51%+ de dano a ele
    >>Tenha cuidado pois esta missão pode ser difícil
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
step
    >>Farme um pouco durante o trajeto
    .goto Dun Morogh,68.6,54.7
    .vendor >>Comerciante, compre comida+água
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 433 >>Aceite O Funcionário Público
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Mate os Troggs na caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>Farme até 6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Lixo de vendedor, compre 30 bebidas de nível 5 de Kazan
    .trainer >>Treine Culinária com Ghilm. Você precisará disso para pegar 2 missões extras depois.
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Mate Ronhagarra. Saque sua Garra
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
step
    .goto Dun Morogh,84.4,31.1,25 >>Passe pelo túnel para Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 Dun Morogh Mago AdE
#version 1
#group RestedXP Maga da Aliança
#defaultfor Dwarf/Gnome
#next 10-12 Lagoa Modan Mago AdE
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa. << Human
    +Observe que você selecionou o guia AdE. O AdE é normalmente muito mais difícil que mago de alvo único, mas MUITO mais rápido
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Você selecionou um guia pensado para Gnomos e Anões. Você deveria escolher a mesma zona inicial onde você começa. << Human
    +Nota que você selecionou o guia AdE. AdE é tipicamente muito mais difícil do que Mago de alvo único, mas com as mudanças recentes de 100% de XP de missão, também é mais lento.
step
    >>Apague sua Pedra de Retorno
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>Fale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Equipadores Anões
step
    >>Mate os Lobos. Saque sua Carne
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >>Farme até o nível 2
step
    .goto Dun Morogh,30.0,71.5
    >>Lixo de vendedor. Compre 15 Água. Farme lobos extras se você não tiver dinheiro suficiente.
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>Fale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179 >>Entregue Equipadores Anões
.target Sten Stoutarm
    .accept 233 >>Aceite Entrega de Correio do Vale Coldridge
    .accept 3114 >>Aceite Memorando Glífico
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Fale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .accept 170 >>Aceite Uma Nova Ameaça
step
    #sticky
    #completewith Rockjaw
    >>Mate os Troggs Pedraqueixo Normais que você vê
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>Mate os Troggs Pedraqueixo Parrudos
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>Fale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
.target Talin Keeneye
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correio do Vale Coldridge
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>Mate javalis na área
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Fale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
step
    .xp 3+860 >>Farme até 860+/1400 XP
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Coldridge Valley Malha Entrega
.target Grelin Whitebeard
    .accept 182 >>Aceite The Trolls Cave
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    >>Uma vez aceita, um temporizador de 5 minutos começará. Relaxe e siga o guia
step
    .goto Dun Morogh,28.7,77.5
    >>Suba por aqui e mate os Troggs se você não terminou com eles até agora
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>Se você foi muito lento e falhou na missão cronometrada, vá e pegue-a novamente
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Fale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>Fale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
.target Durnan Furcutter
    .accept 3365 >>Aceite Trazer a Caneca
    .vendor >>vender lixo
step
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Fale com |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3114 >>Entregue Glyphic Memorandum
    .trainer >>Treine suas magias de classe
step
    >>Corra para fora do bunker
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>Fale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>Compre 10 de água
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>Mate os Filhotes Jubafria do Trolls
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Trazer a Caneca
step
    .goto Dun Morogh,25.076,75.713
>>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 182 >>Entregue The Trolls Cave
.target Grelin Whitebeard
    .accept 218 >>Aceite O Diário Roubado
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Entre na caverna dos Trolls. Mate Grik'nir, depois saqueie-o para obter o Diário de Grelin
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>Farme até aqui
    .goto Dun Morogh,25.1,75.8
>>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
.target Grelin Whitebeard
    .accept 282 >>Aceite Observações de Senir
step
    >>Farme alguns inimigos até aqui
    .goto Dun Morogh,33.484,71.841
>>Fale com o |cRXP_FRIENDLY_Montanhista Thalos|r
    .turnin 282 >>Entregue Observações de Senir
.target Mountaineer Thalos
    .accept 420 >>Aceite Observações de Senir
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Fale com |cRXP_FRIENDLY_Mãos Rodamola|r
    .accept 2160 >>Aceite Suprimentos para Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>Atravesse o túnel
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
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >>Suba para 2415/+2800 XP
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >>Morra e ressuscite no Curador Espiritual, ou corra para Kharanos. Certifique-se de que sua subzona NÃO é Coldridge Passe
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Fale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>vender lixo
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Fale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >>Faça grind até 6
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Fale com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160 >>Entregue Suprimentos para Tannok
step
    >>Andar de cima
    .goto Dun Morogh,47.5,52.1
    .trainer >>Treine suas magias de classe
step
    .goto Dun Morogh,47.4,52.5
    .home >>Defina sua Pedra de Retorno em Cervaforte Distillery
    .vendor >>Compre o máximo de bebida nível 5 que puder pagar
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Fale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas Para Gradaço
step
    .goto Dun Morogh,49.426,48.410
    >>NÃO mate ursos no caminho
.target Pilot Bellowfiz
>>Fale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Fale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .accept 313 >>Aceite The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Fale com |cRXP_FRIENDLY_Beldin Gradaço|r
    .turnin 400 >>Entregue Ferramentas Para Gradaço
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Fale com |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>Obtenha os itens para Provisões Para a Vaporeta
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>Fale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões Para a Vaporeta
.target Pilot Bellowfiz
    .accept 318 >>Aceite Sempre-aceso
step
    >>Volte para a estalagem
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >>Compre o máximo de bebida nível 5 que puder pagar
    >>Você pode comprar uma Faca de Esfolamento fora da estalagem se quiser, é melhor do que um cajado até obter uma arma com +stats
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >>Entre na caverna. Abata os Wendigos. Saque-os pelas Crinas
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Saque o caixote
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Fale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .vendor >>Fale com o comerciante e repare
step
    .xp 7 >>Farme até o nível 7
step
    >>Farme alguns inimigos no caminho
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Fale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-Seca
step
    .goto Dun Morogh,30.5,46.0
    .vendor >>Fale com o comerciante. Compre até 20 bebidas nível 5
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>Fale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
.target Rejold Barleybrew
    .accept 319 >>Aceite Tudo Pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Fale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .accept 310 >>Aceite A Guerra das Cervejas
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >>Mate os Ursos, os Javalis e os Leopardos. Vá do norte→oeste→sul
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Termine de coletar as Costelas de Javali
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
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
    .goto Dun Morogh,47.4,52.5
    >>Compre um Rapsódia Malt e uma Trovão Ale de Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>Desça, fale com Jarven e entregue-lhe o Trovão Ale
    >>Espere o barril ficar 'sem guarda', depois entregue
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Fale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
     >>Venda a receita quando visitar um vendedor
step
    .xp 8 >>Farme até o nível 8
step
    .goto Dun Morogh,47.5,52.1
    .trainer >>Treine suas magias de classe
    >>Aprenda Polimorfia
step
    .goto Dun Morogh,47.4,52.5
    .vendor >>Compre até 30 bebidas de nível 5 do estalajadeiro
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Fale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .accept 287 >>Aceite A Fortaleza Jubafria
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Fale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil Canjento
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>Fale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 320 >>Fale novamente com Urrabolha
step
    #era/som
    >>Entre no edifício
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Fale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .accept 412 >>Aceite Operação Remendão
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >>Corra pela rampa para Tremulerva
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>Mate inimigos nesta área. Tenha cuidado se precisar limpar o acampamento do meio. Você pode puxar os inimigos das cabanas e fazer LoS atrás delas se precisar de 2 inimigos adicionais. Se tiver azar, corra para a outra área
    >>Saque caixas no chão
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >>Use Polimorfia em Velho Barbafria, depois saque as carnes
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Fale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Esconderijo Roubado de Tundra MacGrann
step
    .goto Dun Morogh,30.4,45.8
    .vendor >>Compre até 20 bebidas de nível 5 adicionais
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>Fale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 315 >>Entregue em Em Busca da Cerveja Perfeita
.target Rejold Barleybrew
    .accept 413 >>Aceite Cerveja Tremeluz
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Fale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 311 >>Fale novamente com Marleth
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>Mate os Gnomos Leprosos. Saque-os para obter Engrenagens e Cremalheiras
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >>Suba até o nível 9
step
    .goto Dun Morogh,24.5,50.8,35 >>Entre na caverna
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>Mate os Headhunters dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>Avance com cuidado até este recanto da caverna, matando inimigos
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Volte para cima pela caverna
step
    #softcore
    >>Pule para baixo; depois você morre e corre de volta
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >>Morra e reviva no Anjo da Cura
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >>Use o Lar se estiver disponível; caso contrário, lute de volta até Kharanos
step
    .goto Dun Morogh,46.726,53.826
>>Fale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 287 >>Entregue em A Fortaleza Jubafria
.target Senir Whitebeard
    .accept 291 >>Aceite Os Relatórios
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Fale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .turnin 412 >>Entregue em Operação Remendão
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Suba esta parte da montanha
step
    >>Mate Ragash. Saque a Dentada dele
    >>Puxe-o até o guarda ao sul da fazenda. Faça 51%+ de dano a ele
    >>Tenha cuidado pois esta missão pode ser difícil
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Fale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
step
    >>Farme um pouco durante o trajeto
    .goto Dun Morogh,68.6,54.7
    .vendor >>Venda itens descartáveis. Compre comida/água se necessário
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .accept 433 >>Aceite O Funcionário Público
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>Mate os Troggs na caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Fale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>Venda lixo e repare equipamentos
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Fale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >>Triture até o nível 10 nos Troggs
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Venda o lixo de vendedor, compre até 30 bebidas de nível 5 de Kazan
    .trainer >>Treine Culinária com Ghilm. Você precisará disso para pegar 2 missões extras depois.
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
step
    >>Triture no caminho
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Mate Ronhagarra. Saque sua Garra
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Fale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
step
    >>Volte pelo túnel que você veio
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Fale com o |cRXP_FRIENDLY_Montanhista Cervevada|r
    .turnin 413 >>Entregue Cerveja Tremeluz
.target Mountaineer Barleybrew
    .accept 414 >>Aceite Cerveja para Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Lagoa Modan Mago AdE
#version 1
#group RestedXP Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 12-18 Costa Negra Mago AdE
step
    #era/som
    #completewith next
    +Enquanto você completa missões em Loch Modan, guarde todos os Nacos de Carne de Javali que conseguir e NÃO os venda. Você precisará deles depois.
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Fale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Entre no bunker pelas costas
.target Captain Rugelfuss
>>Fale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .accept 267 >>Aceite A Ameaça Trogg
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >>Corra para a Entrada dos Troggs
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Mate os Stonesplinter Troggs. Saque-os pelos Dentes.
    >>Tenha cuidado pois esta missão pode ser difícil. Corra se você agredir 2 inimigos acidentalmente.
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Fale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>Entre no bunker pelas costas
.target Captain Rugelfuss
>>Fale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>Fale com o comerciante e repare
step << Human
    .goto Loch Modan,24.764,18.397
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
    .goto Loch Modan,35.1,47.8,130 >>Triture inimigos no caminho para a missão de culinária posterior
step
    >>Corra para Thelsamar. NÃO defina sua Pedra de Retorno. << Gnome
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Fale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
step << Human
    #sticky
    .abandon 1338 >>Abandone Ordens dos Lançatroz. Isso desbloqueará a Tarefa do Montanhista Lançatroz.
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Compre 1-2 bolsas de 6 espaços para expandir sua mochila
step
    .goto Loch Modan,35.5,48.4
    .vendor >>Compre alimentos e bebidas (procure ter 40 bebidas de nível 5 e 20 comidas de nível 5)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
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
    .goto Loch Modan,24.1,18.2
    .vendor >>Fale com o comerciante e repare
step << Gnome
    .goto Loch Modan,24.764,18.397
>>Fale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
.target Mountaineer Stormpike
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>Farme alguns inimigos para Intestinos de Javali, Carne de Urso e Ichor de Aranha no caminho
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>Farme alguns inimigos para Intestinos de Javali, Carne de Urso e Ichor de Aranha no caminho
step
    #sticky
    #completewith Gear
    >>Mate os Ratos do Túnel. Saqueie-os pelas Orelhas.
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>Vá à entrada da caverna enquanto mata ratos.
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>Colete as caixas que você encontra na caverna. Tenha cuidado porque isso é difícil no nível 11.
    >>Tenha cuidado pois os Geomancianos lançam Chamas de Proteção (Imunidade ao Fogo) após alguns segundos.
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
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
    .goto Loch Modan,23.3,17.9,60 >>Corra de volta ao bunker, farmando no caminho.
step
    .goto Loch Modan,24.1,18.2
    .vendor >>Vá ao vendedor e repare.
step
    .goto Loch Modan,24.7,18.3
>>Fale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz << Human
.target Mountaineer Stormpike
    .accept 1338 >>Aceite Ordens dos Lançatroz << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>Mate os Ursos. Saqueie-os por Carne
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>Mate as Aranhas. Saqueie-as por Ichor
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>Mate os Javalis. Saqueie-os por Intestinos
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Procure Kadrell. Ele patrulha pela estrada de Thelsamar.
.target Mountaineer Kadrell
>>Fale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    .turnin 416 >>Entregue Pegando Ratos
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>Fale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >>Compre 6 espaços de mochila até estar cheio. Também compre 1 Pederneira e Lenha, e 2 Madeira Simples.
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >>Farme até o nível 12
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >>Procure Aldren para um Cinto do Homem Sábio. Compre-o se você puder pagar. Guarde-o para depois.
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>Fale com o |cRXP_FRIENDLY_Prospector Bandaferro|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >>Morra e reviva em Thelsamar
step << Gnome
    #hardcore
    >>Corra de volta para Thelsamar. Entre no prédio.
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
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
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Fale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
>>Fale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
.target Jern Hornhelm
    .accept 301 >>Aceite Apresente-se a Altaforja
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >>Aprenda a rota de voo de Thelsamar
>>Fale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entregue Alunos Brilhantes << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>Aceite Carona para Altaforja << Gnome
    .fly Ironforge >>Voe para Altaforja
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >>Treine suas magias de classe
step << skip --logout skip << Human
    #completewith next
    +Vá para a escadaria atrás dos treinadores de paladino no fundo da sala. Suba até o meio aproximadamente e coloque-se na borda das escadas até parecer que você está flutuando. Desconecte-se e reconecte-se.
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >>https://www.youtube.com/watch?v=E8b90bzJMSI >> CLIQUE AQUI para referência
    >>Use o logout para chegar à frente de Ironforge
step << Human
    .goto Ironforge,12.24,89.17,120 >>Saia de Altaforja
step << Gnome
    .goto Ironforge,74.65,11.74
>>Fale com o |cRXP_FRIENDLY_Prospector Lançatroz|r
    .turnin 301 >>Entregue Apresente-se a Altaforja
.target Prospector Stormpike
    .accept 302 >>Aceite Pólvora para Bandaferro
step << Gnome
    >>Volte para The Great Forja, depois vire à direita e entre no prédio
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>Fale com |cRXP_FRIENDLY_Golnir Topadão|r
    .turnin 6391 >>Entregue Carona para Altaforja
.target Golnir Bouldertoe
    .accept 6388 >>Aceite Grif Trovino
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>Fale com |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .turnin 291 >>Entregue Os Relatórios
step << Gnome
    .goto Ironforge,55.50,47.74
>>Fale com |cRXP_FRIENDLY_Grif Trovino|r
    .turnin 6388 >>Entregue Grif Trovino
.target Gryth Thurden
    .accept 6392 >>Aceite Retornar com Brock
    .fly Thelsamar >>Voe para Thelsamar
step << Gnome
    >>Entre no prédio
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>Fale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retornar com Brock
.target Jern Hornhelm
>>Fale com |cRXP_FRIENDLY_Jern Elmocorno|r
    .turnin 302 >>Entregue Pólvora para Bandaferro
step << Gnome
    .hs >>Vá para Kharanos
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >>Treine suas magias de classe
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Vá para o local de skip
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Abra este link e siga-o em outra tela.
    >>Execute o skip Deathless Dun Morogh -> Pantanal
    >>Evite os crocodilos ao atravessar o mar
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> CLIQUE AQUI para referência
    .goto Wetlands,12.1,60.3,80 >>Vá para Menethil Harbor
step
    #softcore
    .goto Dun Morogh,30.3,37.5,50 >>Corra para aqui
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Corra para cima da montanha em direção ao norte
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Continue subindo até aqui
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Continue correndo direto para o norte, caia e morra, depois ressurja
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >>Nade para a costa
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >>Se você tiver 8 pratas, procure Tubo de Bronze de Nélio Allen e compre se estiver disponível
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >>Procure Poções de Cura com Dewin, compre até ter apenas 1 prata
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
step
    #era/som
    #sticky
    #completewith Darkshore1
    +Espere aqui o barco. Crie uma Fogueira de Acampamento do seu livro de magia e comece a cozinhar os pedaços de carne de javali que você salvou antes. Você precisa de pelo menos 10 de habilidade agora e 50 depois (então cozinhe tudo)
    .goto Wetlands,4.7,57.3
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

