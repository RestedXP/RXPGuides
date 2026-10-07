if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 13-15 Floresta de Pinhaprata
#version 1
#group Guia de Sobrevivência RestedXP (H)
#subgroup RXP Guia de Sobrevivência 1-20
#next 15-19 Savanas

step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Se você ver|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, fale com ele e mate-o. Saque-o pela carta. Ele patrulha a estrada entre Brill e The Sepulcher|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Mate os |cRXP_ENEMY_Worgs|r enquanto viaja em direção a |cRXP_FRIENDLY_Erland|r. Saque-os pelos |cRXP_LOOT_Corações|r.
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erland|r
    >>|cRXP_WARN_Certifique-se de estar com vida/mana cheios antes de iniciar|r
    .accept 435 >>Aceite Uma escolta para Orlando
    .target Deathstalker Erland
step
    #completewith next
    >>Mate |cRXP_ENEMY_Worgs|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Acompanhe |cRXP_FRIENDLY_Erland|r com segurança até |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_WARN_Tenha cuidado!|r |cRXP_ENEMY_Worgs|r |cRXP_WARN_podem surgir um em cima do outro, coma e beba sempre que conseguir|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Entregue Uma escolta para Orlando
    .accept 429 >>Aceite Corações selvagens
    .accept 449 >>Aceite Relatório dos Sicários
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Mate |cRXP_ENEMY_Worgs|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >>Viaje para The Sepulcher
    .subzoneskip 228
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Aceite Prove Your Worth
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    .vendor >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dele|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Necroguarda Rodrigo|r
    .accept 477 >>Aceite Border Crossings
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Aceite Supplying the Sepulcher
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Aceite Border Crossings
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>Entre na cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r na cripta
    .turnin 449 >>Entregue O Relatório das Aranhas da Morte
    .accept 3221 >>Aceite Fale com Renferrel
    .accept 437 >>Aceite Os Campos Estéreis
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Renferrel|r
    .turnin 429 >>Entregue Corações selvagens
    .turnin 445 >>Entregue Entrega na Floresta de Pinhaprata
    .turnin 3221 >>Entregue Fale com Renferrel
    .accept 1359 >>Aceite Entrega para Zilda
    .accept 447 >>Aceite Uma Receita para a Morte
    .accept 430 >>Aceite Reencontrando Quintino
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Mate os |cRXP_ENEMY_Moonrage Whitescalps|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Entregue Prove seu valor
    .accept 422 >>Aceite A loucura de Arugal
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >>Siga para o Sítio do Valgan
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Entre na casa e vá para o segundo andar. Pegue os |cRXP_PICK_Livros de Feitiço Empoeirados|r no chão
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >>Vá para A Horta do Ivar
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quintino Yorick|r no segundo andar da casa
    .turnin 430 >>Entregue Reencontrando Quintino
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r do lado de fora
    .accept 425 >>Aceite Ivar, o Imundo
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Mate |cRXP_ENEMY_Ivar, o Imundo|r. Saqueie-o para pegar sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Cuidado! Limpe toda a área frontal do celeiro e puxe os|r |cRXP_ENEMY_Ravenclaw Slaves|r |cRXP_WARN_um por um.|r
    >>|cRXP_WARN_Ivar está protegido por dois|r |cRXP_ENEMY_Ravenclaw Slaves|r |cRXP_WARN_dentro do celeiro. Você pode puxar um deles isoladamente enquanto ele patrulha|r
    >>|cRXP_WARN_Eles são imunes a Medo!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Entregue Ivar, o Imundo
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_Cuidado! Pode haver um|r |cRXP_ENEMY_Filho de Arugal|r |cRXP_WARN_na área! Ele é um elite de nível 25, mantenha distância dele!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Mate |cRXP_ENEMY_Ursos|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Mate os |cRXP_ENEMY_Rot Esconder-se Gnolls|r ao redor de Os Campos Mortos até que |cRXP_ENEMY_Vergasta|r apareça. Mate e saqueie-a para obter sua |cRXP_LOOT_Essência|r
    >>|cRXP_WARN_Eles são imunes a Medo!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Mate |cRXP_ENEMY_Ursos|r. Saqueie-os para pegar seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Mate as |cRXP_ENEMY_Aranhas|r. Saque-as para obter seu |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_está ativa, ELA VAI TE MATAR! Ela tem um escudo de 130 de dano com recarga de 15s e uma habilidade de choque instantâneo de 110 de dano|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quim Sanatha|r
    .vendor >>Lixo de Vendedor
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Mate as |cRXP_ENEMY_Aranhas|r. Saque-as para obter seu |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Krethis Umbrateia|r |cRXP_WARN_está ativa, ELA VAI TE MATAR! Ela tem um escudo de 130 de dano com recarga de 15s e uma habilidade de choque instantâneo de 110 de dano|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Mate os |cRXP_ENEMY_Ursos|r. Saque-os para obter seus |cRXP_LOOT_Corações|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>Volte para o Sepulcro
    .subzoneskip 228
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >>Entregue A loucura de Arugal
    .accept 423 >>Aceite A loucura de Arugal
    .target Dalar Dawnweaver
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>Entre na cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r na cripta
    .turnin 437 >>Entregue Os Campos Mortos
    .accept 438 >>Aceite Os Campos Apodrecidos
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r
    .vendor >>Lixo de Vendedor
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Warlock/Priest/Shaman/Druid
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    .collect 1179,20,421,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andrea|r
    .vendor >>Compre |T132491:0|t[|cRXP_FRIENDLY_Cinto do Homem Sábio|r] dela se estiverem disponíveis
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nadia|r
    >>Compre um |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] dela se estiver disponível
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >>Compre |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r] dela se estiverem disponíveis
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alexandra Lefevre|r
    .vendor >>Compre |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r] ou |T132537:0|t[|cRXP_FRIENDLY_Botas Estáveis|r] dela se um deles estiver disponível
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe o|r |T132491:0|t[|cRXP_FRIENDLY_Cinto do Homem Sábio|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Hunter
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe o|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r]
    .use 11304
    .itemcount 11304,1
    .xp <14,1
    .equip 18,11304
step << Hunter/Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe as|r |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe as|r |T132539:0|t[|cRXP_FRIENDLY_Botas Ágeis|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipe as|r |T132537:0|t[|cRXP_FRIENDLY_Botas Estáveis|r]
    .use 4789
    .itemcount 4789,1
    .equip 8,4789
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >>Desça a colina
step
    #completewith DecrepitFerry
    +|cRXP_WARN_Cuidado! Pode haver um|r |cRXP_ENEMY_Filho de Arugal|r |cRXP_WARN_na área! Ele é um elite de nível 25, mantenha distância dele!|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
	.goto Silverpine Forest,43.83,31.00,0
	.goto Silverpine Forest,44.22,31.55,50,0
	.goto Silverpine Forest,43.51,32.38,50,0
	.goto Silverpine Forest,42.61,31.12,50,0
	.goto Silverpine Forest,41.28,30.25,50,0
	.goto Silverpine Forest,39.70,30.24,50,0
	.goto Silverpine Forest,38.96,29.15,50,0
	.goto Silverpine Forest,38.28,27.10,50,0
	.goto Silverpine Forest,37.60,24.16,50,0
	.goto Silverpine Forest,38.07,23.13,50,0
	.goto Silverpine Forest,38.56,21.93,50,0
	.goto Silverpine Forest,39.73,23.26,50,0
	.goto Silverpine Forest,41.49,23.51,50,0
	.goto Silverpine Forest,41.14,25.50,50,0
	.goto Silverpine Forest,41.17,28.26,50,0
	.goto Silverpine Forest,42.01,29.27,50,0
	.goto Silverpine Forest,43.83,31.00,50,0
    >>Mate |cRXP_ENEMY_Glutão Lunafúria|r e |cRXP_ENEMY_Almanegra Lunafúria|r. Saque-os para pegar seus |cRXP_LOOT_Grilhões|r
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Moonrage Darksouls|r |cRXP_WARN_entram em fúria quando estão abaixo de 25% de vida. Abate-os rapidamente!|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Clique no |cRXP_PICK_Barco|r ao lado do cais
    >>|cRXP_WARN_Tenha cuidado!|r |cRXP_ENEMY_Mãos of Ravenclaw|r |cRXP_WARN_são até o nível 16 e possuem uma habilidade de atordoamento corpo a corpo de 5 segundos|r
    .turnin 438 >>Entregue Os Campos Apodrecidos
    .accept 439 >>Aceite Pistas dos Putricouro
step
    .goto Silverpine Forest,49.89,60.33
    >>Clique no |cRXP_PICK_Caixote|r no acampamento
    >>|cRXP_WARN_Cuidado! Esses inimigos lançam|r |T135846:0|t[Seta de Gelo] |cRXP_WARN_e fogem com pouca vida. Puxe-os para trás e mate-os um de cada vez até que você consiga clicar com segurança no caixote|r
    .turnin 477 >>Entregue Cruzando fronteiras
    .accept 478 >>Aceite Mapas e runas
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >>Volte para o Sepulcro
    .subzoneskip 228
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 478 >>Entregue Mapas e runas
    .accept 481 >>Aceite Análise de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Entregue A loucura de Arugal
    .turnin 481 >>Entregue Análise de Dalar
    .accept 482 >>Aceite Dalaran's Intentions
    .accept 424 >>Aceite A loucura de Arugal
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdote Sombrio Allister|r e |cRXP_FRIENDLY_Dalar Tessalba|r
    .turnin 478 >>Entregue Mapas e runas
    .accept 481 >>Aceite Análise de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Entregue A loucura de Arugal
    .turnin 481 >>Entregue Análise de Dalar
    .accept 482 >>Aceite Dalaran's Intentions
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Entregue As intenções de Dalaran
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .accept 479 >>Aceite Investigações de Ambermill
    .target Shadow Priest Allister
    .group
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Entregue As intenções de Dalaran
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >>Entre na cripta
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r na cripta
    .turnin 439 >>Entregue Pistas dos Putricouro
    .accept 440 >>Aceite O Anel Gravado
    .target High Executor Hadrec
step << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Entregue Supplying the Sepulcher
    .accept 6323 >>Aceite Carona para a Cidade Baixa
    .target Karos Razok
step
    #completewith ZingeAndFaranell
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >>Pegue o ponto de voo do Sepulcro << !Undead
    .fly Undercity >>Voe para Undercity
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antônio Nunes|r
    .turnin 6323 >>Entregue Carona para a Cidade Baixa
    .accept 6322 >>Aceite Miguel Garreta
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +Equipe o |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compre um|r |T132394:0|t[Machado Farpado] |cRXP_BUY_dele|r
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +Equipe o |T132394:0|t[Machado Farpado]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dele|r
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você tiver nível 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele.|r
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #completewith ZingeAndFaranell
    .goto Undercity,47.20,59.69,0
    .goto Undercity,47.20,59.69,12,0
    .goto Undercity,43.55,68.11,12,0
    .goto Undercity,45.20,71.67,12 >>Vá para |cRXP_FRIENDLY_Zinge|r e |cRXP_FRIENDLY_Faranell|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-boticário Faranello|r e |cRXP_FRIENDLY_Boticária Zilda|r no Boticarium
    .turnin 447 >>Entregue Receita mortal
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Entregue Entrega para Zilda
    .accept 1358 >>Aceite Uma amostra para Hermógenes
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-boticário Faranello|r e |cRXP_FRIENDLY_Boticária Zilda|r no Boticarium
    .turnin 447 >>Entregue Receita mortal
    .accept 450 >>Aceite Uma Receita para a Morte
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Entregue Entrega para Zilda
    .accept 1358 >>Aceite Uma amostra para Hermógenes
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .group
step
    #optional
    #label ZingeAndFaranell
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Mage
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >>Treine suas magias de classe
    .target Anastasia Hartwell
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >>Treine suas magias de classe
    .target Carolyn Ward
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Richard|r
    .train 6222 >>Treine suas magias de classe
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Richard|r
    .train 1455 >>Treine suas magias de classe
    .target Richard Kerwin
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zane|r|cRXP_BUY_. Compre uma|r |T133718:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1886 >>Entregue The Deathstalkers - Missão - Missão
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .accept 1898 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andron Gante|r
    .turnin 1898 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1899 >>Aceite Os Sicários
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Pegue |cRXP_PICK_Estante de Livros de Andron|r atrás de |cRXP_FRIENDLY_Andron Gante|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1899 >>Entregue The Deathstalkers - Missão - Missão
    .accept 1978 >>Aceite Os Sicários
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 1978 >>Entregue The Deathstalkers - Missão - Missão
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Mary|r
    .train 3276 >>Treine |T133688:0|t[Bandagem Grossa de Linho]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Mary|r
    .train 3274 >>Treine Socorrista Profissional
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Angela|r
    .train 1160 >>Treine suas magias de classe
    .target Angela Curthas
    .xp <14,1
    .xp >16,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Angela|r
    .train 285 >>Treine suas magias de classe
    .target Angela Curthas
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lazarus|r
	.train 6074 >>Treine suas magias de classe
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lazarus|r
	.train 8102 >>Treine suas magias de classe
    .target Father Lazarus
    .xp <16,1
    .group
step << Undead Rogue
    #optional
    #completewith GrimsonthePale
    .abandon 1886 >>Abandone Os Sicários, não haverá outra oportunidade de fazer
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .accept 5725 >>Aceite O Poder de Destruir
    .target Varimathras
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .turnin 6322 >>Entregue Miguel Garreta
    .accept 6324 >>Aceite Fale novamente com Rodrigo
    .target Michael Garrett
step
    #completewith GrimsonthePale
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fly The Supulcher >>Voe para The Sepulcher
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .group
step << Undead
    #completewith next
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fly The Supulcher >>Voe para The Sepulcher
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .solo
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Rodrigo|r
    .turnin 6324 >>Entregue Fale novamente com Rodrigo
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guida Farrow|r
    .vendor >>|cRXP_BUY_Compre|r |T134830:0|t[Poção Inferior de Cura] |cRXP_BUY_dele, se estiverem disponíveis|r
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >>Entre na Mina
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>Mate |cRXP_ENEMY_Severo, o Pálido|r. Saque-o para pegar sua |cRXP_LOOT_Cabeça|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2
step << skip
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_Salte sobre a roda de madeira. Realize um Logout Pular ao sair e voltar a entrar. Se você não conseguir fazer isso, corra de volta para The Sepulcher|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .turnin 424 >>Entregue A loucura de Arugal
    .accept 99 >> Arugal's Folly
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120,0
    .subzone 233 >>Viaje para Ambermill
    .group
step
    #loop
	.goto Silverpine Forest,57.12,63.39,0
	.goto Silverpine Forest,57.91,62.48,50,0
	.goto Silverpine Forest,59.10,61.88,50,0
	.goto Silverpine Forest,59.79,63.08,50,0
	.goto Silverpine Forest,60.79,62.55,50,0
	.goto Silverpine Forest,61.98,62.56,50,0
	.goto Silverpine Forest,61.00,64.89,50,0
	.goto Silverpine Forest,60.10,65.93,50,0
	.goto Silverpine Forest,59.02,67.10,50,0
	.goto Silverpine Forest,57.56,67.57,50,0
	.goto Silverpine Forest,57.62,65.17,50,0
	.goto Silverpine Forest,57.12,63.39,50,0
    >>Mate os |cRXP_ENEMY_Dalaran Protectors|r e os |cRXP_ENEMY_Dalaran Mages|r. Saque seus |cRXP_LOOT_Pendants|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >>Viaje para Pyrewood Village
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>Mate os |cRXP_ENEMY_Pyrewood|r. Saque seus |cRXP_LOOT_Grilhões|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>Entre na estalagem e vá para o segundo andar
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>Mate |cRXP_ENEMY_Boticário Berardo|r. Saque seu |cRXP_LOOT_Livro|r localizado na estante
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >>Entre na capela
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Faerleia|r
    .accept 452 >>Aceite Emboscada de Pyrewood
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>Mate o |cRXP_ENEMY_Councilman|r e o |cRXP_ENEMY_Prefeito Morrison|r que aparecem
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Faerleia|r
    .turnin 452 >>Entregue Emboscada de Pyrewood
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    #loop
    .goto Silverpine Forest,45.48,73.43,0
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43,40,0
    >>Termine de matar os |cRXP_ENEMY_Pyrewood|r. Saque seus |cRXP_LOOT_Grilhões|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >>Volte para o Sepulcro
    .subzoneskip 228
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .turnin 99 >>Entregue A loucura de Arugal
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Renferrel|r
    .turnin 450 >>Entregue Uma Receita para a Morte
    .target Apothecary Renferrel
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Allister|r
    .turnin 479 >>Entregue Investigações de Ambermill
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nadia|r
    >>Compre um |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] dela se estiver disponível
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
    .group
step << Druid
    #completewith next
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step
    #optional
    .abandon 424 >>Abandone Arugal's Folly
    .isOnQuest 424
step
    #optional
    .abandon 479 >>Abandone Investigações de Ambermill
    .isOnQuest 479
step
    #optional
    .abandon 99 >>Abandone Arugal's Folly
    .isOnQuest 99
step
    #optional
    .abandon 450 >>Abandone Uma Receita para a Morte
    .isOnQuest 450
step
    #optional
    .abandon 452 >>Abandone Emboscada de Pyrewood
    .isOnQuest 452
step << Tauren/Shaman/Hunter
    .hs >>Vá para Encruzilhada
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Tauren !Shaman !Hunter
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .use 6948
    .bindlocation 362,1
    .subzoneskip 362

    ]])
