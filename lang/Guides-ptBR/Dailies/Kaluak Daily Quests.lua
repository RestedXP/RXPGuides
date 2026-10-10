if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Missões Diárias de Kalu'ak

step
	>>Viaje para Porto Moa'ki em Ermo das Serpes. Fale com Mau'i
    .daily 11960 >>Aceite Planos para o Futuro
    .goto Dragonblight,48.25,74.35
step
    .goto Dragonblight,47.4,64.3,40,0
    .goto Dragonblight,47.2,61.5,40,0
    .goto Dragonblight,45.2,61.6
	>>Clique com botão direito nos pequenos Filhotes de Wolvar localizados perto das cabanas
    .complete 11960,1 --Snowfall Glade Pup (12)
	.isOnQuest 11960
step
	>>Volte a Porto Moa'ki. Fale com Mau'i
    .turnin 11960 >>Entregue Planos para o Futuro
    .goto Dragonblight,48.25,74.35
	.isQuestComplete 11960
step
	>>Voe para Kaskala em Tundra Boreana. Fale com Utaik
    .daily 11945 >>Aceite Preparação para o Pior
    .goto BoreanTundra,63.95,45.72
step
    .goto BoreanTundra,66.2,45.9,60,0
    .goto BoreanTundra,63.7,52.2
	>>Saque os pequenos cestos espalhados por toda a aldeia
	.complete 11945,1 --Kaskala Supplies (8)
    .isOnQuest 11945
step
	>>Volte para Utaik
    .turnin 11945 >>Entregue Preparação para o Pior
    .goto BoreanTundra,63.95,45.72
    .isQuestComplete 11945
step
	>>Voe para Kamagua em Fiorde Uivante. Fale com Anunia
    .daily 11472 >>Aceite Caminhos do Coração
	.goto HowlingFjord,24.59,58.87
step
    .goto HowlingFjord,31.2,74.8,30,0
    .goto HowlingFjord,30.96,71.85
	.use 40946 >>Usar Rede de Anuniaq nos cardumes de Peixe-do-Recife Delicioso na área para capturar aproximadamente 7-8 Peixe-do-Recife Delicioso. Você terá isto em aproximadamente 2 lançamentos da rede
	.use 34127 >>Lance o Peixe-do-Recife Delicioso no alcance máximo a um Touro-do-Recife, ele irá agora para onde você está
	>>Guie-o para cima de uma Vaca-do-Recife do outro lado da costa
	>>Se você ficar sem peixe, pegue 7-8 mais e tente novamente
    .complete 11472,1 --Reef Bull led to a Reef Cow (1)
	.isOnQuest 11472
step
    .goto HowlingFjord,24.59,58.87
	>>Fale com Anuniaq
    .turnin 11472 >>Entregue Caminhos do Coração
	.isQuestComplete 11472
]])
