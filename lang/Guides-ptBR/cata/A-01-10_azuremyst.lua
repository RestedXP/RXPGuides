if GetLocale() ~= "ptBR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10 Azuremyst Isle
#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#defaultfor Draenei
#next 10-18 Costa Negra
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >>Aceite Sobreviveste!
    .target Megelon
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >>Entregue Sobreviveste!
    .accept 9280 >>Aceite O Reabastecimento dos Cristais de Cura
    .target Proenitus
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>Mate os |cRXP_ENEMY_Vale Moths|r. Saqueie-os para obter |cRXP_LOOT_Sanguíneo|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >>Entregue O Reabastecimento dos Cristais de Cura
    .accept 9409 >>Aceite Entrega Urgente!
    .target Proenitus
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botânica Taerix|r
    .accept 10302 >>Aceite Mutações Voláteis
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Mate os |cRXP_ENEMY_Mutações Voláteis|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Botânica Taerix|r e a |cRXP_FRIENDLY_Aprendiz Vishael|r
    .turnin 10302 >>Entregue Mutações Voláteis
    .accept 9293 >>Aceite A Resposta Adequada...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >>Aceite Trabalho de Campo: Botânica
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Mate os |cRXP_ENEMY_Mutated Enraizar Lashers|r. Saqueie-os para obter |cRXP_LOOT_Amostra de Açoitadeira|r
    >>Pegue as |cRXP_LOOT_Flores Corrompidas|r no chão
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step << cata Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>Triture até ficar a 470xp do nível 4 (930/1400)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Botânica Taerix|r e a |cRXP_FRIENDLY_Aprendiz Vishael|r
    .turnin 9293 >>Entregue A Resposta Adequada...
    .accept 9294 >>Aceite A Descontaminação do Lago
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >>Entregue Trabalho de Campo: Botânica
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurok|r
	.vendor >>Comerciante de Lixo
    .target Aurok
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 9409 >>Entregue Entrega Urgente!
    .accept 9283 >>Aceite O Resgate dos Sobreviventes!
    .accept 26970 >>Aceite Ajudando o Ferido << cata Priest
    .accept 26970 >>Aceite Aprenda a Palavra << !cata Priest
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << cata Priest
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor] << cata Priest
    .target Zalduun
step << Priest cata
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_Use|r |T135907:0|t[Cura Célere] |cRXP_WARN_5 vezes a um |cRXP_FRIENDLY_Draenei Ferido|r ao seu lado|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 26970 >>Entregue Ajudando o Ferido
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valaatu|r
    .accept 26968 >>Aceite Mísseis Arcanos << cata
    .accept 26968 >>Aceite Novane Congelante << !cata
	.train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << cata
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_pode patrulhar ligeiramente|r
    .accept 26966 >>Aceite O Poder da Luz
    .train 20154 >>Treine |T135960:0|t[Selo da Retidão] << cata
	.train 20271 >>Aprenda |T135959:0|t[Julgamento] << cata
    .target Aurelon
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kore|r
    .accept 26958 >>Aceite A Primeira Lição
	.train 100 >>Treine |T132337:0|t[Carga] << cata
    .target Kore
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firmanvaar|r
    .accept 26969 >>Aceite Golpe Primevo
    .train 8075 >>Treine |T136023:0|t[Totem da Força da Terra] << cata
    .train 73899 >>Treine |T460956:0|t[Golpe Primevo] << cata
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keilnei|r
	.accept 26963 >>Aceite Firmeza no Disparo
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << cata
    .target Keilnei
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Técnica Zhanaa|r
    .accept 9305 >>Aceite Peças Sobressalentes
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vindicante Aldar|r
    .accept 9303 >>Aceite Inoculação
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    >>|cRXP_WARN_Use|r |T135923:0|t[Dádiva dos Naarus] |cRXP_WARN_em um|r |cRXP_FRIENDLY_Sobrevivente Draenei|r|cRXP_WARN_. Eles estão espalhados por toda a zona inicial|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Clique no |cRXP_PICK_Cristal de Poder Irradiado|r no lago
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Use|r |T132775:0|t[Cristal de Inoculação] |cRXP_WARN_em |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Pegue as |cRXP_LOOT_Peças Sobressalentes do Emissor|r no chão
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Use|r |T132775:0|t[Cristal de Inoculação] |cRXP_WARN_em |cRXP_ENEMY_Nestlewood Owlkins|r durante 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botânica Taerix|r
    .turnin 9294 >>Entregue A Descontaminação do Lago
    .target Botanist Taerix
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Use|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Treinamento|r até obter um|r |T135731:0|t[Mísseis Arcanos!] |cRXP_WARN_proc, depois lance|r |T136096:0|t[Mísseis Arcanos]|cRXP_WARN_. Repita isto duas vezes|r
    >>|cRXP_WARN_Use|r |T135848:0|t[Novane Congelante] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Treinamento|r. Repita isto duas vezes|r
    .complete 26968,1 << cata -- Practice Arcane Missles (1)
    .complete 26968,2 << !cata -- Practice Frost Nova (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Use|r |T460956:0|t[Golpe Primevo] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Treinamento|r 3 vezes|r
    .complete 26969,1 << cata -- Practice Primal Strike (1)
    .complete 26969,2 << !cata -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Use|r |T132213:0|t[Tiro Firme] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Treinamento|r 5 vezes|r
    .complete 26963,1 << cata -- Practice Steady Shot (1)
    .complete 26963,2 << !cata -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Use|r |T132337:0|t[Investida] |cRXP_WARN_no|r |cRXP_ENEMY_Boneco de Treinamento|r
    .complete 26958,1 << cata -- Practice Charge (1)
    .complete 26958,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Use|r |T135960:0|t[Selo da Retidão] |cRXP_WARN_seguido por|r |T135959:0|t[Julgamento] |cRXP_WARN_em|r |cRXP_ENEMY_Treinamento Boneco|r
    .complete 26966,1 << cata -- Practice Charge (1)
    .complete 26966,2 << !cata -- Practice Charge (1)
    .mob Training Dummy
step << Priest !cata
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_Use|r |T136207:0|t[Palavra Sombria: Dor] |cRXP_WARN_em um|cRXP_ENEMY_ Treinamento Boneco|r 5 vezes|r
    .complete 26970,2 -- Shadow Word: Pain (5)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurok|r
	.vendor >>Comerciante de Lixo
    .target Aurok
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes!
    .target Zalduun
step << !cata Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 26970 >>Entregue Aprenda a Palavra
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valaatu|r
    .turnin 26968 >>Entregue Mísseis Arcanos << cata
    .turnin 26968 >>Entregue Novane Congelante << !cata
    .target Valaatu
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 26969 >>Entregue Golpe Primevo
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keilnei|r
	.turnin 26963 >>Entregue Firmeza no Disparo
    .target Keilnei
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kore|r
    .turnin 26958 >>Entregue A Primeira Lição
    .target Kore
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_pode patrulhar ligeiramente|r
    .turnin 26966 >>Entregue O Poder da Luz
    .target Aurelon
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Técnica Zhanaa|r
    .turnin 9305 >>Entregue Peças Sobressalentes
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vindicante Aldar|r
    .turnin 9303 >>Entregue Inoculação
    .accept 9309 >>Aceite O Batedor Desaparecido
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    >>|cRXP_WARN_Use|r |T135923:0|t[Dádiva dos Naarus] |cRXP_WARN_em um|r |cRXP_FRIENDLY_Sobrevivente Draenei|r|cRXP_WARN_. Eles estão espalhados por toda a zona inicial|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >>Entregue O Batedor Desaparecido
    .accept 10303 >>Aceite Os Elfos Sangrentos
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Mate os |cRXP_ENEMY_Blood Elf Batedores|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >>Entregue Os Elfos Sangrentos
    .accept 9311 >>Aceite Espiã Elfa Sangrenta
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Mate a |cRXP_ENEMY_Monteira Candressa|r. Saque-a para obter o |T132319:0|t[|cRXP_LOOT_Os planos dos elfos sangrentos|r]
    .use 24414 >>|cRXP_WARN_Use o|r |T132319:0|t[|cRXP_LOOT_Os planos dos elfos sangrentos|r] |cRXP_WARN_para iniciar a missão|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >>Aceite Os Planos dos Elfos Sangrentos
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_Use|r |T135923:0|t[Dádiva dos Naarus] |cRXP_WARN_em um|r |cRXP_FRIENDLY_Sobrevivente Draenei|r|cRXP_WARN_. Eles estão espalhados por toda a zona inicial|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
	#completewith BloodElfSpy
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha ligeiramente|r
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes!
    .target Zalduun
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vindicante Aldar|r
    .turnin 9311 >>Entregue Espiã Elfa Sangrenta
    .turnin 9798 >>Entregue Os Planos dos Elfos Sangrentos
    .accept 9312 >>Aceite O Emissor
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Técnica Zhanaa|r
    .turnin 9312 >>Entregue O Emissor
    .accept 9313 >>Aceite A Viagem para o Entreposto Lazúli
    .target Technician Zhanaa
step << Mage cata
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valaatu|r
	.train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Valaatu
step << Priest cata
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha ligeiramente|r
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Zalduun
step << Paladin cata
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_pode patrulhar ligeiramente|r
	.train 465 >>Treine |T135893:0|t[Aura de Devoção]
    .target Aurelon
step << Warrior cata
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kore|r
	.train 34428 >>Treine |T132342:0|t[Ímpeto da Vitória]
    .target Kore
step << Shaman cata
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firmanvaar|r
	.train 8042 >>|T136026:0|t[Choque Terreno]
    .target Firmanvaar
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >>Aceite Notícias do Entreposto Lazúli
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >>Aceite Hum... Delícia de Pargo-vermelho!
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >>|cRXP_WARN_Nade rio acima|r
    .use 23654 >>|cRXP_WARN_Use o|r |T134325:0|t[Draenei Pesca Rede] |cRXP_WARN_em|r |cRXP_PICK_Cardumes de Pargo-vermelho|r |cRXP_WARN_que você vê pelo caminho. Pule este passo quando chegar ao topo do rio, você o completará depois|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Fique atento para um|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_Enquanto estão em combate, lance|r |T135923:0|t[Dádiva dos Naarus] |cRXP_WARN_neles, depois aceite a missão|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Mate os |cRXP_ENEMY_Infected Espreitanoite Nanico|r. Saque-os para obter um |T134072:0|t[|cRXP_LOOT_Cristal Fracamente Faiscante|r]
    .use 23678 >>|cRXP_WARN_Use o|r |T134072:0|t[|cRXP_LOOT_Cristal Fracamente Faiscante|r] |cRXP_WARN_para iniciar a missão|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>Aceite Descobertas Intrigantes
    .mob Infected Nightstalker Runt
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Morra perto do açude próximo ao lado da montanha|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >>A Viagem para o Entreposto Lazúli
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compre e equipe um|r |T135145:0|t[Bengala]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +Equipe o |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Treine |T134708:0|t[Mineração]
    .target Dulvi
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Anacoreta Fateema|r
    .accept 9463 >>Aceite Propriedades Medicinais
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Exarca Menelaus|r
	.turnin 9612 >>Entregue Agradeço de Coração!
    .turnin 9455 >>Entregue Descobertas Intrigantes
    .accept 9456 >>Aceite Extermínio de Espreitanoites, Ilha 2...
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Exarca Menelaus|r
    .turnin 9455 >>Entregue Descobertas Intrigantes
    .accept 9456 >>Aceite Extermínio de Espreitanoites, Ilha 2...
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tuluun|r
    .train 331 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Tuluun
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Técnico Dyvuun|r
    .turnin 9313 >>Entregue A Viagem para o Entreposto Lazúli
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Hospedeira Chellan|r
    .turnin 9314 >>Entregue Notícias do Entreposto Lazúli
    .accept 9603 >>Aceite Roupa de Cama, Mesa e Etc
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Hospedeira Chellan|r
    .home >>Defina sua Pedra de Retorno no Entreposto Lazúli
    .target Caregiver Chellan
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Zaldaan|r
    .turnin 9603 >>Entregue Roupa de Cama, Mesa e Etc
    .target Zaldaan
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tullas|r
    .train 635 >>Aprenda |T135920:0|t[Luz Sagrada]
    .target Tullas
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Guvan|r
    .accept 9586 >>Aceite Ajuda Tavera
    .train 588 >>Aprenda |T135926:0|t[Fogo Interior]
    .target Guvan
    .xp <7,1
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Guvan|r
    .accept 9586 >>Aceite Ajuda Tavera
    .target Guvan
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Ruada|r
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Ruada
    .xp <7,1
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Acteon|r
    .train 2973 >>Aprenda |T132223:0|t[Golpe do Raptor]
    .target Acteon
step
	#completewith level8
    >>|cRXP_WARN_Fique atento para um|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_Enquanto estão em combate, lance|r |T135923:0|t[Dádiva dos Naarus] |cRXP_WARN_neles, depois aceite a missão|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Mate os |cRXP_ENEMY_Root Trappers|r. Saqueie-os para obter suas |cRXP_LOOT_Vines|r
    >>Mate os |cRXP_ENEMY_Moongraze Stags|r. Saqueie-os para obter seus |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    >>|cRXP_WARN_Lance|r |T135907:0|t[Cura Célere] |cRXP_WARN_em|r |cRXP_FRIENDLY_Tavera|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante Odisseu|r
    .accept 9506 >>Aceite Um Pequeno Começo
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com "Cuca" MacMolhofraco|r
    .accept 9512 >>Aceite Risoto do "Cuca"
    .target "Cookie" McWeaksauce
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Ferreira Calipso|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t [Ferraria]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Saqueie o |cRXP_LOOT_Nautical Mapa|r na pequena gaiola
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Saqueie o |cRXP_LOOT_Nautical Compass|r na pequena caixa
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Mate os |cRXP_ENEMY_Skittering Crawlers|r. Saqueie-os para obter suas |cRXP_LOOT_Crawler Carne|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com "Cuca" MacMolhofraco|r
    .turnin 9512 >>Entregue Risoto do "Cuca"
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante Odisseu|r e com a |cRXP_FRIENDLY_Sacerdotisa Cailin Il'dinero|r
    .turnin 9506 >>Entregue Um Pequeno Começo
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >>Aceite Planta Infalível
    .accept 9513 >>Aceite A Reconquista das Ruínas
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Adamantino Ferrocordis|r
    .accept 9523 >>Aceite Relíquia é Coisa para Se Guardar Debaixo de Sete Chaves
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Saque a |cRXP_LOOT_Hollowed Saída Árvore|r no chão
    >>Saque os |cRXP_LOOT_Piles of Leaves|r no chão
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Mate os |cRXP_ENEMY_Root Trappers|r. Saqueie-os para obter suas |cRXP_LOOT_Vines|r
    >>Mate os |cRXP_ENEMY_Moongraze Stags|r. Saqueie-os para obter seus |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante Odisseu|r
    .turnin 9530 >>Entregue Planta Infalível
    .accept 9531 >>Aceite Debaixo do Pé de Árvore
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >>Farme até estar a 950 de XP do nível 8 (3550/4500)
    >>|cRXP_WARN_Procure terminar perto de Azure Vigiar|r
step
	#completewith next
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Pule este passo se você já está perto de Azure Vigiar|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Acteon|r
	.accept 9454 >>Aceite A Grande Caçada de Pastolunas
    .turnin 9454 >>Entregue A Grande Caçada de Pastolunas
    .accept 10324 >>Aceite A Grande Caçada de Pastolunas
    .target Acteon
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Acteon|r
    .train 5116 >>Treine |T135860:0|t[Tiro de Concussão]
    .train 82243 >>Aprenda |T132269:0|t[Aparar]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Anacoreta Fateema|r e |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >>Entregue Propriedades Medicinais
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >>Aceite Uma Alternativa à Alternativa
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step << Shaman cata
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tuluun|r
    .train 331 >>Aprenda |T136052:0|t[Onda Curativa]
    .train 324 >>Treine |T136051:0|t[Escudo de Raios]
    .target Tuluun
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tuluun|r
    .train 324 >>Treine |T136051:0|t[Escudo de Raios]
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tullas|r
    .train 635 >>Aprenda |T135920:0|t[Luz Sagrada]
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Guvan|r
    .turnin 9586 >>Entregue Ajuda Tavera
    .trainer >>Treine suas magias de classe
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Semid|r
    .trainer >>Treine suas magias de classe
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Ruada|r
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Ruada
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >>Aceite O Pescador Desparecido
    .target Dulvi
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Criptógrafo Aurren|r
    .accept 9538 >>Aceite O Aprendizado de uma Língua
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Use a|r |T133741:0|t[Cartilha da Língua dos Pelursos Pinhoquieto]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Totem de Akira|r
    .turnin 9538 >>Entregue O Aprendizado de uma Língua
    .accept 9539 >>Aceite O Totem de Coor
    .target Totem of Akida
step
	#completewith AncientRelics
    >>|cRXP_WARN_Fique atento para um|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_Enquanto estão em combate, lance|r |T135923:0|t[Dádiva dos Naarus] |cRXP_WARN_neles, depois aceite a missão|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Mate os |cRXP_ENEMY_Infected Espreitanoite Nanico|r
	>>Mate os |cRXP_ENEMY_Moongraze Bucks|r. Saque-os pelas |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O totem de Coor|r
    .turnin 9539 >>Entregue O Totem de Coor
    .accept 9540 >>Aceite O Totem de Tikti
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >>|cRXP_WARN_Cuidadosamente desça pelo lado da montanha aqui|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Saque o |cRXP_LOOT_Azure Snapdragons|r no chão
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O totem de Tikti|r
    .turnin 9540 >>Entregue O Totem de Tikti
    .accept 9541 >>Aceite O Totem de Yor
    .timer 30,O Totem de Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >>|cRXP_WARN_Siga|r |cRXP_FRIENDLY_Ancestral Pinhoquieto Tikti|r|cRXP_WARN_. Ele concederá|r |T132107:0|t[Abraço da Serpente] |cRXP_WARN_que concede aumento de 150% na velocidade de natação e respiração aquática|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Use o|r |T134325:0|t[Draenei Pesca Rede] |cRXP_WARN_em|r |cRXP_PICK_Schools of Pargo-vermelho|r
    >>|cRXP_WARN_Se um |cRXP_ENEMY_Murloc|r nascer fora da piscina, nade para longe rapidamente! Conjurar qualquer magia hostil fará você perder|r |T132107:0|t[Abraço da Serpente] |cRXP_WARN_Bônus|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >>Entregue Hum... Delicinha de Pargo-Vermelho
    .accept 9453 >>Aceite Encontrar Acteon
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O totem de Yor|r embaixo d'água
    .turnin 9541 >>Entregue O Totem de Yor
    .accept 9542 >>Aceite O Totem de Vark
    .timer 71,O Totem de Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >>|cRXP_WARN_Siga|r |cRXP_FRIENDLY_Ancestral Pinhoquieto Yor|r|cRXP_WARN_. Ele concederá|r |T132142:0|t[Sombra da Floresta] |cRXP_WARN_que concede aumento de velocidade de movimento e invisibilidade|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >>|cRXP_WARN_Vá para o oeste de Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O totem de Vark|r
    .turnin 9542 >>Entregue O Totem de Vark
    .accept 9544 >>Aceite A Profecia de Akira
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Clique para remover|r |T132142:0|t[Sombra da Floresta] |cRXP_WARN_Bônus|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Abate os |cRXP_ENEMY_Bristlelimb Furbolgs|r, os |cRXP_ENEMY_Bristlelimb Windcallers|r e os |cRXP_ENEMY_Bristlelimb Ursas|r. Saque-os para as |cRXP_LOOT_Bristlelimb Keys|r
    >>Abra as |cRXP_PICK_Bristlelimb Cages|r para liberar os |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Mate os |cRXP_ENEMY_Infected Espreitanoite Nanico|r
	>>Mate os |cRXP_ENEMY_Moongraze Bucks|r. Saque-os pelas |cRXP_LOOT_Hides|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Saque as |cRXP_LOOT_Relíquias ancestrais|r no chão
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Abate os |cRXP_ENEMY_Wrathscale Nagas|r, os |cRXP_ENEMY_Wrathscale Myrmidons|r e os |cRXP_ENEMY_Wrathscale Sirens|r. Saque-os para as |T134462:0|t[|cRXP_LOOT_A tabuleta coberta de runas|r]
    .use 23759 >>|cRXP_WARN_Use a|r |T134462:0|t[|cRXP_LOOT_A tabuleta coberta de runas|r] |cRXP_WARN_para iniciar a missão|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>>A tabuleta coberta de runas
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Saque as |cRXP_LOOT_Relíquias ancestrais|r no chão
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >>Nade para Traitor's Cove
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >>|cRXP_WARN_Use o|r |T132288:0|t[Kit de Disfarce de Árvore] |cRXP_WARN_na bandeira naga|r
    .timer 73,Debaixo do Pé de Árvore RP
    .use 23792
step
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_Clique para remover|r |T132288:0|t[Disfarce de Árvore] |cRXP_WARN_Bônus|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capúleo|r
    .turnin 10428 >>Entregue O Pescador Desaparecido
    .accept 9527 >>Aceite O que Restou
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Abate os |cRXP_ENEMY_Owlbeasts|r. Saque-os para os |cRXP_LOOT_Restos Mortais da Família de Capúleo|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capúleo|r
    .turnin 9527 >>Entregue O que Restou
    .target Cowlen
step
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Adamantino Ferrocordis|r
    .turnin 9523 >>Entregue Relíquia É Coisa para se Guardar Debaixo de Sete Chaves
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante Odisseu|r
    .turnin 9531 >>Entregue Debaixo do Pé de Árvore
    .accept 9537 >>Aceite Gnomicídio
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Cailin Il'dinero|r
    .turnin 9513 >>Entregue A Reconquista das Ruínas
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Cailin Il'dinero|r
    .turnin 9514 >>Entregue A Tabuleta Coberta de Runas
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Fale com |cRXP_FRIENDLY_Engineer "Chispa" Trincabrás|r patrulhando a praia
    >>Mate o |cRXP_ENEMY_Engineer "Chispa" Trincabrás|r após a encenação curta. Saqueie o |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication Encenação
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante Odisseu|r
    .turnin 9537 >>Entregue Gnomicídio
    .accept 9602 >>Aceite Livrai-os de Todo Mal...
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >>Triture até 2430+/6500xp
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Vigia do Azul
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aruguu dos Pinhoquieto|r
    .turnin 9544 >>Entregue A Profecia de Akida
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Acteon|r
    .turnin 9453 >>Entregue Encontrar Acteon!
    .turnin 10324 >>Entregue A Grande Caçada de Pastolunas
    .target Acteon
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >>Entregue Uma Alternativa à Alternativa
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Exarca Menelaus|r
    .turnin 9456 >>Entregue Extermínio de Espreitanoites, Ilha 2...
    .turnin 9602 >>Entregue Livrai-os de Todo Mal...
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Exarca Menelaus|r
    .turnin 9612 >>Entregue Agradeço de Coração!
    .target Exarch Menelaous
step << Shaman cata
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tuluun|r
    .trainer >>Treine suas magias de classe
    .target Tuluun
step << Paladin cata
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Tullas|r
    .trainer >>Treine suas magias de classe
    .target Tullas
step << Priest cata
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Guvan|r
    .trainer >>Treine suas magias de classe
    .target Guvan
step << Mage cata
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Semid|r
    .trainer >>Treine suas magias de classe
    .target Semid
step << Warrior cata
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Ruada|r
    .trainer >>Treine suas magias de classe
    .target Ruada
step << Hunter cata
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Acteon|r
    .trainer >>Treine suas magias de classe
    .target Acteon
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Zaldaan|r
    .accept 9604 >>Aceite Nas Asas do Hipogrifo
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Zaldaan|r
    .fly The Exodar >>Voe para Exodar
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Entregue Nas Asas do Hipogrifo
    .accept 9605 >>Aceite O Mestre de Hipogrifos Stephanos
    .target Nurguni
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compre uma|r |T132402:0|t[Machadinha] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T132402:0|t[Machadinha] |cRXP_WARN_em sua mão principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>Entregue O Mestre de Hipogrifos Stephanos
    .target Stephanos
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Lor'danel >>Voe para Lor'danel
    .target Stephanos
]])
