if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Rota de Missões Diárias do Gunship Coroa de Gelo

step << Alliance -- Checking that the actual pre quests that have been completed, not dailies
	+Para desbloquear todas as missões diárias do Gunship Coroa de Gelo, você deve primeiro completar a cadeia Pre Missão. Por favor, use o guia Desbloquear Missões Diárias do Gunship Coroa de Gelo para desbloquear todas as missões diárias
	.isQuestAvailable 13314,13346,13342,13318,13321,13295,13288,13380,13291,13231,13296

--	 13314  Get the Message
--	 13346  No Rest For The Wicked
--	 13342  Not a Bug
--	 13318  Drag and Drop
--	 13321  Retest Now
--	 13295  Basic Chemistry
--	 13288  That's Abominable!
--	 13380  Leading the Charge
--	 13291  Borrowed Technology
--	 13231  The Broken Front
--	 13296  Get to Ymirheim!

step << Horde -- Checking that the actual quests that have been completed, not dailies
	+Para desbloquear todas as missões diárias do Gunship Coroa de Gelo, você deve primeiro completar a cadeia Pre Missão. Por favor, use o guia Desbloquear Missões Diárias do Gunship Coroa de Gelo para desbloquear todas as missões diárias
	.isQuestAvailable 13313,13228,13293,13239,13373,13279,13356,13352,13358,13367,13264

--	 13313  Blinding the Eyes in the Sky
--	 13228  The Broken Front
--	 13293  Get to Ymirheim!
--	 13239  Volatility
--	 13279  Basic Chemistry
--	 13356  Retest Now
--	 13352  Drag and Drop
--	 13358  Not a Bug
--	 13367  No Rest For The Wicked
--	 13264  That's Abominable!

--Alliance Skybreaker Quests (11)
--	Blood of the Chosen, 13336
--	Slaves to Saronite, 13300
--	No Mercy!, 13233
--	The Solution Solution, 13292
--	That's Abominable!, 13289
--	Neutralizing the Plague, 13297
--	Retest Now, 13322
--	Drag and Drop, 13323
--	Not a Bug, 13344
--	No Rest For The Wicked, 13350
--	Capture More Dispatches, 13333

--Alliance other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13280
--  Assault by Air, 13309
--  Assault by Ground, 13284
--  Static Shock Troops: the Bombardment, 13404
--  Putting the Hertz: The Valley of Lost Hope, 13382 -- not implimented by blizzard

--Horde Orgrim's Hammer Quests (11)
--	Blood of the Chosen, 13330
--	Slaves to Saronite, 13302
--	Make Them Pay!, 13234
--	Volatility, 13261
--	That's Abominable!, 13276
--	Neutralizing the Plague, 13281
--	Retest Now, 13357
--	Drag and Drop, 13353
--	Not a Bug, 13365
--	No Rest For The Wicked, 13368
--	Keeping the Alliance Blind, 13331

--Horde other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13283  -- DONE
--  Assault by Air, 13310 -- DONE
--  Assault by Ground, 13301 -- DONE
--  Riding the Wavelength: The Bombardment, 13406
--  Total Ohmage: The Valley of Lost Hope!, 13376 -- not implimented by blizzard

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Voe para o Gunship da Aliança, O Rompe-céus
	>>Fale com o Capitão-cavaleiro Drosche, Absalan, o Pio, o Alto-capitão Justino Bartolotto, o Engenheiro-chefe Pertaporca e Thassarian
	>>Nota que a missão Sem Misericórdia! é uma missão JxJ que requer que você mate 15 jogadores da Horda em Coroa de Gelo. Você pode abandonar/pular esta missão diária se desejar
    .daily 13336 >>Aceite Sangue dos Escolhidos
    .daily 13300 >>Aceite Escravos da Saronita
	.daily 13233 >>Aceite Sem Misericórdia!
    .daily 13292 >>Aceite A Solução da Solução
    .daily 13289 >>Aceite Abominável!
	.daily 13297 >>Aceite Neutralizar a Peste
    .daily 13322 >>Aceite Novo Teste
    .daily 13323 >>Aceite Arrastar e Soltar
	.daily 13344 >>Aceite Outro Tipo de Grampo
    .daily 13350 >>Aceite Onde os Maléficos Não Têm Descanso
    .daily 13333 >>Aceite Capturar Mais Relatórios
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Voe para o Gunship da Horda, Martelo de Orgrim
	>>Fale com o Armipotente Davos Bulício, o Irmão Keltan, o Exterminador dos Céus Korm Escaranegra, o Engenheiro-chefe Cobregarra e Koltirus Tecemorte
	>>Nota que a missão Make Them Pay! é uma missão JxJ que requer que você mate 15 jogadores da Aliança em Coroa de Gelo. Você pode abandonar/pular esta missão diária se desejar
    .daily 13330 >>Aceite Sangue dos Escolhidos
    .daily 13302 >>Aceite Escravos da Saronita
	.daily 13234 >>Aceite Make Them Pay!
    .daily 13261 >>Aceite Volatilidade
    .daily 13276 >>Aceite Abominável!
	.daily 13281 >>Aceite Neutralizar a Peste
    .daily 13357 >>Aceite Novo Teste
    .daily 13353 >>Aceite Arrastar e Soltar
	.daily 13365 >>Aceite Outro Tipo de Grampo
    .daily 13368 >>Aceite Onde os Maléficos Não Têm Descanso
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
	>>Atire em todas as Lança Armas de Fogo nos prédios enquanto você voa ao redor
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Entregue para Koup
    .turnin 13309 >>Entregue Ataque Aéreo
	.isQuestComplete 13309
step << Horde
	>>Voe para o Comandante Terrestre Xutja (no chão - não no navio)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Aceite Ataque Aéreo
step << Horde
	#completewith next
	.vehicle >>Corra para a Torre de Supressão Kor'kron no navio e clique nela
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Atire em todas as torres de canhão que você vê para desativá-las. Infiltradores cairão enquanto você faz isso
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Entregue Ataque Aéreo
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Fale com o Líder de Pelotão. Ele pode não estar aqui se alguém começou a missão e tem um tempo de reaparição de aproximadamente 6 minutos
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
	>>Fale com o Líder de Pelotão. Ele pode não estar aqui se alguém começou a missão e tem um tempo de reaparição de aproximadamente 6 minutos
    .daily 13301 >>Aceite Ataque Terrestre
step << Horde
    .goto IcecrownGlacier,54.9,52.8,0,0
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
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Saque os pedaços de equipamento abandonado espalhados no chão ao redor de O Front Partido. Usar o Smuggled Solution na mochila quando tiver uma peça de cada tipo de equipamento (não precisa esperar pela encenação) << Alliance
	.collect 43609,3,13292,1,-1 << Alliance --Pile of Bones (3)
	.collect 43610,3,13292,1,-1 << Alliance --Abandoned Helm (3)
	.collect 43616,3,13292,1,-1  << Alliance --Abandoned Armor (3)
    .complete 13292,1 << Alliance --Field Tests Conducted (3)
	.use 43608 >>Pegue os pedaços de equipamento abandonado espalhados no chão ao redor de O Front Partido. Usar o Copperclaw's Volátil Oil na mochila quando tiver uma peça de cada tipo de equipamento (não precisa esperar a encenação) << Horde
	.collect 43609,3,13261,1,-1  << Horde --Pile of Bones (3)
	.collect 43610,3,13261,1,-1 << Horde --Abandoned Helm (3)
	.collect 43616,3,13261,1,-1 << Horde --Abandoned Armor (3)
    .complete 13261,1 << Horde --Field Tests Conducted (3)
	.isOnQuest 13292 << Alliance
	.isOnQuest 13261 << Horde
step
    .goto IcecrownGlacier,68.3,61.5
	>>Abate as Abominações Colossais na área e saqueie-as por Tripas de Abominação Geladas
	.use 43968 >>Usar o Kit de Reanimação de Abominações com algumas Tripas na mochila para invocar uma Abominação que você pode controlar. Colete tantos inimigos quantos possível fazendo a Abominação atacá-los e ganhando aggro, depois use "Rasgo na Costura" para matar todos os inimigos perto da sua Abominação (os inimigos têm que estar em combate para obter crédito deles)
	>>Se você ficar sem Tripas, vá e mate mais Abominações Colossais. Você pode ter apenas uma Tripa com você por vez.
	.collect 43966,1,13289,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13289,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13289,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13289,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13276,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13276,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13276,2 << Horde --Vicious Geists Exploded (15)
    .complete 13276,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13289 << Alliance
	.isOnQuest 13276 << Horde
step
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Abate os Horrores Purulentos na área. Saqueie uma Flesh Giant Spine deles. Esta missão é MUITO difícil. Forme um grupo se necessário ou você pode abandonar/pular essa diária se desejar
	.collect 44009,1 -- Flesh Giant Spine (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	.goto IcecrownGlacier,62.3,63.4
	.use 44009 >>Usar o Flesh Giant Spine na mochila para criar Pustulant Spinal Fluid
	.collect 44010,1 -- Pustulant Spinal Fluid (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >>Usar o Pustulant Spinal Fluid nas caldeiras verdes borbulhantes. Abate os inimigos que aparecem e use o Spinal Fluid novamente quando for pedido para "Adicionar fluido em breve". Esta missão é MUITO difícil. Forme um grupo se necessário ou você pode abandonar/pular essa diária se desejar
    .complete 13297,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13281,1 << Horde --Batch of Plague Neutralized (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
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
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >>Vá para dentro de Aldur'thar
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
	>>Esta missão é MUITO difícil. Forme um grupo se necessário ou abandone/pule essa diária
	>>Abra os baús dentro de Aldur'thar e saque o Crânio, Coração, Sceptro e Robes de Alumeth
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta missão é MUITO difícil. Forme um grupo se necessário ou abandone/pule essa diária
	.use 44476 >>Clique em qualquer um dos itens na mochila para combiná-los em Restos Mortais de Alumeth
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta missão é MUITO difícil. Forme um grupo se necessário ou abandone/pule essa diária
	.use 44480 >>Usar Restos Mortais de Alumeth em frente ao cristal brilhante para invocá-lo. Abate-o
    .complete 13350,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13368,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
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
step << Alliance
	>>Voe para a pequena plataforma no ar. Fale com Killohertz
	.goto IcecrownGlacier,53.96,42.93
	.daily 13404 >>Aceite Tropas de Choque Estáticas: O Bombardeio
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Fale com Karen para entrar em um bombardeiro. Usar Carregar Escudo (1) para ganhar 100 escudos e depois mude para Baía dos Bombardeiros (5) e comece a bombardear a Flagelo abaixo até que toda a Infantaria e Capitães sejam mortos. Mude para Torreta Antiaérea (4) e comece a usar Foguetes Antiaéreos (1) para atirar em gárgulas no ar. Uma vez completado, pressione o botão Sair do veículo e você será retornado para a plataforma
	.complete 13404,1 -- Bombardment Infantry slain (50)
	.complete 13404,2 -- Bombardment Captain slain (10)
	.complete 13404,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Alliance
	>>Fale com Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13404 >>Entregue Tropas de Choque Estáticas: O Bombardeio
	.isQuestComplete 13404
step << Horde
	>>Voe para a pequena plataforma no ar. Fale com Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .daily 13406 >>Aceite Pilotando o Comprimento de Onda: O Bombardeio
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Fale com Rizzy para entrar em um bombardeiro. Usar Carregar Escudo (1) para ganhar 100 escudos e depois mude para Baía dos Bombardeiros (5) e comece a bombardear a Flagelo abaixo até que toda a Infantaria e Capitães sejam mortos. Mude para Torreta Antiaérea (4) e comece a usar Foguetes Antiaéreos (1) para atirar em gárgulas no ar. Uma vez completado, pressione o botão Sair do veículo e você será retornado para a plataforma
	.complete 13406,1 -- Bombardment Infantry slain (50)
	.complete 13406,2 -- Bombardment Captain slain (10)
	.complete 13406,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Horde
	>>Fale com Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13406 >>Complete Pilotando o Comprimento de Onda: O Bombardeio
	.isQuestComplete 13406
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Vá para o Skybreaker. Fale com o Capitão-cavaleiro Drosche, Absalan, o Pio, o Alto-capitão Justino Bartolotto, o Engenheiro-chefe Pertaporca e Thassarian
    .turnin -13336 >>Complete Sangue dos Escolhidos
    .turnin -13300 >>Complete Escravos da Saronita
	.turnin -13233 >>Complete Sem Misericórdia!
    .turnin -13292 >>Complete A Solução da Solução
    .turnin -13289 >>Complete Abominável!
	.turnin -13297 >>Complete Neutralizando a Praga
    .turnin -13322 >>Complete Novo Teste
    .turnin -13323 >>Complete Arrastar e Soltar
	.turnin -13344 >>Complete Outro Tipo de Grampo
    .turnin -13350 >>Complete Onde os Maléficos Não Têm Descanso
    .turnin -13333 >>Complete Capturar Mais Despachos
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Vá para Martelo de Orgrim. Fale com o Armipotente Davos Bulício, o Irmão Keltan, o Exterminador dos Céus Korm Escaranegra, o Engenheiro-chefe Cobregarra e Koltirus Tecemorte
    .turnin -13330 >>Complete Sangue dos Escolhidos
    .turnin -13302 >>Complete Escravos da Saronita
	.turnin -13234 >>Complete Faça-os Pagar!
    .turnin -13261 >>Complete Volatilidade
    .turnin -13276 >>Complete Abominável!
	.turnin -13281 >>Complete Neutralizando a Praga
    .turnin -13357 >>Complete Novo Teste
    .turnin -13353 >>Complete Arrastar e Soltar
	.turnin -13365 >>Complete Outro Tipo de Grampo
    .turnin -13368 >>Complete Onde os Maléficos Não Têm Descanso
    .turnin -13331 >>Complete Mantendo a Aliança Cega
step << Alliance
	+Você completou todas as Missões Diárias do Rompe-céus de hoje :) Tente completar qualquer uma das missões em grupo que você abandonou/pulou se desejar!
step << Horde
	+Você completou todas as Missões Diárias do Martelo de Orgrim de hoje :) Tente completar qualquer uma das missões em grupo que você abandonou/pulou se desejar!
]])
