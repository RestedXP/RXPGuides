if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Rota de Missões Diárias de The Sons of Hodir

step
	+Para desbloquear as missões diárias de The Sons of Hodir, você deve primeiro completar sua cadeia de missões em Picos Tempestuosos. Por favor, use o guia The Sons of Hodir Desbloquear Missões Diárias para desbloquear as missões diárias.
	.isQuestAvailable 13047
step
	>>Fale com Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Mãe da Toca de Gelougos, Lança de Hodir e Arngrim, o Insaciável
    .daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>Aceite Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>Aceite Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >>Aceite Como Matar Seu Dragão
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >>Aceite Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Fale com Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Mãe da Toca de Gelougos e Lança de Hodir
    .daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>Aceite Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>Aceite Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >>Aceite Como Matar Seu Dragão
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Fale com Bigorna de Fjorn, Chifre de Hodir e Elmo de Hodir
    .daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>Aceite Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Mate os Espectros Quebradiços. Saqueie-os para Essência de Gelo
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >>Usar a Essência de Gelo ao lado dos Fragmentos Brilhantes ao redor da Bigorna de Fjorn. Saqueie a Sucata de Ferro Congelada
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >>Mate os Patriarcas de Niffelem e os Gelificados Inquietos na área. Usar Chifre de Hodir nos cadáveres deles para libertá-los
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >>Usar a Presa do Lobo Etéreo em sua mochila no Cadáver do Lobo Caído. Siga o Lobo Etéreo até que ele rastreie um Infiltrado Forjado pela Tempestade, depois mate-o
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >>Usar o Dente de Arngrim em sua mochila no Jormungar Errante. Dê dano nele até 30% de vida ou menos, mas não o mate
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >>Usar a Presa do Lobo Etéreo em sua mochila no Cadáver do Lobo Caído. Siga o Lobo Etéreo até que ele rastreie um Infiltrado Forjado pela Tempestade, depois mate-o
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Mate os Óleos Viscosos na Caverna Hibernada. Saqueie-os para obter Óleo
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >>Usar a Lança de Hodir em sua mochila para se aferrar a um Wyrm Selvagem. Certifique-se de que está com vida completa antes de fazer isso
	>>Usar Agarrar (1) repetidamente para aumentar seu Agarre. Quando o wyrm atacar com suas garras, use Esquivar de Garras (2). Usar Estocada de Lança (3) e Estocada de Lança Vingativa (4) quando estiverem disponíveis
	>>Lembre-se de continuamente usar Agarrar (1), senão você vai cair se apenas usar os ataques (3) e (4)!
	>>Quando o Wyrm Selvagem estiver abaixo de 30%, sua barra de ataque vai mudar. Usar Abrir Mandíbulas (1) cinco vezes, depois use Golpe Fatal (3). Se Golpe Fatal falhar, continue usando Abrir Mandíbulas (1) até que Golpe Fatal (3) esteja disponível
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>Volte para Dun Niffelem
	>>Fale com Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Mãe da Toca de Gelougos, Lança de Hodir e Arngrim, o Insaciável
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>Entregue Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >>Entregue Como Matar Seu Dragão
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>Entregue Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Volte para Dun Niffelem
	>>Fale com Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Lança de Hodir e Arngrim, o Insaciável
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >>Entregue Como Matar Seu Dragão
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>Entregue Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Volte para Dun Niffelem
	>>Fale com Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Mãe da Toca de Gelougos e Lança de Hodir
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>Entregue Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >>Entregue Como Matar Seu Dragão
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>Volte para Dun Niffelem
	>>Fale com a Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Mãe dos Ursosgelidos e Arngrim, o Insaciável
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>Entregue Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >>Entregue Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Volte para Dun Niffelem
	>>Fale com a Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir e Arngrim, o Insaciável
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >>Entregue Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Volte para Dun Niffelem
	>>Fale com a Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir e Lança de Hodir
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >>Entregue Como Matar Seu Dragão
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>Volte para Dun Niffelem
	>>Fale com a Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir e Mãe dos Ursosgelidos
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >>Entregue Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Volte para Dun Niffelem
	>>Fale com Bigorna de Fjorn, Chifre de Hodir e Elmo de Hodir
    .turnin -12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >>Entregue Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
step
	+Você completou todas as missões diárias dos Filhos de Hodir de hoje :) Lembre que você pode entregar Cascas de Gelopétreo encontradas no chão na área para reputação extra, assim como as entregas de Relíquia de Ulduar!
]])
