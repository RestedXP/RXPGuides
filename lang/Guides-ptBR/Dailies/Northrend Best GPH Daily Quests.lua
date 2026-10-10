if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#wotlk
#cata
#group Missões Diárias de Northrend
#name Melhor Rota de Missões Diárias - Ouro por Hora

--20 daily quests total
--5(rep depending) quests from Hodir (didnt include dragon flying one. its terrible) may not be 5 quests for everyone. should be at least 3 though
--6 from icecrown. quests from Ebon Blade
--9 from icecrown. quests from gunship/surroundings
--all of these quests require pre quests to be completed/unlocked. each section has checks to see if they have completed pre quests or not. if they havnt they're told to do pre quest guide
--gives the player still room to do daily heroic+normal as well as jc/cooking/fishing daily quests


--5 Quest section for The Sons of Hodir Daily Quests. Didn't include slaying dragon quest because its really bad/slow

step
	+Para desbloquear as missões diárias de The Sons of Hodir, você deve primeiro completar sua cadeia de missões em Picos Tempestuosos. Por favor, use o guia The Sons of Hodir Desbloquear Missões Diárias para desbloquear as missões diárias.
	.isQuestAvailable 13047
step
	>>Fale com a Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir, Mãe dos Ursosgelidos e Arngrim, o Insaciável
    .daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>Aceite Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>Aceite Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
	.daily 13046 >>Aceite Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Fale com a Bigorna de Fjorn, Chifre de Hodir, Elmo de Hodir e Mãe dos Ursosgelidos
    .daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >>Aceite Limpeza Viscosa
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >>Aceite Caçador de Espiões
	.goto TheStormPeaks,63.49,59.73
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
	.goto TheStormPeaks,64.24,59.23
	.turnin 13046 >>Entregue Alimentando Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
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
step << Mage
	#completewith next
	.zone Dalaran >>Vá para Dalaran
	>>Voe para Coroa de Gelo
step << !Mage
	#completewith next
    .hs >>De seu Lar para Dalaran se seu Lar está definido lá ou em algum lugar perto de Coroa de Gelo.
	>>Voe para Coroa de Gelo

--9 Quest section from Icecrown Gunship and close surroundings section. 6 Quests from the gunship, other 3 from on the ground/in Ymirheim

step << Alliance
	+Para desbloquear todas as missões diárias do Navio de Guerra de Coroa de Gelo, você deve primeiro completar a cadeia de missões anterior. Por favor, use o guia Desbloquear Missões Diárias do Navio de Guerra de Coroa de Gelo para desbloquear todas as missões diárias
	.isQuestAvailable 13314,13342,13321,13318
--	13314  Get the Message
-- 	13342  Not a Bug
--	13321  Retest Now
--	13318  Drag and Drop

step << Horde
	+Para desbloquear todas as missões diárias do Navio de Guerra de Coroa de Gelo, você deve primeiro completar a cadeia de missões anterior. Por favor, use o guia Missões de Pré-requisito do Navio de Guerra de Coroa de Gelo para desbloquear todas as missões diárias
	.isQuestAvailable 13313,13356,13352,13358
--	13313  Blinding the Eyes in the Sky
--	13356  Retest Now
--	13352  Drag and Drop
--	13358  Not a Bug

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Em Coroa de Gelo, voe para o Navio de Guerra da Aliança, O Rompe-céus
	>>Fale com o Capitão-cavaleiro Drosche, Absalan, o Pio, o Alto-capitão Justino Bartolotto, o Engenheiro-chefe Pertaporca e Thassarian
	>>Eles estão posicionados respectivamente na parte traseira esquerda do navio, no convés superior, na câmara central principal e abaixo no convés inferior
    .daily 13336 >>Aceite Sangue dos Escolhidos
    .daily 13300 >>Aceite Escravos da Saronita
    .daily 13322 >>Aceite Novo Teste
    .daily 13323 >>Aceite Arrastar e Soltar
	.daily 13344 >>Aceite Outro Tipo de Grampo
    .daily 13333 >>Aceite Capturar Mais Relatórios
step << Horde
	.goto IcecrownGlacier,67.00,38,0
	>>Em Coroa de Gelo, voe para o Navio de Guerra da Horda, Martelo de Orgrim
	>>Fale com o Armipotente Davos Bulício, o Irmão Keltan, o Exterminador dos Céus Korm Escaranegra, o Engenheiro-chefe Cobregarra e Koltirus Tecemorte
	>>Eles estão posicionados respectivamente na câmara frontal principal, patrulhando o convés superior e abaixo no convés inferior
    .daily 13330 >>Aceite Sangue dos Escolhidos
    .daily 13302 >>Aceite Escravos da Saronita
    .daily 13357 >>Aceite Novo Teste
    .daily 13353 >>Aceite Arrastar e Soltar
	.daily 13365 >>Aceite Outro Tipo de Grampo
    .daily 13331 >>Aceite Mantendo a Aliança Cega
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Voe para o Comandante Terrestre Koup (no chão - não no navio)
    .daily 13309 >>Aceite Ataque Aéreo
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >>Clique com o botão direito na torre de canhão no topo da Máquina Voadora para iniciar a missão
	.isOnQuest 13309
step << Alliance
	>>Atire em todos os Lança Armas de Fogo que vir enquanto voa. Os Infiltradores aparecerão conforme você fizer isto
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Saia da Máquina Voadora. Você receberá um pára-quedas. Retorne para Koup
    .turnin 13309 >>Entregue Ataque Aéreo
	.isQuestComplete 13309
step << Horde
	>>Voe para o Comandante Terrestre Xutja (no chão - não no navio)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Aceite Ataque Aéreo
step << Horde
	#completewith next
	.vehicle >>Clique com o botão direito na torre de canhão no topo da Máquina Voadora para iniciar a missão
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Atire em todos os Lança Armas de Fogo que vir enquanto voa. Os Infiltradores aparecerão conforme você fizer isto
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Saia da Máquina Voadora. Você receberá um pára-quedas. Retorne para Xutjja
    .turnin 13310 >>Entregue Ataque Aéreo
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Converse com o Líder de Pelotão. Ele pode não estar aqui se alguém mais começou a missão e tem aproximadamente 6 minutos de tempo de ressurgimento, e ressurge aproximadamente 10 jardas à direita de Koup. Você pode pular isto se não quiser esperar ou verificar mais tarde
    .daily 13284 >>Aceite Ataque Terrestre
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Abata os Vraikal em toda Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escolte as tropas. Deixe algumas das tropas segurarem os inimigos se necessário
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Vá para a Mina de Saronita. Fale com os escravos para resgatá-los (às vezes eles podem atacá-lo)
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Abata os Vraikal em toda Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,57.01,62.53
	>>NOTA: Esta missão o marca como PvP. Porém, é MUITO fácil
    .daily 13280 >>Aceite O Rei da Montanha
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Clique direito no robô que parece um gnomo
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Use "Propulsores" (3) rapidamente para escalar o penhasco (não tem recarga). Quando chegar ao topo da montanha, use "Fincar Estandarte de Batalha da Aliança" (1) para plantar a bandeira. Depois, saia do veículo
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
    .turnin 13280 >>Entregue O Rei da Montanha
	.isQuestComplete 13280
step << Alliance
	>>Entregue para o Comandante Terrestre Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Entregue Ataque Terrestre
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Converse com o Líder de Pelotão. Ele pode não estar aqui se alguém mais começou a missão e tem aproximadamente 6 minutos de tempo de ressurgimento. Você pode pular isto se não quiser esperar ou verificar mais tarde
    .daily 13301 >>Aceite Ataque Terrestre
step << Horde
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Abata os Vraikal em toda Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Escolte as tropas. Deixe algumas das tropas segurarem os inimigos se necessário
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Vá para a Mina de Saronita. Fale com os escravos para resgatá-los (às vezes eles podem atacá-lo)
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Abata os Vraikal em toda Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>NOTA: Esta missão marca você para JxJ. É MUITO fácil porém.
    .daily 13283 >>Aceite O Rei da Montanha
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Clique direito no robô que parece um gnomo
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Use "Propulsores" (3) rapidamente para escalar o penhasco (não tem recarga). Quando chegar ao topo da montanha, use "Fincar Estandarte de Batalha da Horda" (1) para plantar a bandeira. Depois, saia do veículo
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
    .turnin 13283 >>Entregue O Rei da Montanha
	.isQuestComplete 13283
step << Horde
	>>Entregue para o Comandante Terrestre Xutja
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>Entregue Ataque Terrestre
	.isQuestComplete 13301
step
	>>Vá para a plataforma e mate os Iniciados Amargos na área. Saqueie-os pela Orbe de Ilusão
	.use 44246 >>Usar a Orbe de Ilusão nos Subjugadores de Escuridão na área quando estiver fora de combate
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Usar a Pistola de Dardos na mochila nos Batedores do Martelo de Orgrim (você pode usar enquanto está em sua montaria voadora). Saque os cadáveres deles pelos Despachos
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Usar o SGM-3 na mochila nos Skybreaker Recon Fighters no ar
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>Usar o Tônico da Seita Diluído na mochila para ganhar o bônus "Discernimento Sombrio". Isso permite que você saque as Essências Maculadas de todos os humanoides que você mata na área
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >>Clique direito nas Essências Maculadas na mochila para transformá-las em um Writhing Mass. Jogue-o numa caldeira
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >>Abate 5 Minions Escravizados (Voidwalkers). Usar o Bastão de Sifão nos cadáveres deles pela Matéria Negra
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>Clique na Pedra de Evocação
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Vá para o Skybreaker. Fale com o Capitão-cavaleiro Drosche, Absalan, o Pio, o Alto-capitão Justino Bartolotto, o Engenheiro-chefe Pertaporca e Thassarian
    .turnin -13336 >>Complete Sangue dos Escolhidos
    .turnin -13300 >>Complete Escravos da Saronita
    .turnin -13322 >>Complete Novo Teste
    .turnin -13323 >>Complete Arrastar e Soltar
	.turnin -13344 >>Complete Outro Tipo de Grampo
    .turnin -13333 >>Complete Capturar Mais Despachos
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Vá para Martelo de Orgrim. Fale com o Armipotente Davos Bulício, o Irmão Keltan, o Exterminador dos Céus Korm Escaranegra, o Engenheiro-chefe Cobregarra e Koltirus Tecemorte
    .turnin -13330 >>Complete Sangue dos Escolhidos
    .turnin -13302 >>Complete Escravos da Saronita
    .turnin -13357 >>Complete Novo Teste
    .turnin -13353 >>Complete Arrastar e Soltar
	.turnin -13365 >>Complete Outro Tipo de Grampo
    .turnin -13331 >>Complete Mantendo a Aliança Cega

--6 Quest section from Knights of the Ebon Blade. 3 come from The Shadow Vault, other 3 from Death's Rise

step
	+Para desbloquear as missões diárias dos Cavaleiros da Lâmina de Ébano, você deve primeiro completar sua cadeia de missões em Coroa de Gelo. Por favor, use o guia Ebon Blade Desbloquear Missões Diárias para desbloquear as missões diárias
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>De A Abóbada das Sombras aceite as 3 missões diárias
    >>Fale com Prateado
	.daily 12995 >>Aceite Deixando Nossa Marca
	.goto Icecrown,42.84,24.92
	>>Fale com o Saltador. Ele anda ao redor da tenda
	.daily 13069 >>Aceite Atirar'Em Up
	.goto IcecrownGlacier,43.5,25.0
	>>Fale com Torpe, ele é uma abominação que patrulha o caminho entre a entrada e o prédio principal
    .daily 13071 >>Aceite Torpe Brincar com Fogo!
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Abate Vraikal na área. Usar o Estandarte da Lâmina de Ébano na mochila nos cadáveres
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>Dentro do Arpão, use repetidamente "Arpão de Fogo Rápido" (3) para abater os Dragões
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >>Clique com o botão direito no Protodraco de Njorndar para montá-lo
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Usar "Estouro de Velocidade" (1) em recarga para se mover mais rápido. Usar "Bombardear Jotunheim Prédio" (3) para incendiar os prédios
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Vá à Abóbada das Sombras. Fale com Prateado, com o Saltador e com Torpe
	.turnin 12995 >>Entregue Deixando Nossa Marca
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Entregue Atirar'Em Up
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Entregue Torpe Brincar com Fogo!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>Do Morro da Morte aceite as 3 missões diárias
	>>Fale com Setaal
	.daily 12813 >>Aceite Ergam-se dos Cadáveres!
	.goto Icecrown,19.67,48.39
	>>Fale com Aurochs. Ele patrulha ao redor do fogo do meio
    .daily 12838 >>Aceite Trabalho da Inteligência
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Fale com Uzo
    .daily 12815 >>Aceite Zona de Voo Restrito
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Abate os Cavaleiros Grifo na área. Atire-os para baixo com habilidades à distância ou agrupe vários deles no ar, e então voe para baixo e mate-os
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>Abate os inimigos do Acossamento na área. Usar a Tintura da Curalâmina Sombria na mochila nos cadáveres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Abata inimigos do Acossamento, então saqueie-os pelas chaves. Usar-as para abrir baús ao redor do Porto do Acossamento para obter os Documentos
	>>|cff00ecffNOTA: Apenas abra baús que estão brilhando para os Documentos. Baús que não estão brilhando NÃO contêm Documentos.|r
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>Abate os inimigos do Acossamento na área. Usar a Tintura da Curalâmina Sombria na mochila nos cadáveres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Volte ao Morro da Morte. Fale com Uzo, Setaal e Aurochs
    .turnin 12815 >>Entregue Zona de Voo Restrito
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Entregue Ergam-se dos Cadáveres!
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Entregue Trabalho da Inteligência
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
]])
