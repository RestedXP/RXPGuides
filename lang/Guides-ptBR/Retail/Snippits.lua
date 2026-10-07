if GetLocale() ~= "ptBR" then return end
-- #############################################
-- #                  MIDNIGHT                 #
-- #############################################

--GC: Stormwind Quests
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Leveling de Velocidade
#name a) Missões de Ventobravo
#internal

step
    .goto 84,63.79,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renato Callina|r
    .accept 332 >>Aceite A Propaganda É a Alma do Negócio
    .target Renato Callina
step
    .goto 84,62.32,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Timóteo Fialho|r
    .accept 333 >>Aceite A Lista de Material do Fialho
    .target Timóteo Fialho
step
    .goto 84,58.10,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabel Armarinho|r
    .turnin 333 >>Entregue A Lista de Material do Fialho
    .target Isabel Armarinho
    .accept 334 >>Aceite Entrega para Antônio Armarinho
step
    .goto 84,60.26,76.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzette Callina|r
    .turnin 332 >>Entregue A Propaganda É a Alma do Negócio
    .target Suzette Callina
step
    .goto 84,52.58,83.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Antônio Armarinho|r
    .turnin 334 >>Entregue Entrega Para Antônio Armarinho
    .target Antônio Armarinho

]])
--Housing Alliance
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Leveling de Velocidade
#name a) Tutorial de Moradia da Aliança
#internal

step
    >>Pressione a macro 'No Quadro de Itens Ativos' para iniciar o tutorial de moradia
    .accept 91863 >>Aceite Meu Primeiro Lar
    .macro House Teleport, 975747 >>Casa de Teleporte
step
    .goto 2352,53.13,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyssabel Petalaurora <Comissária>|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135761
    .skipgossipid 135770
    .target Lyssabel Dawnpetal
step
    >>Compre uma Casa disponível
    .complete 91863,4 --1/1 Acquire a house

--teleport unlock


step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyssabel Petalaurora <Comissária>|r |cRXP_WARN_ao seu lado|r.
    .turnin 91863 >>Entregue Meu Primeiro Lar
    .accept 94455 >>Aceite Finalmente em Casa...
    .target Lyssabel Dawnpetal
step
    >>Entre em sua Casa
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Entregue Finalmente em Casa...
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Siga a Seta|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Siga a Seta|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Siga a Seta|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ren "Maré Alta" <Comerciante de Decoração>|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ren "Maré Alta" <Comerciante de Decoração>|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Usar |T742183:0|t[Travesseiro de Sacerdote de Sethraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tocho Palionúveo|r.
    .turnin 94210 >>Entregue Forrando o Ninho
    .target Tocho Cloudhide
    .accept 94379 >>Aceite Esta Velha Lareira
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rotha <Prestadora de Serviços Gerais>|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Housing Horde
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Leveling de Velocidade
#name a) Tutorial de Moradia da Horda
#internal

<< Horde

step
    >>Pressione a macro 'No Quadro de Itens Ativos' para iniciar o tutorial de moradia
    .accept 91863 >>Aceite Meu Primeiro Lar
    .macro House Teleport, 975747 >>Casa de Teleporte
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tocho Palionúveo|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135727
    .skipgossipid 135740
step
    >>Compre uma Casa disponível
    .complete 91863,4 --1/1 Acquire a house
step
    .goto 2351,56.84,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tocho Palionúveo|r |cRXP_WARN_ao seu lado|r.
    .turnin 91863 >>Entregue Meu Primeiro Lar
    .accept 94455 >>Aceite Finalmente em Casa...
    .target Tocho Cloudhide

--teleport unlock


step
    >>Entre em sua Casa
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Entregue Finalmente em Casa...
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Siga a Seta|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Siga a Seta|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Siga a Seta|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ren "Maré Alta" <Comerciante de Decoração>|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ren "Maré Alta" <Comerciante de Decoração>|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Usar |T742183:0|t[Travesseiro de Sacerdote de Sethraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tocho Palionúveo|r.
    .turnin 94210 >>Entregue Forrando o Ninho
    .target Tocho Cloudhide
    .accept 94379 >>Aceite Esta Velha Lareira
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rotha <Prestadora de Serviços Gerais>|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Darkmoon Faire
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Leveling de Velocidade
#name a) DMF
#internal

step << Alliance
    #completewith next
    #label ProfessionsDmf1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Aprenda |T4620669:0|t[Alquimia]
    .dmf
step << Alliance
    #completewith ProfessionsDmf1
    .goto 37,41.95,67.16
    >>Usar a macro no Painel de Itens Ativos para desaprender |T4620679:0|t[Mineração]
    .macro Unlearn Mining,4620679 >>Desaprender Mineração
    .train 2575,3
    .subzoneskip 37,1
    .isOnQuest 7905
step << Alliance
    #requires ProfessionsDmf1
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Aprenda |T4620669:0|t[Alquimia]
    .target Lien Farner
    .skipgossipid 38859
    .skipgossipid 38886
    .skipgossipid 39726
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    #completewith next
    #label ProfessionsDmf2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>Aprenda |T4620676:0|t[Escrivania]
    .dmf
step << Alliance
    #completewith ProfessionsDmf2
    .goto 37,41.95,67.16
    >>Usar a macro no Painel de Itens Ativos para desaprender |T4620675:0|t[Herborismo].
    .macro Unlearn Herbalism,4620675 >>Desaprender Herborismo
    .subzoneskip 37,1
    .isOnQuest 7905
    .train 2366,3
step << Alliance
    #requires ProfessionsDmf2
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>Aprenda |T4620676:0|t[Escrivania]
    .skipgossipid 38859
    .skipgossipid 38890
    .skipgossipid 39321
    .target Lien Farner
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tirso Boal|r.
    .collect 2604,1 --Red Dye (1)
    .buy 2604,1
    .collect 6260,1 --Blue Dye (1)
    .buy 6260,1
    .collect 2320,1 --Coarse Thread (1)
    .buy 2320,1
    .collect 30817,5 --Simple Flour (5)
    .buy 30817,5
    .collect 39354,5 --Light Parchment (1)
    .buy 39354,5
    .target Tirso Boal
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.78,69.55
    .zone 407 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
-- step << Human
--     .goto 407,51.62,24.66
--     .aura 134931 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Darkmoon Strider|r for a mount.
--     add chauffeur command
--    .target Darkmoon Strider
--    .subzoneskip 37,1
--    .isOnQuest 7905
--     .dmf
step
    .goto 407,52.78,28.82,20,0
    .goto 407,52.99,38.99,20,0
    .goto 407,53.37,45.81,20,0
    .goto 407,55.66,52.34,20,0
    .goto 407,50.44,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kae Ti|r.
    .collect 81055,1 --
    .buy 92794
    .target Kae Ti
    .isOnQuest 7905
    .zoneskip 407,1
    .dmf
-- step
--     .goto 407,49.44,57.4,7
--     .aura >>Stand on the platform and wait 15 seconds to get the full duration of |T237554:0|t[WHEE!](10% XP for 60 min).
--     .timer 13,Time until full duration
--     .openitem 92794
--     .zoneskip 407,1
--     .dmf
-- step
-- --accept makro
--     >>Press the macro "In the Active Items Frame"
--     .accept 29464 >>Accept Tools of Divination
--     .macro >>/use Soothsayer's Runes
--     .itemcount 71716,1
--     .zoneskip 407,1
--     .isQuestAvailable 29464
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29451 >>Accept The Master Strategist
--     .macro >>/use A Treatise on Strategy
--     .isQuestAvailable 29451
--     .itemcount 71715,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29456 >>Accept A Captured Banner
--     .macro >>/use Banner of the Fallen
--     .itemcount 71951,1
--     .zoneskip 407,1
--     .isQuestAvailable 29456
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29457 >>Accept The Enemy's Insignia
--     .macro >>/use Captured Insignia
--     .isQuestAvailable 29457
--     .itemcount 71952,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29458 >>Accept The Captured Journal
--     .macro >>/use Fallen Adventurer's Journal
--     .isQuestAvailable 29458
--     .itemcount 71953,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29443 >>Accept A Curious Crystal
--     .macro >>/use Imbued Crystal
--     .isQuestAvailable 29443
--     .itemcount 71635,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29444 >>Accept An Exotic Egg
--     .macro >>/use Monstrous Egg
--     .isQuestAvailable 29444
--     .itemcount 71636,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29445 >>Accept An Intriguing Grimoire
--     .macro >>/use Mysterious Grimoire
--     .isQuestAvailable 29445
--     .itemcount 71637,1
--     .zoneskip 407,1
--     .dmf
-- step
--     >>Press the macro "In the Active Items Frame"
--     .accept 29446 >>Accept A Wondrous Weapon
--     .macro >>/use Ornate Weapon
--     .isQuestAvailable 29446
--     .itemcount 71638,1
--     .zoneskip 407,1
--     .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29451 >>Entregue O Mestre Estrategista
    .isOnQuest 29451
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29456 >>Entregue Um Estandarte Capturado
    .isOnQuest 29456
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29457 >>Entregue A Insígnia do Inimigo
    .isOnQuest 29457
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29458 >>Entregue O Diário Capturado
    .isOnQuest 29458
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29443 >>Entregue Um Cristal Peculiar
    .isOnQuest 29443
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29444 >>Entregue Um Ovo Exótico
    .isOnQuest 29444
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29445 >>Entregue Um Grimório Intrigante
    .isOnQuest 29445
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29446 >>Entregue Uma Arma Magnífica
    .isOnQuest 29446
    .zoneskip 407,1
    .dmf
-- step
--     #completewith next
--     #label DarkmoonTopHat1
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r |cRXP_WARN_[2]|r
--     .turnin 7905 >>Turn in The Darkmoon Faire
--     .target Gelvas Grimegate
--     .zoneskip 407,1
--     .dmf
-- step
--     #completewith DarkmoonTopHat1
--     .isQuestTurnedIn 29446,29445,29444,29443,29458,29457,29456,29451
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelvas Grimegate|r |cRXP_WARN_[1]|r
--     .collect 171364,1 --Darkmoon Top Hat (1)
--     .buy 171364
-- --currencency command
step
    -- #requires DarkmoonTopHat1
    .goto 407,47.76,64.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelvas Portassuja|r
    .turnin 7905 >>Vá para a Feira de Negraluna
    .target Gelvas Portassuja
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pisão Chifre Troante|r.
    .accept 29509 >>Aceite Rã Crocante
    .target Pisão Chifre Troante
    .train 2550,3
    .itemcount 30817,5
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Usar |T133642:0|t[Plump Frogs].
    .collect 72056,5,29509,1,-1 --Plump Frogs (5)
    .collect 30817,5,29509,1,-1 --Simple Flour (5)
    .collect 72057,5,29509,1 --Breaded Frog (5)
    .train 2550,3
    .use 72056 --Plump Frog
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Usar |T237579:0|t[Breaded Frogs].
    .collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
    .use 72057 --Breaded Frog
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pisão Chifre Troante|r.
    .turnin 29509 >>Entregue Rã Crocante
    .target Pisão Chifre Troante
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sylannia|r.
    .accept 29506 >>Aceite Uma Fusão Espumante
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
    .buy 29506,5
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .train 2259,3
step
    .goto 407,50.54,69.56
    >>Usar |T132793:0|t[Cocktail Shaker].
    .collect 1645,5,29506,1,-1 --Moonberry Juice (5)
    .collect 19299,5,29506,1,-1 --Fizzy Faire Drinks (5)
    .complete 29506,1 --5/5 Moonberry Fizz
    .use 72043 --Cocktail Shaker
    .itemcount 1645,5
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,50.53,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sylannia|r.
    .turnin 29506 >>Entregue Uma Fusão Espumante
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malaby|r [|cRXP_WARN_1|r].
    .turnin 29445 >>Entregue Um Grimório Intrigante
    .target Malaby
    .zoneskip 407,1
    .isOnQuest 29445
    .dmf
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malaby|r [|cRXP_WARN_2|r].
    .accept 29515 >>Aceite Escrevendo o Futuro
    .target Malaby
    .zoneskip 407,1
    .dmf
    .train 45357,3
step
    .goto 407,53.23,75.82
    .aura 23768 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malaby|r [|cRXP_WARN_3|r].
    .skipgossipid 31569
    .skipgossipid 31565
    .skipgossipid 30027
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
    >>Usar |T413571:0|t[Bundle of Exotic Herbs].
    .collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>Usar |T237061:0|t[Prophetic Tinta].
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malaby|r.
    .turnin 29515 >>Entregue Escrevendo o Futuro
    .target Malaby
    .zoneskip 407,1
    .dmf
step
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yebb Engrenoso|r.
    .turnin 29444 >>Entregue Um Ovo Exótico
    .target Yebb Engrenoso
    .zoneskip 407,1
    .dmf
    .isOnQuest 29444
step << Alliance
    .isOnQuest 65436
    >>Usar |T134309:0|t[Escama de Arrastarão Perdida] para teleportar-se para Ventobravo.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .dmf
step << Horde
    .isOnQuest 65435
    >>Usar |T134309:0|t[Escama de Dragão Perdida] para se teletransportar para Orgrimmar.
    .complete 65435,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
-- step << Alliance KulTiran
--     .zoneskip 1161
--     .hs >>Use |T134414:0|t[Hearthstone] to Boralus.
-- step << Alliance !KulTiran
--     .isOnQuest 40519
--     .subzone 10523 >>Use |T135975:0|t[Stormwind Portal Stone]
--     .use 132120
--     .dmf
-- step << Alliance !KulTiran
--     .isNotOnQuest 40519
--     .zone 2352 >>Teleport to a Neighbourhood with the House finder, not |T7252953:0|t[Teleport to Plot] then take the |cRXP_PICK_Stormwind Portal|r.
--     .link https://www.youtube.com/watch?v=uVkUB7z0njo >>CLICK HERE FOR VIDEO
--     .macro House Teleport, 975747 >>/run C_Housing.StartTutorial()
--     .dmf
-- step << Alliance !KulTiran
--     .isNotOnQuest 40519
--     .goto 2352,57.44,26.63
--     .zone 84 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Stormwind|r
--     .dmf
-- step << Alliance !Kultiran
--     .isNotOnQuest 40519
--     .goto 84,46.05,92.1,8,0
--     .goto 84,44.95,92.12,8,0
--     .goto 84,42.96,93.78,10,0
--     .goto 84,40.89,92.74
--     .zone 2239 >>Go to Stormwind's Mage Tower and take the portal to Boralus
--     .dmf
-- step
--     .goto 407,50.56,90.80
--     .zone 37 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r  << Alliance
--     .zoneskip 407,1
--     .dmf
]])
--GC Alliance: Chromie Time Tower
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Leveling de Velocidade
#name a) GC Tempo de Crona Torre
#internal


step << Alliance
    #completewith next
    #label The Legion Returns
    .goto 84,49.19,87.25,8,0
    .goto 84,49,86.94,8,0
    .goto 84,48.66,87.49,8,0
    .goto 84,49.11,87.64,8,0
    .goto 84,49.42,86.83,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Tabuleiro do Chamado dos Heróis|r
    .accept 40519 >>Aceite Legion: a volta da Legião
    .choose 1851120
step << Alliance
    #completewith The Legion Returns
    .goto 84,56.257,17.311,812 >>Saia da Torre do Mago
step << Alliance
    #requires The Legion Returns
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Tabuleiro do Chamado dos Heróis|r
    .accept 40519 >>Aceite Legion: a volta da Legião
    .choose 1851120
step << Alliance
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Tabuleiro do Chamado dos Heróis|r
    .accept 62567 >>Aceite Procuram-se Aventureiros: O Chamado de Crona
    .choose 1668214
step << Alliance
    .goto 84,56.26,17.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r.
    .turnin 62567 >>Entregue Procuram-se Aventureiros: O Chamado de Crona
    .target Crona
step << Alliance
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Entre em Tempo de Crona
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Crona
step << Alliance
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrathion|r.
    .accept 65436 >>Aceite As Ilhas Dracônicas Aguardam
    .target Wrathion
-- step
--     .goto 84,62.10,32.19
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
--     .accept 7905 >>Accept The Darkmoon Faire
--     .target Darkmoon Faire Mystic Mage
--     .dmf
-- step
--     .goto 84,62.1,32.2
--     .zone 37 >>Talk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r and accept the prompt.
--     .skipgossipid 40457
--     .target Darkmoon Faire Mystic Mage
--     .zoneskip 84,1
--     .dmf
-- step
--     #include RestedXP Speed Leveling\a) DMF
step  << Alliance
    .subzoneskip 6292
    .isOnQuest 65436
    >>Usar |T134309:0|t[Escama de Arrastarão Perdida] para teleportar-se para Ventobravo.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
]])
--GC Alliance: Chromie Time Normal
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Leveling de Velocidade
#name a) GC Tempo de Crona Normal
#internal

step
    #label ChromieTime
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Entre em Tempo de Crona
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Crona
-- step
--     .goto 84,56.257,17.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r |cRXP_WARN_[2]|r.
--     .accept 40519 >>Accept Legion: The Legion Returns
--     .chromietime 10
--     .skipgossipid 51901
--     .skipgossipid 51902
--     .target Chromie
step
    #label CallBoardStart
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Tabuleiro do Chamado dos Heróis|r
    .accept 40519 >>Aceite Legion: a volta da Legião
    .choose 1851120
step
    #label CallBoardStart3
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrathion|r.
    .accept 65436 >>Aceite As Ilhas Dracônicas Aguardam
    .target Wrathion
-- step
--      #label CallBoardStart2
--     .goto 84,62.10,32.19
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r
--     .accept 7905 >>Accept The Darkmoon Faire
--     .target Darkmoon Faire Mystic Mage
--     .dmf
-- step
--     .goto 84,62.1,32.2
--     .zone 37 >>Talk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage|r and accept the prompt.
--     .skipgossipid 40457
--     .target Darkmoon Faire Mystic Mage
--     .zoneskip 84,1
--     .dmf
-- step
--     #include RestedXP Speed Leveling\a) DMF
step
    #label CallBoardEnd
    .subzoneskip 6292
    .isOnQuest 65436
    >>Usar |T134309:0|t[Escama de Arrastarão Perdida] para teleportar-se para Ventobravo.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf

]])

-- #########################################
-- #                  TWW                  #
-- #########################################

--DawnBreakerTeleport
RXPGuides.RegisterGuide([[
#retail
#version 3
#group Guerra Within Fim de jogo
#name a) Teletransporte DawnBreaker
#internal

step
    .zoneskip 2215
    .zone 2359 >>Abra o Localizador de Masmorras, navegue para Masmorras de Seguidores, e entre na fila para |cRXP_WARN_'Alvorada'|r.
step
    .zoneskip 2215
    .gossipoption 124142 >>Fale com o |cRXP_FRIENDLY_General Golpeaço|r dentro de Quebraurora. |cRXP_WARN_Ela deve estar visível desde a entrada. Usar o quadro de Alvos Ativos para marcá-la.|r
    .target General Steelstrik
]])
--Phase Diving
RXPGuides.RegisterGuide([[
#retail
#version 1
#group Guerra Within Loremaster
#name a) Mergulho Fásico: Desbloquear Grátis
#internal


step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hashim|r
    .turnin 90938 >>Entregue Saltitando pelo Caos
    .target Hashim
    .isOnQuest 90938
step
    .isQuestTurnedIn account,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>Equipe |T7110834:0|t[Faixas de Reshii]
    .use 235499
step
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hashim|r
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>Equipe |T7110834:0|t[Faixas de Reshii]
    .use 235499
    .subzoneskip 15807,1
step
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Aceite Outro Mundo
    .target Shad'anis
step
    .isOnQuest 89380
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89380 >>Entregue Outro Mundo
    .accept 89343 >>Aceite Caos Desprendido
    .target Shad'anis
step
    .goto 2371,50.41,36.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Conduto Fásico|r
    .complete 89343,2 --1/1 Untethered Space entered
step
    .goto 2371,50.41,36.40
    >>Usar o |T4913234:0|t[|cRXP_WARN_ExtraActionButton|r]
    *|cRXP_WARN_Reconecte se você não conseguir entregar a missão depois de usar o |cRXP_WARN_ExtraActionButton|r|r
    .complete 89343,3 --1/1 Return to Normal Space
step
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89343 >>Entregue O Vazio Desatrelado
    .accept 89344 >>Aceite O que Não Enxerga
    .target Shad'anis
step
    #completewith next
    #label WhatDoesntSeeYouA
    #hidewindow
    .complete 89344,1 --4/4 Untethered Observers slain
    .complete 89344,2 --1/1 Phase Energy collected
step
    #completewith WhatDoesntSeeYouA
    .goto 2371,50.41,36.40
    .aura 1214374,1 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Conduto Fásico|r
step
    #requires WhatDoesntSeeYouA
    #completewith next
    >>Mate os |cRXP_ENEMY_Untethered Observers|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Observador Desprendido
step
    #requires WhatDoesntSeeYouA
    .goto 2371,49.10,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Energia Fásica|r
    .complete 89344,2 --1/1 Phase Energy collected
step
    #loop
    .goto 2371,48.33,37.15,30,0
    .goto 2371,49.39,36.27,35,0
    .goto 2371,49.20,39.49,35,0
    .goto 2371,48.06,38.61,35,0
    >>Mate os |cRXP_ENEMY_Untethered Observers|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Observador Desprendido
step
    #completewith next
    #label WhatDoesntSeeYouB
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Entregue O Que Não Te Vê
    .accept 89345 >>Aceite O Terror Desprendido
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Remova o efeito de |T135752:0|t[Mergulho Fásico] (com o botão direito)
    .macro Remove Aura,135752 >>Remova a aura
step
    #requires WhatDoesntSeeYouB
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Entregue O Que Não Te Vê
    .accept 89345 >>Aceite O Terror Desprendido
    .target Shad'anis
step
    #completewith next
    #label Netherdeath
    >>Mate |cRXP_ENEMY_Morte Etérea|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Morte Etérea
step
    #completewith Netherdeath
    .goto 2371,50.41,36.41
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Conduto Fásico|r.
step
    #requires Netherdeath
    .goto 2371,48.44,39.56,30,0
    .goto 2371,47.90,40.57
    >>Mate |cRXP_ENEMY_Morte Etérea|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Morte Etérea
step
    #completewith next
    #label TheUntetheredHorrorA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Entregue O Terror Desatrelado
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Remova o efeito de |T135752:0|t[Mergulho Fásico] (com o botão direito)
    .macro Remove Aura,135752 >>Remova a aura
step
    #completewith TheUntetheredHorrorA
    #hidewindow
    .goto 2371,50.36,36.31,20 >>Siga a Seta
step
    #requires TheUntetheredHorrorA
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Entregue O Terror Desatrelado
    .target Shad'anis
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Aceite Na Faixa
    .target Hashim
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hashim|r e selecione os aprimoramentos.
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hashim|r
    .turnin 89561 >>Entregue Enrolado
    .target Hashim


]])

-- ##################################################
-- #                  LEGION REMIX                  #
-- ##################################################

--Skyriding Tutorial Pandaria & Legion
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Pilotagem Aérea Panda
#internal

step
    #completewith Skyriding Panda
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .goto 627,72.05,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Aceite Pilotagem Aérea
    .timer 5,Aguarde o RP
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r e escolha uma das montarias.
    *|cRXP_WARN_Você ainda pode obter as outras montarias em outro momento|r.
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Lorde Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Clique com botão direito para aprender sua montaria.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your
    .use 194034
    .use 194521
    .use 194106
    .use 194549
    .use 194705
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lorde Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .turnin 90754 >>Entregue Pilotagem Aérea
    .accept 80013 >>Aceite Como Planar com Seu Dragão
    .target Lorde Andestrasz
step
    .goto 371,65.27,37.27
    >>Monte
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    .goto 371,66.51,37.16,10,0
    .goto 371,67.46,36.29
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80013,2,2 --2/5 Glide through the Rings
step
    .goto 371,67.46,36.29,10,0
    .goto 371,67.80,34.64
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80013,2,3 --3/5 Glide through the Rings
step
    .goto 371,67.80,34.64,10,0
    .goto 371,67.41,33.91
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80013,2,4 --4/5 Glide through the Rings
step
    .goto 371,67.41,33.91
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.73,33.58
    >>Pouse na colina
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celormu|r
    .turnin 80013 >>Entregue Como Planar com Seu Dragão
    .timer 3,Aguarde o RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .accept 80015 >>Aceite Como Mergulhar com Seu Arrastarão
    .target Lorde Andestrasz
step
    .goto 371,66.64,37.18,10,0
    .goto 371,67.90,37.18
    >>Siga os anéis. Usar |T4640490:0|t[Avante] para manter sua velocidade.
    .complete 80015,2,2 --2/7 Glide through the Rings
step
    .goto 371,67.90,37.18,10,0
    .goto 371,68.95,37.95
    >>Siga os anéis. Usar |T4640490:0|t[Avante] para manter sua velocidade.
    .complete 80015,2,3 --3/7 Glide through the Rings
step
    .goto 371,68.95,37.95,10,0
    .goto 371,69.83,39.60
    >>Siga os anéis. Usar |T4640490:0|t[Avante] para manter sua velocidade.
    .complete 80015,2,4 --4/7 Glide through the Rings
step
    .goto 371,69.83,39.60,10,0
    .goto 371,70.00,43.96
    >>Siga os anéis. Usar |T4640490:0|t[Avante] para manter sua velocidade.
    .complete 80015,2,5 --5/7 Glide through the Rings
step
    .goto 371,70.00,43.96,10,0
    .goto 371,68.31,46.92
    >>Siga os anéis. Usar |T4640490:0|t[Avante] para manter sua velocidade.
    .complete 80015,2,6 --6/7 Glide through the Rings
step
    .goto 371,68.31,46.92
    >>Siga os anéis. Usar |T4640490:0|t[Avante] para manter sua velocidade.
    .complete 80015,2 --7/7 Glide through the Rings
step
    .goto 371,66.29,49.31
    >>Siga a seta
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.25,49.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celormu|r
    .turnin 80015 >>Entregue Como Mergulhar com Seu Arrastarão
    .timer 3,Aguarde o RP
    .target Celormu
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .accept 80016 >>Aceite O Negócio É Acelerar
    .target Lorde Andestrasz
step
    .goto 371,66.29,37.21,10,0
    .goto 371,68.27,36.26
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80016,2,2 --2/6 Glide through the Rings
step
    .goto 371,68.27,36.26,10,0
    .goto 371,68.81,32.48
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80016,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.81,32.48,10,0
    .goto 371,67.41,27.37
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80016,2,4 --4/6 Glide through the Rings
step
    .goto 371,67.41,27.37,15,0
    .goto 371,66.02,25.50
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80016,2,5 --5/6 Glide through the Rings
step
    .goto 371,66.02,25.50
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,65.01,24.46
    >>Siga a seta.
    .complete 80016,3 --1/1 Land in the Target Area
step
    .goto 371,64.98,24.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celormu|r
    .turnin 80016 >>Entregue O Negócio é Acelerar
    .timer 3,Aguarde o RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .accept 80017 >>Aceite Quanto Mais Alto Melhor
    .target Lorde Andestrasz
step
    .goto 371,66.32,37.22,15,0
    .goto 371,67.93,35.70
    >>Deslize para baixo
    .complete 80017,2,2 --2/6 Glide through the Rings
step
    .goto 371,67.93,35.70,15,0
    .goto 371,68.77,33.45
    >>Siga os anéis. Usar |T4640498:0|t[Subir aos Céus] depois de alcançar o anel.
    .complete 80017,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.77,33.45,15,0
    .goto 371,68.51,29.83
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80017,2,4 --4/6 Glide through the Rings
step
    .goto 371,68.51,29.83,15,0
    .goto 371,65.39,29.58
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80017,2,5 --5/6 Glide through the Rings
step
    .goto 371,65.39,29.58
    >>Siga os anéis. Usar |T4640490:0|t[Avante] ou |T4640498:0|t[Subir aos Céus] para manter sua velocidade.
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.59,28.66
    >>Siga a seta
    .complete 80017,3 --1/1 Land in the Target Area
step
    .goto 371,62.47,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Celormu|r
    .turnin 80017 >>Entregue Quanto Mais Alto Melhor
    .timer 3,Aguarde o RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .accept 80018 >>Aceite Chique nas Alturas
    .target Lorde Andestrasz
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Rostrum of Transformação|r |cRXP_WARN_e saia imediatamente|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    #label Skyriding Panda
    .goto 371,65.07,36.97,10,0
    .goto 371,65.28,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Andestrasz|r
    .turnin 80018 >>Entregue Chique nas Alturas
    .accept 90755 >>Aceite O Tempo Voa
    .target Lorde Andestrasz
step
    #completewith next
    #label TimeFliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Entregue O Tempo Voa
    .target Moratari
step
    #completewith TimeFliesA
    .goto 371,65.13,37.09
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal para Dalaran|r
step
    #requires TimeFliesA
    #label Skyriding
    .goto 627,72.04,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Entregue O Tempo Voa
    .target Moratari
]])

-- ================= ARTIFACT WEAPONS ================

-- --------- Death Knight ---------

--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Sanguíneo
#displayname Arma Artefato: Sangue
#next a) Salão da Ordem Cavaleiro da Morte Parte 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Usar |T135766:0|t[Portão da Morte]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Usar o teleportador
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 44401 >>Aceite Uma Arma para Toda Ocasião
    .target Duque Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sanguíneo|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390097
    .target Duque Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 44401 >>Entregue Uma Arma para Toda Ocasião
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 43962 >>Aceite Lâminas do Destino
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sanguíneo|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390097
    .target Duque Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 43962 >>Entregue Lâminas do Destino
    .target Duque Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 40715 >>Aceite Um Pacto de Necessidade
    .target Rensar Grande Casco
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isso escolherá automaticamente o artefato Sanguíneo|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390097
    .target Rensar Grande Casco
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40715 >>Entregue Um Pacto de Necessidade
    .target Rensar Grande Casco
step
    #completewith Baron Sliver
    +|cRXP_WARN_Certifique-se de que você tem uma arma utilizável equipada. Se não, equipe uma até obter seu artefato, ou mude para uma especialização que já tenha seu artefato|r
step
    .isQuestAvailable 43962
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r.
    .accept 40740 >>Aceite Os Mortos e os Condenados
    .target Grão-lorde Dárion Mograine
step
    #optional
    .goto 647,57.76,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r.
    .accept 40740 >>Aceite Os Mortos e os Condenados
    .target Grão-lorde Dárion Mograine
step
    .goto 646,31.97,31.91
    >>|cRXP_WARN_Siga a seta e entre no portal.|r
    .complete 40740,2 --1/1 Enter into the Legion Portal
step
    .isOnQuest 40740
    .isQuestNotComplete 40740
    .goto 646,31.97,31.91
    .enterScenario 940 >>Entre no cenário |cRXP_PICK_The Fleshripper's Colher|r
step
    .isInScenario 940
    .goto 714,17.60,47.83
    >>Mate o |cRXP_ENEMY_Carcereiro Niskarano|r.
    .scenario 1884,1 --Search for Baron Sliver.
    .mob Niskaran Jailer
step
    .isInScenario 940
    .goto 714,22.14,50.77
    >>|cRXP_WARN_Seguir a seta|r.
    .scenario 2154,1 --Follow Baron Silver
step
    #label Baron Sliver
    .isInScenario 940
    .goto 714,23.74,50.28
    >>Mate o |cRXP_ENEMY_Niskaran Arauto da Ruína|r e a |cRXP_ENEMY_Guarda Vil Sentinela|r.
    .scenario 2135,1 --Protect Baron Sliver while he disables the Fel Barrier
    .mob Niskaran Doombringer
    .mob Sentinela Guarda Vil
step
    #title |cFFFCDC00Escort Barão Prateado|r
    .isInScenario 940
    .goto 714,37.70,47.45
    >>Mate as |cRXP_ENEMY_Felguard Sentries|r no caminho, senão o |cRXP_FRIENDLY_Baron Prateado|r ficará preso.
    .scenario 2136,1 --Search the Legion camp.
    .mob Sentinela Guarda Vil
step
    .goto 714,43.82,38.27
    .isInScenario 940
    >>Abate |cRXP_PICK_Inquisidor Zalinor|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Legion Keystone|r
    .scenario 2137,1 --Hunt down Inquisitior Zalinor and obtain his key.
    .mob Inquisitior Zalinor
step
    #completewith next
    #hidewindow
    .cast 202595 >>Siga a Seta
    .timer 55,Encenação
step
    .isInScenario 940
    .goto 714,37.12,48.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Minerva Melancorvo|r. << Horde
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Dagnar Stonebrew|r. << Alliance
    .scenario 2138,1 --Release your ally
    .target Minerva Melancorvo << Horde
    .target Dagnar Stonebrew << Alliance
step
    .isInScenario 940
    .goto 714,47.96,58.44
    >>Usar |T136120:0|t[Carapaça Antimagia] para evitar o dano dos vazios infernais.
    >>|cRXP_WARN_Defender|r |cRXP_FRIENDLY_Baron Prateado|r novamente.
    .scenario 2139,1 --Citadel Barrier Disabled
    .usespell 48707
    .mob Niskaran Doombringer
    .mob Sentinela Guarda Vil
    .mob Voracious Felmaw
    .mob Niskaran Houndmaster
step
    .isInScenario 940
    .goto 714,61.34,59.78
    >>Usar |T136120:0|t[Carapaça Antimagia] para evitar o dano dos vazios infernais.
    >>Usar |T237532:0|t[Garra da Morte] para entrar no alcance da |cRXP_ENEMY_Repulsion Tumor|r.
    .scenario 2141,1 --Search within the citadel for Margrave
    .usespell 48707
    .usespell 49576
step
    .goto 714,65.10,59.87
    .isInScenario 940
    >>Mate o |cRXP_ENEMY_Sangrelix|r.
    .scenario 2142,1 --Slay Gorelix
    .mob Gorelix
step
    .isInScenario 940
    .goto 714,64.15,60.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Maw of the Maldição|r
    .scenario 2143,1 --Take the Maw of the Damned
    .complete 40740,3 --1/1 Obtain the Maw of the Damned
step
    .goto 714,63.06,60.82
step
    .isInScenario 940
    .goto 714,63.06,60.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Death Portal|r.
    .scenario 2180,1 --Use Baron Sliver's Death Gate
step
    .isOnQuest 40740
    .goto 701,47.57,90.74
    .zone 648 >>Clique em |cRXP_PICK_Pórtico de Acherus|r após a encenação.
step
    .isQuestAvailable 39832
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r.
    .turnin 40740 >>Entregue Os Mortos e os Condenados
    .timer 63,Mograine Encenação
    .target Grão-lorde Dárion Mograine
step
    #optional
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r.
    .turnin 40740 >>Entregue Os Mortos e os Condenados
    .target Grão-lorde Dárion Mograine
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Gélido DK
#displayname Artefato Arma: Gélido
#next a) Salão da Ordem Cavaleiro da Morte Parte 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Usar |T135766:0|t[Portão da Morte]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Usar o teleportador
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 44401 >>Aceite Uma Arma para Toda Ocasião
    .target Duque Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto irá automaticamente selecionar o artefato Gélido|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390098
    .target Duque Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 44401 >>Entregue Uma Arma para Toda Ocasião
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 43962 >>Aceite Lâminas do Destino
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto irá automaticamente selecionar o artefato Gélido|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390098
    .target Duque Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 43962 >>Entregue Lâminas do Destino
    .target Duque Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 40715 >>Aceite Um Pacto de Necessidade
    .target Rensar Grande Casco
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto irá automaticamente selecionar o artefato Gélido|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390098
    .target Rensar Grande Casco
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40715 >>Entregue Um Pacto de Necessidade
    .target Rensar Grande Casco
step
    #completewith Fragments of Frostmourne
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 627,73.09,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .accept 38990 >>Aceite O Chamado da Coroa de Gelo
    .target Highlord Darion Mograine
step
    .goto 627,73.60,46.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Porta da Morte|r
    .complete 38990,1 --1/1 Use Death Gate
step
    .goto 698,59.7,17.3
    .isInScenario 901
    >>|cRXP_WARN_Pise no botão|r
    .scenario 1809,1 --Open the Gate to Icecrown
step
    .goto 698,59.74,0.36
    .scenario 1973,1 --1/1 Enter Icecrown Citadel
step
    #completewith next
    +Para abrir a porta, mate o |cRXP_WARN_Guarda-pórtico Litopele|cRXP_ENEMY_ no topo de pelo menos um botão (ou use |T237532:0|t|r[Garra da Morte] |rpara agarrá-los em um) e fique em pé no topo do segundo.|cRXP_WARN_
step
    #label Fragments of Frostmourne
    .goto 700,52.16,66.08
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Fragmentos de Gélido Lamento|r
    .scenario 1810,1,1 --1/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,59.89,53.69
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Fragmentos de Gélido Lamento|r
    .scenario 1810,1,2 --2/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.27,41.31
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Fragmentos de Gélido Lamento|r
    .scenario 1810,1,3 --3/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.33,49.96
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Fragmentos de Gélido Lamento|r
    .scenario 1810,1 --4/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.82,53.41
    .isInScenario 901
    >>|cRXP_WARN_Passe para o teleportador|r
    .scenario 1811,1 --Use the Scourge Teleporter within the Spire
step
    #completewith next
    #hidewindow
    .cast 186253 >>Siga a Seta
    .timer 24,Encenação
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Empunhadura de Gélido Lamento|r
    .scenario 1812,1 --Reforge the fragments and form your weapon
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Lâminas do Príncipe Caído|r
    >>Mate o |cRXP_ENEMY_Eco de Arthas Menethil|r
    *Mate o |cRXP_ENEMY_Source|r antes que o alcancem.
    .scenario 1814,1 --Purge the blades of the malevolent souls within
    .timer 8,Teleporte para dentro
    .mob Echo of Arthas Menethil
    .mob Mindless Ghoul
    .mob Icefallen Geist
    .mob Enraged Zombie
step
    .isInScenario 901
    .goto 701,49.85,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Lâminas do Príncipe Caído|r
    .complete 38990,2 --1/1 Obtain the Blades of the Fallen Prince
step
    .goto 701,49.8,51.7
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Lâminas do Príncipe Caído|r
    .scenario 2224,1 --Take the Blades of the Fallen Prince.
step
    .goto 701,49.52,90.69
    .isInScenario 901
    >>|cRXP_WARN_Espere a encenação|r
    .scenario 1827,1 --Obtain the Lich King's blessing
step
    .zoneskip 648
    .goto 701,47.64,90.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Acherus Pórtico|r
    .scenario 2923,1 --1/1 Acherus Waygate taken
step
    .goto 648,51.01,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r
    .turnin 38990 >>Entregue O Chamado da Coroa de Gelo
    .timer 60,Encenação
    .target Highlord Darion Mograine
]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Profano
#displayname Artefato Arma: Profano
#next a) Salão da Ordem Cavaleiro da Morte Parte 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Usar |T135766:0|t[Portão da Morte]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Usar o teleportador
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 44401 >>Aceite Uma Arma para Toda Ocasião
    .target Duque Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto irá automaticamente selecionar o artefato Profano|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390099
    .target Duque Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 44401 >>Entregue Uma Arma para Toda Ocasião
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .goto 648,35.01,37.23
    .zone 647 >>Usar o teleportador
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 43962 >>Aceite Lâminas do Destino
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto irá automaticamente selecionar o artefato Profano|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390099
    .target Duque Lankral
    .skipgossipid 46633
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 43962 >>Entregue Lâminas do Destino
    .target Duque Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 40715 >>Aceite Um Pacto de Necessidade
    .target Rensar Grande Casco
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Isto irá automaticamente selecionar o artefato Profano|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390099
    .target Rensar Grande Casco
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40715 >>Entregue Um Pacto de Necessidade
    .target Rensar Grande Casco
step
    #completewith Apocalypse
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    >>Esta missão deve ser adicionada ao seu registro de missões automaticamente. Se não for, reconecte-se.
    .accept 40930 >>Aceite Apocalipse
step
    .goto 47,77.42,35.89
    >>Usar |T254294:0|t[Pergaminho da Floresta do Crepúsculo]. |cRXP_WARN_Siga a seta para dentro da casa.|r
    .complete 40930,1 --1/1 Investigate Manor Mistmantle in Duskwood
    .use 173527
step
    .goto 47,77.42,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r e derrote-o.
    .complete 40930,2 --1/1 Convince Revil to help
    .timer 11,Encenação de Revil
    .target Revil Kost
    .skipgossipid 44918
step
    #label Apocalypse
    .goto 47,77.42,36.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40930 >>Entregue Apocalipse
    .accept 40931 >>Aceite Seguindo a Maldição
    .target Revil Kost
step
    .isOnQuest 40931
    #title |cFFFCDC00Fique perto de Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .isOnQuest 40931
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escorte |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40931
    .goto 47,85.55,40.69
    .countdown 20 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .isOnQuest 40931
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escorte |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40931
    .goto 42,44.33,34.54
    .countdown 20 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escorte |cRXP_FRIENDLY_Revil Kost|r
    .complete 40931,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40931 >>Entregue Seguindo a Maldição
    .accept 40932 >>Aceite Perturbando o Passado
    .target Revil Kost
step
    .goto 42,52.32,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Diário Surrado|r.
    .complete 40932,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.31,33.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diário Gasto|r.
    .turnin 40932 >>Entregue Perturbando o Passado
    .target Battered Journal
step
    .goto 42,52.42,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .accept 40933 >>Aceite Uma Tarefa Horrível
    .target Revil Kost
step
    .goto 42,53.39,73.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em diferentes |cRXP_PICK_A Covas Rasas|r até encontrar |cRXP_ENEMY_Laith Sha'ol|r. Mate |cRXP_ENEMY_Laith Sha'ol|r.
    .complete 40933,1 --1/1 Learn the location of the Dark Riders
    .mob Laith Sha'ol
step
    .goto 42,49.46,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40933 >>Entregue Uma Tarefa Horrível
    .accept 40986 >>Aceite Os Cavalgantes Negros
    .target Revil Kost
step
    .isOnQuest 40986
    .goto 42,46.28,69.07
    .enterScenario 1026 >>|cRXP_WARN_Entre no |cRXP_PICK_The Escuridão Riders|r cenário|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1026
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Pule para baixo
step
    #requires KarazhanCatacombsA
    .isInScenario 1026
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entre nas catacumbas|r
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1026
    #title Usar |T237532:0|t[Garra da Morte]
    .goto 46,55.90,69.19
    >>Usar |T237532:0|t[Garra da Morte] em |cRXP_ENEMY_Ariden|r |cRXP_WARN_do registro de missões|r.
    .scenario 2159,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1026
    .goto 46,56.36,69.25
    >>Mate |cRXP_ENEMY_O Conservador|r.
    .scenario 2160,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Siga a Seta
    .timer 25,Encenação
step
    .isInScenario 1026
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Apocalipse|r. |cRXP_WARN_Espere a encenação|r.
    .scenario 2161,1 --Apocalypse found
step
    .isInScenario 1026
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Siga a seta pelas escadas até |cRXP_ENEMY_Ariden|r.
    .scenario 2162,1 --Ariden followed
    .timer 15,Encenação Ariden
step
    .isInScenario 1026
    .goto 46,68.36,24.43
    >>Mate |cRXP_ENEMY_Ariden|r.
    .scenario 2163,1 --Ariden defeated
    .complete 40986,1 --1/1 Defeat the Dark Riders
    .timer 33,Encenação Ariden
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Apocalipse|r.
    .complete 40986,2 --1/1 Apocalypse claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    *|cRXP_WARN_Nota:|r Se ele ainda estiver em luta, mate os inimigos em combate com ele.
    .turnin 40986 >>Entregue Os Cavalgantes Negros
    .accept 40987 >>Aceite Clamor por Vingança
    .target Revil Kost
step
    .goto 46,69.62,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal da Morte para o Trono de Gelo|r.
    .complete 40987,1 --1/1 Take the Death Gate to the Frozen Throne
step
    .isOnQuest 40987
    .goto 701,47.57,90.74
    .zone 648 >>Clique em |cRXP_PICK_Pórtico de Acherus|r após a encenação.
step
    .goto 648,50.99,50.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Dárion Mograine|r.
    .turnin 40987 >>Entregue Clamor por Vingança
    .target Highlord Darion Mograine

]])
--Blood 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Sangue
#displayname Arma Artefato: Sangue
#next ac) Salão da Ordem Cavaleiro da Morte Parte 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Blood
]])
--Frost 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Gelo DK
#displayname Artefato Arma: Gélido
#next ac) Salão da Ordem Cavaleiro da Morte Parte 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Frost DK
]])
--Unholy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Profano
#displayname Arma Artefato: Profano
#next ac) Salão da Ordem Cavaleiro da Morte Parte 2
#internal


<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Unholy
]])

--Death Knight Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Cavaleiro da Morte Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Cavaleiro da Morte
#chapter
#internal

<< DeathKnight

step
    #completewith Enlist Nazgrim2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaberk|r.
    *|cRXP_WARN_Nota:|r Isso deve aparecer no seu registro de missões automaticamente enquanto estiver em Dalaran. Caso contrário, reconecte-se.
    .accept 40714 >>Aceite Chamado à Guerra
    .target Kaberk
step
    .goto 627,73.11,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40714 >>Entregue Chamado à Guerra
    .accept 40715 >>Aceite Um Pacto de Necessidade
    .target Duque Lankral
step
    .isQuestAvailable account,91955
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Importante: Selecione o que você já tem para ganhar um adicional de 10% de experiência (uma única vez)|r
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost DK >>RestedXP Legion Remix\a) Arma Artefato: Gelo DK >> Gelo(DPS) Linha de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Unholy >>RestedXP Legion Remix\a) Arma Artefato: Profano >> Profano(DPS) Linha de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Blood >>RestedXP Legion Remix\a) Artefato: Sangue >> Linha de missões de Sangue (Tanque)
step
    #include ac) Order Hall Demon Hunter Part 2@Plans and Preparations-Enlist Nazgrim
step
    .zoneskip 648,1
    .goto 648,24.76,33.70
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
]])

-- --------- Demon Hunter ---------

--Havoc
RXPGuides.RegisterGuide([[}
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Devastação
#displayname Artefato Arma: Devastação
#next a) Salão da Ordem Caçador de Demônios Parte 1
#internal

<< DemonHunter

step
    #optional
    .convertquest 40814,40816
    .convertquest 44383,44379
    .convertquest 40819,41120
    .convertquest 39051,41121
    .convertquest 39247,41119
step
    #completewith ArtifactWeaponHavocY
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #label ArtifactWeaponHavocA
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestAvailable 40819
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .accept 44383 >>Aceite Perseguição de Poder
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390100
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 44383 >>Entregue Perseguição de Poder
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Solfúria
    .target Altruis, o Sofredor
    .accept 40814 >>Aceite O Poder da Sobrevivência
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40814 >>Entregue O Poder da Sobrevivência
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    #completewith By Any Means
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isQuestAvailable 40249
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Solfúria
    .target Altruis, o Sofredor
    .accept 40819 >>Aceite Acordos Escusos
step
    .isQuestTurnedIn 40249
    .goto 720,58.61,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Solfúria
    .target Altruis, o Sofredor
    .accept 40819 >>Aceite Acordos Escusos
step
    .isQuestTurnedIn 40249
    #completewith next
    #label Making Arrangements
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40819 >>Entregue Acordos Escusos
    .accept 39051 >>Aceite A Qualquer Custo
step
    .isQuestTurnedIn 40249
    #completewith Making Arrangements
    .goto 720,59.31,91.85
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 40249
    #requires Making Arrangements
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40819 >>Entregue Acordos Escusos
    .accept 39051 >>Aceite A Qualquer Custo
step
    #label By Any Means
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40819 >>Entregue Acordos Escusos
    .accept 39051 >>Aceite A Qualquer Custo
step
    .goto 627,66.09,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Carcereiro Alturas|r
    .complete 39051,1 --1/1 Convince Warden Alturas
    .skipgossipid 45518
    .skipgossipid 45519
    .target Warden Alturas
step
    .goto 627,66.63,68.84
    #title |cFFFCDC00Siga a Seta|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,Aguarde o RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Aguarde a Encenação|r
    >>Abate |cRXP_ENEMY_Taldath, o Destruidor|r
    .complete 39051,3 --1/1 Taldath interrogated
    .mob Taldath the Destroyer
step
    .goto 723,50.32,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 39051 >>Entregue A Qualquer Custo
    .target Kayn Solfúria
    .target Altruis, o Sofredor
    .accept 39247 >>Aceite A Caçada
step
    #completewith next
    #label Illidari Fel Bat
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Illidari Morcevil|r
    .complete 39247,1
    .target Illidari Fel Bat
step
    #completewith Illidari Fel Bat
    .zone 627 >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .macro Leave Instance,236367 >>Saia da Instância.
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Illidari Morcevil|r
    .complete 39247,1
    .timer 53,Aguarde o RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .enterScenario 900 >>|cRXP_WARN_Aguarde a encenação|r.
    .timer 8
step
    .isInScenario 900
    .goto 680,25.63,58.94
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isInScenario 900
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03
    >>Mate todos os |cRXP_ENEMY_Demônios|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
    .mob Felsoul Berserker
step
    .isInScenario 900
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .scenario 1822,1,1
step
    .isInScenario 900
    .goto 680,29.16,61.02,10,0
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .scenario 1822,1,2
step
    .isInScenario 900
    #loop
    .goto 680,30.09,60.65,20,0
    .goto 680,29.97,63.95,30,0
    .goto 680,30.57,63.9,30,0
    .goto 680,30.3,65.99,30,0
    .goto 680,31.07,66,30,0
    >>Mate os |cRXP_ENEMY_Demônios|r |cRXP_WARN_mas ignore |cRXP_ENEMY_Esmagador Almavil|r a criatura infernal mesmo se tiver aggro|r.
    .scenario 1822,2,100
    .mob Fist of the Deceiver
    .mob Living Flame
    .mob Felsoul Ritualist
step
    .isInScenario 900
    .goto 680,31.25,66.26,10,0
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .scenario 1822,1,3
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>Mate |cRXP_ENEMY_Varedis Almavil|r
    .scenario 1825,1
    .mob Varedis Almavil
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Lâminas Gêmeas do Enganador|r
    .complete 39247,2 --1/1 Twinblades of the Deceiver
    .scenario 2712,1
step
    .isInScenario 900
    .zone 627 >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .macro Leave Instance,236367 >>Saia da Instância.
step
    .isQuestAvailable 40249
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'vas Sangrespinho|r
    .turnin 39247 >>Entregue A Caçada
    .target Kor'vas Sangrespinho
step
    #completewith next
    #label Turn in The Hunt
    .isQuestTurnedIn 40249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'vas Sangrespinho|r
    .turnin 39247 >>Entregue A Caçada
    .target Kor'vas Sangrespinho
step
    #completewith Turn in The Hunt
    #label ArtifactWeaponHavocY
    .isQuestTurnedIn 40249
    .goto 627,98.13,69.47
    .zone 720 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step
    #requires Turn in The Hunt
    .isQuestTurnedIn 40249
    #label ArtifactWeaponHavocZ
    .goto 720,59.31,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'vas Sangrespinho|r
    .turnin 39247 >>Entregue A Caçada
    .target Kor'vas Sangrespinho
]])
--Vengeance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Vingança
#displayname Arma de Artefato: Vingança
#next a) Salão da Ordem Caçador de Demônios Parte 1
#internal

<< DemonHunter

step
    #optional
    .convertquest 40814,40816
    .convertquest 44383,44379
    .convertquest 40247,41803
    .convertquest 40249,41863
step
    #completewith ArtifactWeaponVengeanceY
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #label ArtifactWeaponVengeanceA
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestAvailable 40247
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .accept 44383>>Aceite Perseguição de Poder
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390101
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 44383 >>Entregue Perseguição de Poder
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Solfúria
    .target Altruis, o Sofredor
    .accept 40814>>Aceite O Poder da Sobrevivência
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40814 >>Entregue O Poder da Sobrevivência
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    #completewith Crystallized Soul
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 627,74.98,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .accept 40247 >>Aceite Pedir um Simpatia
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    .isQuestAvailable 39247
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    .turnin 40247 >>Entregue Pedindo um Simpatia
    .accept 41804 >>Aceite Peça e Você Receberá
    .timer 57.5,RP
    .target Arquimago Hadggar
step
    .isQuestTurnedIn 39247
    #completewith next
    #label Turn in Asking a Favor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    .turnin 40247 >>Entregue Pedindo um Simpatia
    .accept 41804 >>Aceite Peça e Você Receberá
    .disablecheckbox
    .target Arquimago Hadggar
step
    .isQuestTurnedIn 39247
    #completewith Turn in Asking a Favor
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 39247
    #requires Turn in Asking a Favor
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    .turnin 40247 >>Entregue Pedindo um Simpatia
    .accept 41804 >>Aceite Peça e Você Receberá
    .timer 58.5,RP
    .target Arquimago Hadggar
step
    .goto 627,25.35,47.24,15,0
    .goto 627,26.78,44.84
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 41804,1 --1/1 Follow Archmage Khadgar
step
    #label Crystallized Soul
    .goto 627,26.78,44.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Caixote|r
    .complete 41804,2 --1/1 Crystallized Soul
    .timer 12.5,RP
step
    .goto 627,28.49,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    .turnin 41804 >>Entregue Peça e Você Receberá
    .target Arquimago Hadggar
    .accept 41806 >>Aceite Fale Novamente com Jace
step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jace Tecetrevas|r
    .turnin 41806 >>Entregue Fale Novamente com Jace
    .accept 41807 >>Aceite Estabelecendo uma Conexão
    .target Jace Tecetrevas
step
    .goto 627,74.35,52.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Comunicador da Legião|r
    .complete 41807,1 --1/1 Legion Communicator activated
    .timer 19,Aguarde o RP
step
    .goto 627,74.43,51.31
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 41807,2 --1/1 Scout's report received
step
    .goto 627,74.54,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jace Tecetrevas|r
    .turnin 41807 >>Entregue Estabelecendo uma Conexão
    .target Jace Tecetrevas
step
    .goto 627,75.05,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .accept 40249 >>Aceite A Vingança Será Nossa
    .target Kayn Solfúria
    .target Altruis, o Sofredor
step
    #completewith next
    #label Fly to the Broken Shore
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    #completewith Fly to the Broken Shore
    .goto 627,75.28,47.58
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Illidari Morcevil|r
    .timer 24,Aguarde o RP
    .target Illidari Fel Bat
step
    #requires Fly to the Broken Shore
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .isOnQuest 40249
    .enterScenario 961 >>|cRXP_WARN_Aguarde a encenação|r.
step
    .goto 676,15.09,51.77
    .isOnQuest 40249
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Allari, a Devoralmas|r
    .scenario 1939,1 --Free Allari the Souleater.
    .target Allari, a Devoralmas
step
    .goto 676,16.02,54.95,15,0
    .goto 676,16.04,56.14,20,0
    .goto 676,17.61,57.44
    .isInScenario 961
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portais|r
    .scenario 1940,1, --Destroy the Legion portals.
step
    .goto 676,20.19,61.38
    .isInScenario 961
    >>Mate os |cRXP_ENEMY_Arauto da Ruína Saera|r e os |cRXP_ENEMY_Arauto da Ruína Taraar|r
    .scenario 2299,2 --Eliminate Doomherald Taraar.
    .scenario 2299,1 --Eliminate Doomherald Saera.
    .mob Doomherald Saera
    .mob Doomherald Taraar
step
    .goto 676,20.69,62.76
    .isInScenario 961
    >>Mate o |cRXP_ENEMY_Gorgonnash|r
    .scenario 1948,1 --Destroy Gorgonnash.
    .mob Gorgonnash
step
    .isInScenario 961
    .goto 676,21.92,61.12
    >>Usar |T1247266:0|t[Visão Espectral] em frente à caverna.
    .scenario 1941,1 --Find Caria's trail.
    .usespell 188501
step
    .isInScenario 961
    .goto 676,21.92,61.12
    .cast 207965 >>Clique em |cRXP_PICK_Cascalho|r
step
    #completewith next
    #label Caria Felsoul
    .isInScenario 961
    >>Mate o |cRXP_ENEMY_Cária Almavil|r
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Cária Almavil
step
    .isInScenario 961
    #completewith Caria Felsoul
    .goto 676,23.26,62.14,15,0
    .goto 676,23.73,63.82,15,0
    .goto 676,24.3,64.04,15,0
    .goto 676,25.11,63.11,30 >>Siga a Seta
    .timer 9,Aguarde o RP
step
    #requires Caria Felsoul
    .goto 676,26.82,61.37
    >>Mate o |cRXP_ENEMY_Cária Almavil|r
    .isInScenario 961
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Cária Almavil
step
    .goto 676,26.77,61.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .complete 40249,2 --1/1 Aldrachi Warblades
    .scenario 2302,1
step
    .zone 627 >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .macro Leave Instance,236367 >>Saia da Instância.
    .complete 40249,3 --1/1 Return to Dalaran
step
    .isQuestAvailable 39247
    #completewith next
    #label Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'vas Sangrespinho|r
    .turnin 40249 >>Entregue A Vingança Será Nossa
    .target Kor'vas Sangrespinho
step
    .isQuestAvailable 39247
    #completewith Vengeance Will Be Ours
    #label ArtifactWeaponVengeanceY
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no Portal|cRXP_PICK_
step
    #label ArtifactWeaponVengeanceZ
    .isQuestAvailable 39247
    #requires Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'vas Sangrespinho|r
    .turnin 40249 >>Entregue A Vingança Será Nossa
    .target Kor'vas Sangrespinho
]])
--Havoc 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Devastação
#displayname Artefato Arma: Devastação
#next ac) Salão da Ordem Caçador de Demônios Parte 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Havoc
]])
--Vengeance 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma de Artefato: Vingança
#displayname Arma de Artefato: Vingança
#next ac) Salão da Ordem Caçador de Demônios Parte 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Vengeance
]])

--Demon Hunter Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Caçador de Demônios Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Caçador de Demônios
#chapter
#internal

<< DemonHunter

step
    #completewith Champion: Asha Ravensong2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #optional
    .convertquest 39261,39047
    .convertquest 39261,39047
    .convertquest 40814,40816
    .convertquest 41221,41033
    .convertquest 41037,41060
    .convertquest 41062,41070
    .convertquest 41067,41096
    .convertquest 41069,41099
    .convertquest 44383,44379
step
    #include ab) Order Hall Demon Hunter Part 1@Future of The Fel Hammer-Call of the Illidari
step
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Solfúria
    .target Altruis, o Sofredor
    .accept 40814 >>Aceite O Poder da Sobrevivência
step
    .isQuestAvailable 40814
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Havoc >>RestedXP Legion Remix\a) Arma de Artefato: Devastação >> Devastação(DPS) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Vengeance >>RestedXP Remix de Legion\a) Arma Artefato: Vingança >> Vingança (Tanque) Linha de Questes
step
    #include ac) Order Hall Demon Hunter Part 2@Eternal Vigil-Champion: Asha Ravensong
]])

-- --------- Druid ---------

--Balance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma de Artefato: Druida de Equilíbrio
#displayname Artefato Arma: Equilíbrio
#next a) Salão da Ordem Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Siga a Seta
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Vá através do portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40783
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44443 >>Aceite Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente a Arma de Artefato de Equilíbrio|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390102
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44443 >>Entregue Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44431 >>Aceite Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40783
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente a Arma de Artefato de Equilíbrio|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390102
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44431 >>Entregue Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 43980 >>Aceite Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40783
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente a Arma de Artefato de Equilíbrio|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390102
    .target Rensar Grande Casco
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 43980 >>Entregue Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .accept 40646 >>Aceite Armas Lendárias
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente a Arma de Artefato de Equilíbrio|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390102
    .target Rensar Grande Casco
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 40646 >>Entregue Armas Lendárias
    .target Rensar Grande Casco
step
    #completewith Scythe of Elune
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 747,44.52,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naralex|r
    .accept 40783 >>Aceite A Foice de Eluna
    .target Naralex
step
    #completewith ToDuskwoodD
    #label ToDuskwoodA
    >>Vá para Floresta do Crepúsculo
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToDuskwoodA
    #label ToDuskwoodB
    .goto 747,55.76,21.99
    .zone 715 >>Passe pelo portal para a Trilha do Sonho Esmeralda
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToDuskwoodB
    #completewith ToDuskwoodA
    #label ToDuskwoodC
    .zone 715 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToDuskwoodC
    #completewith ToDuskwoodA
    #label ToDuskwoodD
    .goto 715,31.46,26.05
    .zone 116 >>Passe pelo portal para Floresta do Crepúsculo
step
    #requires ToDuskwoodA
    .goto 715,39.93,69.76
    >>Vá para Floresta do Crepúsculo
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    #completewith next
    #hidewindow
    .goto 47,48.90,34.31,15 >>Siga a Seta
    .timer 15,Encenação Valorn
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Follow the arrow. Esperar for the roleplay|r.
    .complete 40783,2 --1/1 Meet with Valorn
step
    #label Scythe of Elune
    .goto 47,48.90,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valorn Calmarramas|r
    .turnin 40783 >>Entregue A Foice de Eluna
    .accept 40784 >>Aceite O Lugar de Direito
    .timer 4,Encenação
    .target Valorn Stillbough
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Espere a encenação|r
    .complete 40784,1 --1/1 Scythe of Elune taken
step
    .goto 47,48.84,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belrysa Brisastral|r
    .turnin 40784 >>Entregue O Lugar de Direito
    .target Belysra Starbreeze
    .accept 40785 >>Aceite Um Inimigo nas Trevas
step
    #title |cFFFCDC00Entre na Casa|r
    .goto 47,77.42,36.13
    >>|cRXP_WARN_Seguir a seta|r.
    .complete 40785,2 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.42,36.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40785 >>Entregue Um Inimigo nas Trevas
    .accept 40834 >>Aceite Seguindo a Maldição
    .target Revil Kost
step
    .isOnQuest 40834
    #title |cFFFCDC00Fique perto de Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .isOnQuest 40834
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escorte |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40834
    .goto 47,85.55,40.69
    .countdown 20 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .isOnQuest 40834
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escorte |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40834
    .goto 42,44.33,34.54
    .countdown 20 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escorte |cRXP_FRIENDLY_Revil Kost|r
    .complete 40834,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40834 >>Entregue Seguindo a Maldição
    .accept 40835 >>Aceite Perturbando o Passado
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Diário Surrado|r.
    .complete 40835,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diário Surrado|r
    .turnin 40835 >>Entregue Perturbando o Passado
    .target Battered Journal
step
    .goto 42,52.42,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r
    .accept 40837 >>Aceite A Caçada do Vento Morto
    .target Revil Kost
step
    .goto 42,51.57,43.62
    >>|cRXP_WARN_Seguir a seta|r.
    .complete 40837,1 --1/1 Follow the worgen tracks
step
    .goto 42,47.22,51.69
    >>|cRXP_WARN_Seguir a seta|r.
    .complete 40837,2 --1/1 Continue following the worgen
step
    .goto 42,49.17,57.66
    >>|cRXP_WARN_Seguir a seta|r.
    .complete 40837,3 --1/1 Continue following the worgen
step
    .goto 42,45.93,63.33
    >>|cRXP_WARN_Seguir a seta|r.
    .complete 40837,4 --1/1 Continue following the worgen
step
    .goto 42,46.90,69.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40837 >>Entregue A Caçada do Vento Morto
    .accept 40838 >>Aceite Os Cavalgantes Negros
    .target Revil Kost
step
    .isOnQuest 40838
    .goto 42,46.28,69.07
    .enterScenario 1014 >>|cRXP_WARN_Siga a seta|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1014
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Pule para baixo
step
    #requires KarazhanCatacombsA
    .isInScenario 1014
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entre nas catacumbas|r
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1014
    #title Usar |T252188:0|t[Raio Solar]
    .goto 46,55.90,69.19
    >>Usar |T252188:0|t[Raio Solar] em |cRXP_ENEMY_Ariden|r |cRXP_WARN_from the quest log|r.
    .scenario 2109,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1014
    .goto 46,56.36,69.25
    >>Mate |cRXP_ENEMY_O Conservador|r.
    .scenario 2110,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Siga a Seta
    .timer 25,Encenação
step
    .isInScenario 1014
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_A Foice de Eluna|r. |cRXP_WARN_Espere a encenação|r.
    .scenario 2111,1 --Scythe of Elune found
step
    .isInScenario 1014
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Siga a seta pelas escadas até |cRXP_ENEMY_Ariden|r.
    .scenario 2112,1 --Ariden followed
    .timer 15,Encenação Ariden
step
    .isInScenario 1014
    .goto 46,68.36,24.43
    >>Mate |cRXP_ENEMY_Ariden|r.
    .scenario 2113,1 --Ariden defeated
    .complete 40838,1 --1/1 Defeat the Dark Riders
    .timer 33,Encenação Ariden
    .mob Ariden
step
    .goto 46,68.28,24.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_A Foice de Eluna|r.
    .complete 40838,2 --1/1 The Scythe of Elune claimed
    .timer 25,Encenação
step
    .goto 46,68.27,27.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40838 >>Entregue Os Cavalgantes Negros
    .accept 40900 >>Aceite Os Filhos do Fardo
    .target Revil Kost
step
    #completewith TheBurdenBorneC
    #label TheBurdenBorneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 40900 >>Entregue Os Filhos do Fardo
    .target Rensar Grande Casco
step
    #completewith TheBurdenBorneA
    #label TheBurdenBorneB
    .zone 715 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    #completewith TheBurdenBorneA
    #requires TheBurdenBorneB
    #label TheBurdenBorneC
    .goto 715,45.60,23.46
    .zone 747 >>Vá pelo portal para Emeral Dreamway
step
    #requires TheBurdenBorneA
    .goto 747,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 40900 >>Entregue Os Filhos do Fardo
    .target Rensar Grande Casco
]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Druida Feral
#displayname Artefato Arma: Feral
#next a) Salão da Ordem Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Siga a Seta
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Vá através do portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 42428
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44443 >>Aceite Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Feral|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390103
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44443 >>Entregue Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44431 >>Aceite Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Feral|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390103
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44431 >>Entregue Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 43980 >>Aceite Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Feral|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390103
    .target Rensar Grande Casco
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 43980 >>Entregue Outra Arma de Outrora
    .accept 42428 >>Aceite O Altar de Ashamane
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .accept 40646 >>Aceite Armas Lendárias
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Feral|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390103
    .target Rensar Grande Casco
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 40646 >>Entregue Armas Lendárias
    .target Rensar Grande Casco
step
    #completewith Aid for the Ashen
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 42428 >>Aceite O Altar de Ashamane
    .target Rensar Grande Casco
step
    .goto 747,61.73,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danise Miráster|r.
    .complete 42428,1 --1/1 Hippogryph taken to Ashamane's Fall
    .timer 57,Duração de Voo
    .target Danise Stargazer
    .skipgossipid 45654
step
    .goto 641,70.39,46.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delandros Brilhalua|r.
    .turnin 42428 >>Entregue O Altar de Ashamane
    .target Delandros Shimmermoon
    .accept 42439 >>Aceite Ajuda aos Druidas das Cinzas
    .accept 42438 >>Aceite Sementes de Renovação
step
    #completewith SeedsOfRenewalA
    >>Mate os |cRXP_ENEMY_Eredar Alma Lashers|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #title Semente (1/3)
    .goto 641,71.69,43.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_cadáver|r de |cRXP_FRIENDLY_Emtheas Miravéras|r.
    .complete 42438,1,1 --1/3 Tel'andu Seed
    .target Emtheas Trueeye
step
    #title Semente (2/3)
    .goto 641,70.04,42.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_cadáver|r de |cRXP_FRIENDLY_Asthalor Lunocaso|r.
    .complete 42438,1,2 --2/3 Tel'andu Seed
    .target Asthalor Duskmoon
step
    #label SeedsOfRenewalA
    #title Semente (3/3)
    .goto 641,71.00,38.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_cadáver|r de |cRXP_FRIENDLY_Iyseelar Cantorvalho|r.
    .complete 42438,1 --3/3 Tel'andu Seed
    .target Iyseelar Dewsong
step
    #loop
    .goto 641,71.70,38.40,35,0
    .goto 641,71.55,42.50,35,0
    .goto 641,70.24,41.08,35,0
    >>Mate os |cRXP_ENEMY_Eredar Alma Lashers|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #label Aid for the Ashen
    .goto 641,73.23,42.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delandros Brilhalua|r
    .turnin 42439 >>Entregue Ajuda aos Druidas das Cinzas
    .turnin 42438 >>Entregue Sementes de Renovação
    .accept 42440 >>Aceite O Santuário em Perigo
    .target Delandros Shimmermoon
step
    .goto 641,73.75,40.59
    >>|cRXP_WARN_Siga a seta.|r
    .complete 42440,1 --1/1 Investigate Ashamane's Fall
step
    .goto 641,73.82,39.02
    >>Mate |cRXP_ENEMY_Algromon|r
    .complete 42440,2 --1/1 Algromon slain
    .mob Algromon
step
    .goto 641,73.83,38.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delandros Brilhalua|r
    .turnin 42440 >>Entregue O Santuário em Perigo
    .accept 42430 >>Aceite As Presas de Ashamane
    .target Delandros Shimmermoon
step
    .goto 641,73.75,38.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Presa de Ébano|r
    .complete 42430,1 --1/1 Ebonfang Mounted
    .target Ebonfang
step
    .isOnQuest 42430
    .goto 641,73.75,38.40
    .enterScenario 1108 >>Entre no |cRXP_PICK_As Presas de Ashamane|r cenário.
step
    .isInScenario 1108
    .goto 680,21.70,39.36
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 2506,1 --Followed Verstok's scent
step
    #completewith DoorSwitchB
    #label DoorwayOpenedA
    .isInScenario 1108
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    .isOnQuest 42430
    #completewith DoorwayOpenedA
    #label DoorSwitchA
    .goto 680,21.88,37.24
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Porta Interruptor|r
step
    #requires DoorSwitchA
    #completewith DoorwayOpenedA
    #label DoorSwitchB
    .goto 680,23.14,37.77
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Porta Interruptor|r
    .timer 15,Porta se abre em
step
    #requires DoorwayOpenedA
    .isInScenario 1108
    .goto 680,22.80,35.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos dois |cRXP_PICK_Porta Interruptores|r
    >>|cRXP_WARN_Esperar para a porta abrir depois de clicar nos dois interruptores|r
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    #completewith next
    #label FollowVerstoksTrailA
    >>|cRXP_WARN_Siga a seta|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    #completewith FollowVerstoksTrailA
    .goto 692,54.48,40.91
    .cast 214240 >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Plataforma|r
    *- |cRXP_WARN_Certifique-se de estar em forma de gato|r
step
    #requires FollowVerstoksTrailA
    .isInScenario 1108
    .goto 692,45.45,29.90
    >>|cRXP_WARN_Siga a seta|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    .isInScenario 1108
    .goto 692,43.10,21.57
    >>Mate |cRXP_ENEMY_Verstok|r
    .scenario 2534,1 --Defeat Verstok
    .mob Verstok
step
    .isInScenario 1108
    .goto 692,41.89,33.91,15,0
    .goto 692,31.11,72.27,15,0
    .goto 692,33.74,72.68
    >>|cRXP_WARN_Siga a seta|r
    .scenario 2545,1 --Chase after Verstok
step
    .isInScenario 1108
    .goto 693,53.19,18.21
    >>Mate |cRXP_ENEMY_Shinaris Senhora das Teias|r.
    .scenario 2546,1 --Webmistress Shinaris Slain
    .timer 18,Verstok Encenação
    .mob Webmistress Shinaris
step
    .isInScenario 1108
    .goto 693,54.72,20.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Presas de Ashamane|r
    .scenario 2547,1 --Retrieve the Fangs of Ashamane
step
    .isOnQuest 42430
    .isQuestNotComplete 42430
    .isInScenario 1108
    .goto 693,54.76,19.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Presa de Ébano|r.
    .scenario 2552,1 --Ride upon Ebonfang
    .target Ebonfang
step
    .goto 747,44.52,51.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 42430 >>Entregue As Presas de Ashamane
    .target Rensar Grande Casco
]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Druida Guardião
#displayname Artefato Arma: Guardião
#next a) Salão da Ordem Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Siga a Seta
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Vá através do portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 41468
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44443 >>Aceite Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto vai selecionar automaticamente o artefato Guardião|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390104
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44443 >>Entregue Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44431 >>Aceite Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto vai selecionar automaticamente o artefato Guardião|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390104
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44431 >>Entregue Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 43980 >>Aceite Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Guardião|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390104
    .target Rensar Grande Casco
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 43980 >>Entregue Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .accept 40646 >>Aceite Armas Lendárias
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Guardião|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390104
    .target Rensar Grande Casco
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 40646 >>Entregue Armas Lendárias
    .target Rensar Grande Casco
step
    #completewith ToTheHillsA
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 41468 >>Aceite Dama da Garra
    .target Rensar Grande Casco
step
    #completewith next
    #label MistressOfTheClawA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lea Patapétrea|r
    .turnin 41468 >>Entregue Dama da Garra
    .accept 41782 >>Aceite Para as Colinas
    .target Lea Stonepaw
step
    #title |cFFFCDC00Entre na Caverna|r
    #completewith MistressOfTheClawA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Siga a seta para dentro da caverna|r
step
    #requires MistressOfTheClawA
    .goto 641,39.27,18.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lea Patapétrea|r
    .turnin 41468 >>Entregue Dama da Garra
    .accept 41782 >>Aceite Para as Colinas
    .target Lea Stonepaw
step
    #completewith next
    #label ToTheHillsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Frasco de Água do Poço Lunar|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #title |cFFFCDC00Sair da Caverna|r
    #completewith ToTheHillsA
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Siga a seta para sair da caverna|r
step
    #requires ToTheHillsA
    .goto 747,35.66,25.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Frasco de Água do Poço Lunar|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #completewith ToTheHillsE
    #label ToTheHillsB
    >>Vá para Serra Gris
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToTheHillsB
    #label ToTheHillsC
    .goto 747,55.76,21.99
    .zone 715 >>Vá pelo portal para a Trilha do Esmeralda
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToTheHillsC
    #completewith ToTheHillsB
    #label ToTheHillsD
    .zone 715 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToTheHillsD
    #completewith ToTheHillsB
    #label ToTheHillsE
    .goto 715,31.46,26.05
    .zone 116 >>Vá pelo portal para Serra Gris
step
    #requires ToTheHillsB
    >>Vá para Serra Gris
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .goto 116,50.46,29.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_FRIENDLY_Hipogrifo da Patapétrea|r
    .complete 41782,3 --1/1 Take Stonepaw's Hippogryph to Lea Stonepaw (Optional)
    .target Stonepaw's Hippogryph
step
    .goto 116,50.29,37.96,25,0
    .goto 116,50.98,37.10
    >>|cRXP_WARN_Siga a seta|r
    .complete 41782,4 --1/1 Locate Lea Stonepaw
step
    .goto 116,51.28,36.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lea Patapétrea|r
    .turnin 41782 >>Entregue Para as Colinas
    .target Lea Stonepaw
step
    #title |cFFFCDC00Verificar Nota|r
    .goto 116,50.50,37.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursol|r
    *|cRXP_WARN_Nota: Se você não conseguir ver a encenação ou |cRXP_FRIENDLY_Ursol|r, então reconecte próximo a |cRXP_FRIENDLY_Lea Patapétrea|r.|r
    .accept 41790 >>Aceite A Primeira Provação de Ursol
    .target Ursol
step
    .goto 116,50.68,37.44
    >>Mate o |cRXP_ENEMY_Campeão Ancestral|r
    .complete 41790,1 --1/1 Overcome Ursol's first trial
    .mob Ancestral Champion
step
    .goto 116,50.52,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursol|r
    .turnin 41790 >>Entregue A Primeira Provação de Ursol
    .accept 41791 >>Aceite A Segunda Provação de Ursol
    .target Ursol
step
    .goto 116,50.70,37.37
    >>Mate as |cRXP_WARN_três ondas|r de |cRXP_ENEMY_Guerreiros Ancestrais|r e |cRXP_ENEMY_Xamãs|r
    .complete 41791,1 --1/1 Overcome the second of Ursol's trials
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursol|r.
    .turnin 41791 >>Entregue A Segunda Provação de Ursol
    .accept 41792 >>Aceite A Terceira Provação de Ursol
    .target Ursol
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursol para começar a terceira provação|r
    .complete 41792,1 --1/1 Speak with Ursol to begin the third trial
    .timer 50,Encenação
    .target Ursol to begin the third trial
    .skipgossipid 45309
step
    .goto 116,51.15,36.99
    >>Mate os |cRXP_ENEMY_Guerreiros Ancestrais|r e os |cRXP_ENEMY_Xamãs|r
    *|cRXP_WARN_Você também pode curá-la|r
    .complete 41792,2 --1/1 Protect Lea Stonepaw
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.51,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursol|r
    .turnin 41792 >>Entregue A Terceira Provação de Ursol
    .target Ursol
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lea Patapétrea|r
    .accept 40647 >>Aceite Quando Sonhos Viram Pesadelos
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>Usar o |T236878:0|t[Frasco de Moonwell]
    .complete 40647,1 --1/1 Enter the Emerald Dream
    .use 136414
step
    .isOnQuest 40647
    .goto 116,51.25,36.85
    .enterScenario 990 >>Entre no |cRXP_PICK_Covil de Ursoc|r cenário.
step
    .isInScenario 990
    .goto 757,47.23,81.67,25,0
    .goto 757,48.72,51.65
    >>|cRXP_WARN_Siga a seta|r
    .scenario 2029,1 --Locate the Claws of Ursoc
step
    .goto 757,46.86,30.53
    .isInScenario 990
    >>Mate o |cRXP_ENEMY_Profanador Putricasco|r e o |cRXP_ENEMY_Assombrante|r
    .scenario 2327,1 --Defend the Spirit of Ursoc
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,50.13,32.38
    >>Mate os |cRXP_ENEMY_Blightborne Sludges|r e os |cRXP_ENEMY_Assombrante Putricasco|r.
    .scenario 2030,1 --Survive the first assault
    .mob Rothoof Shadowstalker
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,49.40,33.06
    >>Mate o |cRXP_ENEMY_Profanador Putricasco|r e o |cRXP_ENEMY_Assombrante|r.
    .scenario 2033,1 --Survive the second assault
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,46.32,30.25
    >>Mate os |cRXP_ENEMY_Blightborne Sludges|r e os |cRXP_ENEMY_Defensores Corrompidos|r.
    .scenario 2034,1 --Survive the third assault
    .mob Corrupted Defender
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,50.30,31.30
    >>Mate os dois |cRXP_ENEMY_Defensores Corrompidos|r. Espere os 70 segundos de encenação depois de ficar atordoado.
    .scenario 2035,1 --Survive the final assault
    .mob Corrupted Defender
step
    .isInScenario 990
    .goto 757,49.96,28.35
    >>Mate |cRXP_ENEMY_Malithar|r.
    .scenario 2040,1 --Defeat Malithar
    .complete 40647,2 --1/1 Defeat the Forces of the Nightmare
    .mob Malithar
step
    .isInScenario 990
    .goto 757,50.08,26.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Garras de Ursoc|r
    .scenario 2041,1 --Obtain the Claws of Ursoc
    .complete 40647,3 --1/1 Obtain the Claws of Ursoc
step
    .isOnQuest 40647
    .zoneskip 757,1
    .zone 116 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lea Patapétrea|r
    .skipgossipid 45251
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lea Patapétrea|r.
    .turnin 40647 >>Entregue Quando Sonhos Viram Pesadelos
    .accept 41918 >>Aceite O Sonhador Retorna
    .target Lea Stonepaw
step
    .zoneskip 715
    .isOnQuest 41918
    .zone 715 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    .zoneskip 715,1
    .isOnQuest 41918
    .goto 715,45.60,23.46
    .zone 747 >>|cRXP_WARN_Siga a seta através do portal|r
step
    .goto 747,44.66,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 41918 >>Entregue O Sonhador Retorna
    .target Rensar Grande Casco
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Druida de Restauração
#displayname Artefato Arma: Restauração
#next a) Salão da Ordem Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usar |T135763:0|t[Caminhar no Sonho]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Siga a Seta
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Vá através do portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40649
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44443 >>Aceite Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390105
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44443 >>Entregue Armas dos Antigos
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 44431 >>Aceite Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390105
    .target Rensar Grande Casco
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 44431 >>Entregue Mais Armas de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .accept 43980 >>Aceite Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390105
    .target Rensar Grande Casco
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .turnin 43980 >>Entregue Outra Arma de Outrora
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .accept 40646 >>Aceite Armas Lendárias
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390105
    .target Rensar Grande Casco
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r.
    .turnin 40646 >>Entregue Armas Lendárias
    .target Rensar Grande Casco
step
    #completewith Leafbeard the Storied
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 747,44.61,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guardião Remulos|r.
    .accept 40649 >>Aceite Encontro com Mylune
    .target Guardião Remulos
step
    .goto 747,52.30,52.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r.
    .turnin 40649 >>Entregue Encontro com Mylune
    .accept 41422 >>Aceite Preparativos Necessários
    .target Mylune
step
    .goto 747,35.66,25.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Copo Vazio|r.
    .complete 41422,1 --1/1 Cup of Moonwater
step
    #label Leafbeard the Storied
    .goto 747,32.79,29.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barbafolha, o Altíssimo|r.
    .complete 41422,2 --1/1 Leafbeard's Blessing obtained
    .target Leafbeard the Storied
    .skipgossipid 46113
    .skipgossipid 45260
step
    .goto 747,52.30,52.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mylune|r.
    .turnin 41422 >>Entregue Preparativos Necessários
    .accept 41449 >>Aceite Junte-se à Sonhadora
    .target Mylune
step
    #completewith next
    #label JoinTheDreamerA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naralex|r.
    .turnin 41449 >>Entregue Junte-se à Sonhadora
    .accept 41436 >>Aceite Em Sono Profundo
    .target Naralex
step
    #title |cFFFCDC00Entre na Caverna|r
    #completewith JoinTheDreamerA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Siga a seta para dentro da caverna|r
step
    #requires JoinTheDreamerA
    .goto 747,40.62,1.53,10,0
    .goto 641,39.56,18.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naralex|r.
    .turnin 41449 >>Entregue Junte-se à Sonhadora
    .accept 41436 >>Aceite Em Sono Profundo
    .target Naralex
step
    .goto 641,39.63,18.09
    >>Usar o |T608949:0|t[Cup of Moonwater]
    .complete 41436,1 --1/1 Enter the Emerald Dream
    .use 135506
step
    #completewith InDeepSlumberC
    #label InDeepSlumberA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_G'Hanir|r |cRXP_WARN_fora da caverna|r.
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
step
    #title |cFFFCDC00Liberte Bashana|r
    #completewith InDeepSlumberA
    #label InDeepSlumberB
    .goto 747,40.83,2.02,8,0
    .goto 747,43.96,6.16,8,0
    .goto 747,47.97,4.09,8,0
    .goto 747,47.21,7.17
    .cast 311698 >>Clique nas |cRXP_PICK_Raízes|r
step
    #title |cFFFCDC00Sair da Caverna, Cure-se|r
    #requires InDeepSlumberB
    #completewith InDeepSlumberA
    #label InDeepSlumberC
    .goto 747,45.81,11.47,10,0
    .goto 747,48.95,15.49,8,0
    .goto 747,41.96,9.58,8,0
    .goto 747,42.55,16.10,8,0
    .goto 747,41.20,18.49,8,0
    .goto 747,46.76,29.02,8 >>|cRXP_WARN_Seguir a seta para fora da caverna|r.
    *|cRXP_WARN_Se a corrupção danificar muito, abandone a missão e relogar|r.
step
    #requires InDeepSlumberA
    .goto 747,45.12,50.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_G'Hanir|r
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
    .timer 10,Acorde em
step
    .goto 641,39.62,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naralex|r.
    .turnin 41436 >>Entregue Em Sono Profundo
    .accept 41690 >>Aceite Reunião
    .target Naralex
step
    #completewith next
    #label ReconveneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyessa Florespia|r.
    .turnin 41690 >>Entregue Reunião
    .accept 41689 >>Aceite Purificação da Árvore Mãe
    .target Lyessa Bloomwatcher
step
    #title |cFFFCDC00Sair da Caverna|r
    #completewith ReconveneA
    .goto 747,41.02,2.21,8,0
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Siga a seta para sair da caverna|r
step
    #requires ReconveneA
    .goto 747,45.20,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyessa Florespia|r.
    .turnin 41690 >>Entregue Reunião
    .accept 41689 >>Aceite Purificação da Árvore Mãe
    .target Lyessa Bloomwatcher
step
    .goto 747,55.74,21.91
    >>Passe pelo portal para o Caminho do Sonho
    .complete 41689,1 --1/1 Enter the Dreamway
step
    .goto 715,53.69,53.00
    >>Passe pelo portal para Monte Hyjal
    .complete 41689,2 --1/1 Travel to Mount Hyjal
step
    #hidewindow
    #completewith next
    #label CleansingTheMotherTreeA
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    #completewith CleansingTheMotherTreeA
    #label CleansingTheMotherTreeB
    .enterScenario 1061 >>Entre no cenário |cRXP_PICK_Purificação da Árvore Mãe|r
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #requires CleansingTheMotherTreeB
    #completewith next
    #hidewindow
    .gossipoption 45306 >>Siga a Seta
    .timer 21,Encenação Omnuron
step
    #requires CleansingTheMotherTreeB
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,59.51,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senhor Celeste Omnuron|r.
    .scenario 2259,1 --Find out what happened from Skylord Omnuron.
    .target Senhor Celestial Omnuron
    .skipgossipid 45306
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    --.goto 198/1,-349880.01465,493840.00000
    .goto 198,60.52,44.54
    >>Cure |cRXP_FRIENDLY_Celestine da Colheita|r.
    .scenario 2269,2 --Heal Celestine to full health.
    .target Celestine da Colheita
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,61.68,43.60
    >>Cura |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r.
    .scenario 2269,1 --Heal Hamuul to full health.
    .target Arquidruida Hamuul Runa Totem
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.70,41.85
    >>Usar |T236288:0|t[Cura da Natureza] em |cRXP_FRIENDLY_Zen'tabra|r.
    .scenario 2269,3 --Cleanse Zen'tabra.
    .target Zen'tabra
    .macro Nature's Cure,236288 >>Cura da Natureza
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #hidewindow
    #completewith next
    .gossipoption 45261 >>Siga a Seta
    .timer 6,Encenação Breve
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .goto 198,60.24,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyessa Florespia|r.
    .scenario 2270,1 --Speak to Lyessa.
    .timer 180,Duração da Luta
    .target Lyessa Bloomwatcher
    .skipgossipid 45261
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.31,42.76
    >>|cRXP_WARN_Cura seus aliados por ~3 minutos|r.
    .scenario 2272,1 --1
    .scenario 2272,2 --Lyessa Must Survive
    .skipgossipid 45138
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,25.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Lyessa Florespia|r.
    .scenario 2325,1 --Give Corrupted G'Hanir to Lyessa.
    .target Lyessa Bloomwatcher
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Esperar a encenação|r.
    .scenario 2325,2 --Witness G'Hanir's rebirth.
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_G'Hanir|r.
    .scenario 2372,1 --Wield G'Hanir, the Mother Tree.
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>Usar |T1115592:0|t[Chamado da Árvore Mãe] |cRXP_WARN_no registro de missões sob seu minimapa|r.
    .scenario 2274,1 --Call upon the souls of the forest.
    .timer 15,Encenação Destrumath
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Esperar a encenação|r.
    .scenario 2274,2 --Eliminate Destromath.
step
    #completewith CleansingTheMotherTreeE
    #label CleansingTheMotherTreeC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyessa Florespia|r.
    .turnin 41689 >>Entregue Purificação da Árvore Mãe
    .target Lyessa Bloomwatcher
step
    .zoneskip 198,1
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeD
    .goto 198,59.05,43.52
    .zone 715 >>Entre no portal para a Estrada Onírica Esmeralda
step
    #requires CleansingTheMotherTreeD
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeF
    .zone 715 >>Usar |T135763:0|t[Caminhar no Sonho]
step
    .zoneskip 715,1
    #requires CleansingTheMotherTreeF
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeE
    .goto 715,45.60,23.46
    .zone 747 >>Entre no portal para The Dreamgrove
step
    #requires CleansingTheMotherTreeC
    .goto 747,45.20,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyessa Florespia|r.
    .turnin 41689 >>Entregue Purificação da Árvore Mãe
    .target Lyessa Bloomwatcher
]])
--Balance 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Druida de Equilíbrio
#displayname Artefato Arma: Equilíbrio
#next ac) Salão da Ordem Druida Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Balance Druid
]])
--Feral 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Druida Feral
#displayname Artefato Arma: Feral
#next ac) Salão da Ordem Druida Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Feral Druid
]])
--Guardian 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Druida Guardião
#displayname Artefato Arma: Guardião
#next ac) Salão da Ordem Druida Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Guardian Druid
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Druida de Restauração
#displayname Artefato Arma: Restauração
#next ac) Salão da Ordem Druida Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Restoration Druid
]])

--Druid Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Druida Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Druida
#chapter
#internal

<< Druid

step
    #completewith Making Trails2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Druid Part 1@A Summons From Moonglade-To The Dreamgrove
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rensar Grande Casco|r
    .accept 40646 >>Aceite Armas Lendárias
    .target Rensar Grande Casco
step
    .isQuestAvailable 40646
    .isQuestAvailable account,91955
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Importante: Selecione o que você já tem para ganhar um adicional de 10% de experiência (uma única vez)|r
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Balance Druid >>Remix\z) Artefato Arma: Druida de Equilíbrio >> Equilíbrio(DPS) Linha de Missões
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Feral Druid >>Remix\z) Artefato Arma: Druida Feral >> Feral(DPS) Linha de história
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Guardian Druid >>Remix\z) Artefato Arma: Druida Guardião >> Guardião(Tanque) Linha de história
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Restoration Druid >>Remix\z) Artefato Arma: Druida de Restauração >> Restauração(Curador) Linha de história
step
    #include ac) Order Hall Druid Part 2@Sowing The Seed-Making Trails
step
    .zoneskip 747,1
    .goto 747,56.51,43.15
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
]])

-- --------- Hunter ---------

--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Domínio das Feras
#displayname Artefato Arma: Domínio das Feras
#next a) Salão da Ordem Caçador Parte 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 44366 >>Aceite Uma Última Aventura
    .target Emmarel Guardassombra
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Domínio das Feras|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390106
    .target Emmarel Guardassombra
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 44366 >>Entregue Uma Última Aventura
    .target Emmarel Guardassombra
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 44043 >>Aceite A Lenda Continua
    .target Emmarel Guardassombra
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Domínio das Feras|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390106
    .target Emmarel Guardassombra
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 44043 >>Entregue A Lenda Continua
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 40618 >>Aceite Armas Lendárias
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Domínio das Feras|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390106
    .target Emmarel Guardassombra
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40618 >>Entregue Armas Lendárias
    .target Emmarel Guardassombra
step
    #completewith Beastly Expedition
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 41541 >>Aceite Expedição Animal
    .target Emmarel Guardassombra
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 41541 >>Aceite Expedição Animal
    .target Emmarel Guardassombra
step
    .isQuestTurnedIn 40959
    .isOnQuest 41541
    .goto 739,48.66,43.46
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
step
    #label Beastly Expedition
    .goto 627,71.39,50.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grif Selvacuore|r.
    .turnin 41541 >>Entregue Expedição Animal
    .accept 41574 >>Aceite Trovão Roubado
    .target Grif Selvacuore
step
    #completewith next
    #hidewindow
    .vehicle 106236 >>Siga a Seta
    .timer 65,Duração de Voo
step
    .goto 627,71.22,51.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Huey|r.
    .complete 41574,1 --1/1 Fly with Grif to Shield's Rest
    .target Huey
step
    #completewith next
    #hidewindow
    .goto 634,85.40,9.66
    .gossipoption 45594 >>Siga a Seta
    .timer 71,Grif Encenação
step
    .goto 634,84.90,9.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grif Selvacuore|r.
    .scenario 2291,1 --1/1 Meet Prustaga with Grif.
    .target Grif Selvacuore
    .skipgossipid 45594
step
    #title |cFFFCDC00Esquive os pequenos tornados|r
    .isInScenario 1068
    .goto 635,75.26,58.95,10,0
    .goto 635,52.67,52.30
    >>|cRXP_WARN_Siga a seta no túmulo|r
    >>Mate |cRXP_ENEMY_Íngrida Tempestece|r e |cRXP_ENEMY_Moldavento Espectral|r.
    .scenario 2300,1 --Find Warlord Volund's tomb.
    .mob Stormweaver Ingrida
    .mob Spectral Windshaper
step
    .isInScenario 1068
    .goto 635,55.02,43.84
    >>Mate as ondas de |cRXP_ENEMY_Restless Tombguards|r e |cRXP_ENEMY_Disturbed Rastreadores|r.
    .scenario 2301,1 --Protect Prustaga as she opens Volund's tomb.
    .timer 131,Duração da encenação
    .mob Restless Tombguard
    .mob Disturbed Tracker
    .mob Disturbed Worg
step
    .isInScenario 1068
    .goto 635,58.06,19.20
    >>Mate |cRXP_ENEMY_Esmagador Automático|r. |cRXP_WARN_Espere a encenação.|r
    .scenario 2298,1 --Search for Titanstrike.
    .mob Automated Crusher
step
    .isInScenario 1068
    .goto 635,58.27,17.73
    >>Mate |cRXP_ENEMY_Senhor da Guerra Volund|r. |cRXP_WARN_Espere a encenação|r
    .scenario 2423,1 --Defeat Warlord Volund.
    .mob Warlord Volund
step
    .isInScenario 1068
    .goto 635,58.25,17.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Plataforma de Teletransporte|r.
    .scenario 2424,1 --Join Keeper Mimiron in Ulduar.
    .complete 41574,2 --Track down Titanstrike: 1/1
step
    #title |cFFFCDC00Evite as bombas|r
    .goto 745,44.93,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mimiron|r.
    .turnin 41574 >>Entregue Trovão Roubado
    .accept 42158 >>Aceite A Oficina do Criador
    .target Mimiron
step
    #completewith TheCreatorsWorkshopI
    #label TheCreatorsWorkshopA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopB
    .goto 745,44.93,37.33
    .gossipoption 45357 >>Fale com |cRXP_FRIENDLY_Mimiron|r.
    .timer 50,Primeira Emergência
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Painel de Controle (1/2)
    #requires TheCreatorsWorkshopB
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopC
    #title Salto sobre as Ondas
    .goto 745,40.46,41.42
    .cast 6477 >>Clique no |cRXP_PICK_Painel de Controle|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Painel de Controle (2/2)
    #requires TheCreatorsWorkshopC
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopD
    #title Salto sobre as Ondas
    #loop
    .goto 745,40.46,41.42,8,0
    .goto 745,41.44,44.14,8,0
    .cast 6477 >>Clique no |cRXP_PICK_Painel de Controle|r.
    .timer 14,Segunda Emergência
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de Estabilização (1/4)
    #requires TheCreatorsWorkshopD
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopE
    .goto 745,45.50,43.96
    .cast 6477 >>Clique no |cRXP_PICK_Nodo da Matriz de Estabilização|r.
step
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopH
    #hidewindow
    #loop
    .goto 745,44.84,42.86,8,0
    .goto 745,45.49,41.13,8,0
    .goto 745,46.52,41.41,8,0
    .goto 745,45.50,43.96,8,0
    +1
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de Estabilização (2/4)
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopF
    .cast 6477 >>Clique no |cRXP_PICK_Nodo da Matriz de Estabilização|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de Estabilização (3/4)
    #requires TheCreatorsWorkshopF
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopG
    .cast 6477 >>Clique no |cRXP_PICK_Nodo da Matriz de Estabilização|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de Estabilização (4/4)
    #requires TheCreatorsWorkshopG
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopH
    .cast 6477 >>Clique no |cRXP_PICK_Nodo da Matriz de Estabilização|r.
    .timer 25,Última Emergência
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #requires TheCreatorsWorkshopH
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopI
    .goto 745,43.65,36.37
    .cast 6477 >>Clique em |cRXP_PICK_DO NOT PUSH THIS BUTTON!|r.
    .timer 27,Missão Concluída
step
    #requires TheCreatorsWorkshopA
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
    .skipgossipid 45357
step
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mimiron|r.
    .turnin 42158 >>Entregue A Oficina do Criador
    .accept 42185 >>Aceite Nunca Cace Sozinho
    .target Mimiron
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .zoneskip 745,1
    .goto 745,43.73,37.94
    .zone 120 >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Plataforma de Teleporte|r.
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .goto 120,25.73,47.51
    .enterScenario 1099 >>Voe para o cenário |cRXP_PICK_Never Caçada Alone|r.
    .timer 33,Encenação
step
    .isInScenario 1099
    #title Mova uma Vez para Começar a Encenação
    .goto 120,25.78,47.70
    >>|cRXP_WARN_Espere o roleplay.|r
    .scenario 2452,1 --Converse with Thorim.
step
    .isInScenario 1099
    .goto 120,25.90,48.55
    >>Mate os |cRXP_ENEMY_Proto-Drakes Trovejantes|r e o |cRXP_ENEMY_Ardente Tempestário|r.
    .scenario 2474,1 --Fend off the vrykul horde.
    .mob Thunderous Proto-Drake
    .mob Fervant Stormcaller
step
    .goto 120,25.74,47.38
    .isInScenario 1099
    >>Mate o |cRXP_ENEMY_Prustaga|r.
    .scenario 2480,1 --Defeat Prustaga.
    .timer 73,Encenação
    .mob Prustaga
step
    .isInScenario 1099
    .goto 120,25.74,47.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Hati|r.
    .scenario 2481,1 --Bind Hati's spirit to your own.
    .target Hati
step
    .isInScenario 1099
    .goto 120,25.74,47.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Golpe do Titã|r.
    .scenario 2482,1 --Wield Titanstrike.
    .complete 42185,2 --1/1 Titanstrike recovered
    .timer 65,Espere por Huey
step
    .isInScenario 1099
    .goto 120,26.05,47.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Huey|r depois da encenação.
    .scenario 2483,1 --Ride Huey to return to Dalaran.
    .timer 36,Duração de Voo
step
    .isQuestTurnedIn 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grif Selvacuore|r.
    .turnin 42185 >>Entregue Nunca Cace Sozinho
    .target Grif Selvacuore
step
    .isQuestAvailable 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grif Selvacuore|r.
    .turnin 42185 >>Entregue Nunca Cace Sozinho
    .accept 41009 >>Aceite De Caçador para Caçador.
    .target Grif Selvacuore
step
    .isQuestAvailable 40959
    #completewith next
    #label HunterToHunterBMA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 41009 >>Entregue De Caçador para Caçador.
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40959
    #title |cRXP_WARN_Entre na casa|r
    #completewith HunterToHunterBMA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Siga a seta para a casa.|r
step
    .isQuestAvailable 40959
    #requires HunterToHunterBMA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 41009 >>Entregue De Caçador para Caçador.
    .target Emmarel Guardassombra
]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Precisão
#displayname Artefato Arma: Precisão
#next a) Salão da Ordem Caçador Parte 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 44366 >>Aceite Uma Última Aventura
    .target Emmarel Guardassombra
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Precisão.|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390107
    .target Emmarel Guardassombra
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 44366 >>Entregue Uma Última Aventura
    .target Emmarel Guardassombra
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 44043 >>Aceite A Lenda Continua
    .target Emmarel Guardassombra
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Precisão.|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390107
    .target Emmarel Guardassombra
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 44043 >>Entregue A Lenda Continua
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 40618 >>Aceite Armas Lendárias
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Precisão.|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390107
    .target Emmarel Guardassombra
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40618 >>Entregue Armas Lendárias
    .target Emmarel Guardassombra
step
    #completewith RendezvousWithTheCourierA
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 41540 >>Aceite Encontro com o Mensageiro
    .target Emmarel Guardassombra
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 41540 >>Aceite Encontro com o Mensageiro
    .target Emmarel Guardassombra
step
    .isQuestTurnedIn 40959
    .isOnQuest 41540
    .goto 739,48.66,43.46
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
step
    #completewith next
    #label RendezvousWithTheCourierA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mensageiro Larkspur|r.
    .turnin 41540 >>Entregue Encontro com o Mensageiro
    .accept 40392 >>Aceite Chamado do Atirador Perito
    .target Mensageira Larkspur
step
    .isQuestAvailable 40959
    .zoneskip 627,1
    #title |cFFFCDC00Sair da Casa|r
    #completewith RendezvousWithTheCourierA
    .goto 627,58.58,51.30,8 >>|cRXP_WARN_Siga a seta para sair da casa.|r
step
    #requires RendezvousWithTheCourierA
    .goto 627,71.43,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mensageiro Larkspur|r.
    .turnin 41540 >>Entregue Encontro com o Mensageiro
    .target Mensageira Larkspur
    .accept 40392 >>Aceite Chamado do Atirador Perito
step
    .goto 646,32.28,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa Correventos|r.
    .complete 40392,2 --1/1 Speak to Vereesa Windrunner
    .target Vereesa Correventos
step
    .convertquest 40402,40400 << Alliance
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa Correventos|r.
    .turnin 40392 >>Entregue Chamado do Atirador Perito
    .accept 40402 >>Aceite Operação Clandestina
    .target Vereesa Correventos
step
    #completewith next
    #hidewindow
    .gossipoption 47259 >>Siga a Seta
    .timer 56,Vereesa Encenação
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa Correventos|r.
    .complete 40402,1 --1/1 Listen to Vereesa Windrunner
    .target Vereesa Correventos
    .skipgossipid 47259
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa Correventos|r.
    .turnin 40402 >>Entregue Operação Clandestina
    .accept 40419 >>Aceite Missão de Resgate
    .target Vereesa Correventos
step
    #completewith next
    #hidewindow
    .gossipoption 47260 >>Siga a Seta
    .timer 14,Vereesa Encenação
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa Correventos|r.
    .complete 40419,1 --1/1 Speak to Vereesa and begin the mission
    .target Vereesa Correventos
    .skipgossipid 47260
step
    .isOnQuest 40419
    .goto 646,32.06,31.98
    .enterScenario 972 >>Passe pelo portal para entrar no cenário |cRXP_PICK_Legado dos Windrunners|r.
step
    .goto 714,16.33,52.95
    >>|cRXP_WARN_Siga a seta.|r
    .complete 40419,2 --1/1 Travel through the portal to Niskara
step
    .isInScenario 972
    .goto 714,18.47,47.36,25,0
    .goto 714,20.07,49.91
    |cRXP_WARN_Follow the arrow.|r
    .scenario 1988,1 --Survey the rise ahead and elminate Legion patrols.
step
    .isInScenario 972
    .goto 714,23.03,50.41
    >>Abate os |cRXP_ENEMY_Lordes Eredar do Portal|r.
    .scenario 2000,1 --Eliminate the demon summoners to close the portal.
    .timer 12,Parede Encenação
    .mob Eredar Portal Lord
step
    .isInScenario 972
    .goto 714,38.84,45.41
    >>Mate os |cRXP_ENEMY_demônios|r no seu caminho para abrir caminho para |cRXP_FRIENDLY_Vereesa Correventos|r.
    .scenario 2001,1 --Advance into Legion territory and look for Alleria and Orestes.
step
    .isInScenario 972
    .goto 714,40.57,45.66
    >>Mate |cRXP_ENEMY_Senhora Torvis|r e |cRXP_WARN_espere a encenação|r.
    .scenario 2002,1 --Eliminate Mistress Torvis and save Orestes.
step
    .isInScenario 972
    .goto 714,41.13,54.04,25,0
    .goto 714,50.07,57.89
    >>Mate |cRXP_ENEMY_Arauto Xarbizuld|r.
    .scenario 2017,1 --Enter the cathedral and defeat Herald Xarbizuld.
    .mob Herald Xarbizuld
step
    .isInScenario 972
    .goto 714,64.28,60.03
    >>Mate |cRXP_ENEMY_Alto-inquisidor Qormadolon|r e os |cRXP_ENEMY_Olhares de Qormaladon|r.
    .scenario 2063,1 --Defeat High Inquisitor Qormaladon and his eyes
    .mob Fiery Gaze of Qormaladon
    .mob Icy Gaze of Qormaladon
    .mob High Inquisitor Qormaladon
step
    #completewith next
    #hidewindow
    .goto 714,69.98,59.65,20,0
    .goto 714,71.47,73.66,20 >>Siga a Seta
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 2255,1 --Help Vereesa search the Inquisitor's overlook for Alleria.
    .complete 40419,3 --1/1 Rescue Alleria Windrunner
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Thas'dorah, Legado dos Correventos|r.
    .scenario 2061,1 --Pick up Thas'dorah, Legacy of the Windrunners.
    .complete 40419,4 --1/1 Take Thas'dorah (Optional)
    .timer 8,Encenação
step
    .goto 714,70.91,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa e saia de Niskara|r.
    .complete 40419,5 --1/1 Talk to Vereesa and leave Niskara
    .target Vereesa and leave Niskara
    .skipgossipid 45238
step
    .goto 627,66.03,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vereesa Correventos|r.
    .turnin 40419 >>Entregue Missão de Resgate.
    .accept 40952 >>Aceite De Caçador para Caçador.
    .target Vereesa Correventos
step
    #completewith next
    #label HunterToHunterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40952 >>Entregue De Caçador para Caçador.
    .target Emmarel Guardassombra
step
    #title |cRXP_WARN_Entre na Casa|r
    #completewith HunterToHunterA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Siga a seta para a casa.|r
step
    #requires HunterToHunterA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40952 >>Entregue De Caçador para Caçador.
    .target Emmarel Guardassombra
]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Sobrevivência
#displayname Artefato Arma: Sobrevivência
#next a) Salão da Ordem Caçador Parte 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 44366 >>Aceite Uma Última Aventura
    .target Emmarel Guardassombra
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sobrevivência|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390108
    .target Emmarel Guardassombra
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 44366 >>Entregue Uma Última Aventura
    .target Emmarel Guardassombra
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 44043 >>Aceite A Lenda Continua
    .target Emmarel Guardassombra
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sobrevivência|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390108
    .target Emmarel Guardassombra
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 44043 >>Entregue A Lenda Continua
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 40618 >>Aceite Armas Lendárias
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sobrevivência|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390108
    .target Emmarel Guardassombra
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40618 >>Entregue Armas Lendárias
    .target Emmarel Guardassombra
step
    #completewith Preparation for the Hunt
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 41542 >>Aceite Preparativos para a Caça
    .target Emmarel Guardassombra
step
    .goto 627,60.04,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 41542 >>Aceite Preparativos para a Caça
    .target Emmarel Guardassombra
step
    .isQuestTurnedIn 40959
    .isOnQuest 41542
    .goto 739,48.66,43.46
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
step
    #label Preparation for the Hunt
    .goto 627,71.11,50.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Apata Alta Montanha|r.
    .turnin 41542 >>Entregue Preparativos para a Caça
    .accept 39427 >>Aceite A Bênção do Espírito de Águia
    .target Apata Alta Montanha
step
    .goto 627,71.74,50.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Hipogrifo de Alta Montanha|r.
    .complete 39427,1 --1/1 Fly to Spiritwatch Point
    .target Highmountain Hippogryph
    --.timer 107,Flight Duration
step
    .goto 650,59.53,81.22
    >>|cRXP_WARN_Siga a seta.|r
    .complete 39427,2 --1/1 Get back to Spiritwatch Point
step
    .goto 650,58.91,81.14
    >>Mate |cRXP_ENEMY_Degar Bloodtotem|r.
    .complete 39427,3 --1/1 Kill Degar Bloodtotem
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Ohn'ahra|r.
    .complete 39427,4 --1/1 Receive the Eagle Spirit's blessing
    .target Ohn'ahra
step
    .goto 650,60.79,80.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Apata Alta Montanha|r.
    .turnin 39427 >>Entregue A Bênção do Espírito de Águia
    .accept 40385 >>Aceite A Lança nas Sombras
    .target Apata Alta Montanha
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Ohn'ahra|r.
    .complete 40385,1 --1/1 Take the Eagle Spirit flight to the harbor
    .target Ohn'ahra
step
    .isOnQuest 40385
    .goto 650,60.82,80.83
    .enterScenario 973 >>Entre em |cRXP_PICK_The Lança in the Sombra|r.
step
    #completewith next
    #hidewindow
    .gossipoption 45080 >>Siga a Seta
    .timer 27,Apata Encenação
step
    .isInScenario 973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Apata|r no local de desembarque.
    .scenario 1965,1 --Speak with Apata at the landing site.
    .target Apata at the landing site.
    .skipgossipid 45080
step
    .isInScenario 973
    .goto 694,56.83,46.24
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 1967,1 --Investigate Tideskorn Harbor
step
    .isInScenario 973
    .goto 634,57.51,46.48
    >>Mate o Guardião da Bruma|cRXP_ENEMY_ ou use seu |T135834:0|t[Armadilha Congelante]|r em |cRXP_ENEMY_Guardião da Bruma|r.
    .scenario 1968,1 --Defeat the Mist Warder using your Freezing Trap.
    .mob Mist Warder
    .usespell 187650
step
    .isInScenario 973
    .goto 634,57.61,46.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Pedra de Proteção Rúnica|r.
    .scenario 2055,1 --Obtain the Activated Wardstone
step
    .isInScenario 973
    #title Wardstone (1/3)
    .goto 634,58.96,46.69,24,0
    .goto 634,58.80,44.93
    >>Mate o Guardião da Bruma|cRXP_ENEMY_ ou use seu |T135834:0|t[Armadilha Congelante]|r em |cRXP_ENEMY_Guardião da Bruma|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Pedra de Proteção Rúnica|r.
    *|cRXP_WARN_NOTA:|r A ordem está codificada. Se você fizer a missão em ordem diferente, o ponto de rota será incorreto.
    .scenario 1969,1,1 --1/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Wardstone (2/3)
    .goto 634,58.62,43.48
    >>Mate o Guardião da Bruma|cRXP_ENEMY_ ou use seu |T135834:0|t[Armadilha Congelante]|r em |cRXP_ENEMY_Guardião da Bruma|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Pedra de Proteção Rúnica|r.
    *|cRXP_WARN_NOTA:|r A ordem está codificada. Se você fizer a missão em ordem diferente, o ponto de rota será incorreto.
    .scenario 1969,1,2 --2/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Wardstone (3/3)
    .goto 634,60.01,43.75
    >>Mate o Guardião da Bruma|cRXP_ENEMY_ ou use seu |T135834:0|t[Armadilha Congelante]|r em |cRXP_ENEMY_Guardião da Bruma|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Pedra de Proteção Rúnica|r.
    *|cRXP_WARN_NOTA:|r A ordem está codificada. Se você fizer a missão em ordem diferente, o ponto de rota será incorreto.
    .scenario 1969,1 --3/3 Obtain more Activated Wardstones
step
    #completewith next
    #hidewindow
    .gossipoption 44907 >>Siga a Seta
    .timer 13,Apata Encenação
step
    .isInScenario 973
    .goto 634,55.32,42.45,-1
    .goto 694,55.32,42.45,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Apata Alta Montanha|r.
    .scenario 1970,1 --Speak with Apata
    .target Apata Alta Montanha
    .skipgossipid 44906
    .skipgossipid 44907
step
    .isInScenario 973
    .goto 694,55.44,42.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Magic Arpão|r.
    .scenario 1971,1 --Use the harpoon to cross the fog.
    .timer 20,Encenação
step
    .isInScenario 973
    .goto 694,55.95,40.44
    >>Usar |T135815:0|t[Sinalizador] e mate os |cRXP_ENEMY_Illusory Stalkers|r.
    .scenario 1976,1 --Use Flare to reveal and defeat the illusions.
    .mob Illusory Stalker
    .usespell 1543
step
    .isInScenario 973
    .goto 694,54.91,39.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Armadilha de Bruma|r.
    >>Mate os |cRXP_ENEMY_Illusory Stalkers|r e o |cRXP_ENEMY_Dakarr|r.
    .scenario 1977,1 --Place a trap in the mists to catch Dakarr.
    .mob Dakarr
    .mob Illusory Stalker
step
    .isInScenario 973
    .goto 694,57.40,37.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Armadilha de Bruma|r.
    >>Mate os |cRXP_ENEMY_Illusory Stalkers|r e o |cRXP_ENEMY_Dakarr|r.
    .scenario 1985,1 --Trap Dakarr in the mist lair.
    .mob Dakarr
    .mob Illusory Stalker
step
    #completewith next
    #label SlayDakarrA
    .isInScenario 973
    >>Mate o |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    #title |cFFFCDC00Entre na caverna|r
    #completewith SlayDakarrA
    .goto 694,57.88,34.53,8 >>|cRXP_WARN_Siga a seta para dentro da caverna.|r
step
    #requires SlayDakarrA
    .isInScenario 973
    .goto 694,58.52,33.73
    >>Mate o |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    .isInScenario 973
    .goto 694,58.49,33.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Garranha|r.
    .scenario 1987,1 --Take Talonclaw.
    .complete 40385,2 --1/1 Slay the Highmountain's Bane and reclaim Talonclaw
step
    .goto 694,58.58,33.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal para Dalaran|r.
    .complete 40385,3 --1/1 Return to Dalaran
step
    #completewith next
    #label TheSpearInTheShadowA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40385 >>Entregue A Lança nas Sombras
    .target Emmarel Guardassombra
step
    #title |cRXP_WARN_Entre na casa|r
    #completewith TheSpearInTheShadowA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Siga a seta para a casa.|r
step
    #requires TheSpearInTheShadowA
    .goto 627,60.05,53.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .turnin 40385 >>Entregue A Lança nas Sombras
    .target Emmarel Guardassombra
]])
--Beast Mastery 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefato Arma: Domínio das Feras
#displayname Artefato Arma: Domínio das Feras
#next ac) Salão da Ordem Caçador Parte 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery
]])
--Marksmanship 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefato Arma: Precisão
#displayname Artefato Arma: Precisão
#next ac) Salão da Ordem Caçador Parte 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Marksmanship
]])
--Survival 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefato Arma: Sobrevivência
#displayname Artefato Arma: Sobrevivência
#next ac) Salão da Ordem Caçador Parte 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Survival
]])

--Hunter Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Caçador Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Caçador da Sala da Ordem
#chapter
#internal

<< Hunter

step
    #completewith The Campaign Begins2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Hunter Part 1@Needs of the Hunters-The Hunter's Call
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emmarel Guardassombra|r.
    .accept 40618 >>Aceite Armas Lendárias
    .target Emmarel Guardassombra
step
    .isQuestAvailable 40618
    .isQuestAvailable account,91955
    .goto 627,60.03,53.41
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Importante: Selecione o que você já tem para ganhar um adicional de 10% de experiência (uma única vez)|r
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery >>RestedXP Legion Remix\a) Artefato Arma: Domínio das Feras >> Domínio das Feras (DPS) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Marksmanship >>RestedXP Legion Remix\a) Artefato Arma: Precisão >> Precisão (DPS) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Survival >>RestedXP Legion Remix\a) Artefato Arma: Sobrevivência >> Sobrevivência (DPS) Cadeia de Missões
step
    #include ac) Order Hall Hunter Part 2@Eagle's Wings-The Campaign Begins
step
    .zoneskip 739,1
    .goto 739,48.63,43.48
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
]])

-- --------- Mage ---------

--Arcane
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Arcano
#displayname Artefato Arma: Arcano
#next a) Salão da Ordem Mago Parte 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Arcane
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .usespell 193759
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 44310 >>Aceite O Triplo do Poder
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .turnin 44310 >>Entregue O Triplo do Poder
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .accept 43441 >>Aceite Uma Segunda Arma
    .target Meryl Tempestavil
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 43441 >>Entregue Uma Segunda Arma
    .target Meryl Tempestavil
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 41085 >>Aceite A Arma de um Mago
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Livro|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .turnin 41085 >>Entregue A Arma de um Mago
step
    #completewith Wyrmrest Temple
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 42001 >>Aceite Aluneth, o Grande Cajado de Magna
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 42001 >>Aceite Aluneth, o Grande Cajado de Magna
step
    .isQuestAvailable 41113
    .goto 735,62.48,51.16
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .usespell 224869
step
    .isQuestTurnedIn 41113
    .goto 734,57.36,90.36
    .zone 627 >>Usar |T1535374:0|t[Teleporte: Dalaran – Ilhas Partidas] ou |TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .usespell 224869
step
    #requires Greatstaff of the Magna
    .goto 627,28.54,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Kalec|r
    .turnin 42001 >>Entregue Aluneth, o Grande Cajado de Magna
    .target Arquimago Kalec
    .accept 42006 >>Aceite Uma Nova Ameaça
step
    #completewith next
    #label Wyrmrest Temple
    .goto 627,46.37,53.12,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #completewith Wyrmrest Temple
    .goto 627,49.47,47.22,10 >>Vá para o centro de Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.71,84.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    .goto 115,56.01,65.92
    #title |cFFFCDC00Siga a Seta|r
    .complete 42006,2 --1/1 Travel to the Azure Dragonshrine
step
    .goto 115,56.4,65.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Pista|r
    .complete 42006,3,1 --3/3 Clues Found
step
    .goto 115,56.29,66.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Pista|r
    .complete 42006,3,2 --3/3 Clues Found
step
    .goto 115,56.04,67.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Pista|r
    .complete 42006,3,3 --3/3 Clues Found
step
    .goto 115,56.69,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Device|r
    .turnin 42006 >>Entregue Uma Nova Ameaça
    .accept 42007 >>Aceite Um Inimigo Esquecido
step
    #completewith next
    #label Communication Device
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    #completewith Communication Device
    .goto 115,56.66,69.11
    .cast 3365 >>Clique em |cRXP_PICK_Communication Device|r
    .timer 26,Aguarde o RP
step
    #requires Communication Device
    .goto 115,56.66,69.11
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42007 >>Entregue Um Inimigo Esquecido
    .accept 42008 >>Aceite Olhos do Dragão
step
    #completewith next
    #label Nexus spire
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42008,1 --1/1 Nexus spire scouted
step
    #completewith Nexus spire
    .cast 311678 >>Usar |T254294:0|t[Pergaminho de Teleporte do Nexus]
    .use 173430
step
    #requires Nexus spire
    .goto 114,29.02,28.45
    #title |cFFFCDC00Siga a Seta|r
    .complete 42008,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.29,28.47
    #title |cFFFCDC00Siga a Seta|r
    .complete 42008,2 --1/1 Surge Needle scouted
step
    .goto 114,29.02,27.16
    #title |cFFFCDC00Siga a Seta|r
    .complete 42008,3 --1/1 Nexus foundation scouted
step
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42008 >>Entregue Olhos do Dragão
    .accept 42009 >>Aceite Controlando o Arcano
step
    #loop
    .goto 114,29.2,25.94,35,0
    .goto 114,28.08,24.32,35,0
    .goto 114,26.5,24.85,35,0
    .goto 114,26.02,27.6,35,0
    .goto 114,27.11,29.21,35,0
    >>Mate |cRXP_ENEMY_Aberrante Arcano|r para preencher a barra.
    .complete 42009,1 --1/1 Empowered with Unstable Arcane Energy
    .mob Arcane Aberrant
    .mob Arcane Aberrant
step
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42009 >>Entregue Controlando o Arcano
    .accept 42010 >>Aceite Arcano Liberado
step
    .goto 114,27.32,20.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Focused Caos|r
    .complete 42010,3 --1/1 North Surge Needle destroyed
step
    .goto 114,32.71,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Focused Caos|r
    .complete 42010,1 --1/1 East Surge Needle destroyed
step
    .goto 114,24.14,29.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Focused Caos|r
    .complete 42010,2 --1/1 West Surge Needle destroyed
step
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42010 >>Entregue Arcano Liberado
    .accept 42011 >>Aceite A Câmara do Nexus
step
    .isOnQuest 42011
    .goto 114,27.52,26.16
    .enterScenario 1101 >>Entre no Nexus
step
    #loop
    .goto 736,36.1,69.38,15,0
    .goto 736,35.24,66.21,15,0
    .goto 736,37.45,66.22,15,0
    .isInScenario 1101
    >>Mate os |cRXP_ENEMY_Scions|r
    .scenario 2466,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Magic
step
    .isInScenario 1101
    .goto 736,23.74,67.39,15,0
    .goto 736,22.07,66.29,15,0
    .goto 736,21.49,58.31,15,0
    .goto 736,19.1,51.58,25,0
    .goto 736,20.16,47.84,25,0
    .goto 736,21.75,40.63,25,0
    .goto 736,22.48,35.61,25,0
    .goto 736,26.55,34.35
    #title |cFFFCDC00Siga a Seta|r
    >>Usar |T135739:0|t[Cintilação] ou |T135736:0|t[Lampejo] através das Barreiras, ou pule com sua costa voltada para elas para passar por elas.
    .usespell 1953
    .scenario 2467,1 --Reach the Librarium
    .timer 44,Aguarde o RP
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2467,2 --Find a way into the vault
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>Mate |cRXP_ENEMY_Eco de Aluneth|r
    .scenario 2468,1 --Echo of Aluneth defeated
    .mob Echo of Aluneth
step
    #completewith next
    #label Reach the Rift
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith Reach the Rift
    .isInScenario 1101
    .goto 736,26.92,25.76,15,0
    .goto 736,31.06,22.83,15 >>Siga a seta e espere |cRXP_FRIENDLY_Azuregos|r aparecer
    .timer 38,Aguarde o RP
    .target Azuregos
step
    #requires Reach the Rift
    .goto 736,31.06,22.83
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith next
    #label Nexus-Prince Bilaal
    .isInScenario 1101
    >>Mate |cRXP_ENEMY_Príncipe do Nexus Balaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith Nexus-Prince Bilaal
    .isInScenario 1101
    .goto 736,31.32,22.37
    *|cRXP_WARN_Espere|r |cRXP_FRIENDLY_Azuregos|r |cRXP_WARN_aparecer|r.
    .vehicle >>Clique em |cRXP_PICK_Azuregos|r
    .timer 35,Aguarde o RP
    .target Azuregos
step
    #requires Nexus-Prince Bilaal
    .goto 736,59.19,20.4
    .isInScenario 1101
    >>Mate |cRXP_ENEMY_Príncipe do Nexus Balaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .timer 28,Aguarde o RP
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    *Usar o |cRXP_WARN_|T237448:0|t[ExtraActionButton]|r nos Campos de Magia roxos.
    *|cRXP_WARN_Cuidado com as bolhas flutuantes, pois elas o derrubam|r.
    .scenario 2471,1 --Place the First Scroll of Meitre
    .scenario 2471,2 --Place the Second Scroll of Meitre
    .scenario 2471,3 --Place the Third Scroll of Meitre
    .usespell 225025
step
    .isInScenario 1101
    #label Artifact Weapon: Arcane
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Arma|r no meio.
    .complete 42011,2 --1/1 Aluneth
step
    #completewith next
    #label Nexus Vault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Kalec|r
    .turnin 42011 >>Entregue A Câmara do Nexus
    .target Arquimago Kalec
    .accept 41114 >>Aceite O Retorno do Campeão
    .disablecheckbox
step
    #completewith Nexus Vault
    .zoneskip 627
    .zone 627 >>Entre em Dalaran (Verifique seus teleportes)
    .usespell 224869
    .usespell 193759
step
    #requires Nexus Vault
    .goto 627,28.62,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquimago Kalec|r dentro da Cidadela Violeta.
    .turnin 42011 >>Entregue A Câmara do Nexus
    .timer 10,Aguarde o RP
    .target Arquimago Kalec
]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Fogo
#displayname Artefato Arma: Fogo
#next a) Salão da Ordem Mago Parte 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Fire
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 44310 >>Aceite O Triplo do Poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .turnin 44310 >>Entregue O Triplo do Poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .accept 43441 >>Aceite Uma Segunda Arma
    .target Meryl Tempestavil
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 43441 >>Entregue Uma Segunda Arma
    .target Meryl Tempestavil
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 41085 >>Aceite A Arma de um Mago
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Livro|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .turnin 41085 >>Entregue A Arma de um Mago
step
    #completewith Crystal's Message
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 40267 >>Aceite Uma Mensagem Inesperada
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 40267 >>Aceite Uma Mensagem Inesperada
step
    #completewith next
    #hidewindow
    #label Crystal's Message
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #completewith Crystal's Message
    .cast 195264 >>Usar |T132776:0|t[Glowing Ressoar Cristal]
    .timer 40,Aguarde o RP
    .use 130131
step
    #requires Crystal's Message
    #completewith next
    #label Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,54.59,55.34,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jardson Watkins|r
    .accept 44240 >>Aceite Laranja é o Novo Roxo
    .turnin 44240 >>Entregue Laranja é o Novo Roxo
    .target Jardson Watkins
step
    #requires Crystal's Message
    #completewith Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.66,57.89,40 >>Siga a Seta
step
    #requires Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.54,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jardson Watkins|r
    .accept 44240 >>Aceite Laranja é o Novo Roxo
    .turnin 44240 >>Entregue Laranja é o Novo Roxo
    .target Jardson Watkins
step
    #requires Crystal's Message
    .isQuestTurnedIn 41113
    #title |cFFFCDC00Siga a Seta|r
    .goto 735,55.6,56.06,15,0
    .goto 734,59.95,56.3
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #requires Crystal's Message
    .isQuestAvailable 41113
    #title |cFFFCDC00Siga a Seta|r
    .goto 735,62.63,51.41
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    .isQuestAvailable 41113
    .goto 735,62.63,51.41
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    .goto 734,57.31,90.48
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
-- step
--     .isQuestTurnedIn 42479
--     #loop
--     .goto 627,48.04,16.94,30,0
--     .goto 627,24.58,50.15,30,0
--     .goto 627,46.85,69.23,30,0
--     .goto 627,60.1,63.38,30,0
--     .goto 627,68.45,44.91,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
--     .skipgossipid 45655
--     .target Fiora Ar'nareth
step
    #completewith next
    #label Dalaran Crater
    >>Vá para o centro de Dalaran e |TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    #completewith Dalaran Crater
    .goto 734,57.28,90.47
    .zone 627 >>Clique em |cRXP_PICK_Portal|r
step
    #requires Dalaran Crater
    .goto 627,53.13,52.24,10,0
    .goto 627,49.01,47.36,10,0
    .goto 629,36.82,72.57,10,0
    .goto 629,28.76,77.32
    >>Vá para o centro de Dalaran e |TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    .goto 25,28.74,37.33
    #title |cFFFCDC00Siga a Seta|r
    .complete 40267,2 --1/1 Meet Archmage Modera in Hillsbrad
step
    .goto 25,28.74,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimaga Modera|r
    .turnin 40267 >>Entregue Uma Mensagem Inesperada
    .target Arquimaga Modera
    .accept 40270 >>Aceite O Caminho da Expiação
    .timer 99,Aguarde o RP
step
    .goto 25,28.74,37.33
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40270,1 --1/1 Discover the location of Felo'melorn
step
    .goto 25,28.73,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aethas Fendessol|r
    .turnin 40270 >>Entregue O Caminho da Expiação
    .target Aethas Fendessol
    .accept 11997 >>Aceite A Chama Congelada
    .timer 12,Aguarde o RP
step
    .goto 25,28.76,37.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 11997,1 --1/1 Mage Portal Taken
step
    .goto 700,76.67,63.89
    .isOnQuest 11997
    >>Abate |cRXP_ENEMY_Conjurador Gelonato|r e esquive os fluxos de vento
    .scenario 1926,1 --Defeat the Iceborn Conjurer and enter into Icecrown Citadel
    .mob Iceborn Conjurer
step
    .goto 700,76.73,62.14
    .isInScenario 957
    >>Destrua |cRXP_ENEMY_Parede de Permafrio|r
    .scenario 1927,1,1 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,76.08,55.91,10,0
    .goto 700,73.6,54.72
    .isInScenario 957
    >>Destrua |cRXP_ENEMY_Parede de Permafrio|r
    .scenario 1927,1,2 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,62.12,53.59
    .isInScenario 957
    >>Destrua |cRXP_ENEMY_Parede de Permafrio|r
    .scenario 1927,1,3 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,52.47,38.37
    .isInScenario 957
    >>Destrua |cRXP_ENEMY_Parede de Permafrio|r
    .scenario 1927,1,4 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,51.9,29.32
    .isInScenario 957
    >>Abate as |cRXP_ENEMY_Ondas|r de inimigos
    .scenario 1928,1 --Defeat waves of enemies
    .mob Exploding Ghoul
    .mob Burning Skeleton
    .mob Charbone
step
    .goto 700,51.84,17.39
    .isInScenario 957
    >>Abate |cRXP_ENEMY_Lyandra Andassol|r
    .scenario 1929,1 --Slay Lyandra Sunstrider
    .mob Lyandra Sunstrider
step
    #label Artifact Weapon: Fire
    .goto 700,51.8,16.4
    .isInScenario 957
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Felo'melorn|r
    .scenario 1930,1 --Take Felo'melorn
    .complete 11997,2 --1/1 Obtain Felo'melorn
step
    #completewith next
    #label Frozen Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimaga Modera|r
    .turnin 11997 >>Entregue A Chama Congelada
    .target Arquimaga Modera
step
    #completewith Frozen Flame
    .goto 700,51.85,18.65
    .zoneskip 627
    .zone 627 >>Entre em Dalaran (Verifique seus teleportes)
    .usespell 224869
    .usespell 193759
step
    #requires Frozen Flame
    .goto 627,28.40,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimaga Modera|r
    .turnin 11997 >>Entregue A Chama Congelada
    .target Arquimaga Modera
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Mago de Gelo
#displayname Artefato Arma: Gélido
#next a) Salão da Ordem Mago Parte 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Frost Mage
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 41113
    .zoneskip 734
    .zoneskip 735
    .zone 734 >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 44310 >>Aceite O Triplo do Poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .turnin 44310 >>Entregue O Triplo do Poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .accept 43441 >>Aceite Uma Segunda Arma
    .target Meryl Tempestavil
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 43441 >>Entregue Uma Segunda Arma
    .target Meryl Tempestavil
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 41085 >>Aceite A Arma de um Mago
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Livro|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .turnin 41085 >>Entregue A Arma de um Mago
step
    #completewith Speak with Meryl
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 42452 >>Aceite Procurando Ébano Gélido
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 42452 >>Aceite Procurando Ébano Gélido
step
    #loop
    .goto 735,55.14,34.77,5,0
    .goto 735,52.65,41.84,10,0
    .goto 735,66.62,40.84,10,0
    .goto 735,53.89,49.19,10,0
    .goto 735,65.02,49.44,10,0
    .goto 735,66.53,40.82,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Pistas|r
    .complete 42452,1 --3/3 Find information on Arrexis
step
    #completewith next
    #label Speak with Meryl
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42452,2 --1/1 Speak with Meryl
    -- .skipgossipid 46445
step
    #completewith Speak with Meryl
    .isQuestAvailable 41113
    .goto 735,59.12,43.03
    .gossipoption 45566 >>Fale com |cRXP_FRIENDLY_Meryl|r
    .timer 54,Aguarde o RP
    .target Meryl
step
    #completewith Speak with Meryl
    .isQuestTurnedIn 41113
    .goto 735,55.36,38.2
    .gossipoption 46445 >>Fale com |cRXP_FRIENDLY_Meryl|r
    -- .timer 55,RP
    .target Meryl
step
    #requires Speak with Meryl
    .goto 735,59.15,42.94
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42452,2 --1/1 Speak with Meryl
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 42452 >>Entregue Procurando Ébano Gélido
    .target Meryl Tempestavil
    .accept 42477 >>Aceite Daio, o Decrépito
    .accept 42476 >>Aceite O Sítio de Vento Morto
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 42452 >>Entregue Procurando Ébano Gélido
    .target Meryl Tempestavil
    .accept 42477 >>Aceite Daio, o Decrépito
    .accept 42476 >>Aceite O Sítio de Vento Morto
step
    .goto 735,60.64,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodi|r
    .accept 42455 >>Aceite Gemas de Alodi
    .target Alodi
step
    .isQuestAvailable 41113
    #completewith next
    #hidewindow
    #label Bank of Dalaran
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestAvailable 41113
    #completewith Bank of Dalaran
    .goto 735,63.77,49.66
    .zone 627 >>Clique no |cRXP_PICK_Portal|r ou Usar |T1535374:0|t[Teleporte: Dalaran – Ilhas Partidas]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestAvailable 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00Siga a Seta|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestTurnedIn 41113
    #completewith next
    #hidewindow
    #label Bank of Dalaran2
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    .isQuestTurnedIn 41113
    #completewith Bank of Dalaran2
    .goto 734,57.34,90.63
    .zone 627 >>Clique no |cRXP_PICK_Portal|r ou Usar |T1535374:0|t[Teleporte: Dalaran – Ilhas Partidas]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestTurnedIn 41113
    #requires Bank of Dalaran2
    #title |cFFFCDC00Siga a Seta|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    #completewith next
    #label manager
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    #completewith manager
    #loop
    .goto 627,52.42,18.04,10,0
    .goto 627,52.25,14.72,10,0
    .goto 627,50.32,16.94,10,0
    .gossipoption 45770 >>Fale com |cRXP_FRIENDLY_Glutona|r
    .timer 26,Aguarde o RP
    .target Glutona
step
    #requires manager
    .goto 627,55.08,16.45
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    .goto 627,55.08,16.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42455,3 --1/1 Enter Alodi's personal vault
step
    #loop
    .goto 627,50.78,15.72,10,0
    .goto 627,54.31,14.99,10,0
    .goto 627,53.92,18.72,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Gemas|r
    .complete 42455,4 --3/3 Find the Mana Gems
step
    #completewith next
    #hidewindow
    #label Blasted Lands Scroll
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    #completewith Blasted Lands Scroll
    .goto 627,54.22,19.39
    .cast 311800 >>Usar |T254294:0|t[Pergaminho da Barreira do Inferno]
    .use 173699
step
    #requires Blasted Lands Scroll
    .goto 17,32.51,45.14
    #title |cFFFCDC00Siga a Seta|r
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    .goto 17,32.51,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daio|r
    .complete 42477,3 --1/1 Speak with Daio
    .timer 15,Aguarde o RP
    .skipgossipid 45996
    .skipgossipid 45997
    .skipgossipid 45998
    .target Daio
step
    #loop
    .goto 17,32.97,44.98,10,0
    .goto 17,32.22,45.76,10,0
    .goto 17,32.77,45.79,10,0
    >>Mate as ondas de inimigos.
    .complete 42477,4 --1/1 Survive Daio's Challenge
    .timer 30,Aguarde o RP
    .mob Trapaceiro Demoníaco
    .mob Empowered Wrathguard
    .mob Eredar Mage
step
    #completewith next
    >>Usar |T254294:0|t[Pergaminho de Karazhan] em |cRXP_WARN_10 SECONDS LEFT|r
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42477,5 --1/1 Get the Demon Stone
step
    >>Usar |T254294:0|t[Pergaminho de Karazhan]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    .goto 42,35.83,64.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Pole|r
    .complete 42476,3 --1/1 Find remaining ritual items
step
    .goto 42,35.04,62.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Nota|r na tenda.
    .complete 42476,4 --1/1 Find any text on the ritual
    .timer 30,Aguarde o RP
step
    .goto 42,34.16,59.67
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42476,5 --1/1 Listen to Merina
step
    .goto 42,34.14,59.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .complete 42476,6 --1/1 Take the Ritual Focusing Crystal
step
    #completewith next
    #label Turn in Alodi's Gems
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Entregue Gemas de Alodi
    .target Alodi
step
    #completewith Turn in Alodi's Gems
    .zoneskip 734
    .cast 193759 >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .usespell 193759
step
    #requires Turn in Alodi's Gems
    .goto 734,53.54,70.05,20,0
    .goto 735,56.68,70.92,20,0
    .goto 735,60.77,43.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Vá para Gemas de Alodi
    .target Alodi
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 42476 >>Vá para O Sítio de Vento Morto
    .target Meryl Tempestavil
    .turnin 42477 >>Vá para Daio, o Decrépito
    .accept 42479 >>Aceite O Caça-magos
    .target Meryl Tempestavil
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 42476 >>Vá para O Sítio de Vento Morto
    .target Meryl Tempestavil
    .turnin 42477 >>Vá para Daio, o Decrépito
    .accept 42479 >>Aceite O Caça-magos
    .target Meryl Tempestavil
step
    #completewith next
    #label Dalaran to Faronaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aludane Albanuvem|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
-- step
--     #completewith Dalaran to Faronaar
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
step
    .isQuestAvailable 41113
    #completewith Dalaran to Faronaar
    .goto 735,62.44,51.32
    .zone 627 >>Clique em |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    #completewith Dalaran to Faronaar
    .goto 734,57.39,90.1
    .zone 627 >>Clique em |cRXP_PICK_Portal|r
step
    #requires Dalaran to Faronaar
    .goto 627,69.82,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aludane Albanuvem|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
    .timer 200,Aguarde o RP
    .skipgossipid 44179
    .target Aludane Albanuvem
step
    .isOnQuest 42479
    .goto 630,26.79,49.02
    #title |cFFFCDC00Siga a Seta|r
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2526,1 --Speak with Meryl and Alodi
    .target Meryl and Alodi
step
    .isOnQuest 42479
    .goto 630,26.8,49.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Fel Atenuar Proteção|r
    *|cRXP_WARN_Tente voar em algumas partes deste cenário se permitir|r.
    .scenario 2528,1,1 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,29.96,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Fel Atenuar Proteção|r
    *|cRXP_WARN_Tente voar em algumas partes deste cenário se permitir|r.
    .scenario 2528,1,2 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,30.11,48.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Fel Atenuar Proteção|r
    *|cRXP_WARN_Tente voar em algumas partes deste cenário se permitir|r.
    .scenario 2528,1,3 --Wards set up
    .target Fel Dampening Ward
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2529,1 --Go to the center of the Altar of End Times.
    .timer 50,Aguarde o RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .scenario 2529,2 --Activate the Ritual Focus
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Cristal|r, ao finalizar a canalização e mate os inimigos.
    .scenario 2530,1,15 --Activate the Ritual Focus
    .mob Guardião Colérico
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Cristal|r ao finalizar a canalização e mate os inimigos.
    .scenario 2530,1,45 --Activate the Ritual Focus
    .mob Guardião Colérico
    .mob Netherflame Infernal
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Cristal|r ao finalizar a canalização e mate os inimigos.
    .scenario 2530,1,75 --Activate the Ritual Focus
    .mob Netherflame Infernal
    .mob Legion Jailer
    .mob Trapaceiro Demoníaco
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Cristal|r ao finalizar a canalização e mate os inimigos.
    .scenario 2530,1,87 --Activate the Ritual Focus
    .timer 15,Aguarde o RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2530,1 --Activate the Ritual Focus
step
    .goto 619,67.0,92.9
    .isInScenario 1122
    >>Abate |cRXP_ENEMY_Balaadur|r
    .scenario 2531,1 --Slay Balaadur
    .mob Balaadur
step
    .goto 619,67.05,92.74
    #label Artifact Weapon: Frost Mage
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .scenario 2532,1 --Claim Ebonchill.
    .complete 42479,2 --1/1 Claim Ebonchill
step
    #completewith next
    #label Mage Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 42479 >>Vá para O Caça-magos
    .target Meryl Tempestavil
step
    #completewith Mage Hunter
    .zoneskip 734
    .cast 193759 >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .usespell 193759
step
    #requires Mage Hunter
    .goto 734,53.3,72.2,20,0
    .goto 734,59.04,56.7,20,0
    .goto 735,56.68,33.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .turnin 42479 >>Vá para O Caça-magos
    .target Meryl Tempestavil
-- step
--     .goto 735,53.2,41.44
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .accept 42429 >>Accept Memories of Ebonchill
--     .target Old Fillmaff
-- step
--     #completewith next
--     #label Council of Tirisfal
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
-- step
--     #completewith Council of Tirisfal
--     .zoneskip 627
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
-- step
--     #requires Council of Tirisfal
--     #loop
--     .goto 627,48.04,16.94,30,0
--     .goto 627,24.58,50.15,30,0
--     .goto 627,46.85,69.23,30,0
--     .goto 627,60.1,63.38,30,0
--     .goto 627,68.45,44.91,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fiora Ar'nareth|r |cRXP_WARN_found anywhere in dalaran|r.
--     .complete 42429,1 --Speak to a Reflection of the Council of Tirisfal
--     .skipgossipid 45655
--     .target Fiora Ar'nareth
-- step
--     #completewith next
--     #label Memories of Ebonchill
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .turnin 42429 >>Turn in Memories of Ebonchill
--     .target Old Fillmaff
-- step
--     #completewith Memories of Ebonchill
--     .zoneskip 734
--     .cast 193759 >>Use |T1536440:0|t[Teleport: Hall of the Guardian].
--     .usespell 193759
-- step
--     #requires Memories of Ebonchill
--     .goto 734,53.25,70.58,20,0
--     .goto 734,59.56,56.41,20,0
--     .goto 735,53.30,41.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Fillmaff|r
--     .turnin 42429 >>Turn in Memories of Ebonchill
--     .target Old Fillmaff
]])
--Arcane 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Arcano
#displayname Artefato Arma: Arcano
#next ac) Salão da Ordem Mago Parte 2
#internal

<< Mage

step
    #include a) Artifact Weapon: Arcane
]])
--Fire 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Fogo
#displayname Artefato Arma: Fogo
#next ac) Salão da Ordem Mago Parte 2
#internal

<< Mage

step
    #include a) Artifact Weapon: Fire
]])
--Frost 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Mago de Gelo
#displayname Artefato Arma: Gélido
#next ac) Salão da Ordem Mago Parte 2
#internal

<< Mage

step
    #include a) Artifact Weapon: Frost Mage
]])

--Mage Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Mago Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Mago
#chapter
#internal

<< Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Mage Part 1@OrderHallMage1-Dreadlord's Prize
step
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Meryl Tempestavil|r
    .target Meryl Tempestavil
    .accept 41085 >>Aceite A Arma de um Mago
step
    .isQuestAvailable 41085
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fire >>RestedXP Legion Remix\a) Artefato Arma: Fogo >> Fogo(DPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arcane >>RestedXP Legion Remix\a) Artefato Arma: Arcano >> Arcano(DPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost Mage >>RestedXP Legion Remix\a) Artefato Arma: Mago de Gelo >> Gélido(DPS) Questline
step
    >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .accept 41114 >>Aceite O Retorno do Campeão
    .usespell 193759
step
    >>Usar |T1536440:0|t[Teleporte: Salão do Guardião].
    .complete 41114,1 --1/1 Teleport to the Hall of the Guardian
    .usespell 193759
step
    #include ac) Order Hall Mage Part 2@Champion's Return-OrderHallMage3
]])

-- --------- Monk ---------

--Brewmaster
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Mestre Cervejeiro
#displayname Artefato Arma: Mestre Cervejeiro
#next a) Salão da Ordem Monja Parte 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Brewmaster
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>Usar |T775462:0|t[Peregrinação Zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 44424 >>Aceite Três Caminhos, Três Armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 44424 >>Entregue Três Caminhos, Três Armas
    .target Li Li Malte do Trovão
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 43973 >>Aceite Dois Caminhos, Duas Armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 43973 >>Entregue Dois Caminhos, Duas Armas
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .accept 40636 >>Aceite Preparar para Atacar
    .target Ponshu Corpo-de-ferro
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu Corpo-de-ferro
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 40636 >>Entregue Preparação para Golpear
step
    #completewith The Wanderer's Companion
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .accept 42762 >>Aceite O Companheiro do Andarilho
    .target Ponshu Corpo-de-ferro
step
    #completewith next
    #label Tak-Tak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith Tak-Tak
    #title |cFFFCDC00Sair da Casa|r
    .goto 709,49.71,47.37,10 >>Saia da Casa
step
    #requires Tak-Tak
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .timer 23,Aguarde o RP
    .skipgossipid 45493
    .target Tak-Tak
step
    #label The Wanderer's Companion
    .goto 371,41.67,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Rei Macaco|r
    .turnin 42762 >>Entregue O Companheiro do Andarilho
    .target O Rei Macaco
    .accept 42768 >>Aceite O Enigma da Pureza
    .accept 42766 >>Aceite O Enigma do Barril
    .accept 42767 >>Aceite O Enigma da Terra
step
    #completewith next
    #label Pure Water Core
    >>Mate |cRXP_ENEMY_Profanadora Ma'veth|r e |cRXP_ENEMY_Espírito da Água Profanado|r. Saqueie-os para |T132844:0|t[|cRXP_LOOT_Pure Água Núcleo|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith Pure Water Core
    .cast 311850 >>Usar |T615341:0|t[Jarro da Pureza]
    .use 173703
step
    #requires Pure Water Core
    .goto 376,63.22,26.04
    >>Mate |cRXP_ENEMY_Profanadora Ma'veth|r e |cRXP_ENEMY_Espírito da Água Profanado|r. Saqueie-os para |T132844:0|t[|cRXP_LOOT_Pure Água Núcleo|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith next
    #label Roasted Grain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Grão|r
    .complete 42767,1,1 --5/5 Sack of Roasted Grain
step
    #completewith Roasted Grain
    .cast 311857 >>Usar |T615341:0|t[Jarro da Pureza]
    .use 173704
step
    #requires Roasted Grain
    #loop
    .goto 376,52.94,60.67,20,0
    .goto 376,51.13,60.79,20,0
    .goto 376,51.08,62.49,20,0
    .goto 376,52.6,63.37,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Grão|r
    .complete 42767,1, --5/5 Sack of Roasted Grain
step
    #completewith next
    #label Vadis
    >>Abate |cRXP_ENEMY_Vadis|r e |TInterface/cursor/crosshair/interact.blp:20|tclique em |cRXP_PICK_Keg|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    #completewith Vadis
    #title |cFFFCDC00Entre na Casa|r
    .goto 376,51.6,64.28,10,0
    .goto 376,51.43,65.17,10,0
    .goto 376,51.11,64.98,10 >>Entre na casa e suba.
step
    #requires Vadis
    .goto 376,51.50,64.43
    >>Abate |cRXP_ENEMY_Vadis|r e |TInterface/cursor/crosshair/interact.blp:20|tclique em |cRXP_PICK_Keg|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Rei Macaco|r |cRXP_WARN_ao seu lado|r.
    .turnin 42766 >>Entregue O Enigma do Barril
    .target O Rei Macaco
    .turnin 42768 >>Entregue O Enigma da Pureza
    .turnin 42767 >>Entregue O Enigma da Terra
    .accept 42957 >>Aceite Jornada ao Oriente
step
    #completewith next
    #label Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Rei Macaco|r
    .turnin 42957 >>Entregue Jornada ao Oriente
    .accept 42868 >>Aceite O Desafio do Rei Macaco
    .disablecheckbox
step
    #completewith Journey to the East
    .zoneskip 376,1
    .cast 311861 >>Usar |T615341:0|t[Jarro da Pureza]
    .use 173706
step
    #requires Journey to the East
    #completewith next
    #label Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Rei Macaco|r
    .turnin 42957 >>Entregue Jornada ao Oriente
    .accept 42868 >>Aceite O Desafio do Rei Macaco
step
    #completewith Journey to the East2
    #hidewindow
    #requires Journey to the East
    .goto 371,55.03,60.75,30 >>Siga a Seta
step
    #requires Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Rei Macaco|r
    .goto 371,55.42,58.14
    .turnin 42957 >>Entregue Jornada ao Oriente
    .accept 42868 >>Aceite O Desafio do Rei Macaco
step
    .goto 371,55.31,58.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Brewpot|r
    .complete 42868,1 --1/1 Brewpot Set
    .timer 7.5,RP
step
    .goto 371,55.37,58.54
    .isOnQuest 42868
    .cast 217213 >>Clique no |cRXP_PICK_Orbe Azul|r
    .timer 12,Aguarde o RP
step
    .goto 371,55.24,58.52
    .isOnQuest 42868
    .cast 217216 >>Clique em |cRXP_PICK_Flour|r
    .timer 10.5,RP
step
    .goto 371,55.21,58.43
    .isOnQuest 42868
    .cast 217219 >>Clique no |cRXP_PICK_Barril|r
    .timer 11,Aguarde o RP
step
    .goto 371,55.39,58.46
    .isOnQuest 42868
    .cast 217224 >>Clique em |cRXP_PICK_Banana|r
    .timer 10,Aguarde o RP
step
    .goto 371,55.28,58.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Objects|r
    .complete 42868,2 --1/1 Brew Completed
step
    .goto 371,55.43,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_O Rei Macaco|r
    .turnin 42868 >>Entregue O Desafio do Rei Macaco
    .target O Rei Macaco
    .accept 42765 >>Aceite Provação no Templo
step
    #completewith next
    #label Jade Serpent
    #title |cFFFCDC00Siga a Seta|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    #completewith Jade Serpent
    .goto 791,34.58,43.45,10 >>Entre no Templo da Serpente de Jade
    .timer 40,Aguarde o RP
step
    #requires Jade Serpent
    .goto 371,56.19,57.98
    #title |cFFFCDC00Siga a Seta|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_Aguarde a encenação|r.
    *|cRXP_WARN_Você não pode montar neste cenário|r.
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,30.45,59.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal|r e avance.
    .scenario 2649,1
step
    .goto 791,30.41,59.54,15,0
    .goto 792,40.41,20.97,15,0
    .goto 792,34.88,44.12
    >>Abate |cRXP_ENEMY_Esfolador de Almas da Inquisição|r
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>Abate |cRXP_ENEMY_Esfolador de Almas da Inquisição|r e seus |cRXP_ENEMY_servos|r.
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
    .mob Inquisitor's Eye
step
    .goto 792,32.6,63.36,15,0
    .goto 792,51.17,71.47
    >>Abate |cRXP_ENEMY_Torturador da Inquisição|r e seus |cRXP_ENEMY_servos|r.
    .scenario 2649,2,2
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Impling Pillager
step
    .goto 792,61.76,73.56,15,0
    .goto 792,66.55,46.16,15,0
    .goto 792,56.64,42.48
    >>Abate |cRXP_ENEMY_Esfolador de Almas da Inquisição|r e seus |cRXP_ENEMY_servos|r.
    .scenario 2649,2,3
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,25.15,66.37,15,0
    .goto 791,27.33,71.8
    >>Abate |cRXP_ENEMY_Belphiar|r
    .scenario 2650,1
    .timer 20,Aguarde o RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00Siga a Seta|r
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2684,1
    .isInScenario 1137
step
    .goto 791,45.39,80.88,15,0
    .goto 791,54.79,84.16,15,0
    .goto 791,53.68,75.04,15,0
    .goto 791,48.47,65.14,15,0
    .goto 791,51.32,52.08
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2661,1
    .timer 22,Aguarde o RP
    .isInScenario 1137
step
    .goto 791,51.32,52.08
    >>Abate as ondas de |cRXP_ENEMY_Demônios|r
    .scenario 2663,2,15
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,46.5,48.86
    >>Abate as ondas de |cRXP_ENEMY_Demônios|r
    .scenario 2663,2,100
    .scenario 2663,1
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,69.73,60.48
    >>Abate |cRXP_ENEMY_Lorde Korithis|r
    *|cRXP_WARN_Uma seta mais precisa não é possível|r.
    .scenario 2665,1
    .isInScenario 1137
    .mob Lord Korithis
step
    .isInScenario 1137
    #label Artifact Weapon: Brewmaster
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    *|cRXP_WARN_Uma seta mais precisa não é possível|r.
    .scenario 2666,1
    .complete 42765,2 --1/1 Obtain Fu Zan
step
    #completewith next
    #label Yu'lon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_Uma seta mais precisa não é possível|r.
    .scenario 2701,1
    .skipgossipid 46181
    .isInScenario 1137
step
    #completewith Yu'lon
    .goto 791,69.73,60.48
    .vehicle >>Clique em |cRXP_PICK_Yu'lon|r
    .timer 30,Aguarde o RP
    .target Yu'lon
step
    #requires Yu'lon
    .goto 791,69.73,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_Uma seta mais precisa não é possível|r.
    .scenario 2701,1
    .timer 30,Aguarde o RP
    .skipgossipid 46181
    .isInScenario 1137
    .target Yu'lon
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .turnin 42765 >>Entregue Provação no Templo
    .target Ponshu Corpo-de-ferro
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Tecelão da Névoa
#displayname Artefato Arma: Tecelão da Névoa
#next a) Salão da Ordem de Monges Parte 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Mistweaver
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>Usar |T775462:0|t[Peregrinação Zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 44424 >>Aceite Três Caminhos, Três Armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 44424 >>Entregue Três Caminhos, Três Armas
    .target Li Li Malte do Trovão
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 43973 >>Aceite Dois Caminhos, Duas Armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 43973 >>Entregue Dois Caminhos, Duas Armas
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .accept 40636 >>Aceite Preparar para Atacar
    .target Ponshu Corpo-de-ferro
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu Corpo-de-ferro
step
    .subzoneskip 7902,1
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 40636 >>Entregue Preparar para Golpear
step
    #completewith Taran Zhu
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .accept 41003 >>Aceite O Presente do Imperador
    .target Ponshu Corpo-de-ferro
step
    #completewith next
    #label MistweaverScenario
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith MistweaverScenario
    #hidewindow
    .goto 709,50.49,47.67,15,0
    .goto 709,49.36,47.43,15 >>Siga a Seta
step
    #requires MistweaverScenario
    .goto 709,47.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 84.5,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    .countdown 29 >>|cRXP_WARN_Aguarde a encenação|r.
step
    #label Taran Zhu
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>Usar |T1360980:0|t[Vivificar] em |cRXP_FRIENDLY_Taran Zhu|r.
    .scenario 2091,1
    .timer 26.5,RP
    .target Taran Zhu
    .usespell 116670
step
    .isOnQuest 41003
    #completewith Aspersius
    +Usar |T1360980:0|t[Vivificar] em |cRXP_FRIENDLY_Taran Zhu|r e sua equipe para mantê-los vivos ou ressuscitá-los.
    *|cRXP_WARN_É importante porque você não consegue progredir com ele morto|r.
    .target Taran Zhu
step
    .isInScenario 1007
    .goto 728,78.47,48.82
    >>Abata |cRXP_ENEMY_Guardião Infernal Xaphan|r
    .scenario 2098,4
    .timer 30,Aguarde o RP
    .mob Hellwarden Xaphan
step
    .isInScenario 1007
    .goto 728,59.2,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fei Li|r
    .scenario 2100,1
    .skipgossipid 44884
    .target Fei Li
step
    .isInScenario 1007
    .goto 728,58.86,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taoshi|r
    .scenario 2100,3
    .skipgossipid 44888
    .target Taoshi
step
    .isInScenario 1007
    .goto 728,58.97,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre Falcoeiro Nurong|r
    .scenario 2100,2
    .skipgossipid 44887
    .target Mestre Falcoeiro Nurong
step
    .isInScenario 1007
    .goto 728,61.89,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taran Zhu|r
    .scenario 2131,1
    .skipgossipid 45376
    .target Taran Zhu
step
    #label Aspersius
    .isInScenario 1007
    .goto 728,40.25,48.82
    >>Abata |cRXP_ENEMY_Aspersius|r
    .scenario 2131,2
    .mob Aspersius
step
    #label Artifact Weapon: Mistweaver
    .goto 728,39.21,48.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .complete 41003,2 --1/1 Acquire Sheilun
    .scenario 2157,1
step
    .goto 728,44.12,53.64
    >>|cRXP_WARN_Na seção "Itens Ativos"|r Há uma macro, dispare-a rapidamente depois de falar com |cRXP_FRIENDLY_Taran Zhu|r.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Instance,236367 >>Saia da Instância.
    .skipgossipid 45497
    .target Tak-Tak
step
    #completewith next
    #label The Emperor's Gift
    #title |cFFFCDC00Spam Macro|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .turnin 41003 >>Entregue O Presente do Imperador
    .macro Leave Instance,236367 >>Saia da Instância.
    .target Ponshu Corpo-de-ferro
step
    #completewith The Emperor's Gift
    .goto 709,49.76,47.48,15 >>Entre no Templo
step
    #requires The Emperor's Gift
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .turnin 41003 >>Entregue O Presente do Imperador
    .target Ponshu Corpo-de-ferro
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artefato Arma: Andarilho do Vento
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#displayname Artefato Arma: Andarilho do Vento
#next a) Parte 1 do Salão da Ordem do Monge
#internal

<< Monk

step
    #completewith Artifact Weapon: Windwalker
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .zoneskip 709
    .isQuestAvailable 40569
    .cast 126892 >>Usar |T775462:0|t[Peregrinação Zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 44424 >>Aceite Três Caminhos, Três Armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .complete 44424,1 --1/1 Choose a third artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isQuestComplete 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 44424 >>Entregue Três Caminhos, Três Armas
    .target Li Li Malte do Trovão
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 43973 >>Aceite Dois Caminhos, Duas Armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .complete 43973,1 --1/1 Choose a second artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isQuestComplete 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 43973 >>Entregue Dois Caminhos, Duas Armas
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .accept 40636 >>Aceite Preparação para Golpear
    .target Ponshu Corpo-de-ferro
step
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu Corpo-de-ferro
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .turnin 40636 >>Entregue Preparação para Golpear
step
    #completewith Legend of the Sands
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .target Ponshu Corpo-de-ferro
    .accept 40569 >>Aceite A Lenda das Dunas
step
    #completewith next
    #label Prepare To Strike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Li Li Malte do Trovão|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .target Li Li Malte do Trovão
step
    #completewith Prepare To Strike
    #title |cFFFCDC00Entre na Casa|r
    .goto 709,51.28,53.77,10,0
    .goto 709,49.91,58.68,10 >>Entre na casa
step
    #requires Prepare To Strike
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Li Li Malte do Trovão|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .skipgossipid 44948
    .skipgossipid 45131
    .skipgossipid 45128
    .target Li Li Malte do Trovão
step
    #label Legend of the Sands
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .turnin 40569 >>Entregue A Lenda das Dunas
    .accept 40633 >>Aceite Rumo à Aventura!
    .timer 48,Aguarde o RP
    .target Ponshu Corpo-de-ferro
--rp shenagans possible
step
    .goto 709,50.49,58.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Kite|r |cRXP_WARN_após a encenação|r.
    .complete 40633,1 --1/1 Ride Li Li's kite to Ramkahen (Optional)
    .timer 15,Aguarde o RP
step
    .goto 249,54.85,32.90
    #title |cFFFCDC00Siga a Seta|r
    .complete 40633,2 --1/1 Meet With Li Li in Ramkahen
    .target Li Li Malte do Trovão
step
    .goto 249,54.85,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Li Li Malte do Trovão|r
    .turnin 40633 >>Entregue Rumo à Aventura!
    .target Li Li Malte do Trovão
step
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Phaoris|r
    .accept 40634 >>Aceite Trovão nas Areias
    .target King Phaoris
step
    #completewith next
    #label Clue Discovered
    >>Mate |cRXP_ENEMY_Nader|r. Saqueie-o para obter |T348535:0|t[|cRXP_LOOT_Essência do Redemoinho].
    .complete 40634,1 --1/1 Clue Discovered
    .mob Nader
step
    #completewith Clue Discovered
    #title |cFFFCDC00Sair da Casa|r
    .goto 249,54.92,33.66,15 >>Saia da Casa
step
    #requires Clue Discovered
    #title |cFFFCDC00Voe Manualmente|r
    .goto 249,45.65,14.35
    >>Mate |cRXP_ENEMY_Nader|r. Saqueie-o para obter |T348535:0|t[|cRXP_LOOT_Essência do Redemoinho].
    .complete 40634,1 --1/1 Clue Discovered
step
    #completewith next
    #label Thunder on the Sands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Phaoris|r
    .turnin 40634 >>Entregue Trovão nas Areias
    .target King Phaoris
    .accept 40570 >>Aceite Para o Paraíso
    .disablecheckbox
step
    #completewith Thunder on the Sands
    .goto 249,54.92,33.81,15 >>Entre na Construção
    #title |cFFFCDC00Enter Construindo|r
step
    #requires Thunder on the Sands
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Phaoris|r
    .turnin 40634 >>Entregue Trovão nas Areias
    .target King Phaoris
    .accept 40570 >>Aceite Para o Paraíso
step
    #completewith next
    #label Essence of the Whirlwind
    >>Usar |T348535:0|t[Essência do Redemoinho]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
step
    #completewith Essence of the Whirlwind
    #title |cFFFCDC00Leave Construindo|r
    .goto 249,54.93,33.94,13 >>Saia do edifício
step
    #requires Essence of the Whirlwind
    .goto 249,54.93,33.94
    >>Usar |T348535:0|t[Essência do Redemoinho]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,Aguarde o RP
    .use 132745
step
    .isOnQuest 40570
    .goto 716,30.9,45.18
    .enterScenario 983 >>Entre no cenário |cRXP_PICK_Andarilho do Vento|r.
step
    .isInScenario 983
    .goto 716,30.9,45.18
    >>Mate os |cRXP_ENEMY_Ventos Uivantes|r e os |cRXP_ENEMY_Arenídeos Inferiores|r.
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    #completewith next
    #label Tornadoes
    .isInScenario 983
    #title |cFFFCDC00Siga a Seta|r
    >>Evada os tornados e entre nos redemoinhos verdes para ganhar velocidade.
    .scenario 2013,1
step
    #completewith Tornadoes
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 21 >>Espere em frente dos Tornados
    .timer 21
step
    #requires Tornadoes
    .isInScenario 983
    .goto 716,29.61,50.7,15,0
    .goto 716,31.34,51.67,15,0
    .goto 716,33.17,50.27,15,0
    .goto 716,30.74,49.37,15,0
    .goto 716,31.03,49.94
    #title |cFFFCDC00Siga a Seta|r
    >>Evite os Tornados e entre nos redemoinhos verdes para obter um impulso de velocidade
    .scenario 2013,1
step
    .isInScenario 983
    .goto 716,32.58,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Orbe Tocado pela Tempestade|r
    .scenario 2007,1,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Orbe Tocado pela Tempestade|r
    .scenario 2007,1,2
    .mob Storm Cloud
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Orbe Tocado pela Tempestade|r
    .scenario 2007,1,3
    .timer 34,Aguarde o RP
    .mob Storm Cloud
    .mob Howling Winds
    .mob Lesser Sandling
step
    #completewith next
    #hidewindow
    #label Scion of Typhinius
    .isInScenario 983
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2007,2
    .timer 8,Aguarde o RP
step
    #completewith Scion of Typhinius
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 34 >>Espere o |cRXP_ENEMY_Rebento de Typhinius|r aparecer
    .mob Scion of Typhinius
step
    #requires Scion of Typhinius
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00Siga a Seta|r
    >>Mate o |cRXP_ENEMY_Rebento de Typhinius|r
    .scenario 2007,2
    .timer 9,Aguarde o RP
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,31.6,66.01
    >>Abate seus |cRXP_ENEMY_Minions|r
    .scenario 2008,1,1
    .timer 5,Aguarde o RP
    .mob Kaeled
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>Abate seus |cRXP_ENEMY_Minions|r
    .scenario 2008,1,2
    .timer 7,Aguarde o RP
    .mob Storm Cloud
    .mob Na'ser
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.88,67.53
    >>Abate seus |cRXP_ENEMY_Minions|r
    .scenario 2008,1,3
    .timer 15,Aguarde o RP
    .mob Melezan
    .mob Storm Cloud
step
    .isInScenario 983
    .goto 716,32.16,66.89
    >>Mate o |cRXP_ENEMY_Zaurac|r
    .scenario 2008,1,4
    .timer 3,Aguarde o RP
    .mob Zaurac
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Zaurac|r
    .scenario 2009,1
    .timer 25,Aguarde o RP
    .target Zaurac
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>Mate o |cRXP_ENEMY_Typhinius|r
    .scenario 2010,1
    .mob Typhinius
step
    .isInScenario 983
    .goto 716,35.76,82.93
    #label Artifact Weapon: Windwalker
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Punhos|r
    .complete 40570,2 --1/1 Obtain the Fists of the Heavens
    .scenario 2011,1
    .mob Typhinius
step
    #completewith next
    #label Into The Heavens1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Li Li Malte do Trovão|r
    .turnin 40570 >>Entregue Para os Céus
    .target Li Li Malte do Trovão
step
    #completewith Into The Heavens1
    .goto 716,35.65,84.21
    .vehicle >>Clique em Pipa
    .timer 28,Aguarde o RP
step
    #requires Into The Heavens1
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Li Li Malte do Trovão|r
    .turnin 40570 >>Entregue Para os Céus
    .target Li Li Malte do Trovão
-- step
--     .isOnQuest 40570
--     .zone 249 >>Leave the Instance(Right-Click your player frame) or press the macro.
--     .macro Leave Instance,236367 >> /run C_PartyInfo.LeaveParty()
-- step
--     -- .xp <11,1
--     #completewith next
--     #hidewindow
--     #label Into The Heavens
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
--     .target Li Li Stormstout
-- step
--     -- .xp <11,1
--     #completewith Into The Heavens
--     .cast 126892 >>Use |T775462:0|t[Zen Pilgrimage]
--     .usespell 126892
-- step
--     -- .xp <11,1
--     #requires Into The Heavens
--     #completewith next
--     #label Into The Heavens2
--     .goto 709,49.11,58.67
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li Stormstout|r
--     .turnin 40570 >>Turn in Into The Heavens
]])
--Brewmaster 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name z) Artefato Arma: Mestre Cervejeiro
#displayname Artefato Arma: Mestre Cervejeiro
#next ac) Salão da Ordem Monja Parte 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Brewmaster
]])
--Mistweaver 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Tecelão da Névoa
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#displayname Artefato Arma: Tecelão da Névoa
#next ac) Salão da Ordem Monja Parte 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Mistweaver
]])
--Windwalker 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Andarilho do Vento
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#displayname Artefato Arma: Andarilho do Vento
#next ac) Salão da Ordem Monja Parte 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Windwalker
]])

--Monk Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Monja Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Monge
#chapter
#internal

<< Monk

step
    #completewith The Fight Begins2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Monk Part 1@MonkStart1-The Dawning Light
step
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ponshu Corpo-de-ferro|r
    .accept 40636 >>Aceite Preparar para Atacar
    .target Ponshu Corpo-de-ferro
step
    .isQuestAvailable 40636
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Windwalker >>RestedXP Legion Remix\a) Arma Artefato: Andarilho do Vento >> Andarilho do Vento(DPS) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Brewmaster >>RestedXP Legion Remix\a) Arma Artefato: Mestre Cervejeiro >> Mestre Cervejeiro(Tanque) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Mistweaver >>Remix\a) Artefato Arma: Tecelão da Névoa >> Tecelão da Névoa(Curador) Questline
step
    #include ac) Order Hall Monk Part 2@Matter of Planning-The Fight Begins
step << Alliance
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,Aguarde o RP
step << Horde
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,Aguarde o RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iniciado Da-Nel|r |cRXP_WARN_perto de você|r
    .accept 42186 >>Aceite Poder Crescente
    .target Initiate Da-Nel
]])

-- --------- Paladin ---------

--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Paladino Sagrado
#displayname Artefato Arma: Sagrado
#next a) Salão da Ordem Paladino Parte 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Holy Paladin
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 44370 >>Aceite Completando o Arsenal
    .skipgossipid 45133
    .choose 1271766
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271766
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 44370 >>Entregue Completando O Arsenal
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 44063 >>Aceite Arsenal Nunca É Demais
    .choose 1271766
    .skipgossipid 45133
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271766
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 44063 >>Entregue Arsenal Nunca É Demais
    .target Lorde Maximiliano Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 40408,1 >>Aceite Armas Lendárias
    .skipgossipid 45133
    .choose 1271766
    .target Lorde Maximiliano Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271766
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 40408,1 >>Entregue Armas Lendárias
    .target Lorde Maximiliano Tyrosus
step
    #completewith Lanigosa
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 627,74.99,48.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .accept 42231 >>Aceite O Paladino Misterioso
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Aceite Campeã: Lady Liadrin
    .turnin 42881 >>Entregue Campeã: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42231,1 --1/1 Travel to Dalaran
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 39864,1 --1/1 Travel to Dalaran
step << Alliance
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Entregue O Paladino Misterioso
    .target Travard
    .accept 42377 >>Aceite O Rastro do Irmão
step << Horde
    #completewith next
    #label Mysterious Paladin
    .goto 627,59,21.04,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Entregue O Paladino Misterioso
    .target Travard
    .accept 42377 >>Aceite O Rastro do Irmão
    .disablecheckbox
step << Horde
    #completewith Mysterious Paladin
    #hidewindow
    .goto 627,72.01,49.34,40 >>Siga a Seta
step << Horde
    #requires Mysterious Paladin
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Entregue O Paladino Misterioso
    .target Travard
    .accept 42377 >>Aceite O Rastro do Irmão
step
    #completewith next
    #label Wyrmrest Temple
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith Wyrmrest Temple
    .goto 627,52.75,51.91,20,0
    .goto 627,49,47.36,5 >>Entre no centro de Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.72,84.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith next
    #label Lanigosa
    #hidewindow
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
step
    #completewith Lanigosa
    .goto 115,59.95,53.08
    .gossipoption 45405 >>Fale com |cRXP_FRIENDLY_Lanigosa|r
    .target Lanigosa
step
    #requires Lanigosa
    .goto 115,56.48,26.96
    #title |cFFFCDC00Siga a Seta|r
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
    .target Lanigosa
step
    #completewith next
    #label Galford's location
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Nota|r
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    #completewith Galford's location
    .goto 115,56.57,28.64,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Estátua Quebrada|r |cRXP_WARN_você pode precisar fazer isso duas vezes|r.
    .timer 51,Aguarde o RP
step
    #requires Galford's location
    .goto 115,60.04,36.19
    #title |cFFFCDC00Siga a Seta|r
    >>|cRXP_WARN_Certifique-se de que clicou na|r |cRXP_PICK_Estátua Quebrada|r antes de prosseguir.
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    .goto 115,61.05,38.05
    #title |cFFFCDC00Siga a Seta|r
    .complete 42377,4 --1/1 Go to the chasm on the Path of Giants
    .timer 25,Aguarde o RP
step
    .goto 115,61.05,38.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanigosa|r
    .complete 42377,5 --1/1 Speak with Lanigosa
    .timer 17,Aguarde o RP
    .skipgossipid 45651
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>Mate |cRXP_ENEMY_Jotun|r
    *|cRXP_WARN_Cura |cRXP_FRIENDLY_Lanigosa|r se necessário|r.
    .complete 42377,6 --1/1 Defeat Jotun
    .mob Jotun
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Centelha|r
    .complete 42377,7 --1/1 Take the Spark of Tyr
step
    .goto 115,60.95,38.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Lanigosa|r
    .complete 42377,8 --1/1 Take Lanigosa's ride to Dalaran. (Optional)
    .timer 25
    .target Lanigosa
step
    .goto 627,79.17,46.08
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42377,9 --1/1 Return to Dalaran.
step
    .goto 627,72.03,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Travard|r
    .turnin 42377 >>Entregue O Rastro do Irmão
    .target Travard
    .accept 42120 >>Aceite O Punho de Prata
step
    #completewith next
    #label in Tirisfal Glades
    #title |cFFFCDC00Siga a Seta|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
step
    #completewith in Tirisfal Glades
    .cast 311681 >>Usar |T254294:0|t[Pergaminho do Acampamento de Tirisfal]
    .use 173523
step
    #requires in Tirisfal Glades
    .isOnQuest 42120
    .goto 18,13.45,56.68
    #title |cFFFCDC00Siga a Seta|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
    .target Travard
step
    .isOnQuest 42120
    .goto 18,13.45,56.68,10 >>|cRXP_WARN_Siga a seta|r.
    .timer 30,Aguarde o RP
step
    .isInScenario 1092
    .goto 18,14.09,56.5
    .gossipoption 45511 >>Fale com |cRXP_FRIENDLY_Travard|r
    .target Travard
step
    .goto 20,37.35,12.43,15,0
    .goto 20,35.12,20.33,15,0
    .goto 20,34.78,26.48,15,0
    .goto 20,37.19,43.18
    .isInScenario 1092
    #title |cFFFCDC00Siga a Seta|r
    >>Entre na Tumba, Abata |cRXP_ENEMY_Sem-rosto Sem-mestre|r e |cRXP_ENEMY_Cria de Carne|r
    .scenario 2444,1 --Go to the tomb of Tyr with Travard.
    .mob Masterless Faceless One
    .mob Flesh Spawn
step
    .goto 20,38.28,48.13,25,0
    .goto 20,40.34,55.04,25,0
    .goto 20,37.42,61.01,25,0
    .goto 20,34.49,54.46,25,0
    .goto 20,37.74,64.36
    .isInScenario 1092
    >>Abata |cRXP_ENEMY_Sem-rosto Sem-mestre|r, |cRXP_ENEMY_Cria de Carne|r e |cRXP_ENEMY_G'norz, o Enlouquecido|r
    *|cRXP_WARN_Cure seu grupo quando estiverem feridos, caso contrário não conseguirá continuar|r.
    .scenario 2447,1 --Tyr's Crypt cleared.
    .timer 65,Aguarde o RP
    .mob Masterless Faceless Corrupter
    .mob Flesh Spawn
    .mob G'norz the Crazed
step
    .isInScenario 1092
    .goto 20,37.64,65.74
    >>|cRXP_WARN_Espere a encenação|r — |cRXP_WARN_Cure seu grupo quando estiverem feridos, caso contrário não conseguirá continuar|r.
    .scenario 2448,1 --Listen to Travard.
step
    .goto 20,38.77,77.48,15,0
    .goto 20,42.9,85.49,20,0
    .goto 20,47.49,75.46,15,0
    .goto 20,52.02,74.87,15,0
    .goto 20,62.67,74.52
    .isInScenario 1092
    >>Escorte |cRXP_FRIENDLY_Travard|r — |cRXP_WARN_Cure seu grupo quando estiverem feridos, caso contrário não conseguirá continuar|r.
    .scenario 2449,1 --Find the final piece to the ritual.
    .mob Masterless Faceless Corrupter
step
    .isInScenario 1092
    .goto 20,62.67,74.52
    >>Abata a |cRXP_ENEMY_Aberração Horrenda|r — |cRXP_WARN_Cure seu grupo quando estiverem feridos, caso contrário não conseguirá continuar|r.
    .scenario 2453,1,1
    .timer 30,Aguarde o RP
    .mob Horrific Aberration
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2453,1,2
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    .goto 20,41.81,82.42
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2454,1
step
    .isInScenario 1092
    .goto 20,42.94,84.92
    >>Purifique os |cRXP_FRIENDLY_Cruzados Virtuosos|r e Cure o |cRXP_FRIENDLY_Precursor da Aurora Argêntea|r
    *|cRXP_WARN_Há uma habilidade de limpeza adicional no objetivo do cenário|r.
    .scenario 2455,1
    .scenario 2455,2
    .usespell 19750
    .usespell 4987
    .target Righteous Crusader
    .target Precursor da Aurora Argêntea
step
    .isInScenario 1092
    .goto 20,38.63,76.01,20,0
    .goto 20,37.68,63.55
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2456,1
    .timer 180,Aguarde o RP
step
    .isInScenario 1092
    .goto 20,37.61,65.32
    >>Abate as ondas de inimigos |cRXP_WARN_e Cure seu time|r.
    .scenario 2457,1,100
    .mob Flesh Spawn
    .mob Masterless Faceless Corrupter
    .mob Mordoth the Hunter
step
    .goto 20,37.43,55.14
    .isInScenario 1092
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .scenario 2458,1 --Claim the Silver Hand.
    .complete 42120,3 --1/1 Claim the Silver Hand
step
    .isInScenario 1092
    .zone 627 >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .macro Leave Instance,236367 >>Saia da Instância.
step
    .isQuestAvailable 44370,44063
    #label Artifact Weapon: Holy Paladin
    .goto 627,71.83,45.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42120 >>Entregue O Punho de Prata
    .target Lorde Maximiliano Tyrosus
    .accept 38576 >>Aceite Nós nos Encontraremos na Esperança da Luz
step << Horde
    .isQuestTurnedIn 40408
    .goto 627,58.5,20.55,10,0
    .goto 627,61.89,13.63
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step << Alliance
    .isQuestTurnedIn 40408
    .goto 627,36.64,65.28,15,0
    .goto 627,32.64,69.87
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 44370,44063
    .goto 24,49.86,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42120 >>Entregue O Punho de Prata
    .target Lorde Maximiliano Tyrosus
step << Alliance
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Siga a Seta
step << Alliance
    #requires Light's Hope Sanctum
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38576 >>Entregue Nós nos Encontraremos na Esperança da Luz
    .target Lorde Maximiliano Tyrosus
step << Alliance
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>Siga a Seta
step << Alliance
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38576 >>Entregue Nós nos Encontraremos na Esperança da Luz
    .target Lorde Maximiliano Tyrosus
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Paladino Proteção
#displayname Artefato Arma: Proteção
#next a) Salão da Ordem Paladino Parte 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Paladin Protection
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 44370 >>Aceite Completando o Arsenal
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 44370 >>Entregue Completando O Arsenal
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 44063 >>Aceite Arsenal Nunca É Demais
    .choose 1271767
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 44063 >>Entregue Arsenal Nunca É Demais
    .target Lorde Maximiliano Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 40408,1 >>Aceite Armas Lendárias
    .choose 1271767
    .target Lorde Maximiliano Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 40408,1 >>Entregue Armas Lendárias
    .target Lorde Maximiliano Tyrosus
step
    #completewith Orik and Tahu
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Aceite Campeã: Lady Liadrin
    .turnin 42881 >>Entregue Campeã: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,49.83,72.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 42000 >>Aceite Em Busca da Verdade
    .target Lorde Maximiliano Tyrosus
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 42000,1,1 --1/1 Travel to Dalaran
step
    .zoneskip 627,1
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 42000 >>Aceite Em Busca da Verdade
    .target Lorde Maximiliano Tyrosus
step
    #completewith next
    #label Orik and Tahu
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    #completewith Orik and Tahu
    .goto 627,72.69,50.01
    .gossipoption 45806 >>Fale com |cRXP_FRIENDLY_Orik and Tahu|r
    .timer 39,Aguarde o RP
step
    #requires Orik and Tahu
    .goto 627,72.69,50.01
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    .goto 627,72.67,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Orik Fidélio|r
    .turnin 42000 >>Entregue Em Busca da Verdade
    .target Orik Trueheart
    .accept 42002 >>Aceite Para Nortúndria
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    #completewith Argent Hippogryph
    .goto 627,72.96,50.08
    .vehicle >>Clique em |cRXP_PICK_Argent Hipogrifo|r
    .timer 12,Aguarde o RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    .goto 117,56.88,78.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Orik Fidélio|r
    .turnin 42002 >>Entregue Para Nortúndria
    .target Orik Trueheart
    .accept 42005 >>Aceite O Fim da Saga
step
    .goto 117,56.88,78.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tahu Vento Sábio|r
    .complete 42005,1 --1/1 Speak with Tahu Sagewind
    .skipgossipid 45439
    .skipgossipid 45440
    .target Tahu Sagewind
step
    .goto 117,62.27,82.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Sepultura|r
    .complete 42005,2 --1/1 Find the hero's grave
    .timer 68.5,RP
step
    .goto 117,62.27,82.13
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42005,3 --1/1 Complete the ritual
step
    .cast 441154 >>Usar|T134491:0|t[Vale de Nostwin]
    .itemcount 238727,1
    .use 238727
step
    .goto 627,72.52,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orik Fidélio|r em Dalaran.
    .turnin 42005 >>Entregue O Fim da Saga
    .target Orik Trueheart
    .accept 42017 >>Aceite Santuário da Guarda Fiel
step
    .isOnQuest 42017
    .goto 627,72.18,50.45
    .vehicle >>Clique em |cRXP_PICK_Argent Hipogrifo|r
    .timer 29,Aguarde o RP
step
    .isOnQuest 42017
    .goto 634,85.5,10.65,40 >>|cRXP_WARN_Aguarde a encenação|r.
    .timer 16,Aguarde o RP
step
    #title |cFFFCDC00Siga a Seta|r
    .goto 634,83.93,9.52
    .isOnQuest 42017
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2390,1 --Speak with Orik.
    .target Orik
step
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker
    .isInScenario 1082
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2391,1 --Get to the shrine.
step
    #completewith Inna the Cryptstalker
    .isInScenario 1082
    .goto 635,74.6,58.74,25 >>Mate os |cRXP_ENEMY_Porteiros|r
    *Se necessário pegue uma lança e use o ExtraActionButton para causar muito dano.
    .mob Inna the Cryptstalker
    .mob Shae
step
    #requires Inna the Cryptstalker
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker2
    .isInScenario 1082
    .scenario 2391,1 --Get to the shrine.
step
    #requires Inna the Cryptstalker
    #completewith Inna the Cryptstalker2
    .isInScenario 1082
    #title |cFFFCDC00Siga a Seta|r
    .goto 635,62.96,53.11,20,0
    .goto 635,57.63,50.72,20,0
    .goto 635,51.99,49.86,20,0
    .goto 635,52.28,53.36,10  >>Esquive os tornados mantendo-se no lado direito perto da parede.
    .timer 35,Aguarde o RP
    *Mate o |cRXP_ENEMY_Escudeiro Drekirjar|r e o |cRXP_ENEMY_Moldavento Espectral|r
    .mob Drekirjar Shieldbearer
    .mob Spectral Windshaper
step
    #requires Inna the Cryptstalker2
    .isInScenario 1082
    .goto 635,51.52,52.04
    >>|cRXP_WARN_Espere a encenação perto da porta|r.
    .scenario 2391,1 --Get to the shrine.
step
    #completewith next
    #label magic and survive
    .isInScenario 1082
    >>Usar |T524354:0|t[Escudo Divino] ou outra defesa forte e cure-se se necessário.
    *|cRXP_WARN_dano pesado logo após clicar na porta.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #completewith magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    .aura 210223 >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Porta|r
    .timer 10,Sobrevivência
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #requires magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    #title |cFFFCDC00Grande Defesa|r
    >>Usar |T524354:0|t[Escudo Divino] ou outra defesa forte e cure-se se necessário.
    *|cRXP_WARN_dano pesado logo após clicar na porta.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    .goto 635,27.89,45.25
    .isInScenario 1082
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2392,1 --Investigate the shrine.
step
    #completewith next
    #label Yrgrim the Truthseeker
    .isInScenario 1082
    >>Mate o |cRXP_ENEMY_Yrgrim, o Devoto da Verdade|r |cRXP_WARN_Se ele estiver congelado mate o |cRXP_ENEMY_Griselda Traçarrunas|r|r depois espere a encenação.
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
step
    #completewith Yrgrim the Truthseeker
    .isInScenario 1082
    .goto 635,25.93,44.53
    .gossipoption 45218 >>Fale com |cRXP_FRIENDLY_Yrgrim, o Devoto da Verdade|r
    .timer 4.5,RP
    .target Yrgrim the Truthseeker
step
    #requires Yrgrim the Truthseeker
    .goto 635,25.93,44.53,10,0
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>Mate o |cRXP_ENEMY_Yrgrim, o Devoto da Verdade|r |cRXP_WARN_Se ele estiver congelado mate o |cRXP_ENEMY_Griselda Traçarrunas|r|r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
    .mob Runeshaper Griselda
step
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .scenario 2395,1 --Take up Truthguard.
    .complete 42017,2 --1/1 Claim the Truthguard
step
    .isOnQuest 42017
    .goto 634,83.95,9.55,10,0
    .goto 634,85.47,10.83
    .vehicle >>Clique em |cRXP_PICK_Argent Hipogrifo|r
    .target Argent Hippogryph
    .timer 20,Aguarde o RP
step
    .isQuestAvailable 38576
    .isOnQuest 42017
    #label Artifact Weapon: Paladin Protection
    .goto 627,71.74,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lord Maximiliano Tyrosus|r |cRXP_WARN_em Dalaran|r.
    .turnin 42017 >>Entregue Santuário da Guarda Fiel
    .target Lorde Maximiliano Tyrosus
    .accept 38576 >>Aceite Nós Nos Encontraremos na Esperança da Luz
step
    .isQuestTurnedIn 38576
    .isOnQuest 42017
    #completewith next
    #label Shrine of the Truthguard3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42017 >>Entregue Santuário da Guarda Fiel
    .target Lorde Maximiliano Tyrosus
step << Alliance
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,34.98,66.58,20,0
    .goto 627,32.65,69.91
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step << Horde
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,58.71,20.66,20,0
    .goto 627,61.93,13.5
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
step
    #requires Shrine of the Truthguard3
    .isQuestTurnedIn 38576
    .goto 24,49.88,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42017 >>Entregue Santuário da Guarda Fiel
    .target Lorde Maximiliano Tyrosus
step << Alliance
    .isQuestAvailable 38576
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    .isQuestAvailable 38576
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Siga a Seta
step << Alliance
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith next
    #label Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,58.71,20.66,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith Light's Hope Sanctum
    .isQuestAvailable 38576
    #hidewindow
    .goto 627,61.93,13.5,30 >>Siga a Seta
step << Horde
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,61.93,13.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label A United Force
    .isQuestAvailable 38576
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38576 >>Entregue Nós Nos Encontraremos na Esperança da Luz
    .target Lorde Maximiliano Tyrosus
step
    #completewith A United Force
    #hidewindow
    .isQuestAvailable 38576
    .goto 24,63.15,37.22,40 >>Siga a Seta
step
    #requires A United Force
    .isQuestAvailable 38576
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38576 >>Entregue Nós Nos Encontraremos na Esperança da Luz
    .target Lorde Maximiliano Tyrosus
]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Retribuição
#displayname Artefato Arma: Retribuição
#next a) Salão da Ordem Paladino Parte 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Retribution
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 44370 >>Aceite Completando o Arsenal
    .skipgossipid 45133
    .choose 1271768
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271768
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 44370 >>Entregue Completando O Arsenal
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 44063 >>Aceite Arsenal Nunca É Demais
    .choose 1271768
    .skipgossipid 45133
    .target Lorde Maximiliano Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271768
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 44063 >>Entregue Arsenal Nunca É Demais
    .target Lorde Maximiliano Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 40408,1 >>Aceite Armas Lendárias
    .skipgossipid 45133
    .choose 1271768
    .target Lorde Maximiliano Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271768
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 40408,1 >>Entregue Armas Lendárias
    .target Lorde Maximiliano Tyrosus
step
    #completewith Spirits exorcised
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .accept 42770 >>Aceite Em Busca de Orientação
step
    >>Usar |T413582:0|t[Pedra de Regresso Chamejante]
    .complete 42770,1 --1/1 Hearth to Uther's Tomb
    .use 173537
step
    .goto 22,51.55,79.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42770 >>Entregue Em Busca de Orientação
    .target Lorde Maximiliano Tyrosus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sumo Sacerdote Thel'danis|r e com |cRXP_FRIENDLY_Mehlar Aurolume|r
    .accept 42772 >>Aceite Solo Sagrado
    .goto 22,51.45,79.02
    .target +High Priest Thel'danis
    .accept 42771 >>Aceite Mantendo A Paz
    .goto 22,51.36,79
    .target +Mehlar Dawnblade
step
    #completewith Spirits exorcised
    >>Mate |cRXP_ENEMY_Espectro Angustiado|r e |cRXP_ENEMY_Morador Perturbado|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    .goto 22,50.34,80.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Lápide|r
    .complete 42772,1,1 --3/3 Graveyards purified
step
    .goto 22,49.84,77.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Lápide|r
    .complete 42772,1,2 --3/3 Graveyards purified
step
    #label Spirits exorcised
    .goto 22,51.04,76.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Lápide|r
    .complete 42772,1,3 --3/3 Graveyards purified
step
    #loop
    .goto 22,53.96,79.94,40,0
    .goto 22,47.73,81.17,40,0
    .goto 22,50.3,75.3,40,0
    >>Mate |cRXP_ENEMY_Espectro Angustiado|r e |cRXP_ENEMY_Morador Perturbado|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    >>Mate |cRXP_ENEMY_Canhoneiro Dargal|r |cRXP_WARN_perto de você|r
    .complete 42771,2 --1/1 Cannoneer Dargal slain
    .mob Cannoneer Dargal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sumo Sacerdote Thel'danis|r e com |cRXP_FRIENDLY_Mehlar Aurolume|r.
    .turnin 42772 >>Entregue Solo Sagrado
    .goto 22,51.44,79.02
    .target +High Priest Thel'danis
    .turnin 42771 >>Entregue Mantendo A Paz
    .goto 22,51.35,78.99
    .target +Mehlar Dawnblade
step
    .goto 22,51.62,81.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .accept 42773 >>Aceite A Luz Revela
    .timer 27,Aguarde o RP
    .target Lorde Maximiliano Tyrosus
step
    .goto 22,52.08,83.26
    #title |cFFFCDC00Siga a Seta|r
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42773,1 --1/1 Join Maxwell Tyrosus in the tomb
step
    #completewith next
    #label Commune with Uther
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    #completewith Commune with Uther
    .goto 22,52.08,83.26
    .cast 216268 >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Placa do Memorial|r
    .timer 27,Aguarde o RP
step
    #requires Commune with Uther
    .goto 22,52.08,83.26
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    .goto 22,52.11,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42773 >>Entregue A Luz Revela
    .target Lorde Maximiliano Tyrosus
    .accept 42774 >>Aceite A Esperança Não Morre
step
    .isOnQuest 42774
    .goto 22,52.1,83.03
    .cast 311750 >>Usar |T132161:0|t[Hipogrifo Apito] fora.
    .timer 20,Contagem Regressiva para Logout
    .use 311750
step
    .isOnQuest 42774
    .logout >>Saia do jogo e retorne para se teletransportar.
    .timer 20,Aguarde o RP
    .macro Logout,638661 >>Saia do jogo
-- step
--     .isOnQuest 42774
--     .countdown 20 >>
step
    .goto 23,74.28,53.25
    *|cRXP_WARN_Espere para que o temporizador de logout termine, depois faça login novamente.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42774 >>Entregue A Esperança Não Morre
    .accept 38376 >>Aceite A Busca pelo Grão-Lorde
    .target Lorde Maximiliano Tyrosus
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    #completewith Argent Hippogryph
    .goto 23,74.17,53.07
    .cast 183677 >>Clique no |cRXP_PICK_Argent Hipogrifo|r
    .timer 20,Aguarde o RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    .goto 23,70.19,55.87
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    .goto 676,15.69,51.36
    .isOnQuest 38376
    #title |cFFFCDC00Siga a Seta|r
    .scenario 1488,1 --Lead the paladins of the Argent Crusade into battle
step
    #loop
    .goto 676,15.21,51.51,20,0
    .goto 676,16.52,51.94,20,0
    .isInScenario 775
    >>Mate os |cRXP_ENEMY_Demônios|r
    .scenario 1485,1,100
    .mob Wrathguard Cleaver
    .mob Mo'arg Brutalizer
    .mob Ravenous Felstalker
    .mob Burning Crusher
step
    #loop
    .goto 676,20.04,61.69,20,0
    .goto 676,20.52,62.46,20,0
    .isInScenario 775
    >>Mate |cRXP_ENEMY_Carcereiro Zerus|r
    .scenario 1486,1 --Destroy Jailer Zerus
    .mob Jailer Zerus
step
    #title |cFFFCDC00Entre na Caverna|r
    .isInScenario 775
    .goto 676,22.26,61.13,15 >>Entre na caverna
step
    #requires Ashbringer
    .isInScenario 775
    .goto 676,23.42,62.88,15,0
    .goto 676,23.83,63.9,15,0
    .goto 676,24.23,63.98,15,0
    .goto 676,26.84,61.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ashbringer|r
    .scenario 1487,1
    .timer 55,Aguarde o RP
    .complete 38376,2 --1/1 Obtain the Ashbringer
step
    .goto 676,26.87,61.25
    .isInScenario 775
    .countdown 55 >>|cRXP_WARN_Aguarde a encenação|r.
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Usar o |cRXP_WARN_ExtraActionButton|r
    .scenario 2632,1 --Break free from Balnazzar's control.
    .mob Balnazzar
    .usespell 216693
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Mate |cRXP_ENEMY_Balnazzar|r
    .complete 38376,3 --1/1 Balnazzar slain
    .mob Balnazzar
step
    .isInScenario 775
    .zone 23 >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .macro Leave Instance,236367 >>Saia da Instância.
step
    .zoneskip 23,1
    .goto 23,74.28,53.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38376 >>Entregue A Busca pelo Grão-Lorde
    .target Lorde Maximiliano Tyrosus
    .accept 42811 >>Aceite Nós nos Encontraremos na Esperança da Luz
step
    #completewith next
    #label Search for the Highlord
    .goto 23,75.43,52.65,10,0
    .goto 24,41.98,89.52,5,0
    .goto 24,45.4,83.87,5,0
    .goto 24,41.73,72.95,5,0
    .goto 24,44.64,70.09,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38376 >>Entregue A Busca pelo Grão-Lorde
    .target Lorde Maximiliano Tyrosus
    .accept 42811 >>Aceite Nós nos Encontraremos na Esperança da Luz
step
    #completewith Search for the Highlord
    .goto 24,49.9,72.38,20 >>Entre na Capela Esperança da Luz e atravesse o túnel
step
    #requires Search for the Highlord
    .goto 24,49.9,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 38376 >>Entregue A Busca pelo Grão-Lorde
    .target Lorde Maximiliano Tyrosus
    .accept 42811 >>Aceite Nós nos Encontraremos na Esperança da Luz
step
    #completewith next
    #hidewindow
    #label Chapel
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith Chapel
    .goto 24,40.06,92.46,10 >>Entre na Capela
step
    #requires Chapel
    #label Artifact Weapon: Retribution
    .goto 24,41.52,90.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Porta Secreta|r
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label Light's Hope
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42811 >>Entregue Nós nos Encontraremos na Esperança da Luz
    .target Lorde Maximiliano Tyrosus
    .disablecheckbox
step
    #completewith Light's Hope
    .goto 24,46.48,82.49,15,0
    .goto 24,41.21,73.21,15,0
    .goto 24,63.20,37.34,40 >>Siga a Seta
step
    #requires Light's Hope
    .goto 24,63.20,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .turnin 42811 >>Entregue Nós nos Encontraremos na Esperança da Luz
    .target Lorde Maximiliano Tyrosus
]])
--Holy 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefato Arma: Paladino Sagrado
#displayname Artefato Arma: Sagrado
#next ac) Salão da Ordem Paladino Parte 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefato Arma: Paladino Proteção
#displayname Artefato Arma: Paladino Proteção
#next ac) Salão da Ordem Paladino Parte 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection
]])
--Retribution 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefato Arma: Retribuição
#displayname Artefato Arma: Retribuição
#next ac) Salão da Ordem Paladino Parte 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Retribution
]])

--Paladin Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Paladino Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Paladino
#chapter
#internal

<< Paladin

step
    #completewith Order Hall Paladin Part 2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Paladin Part 1@An Urgent Gathering-Order Hall Paladin Part 1
step
    .isQuestAvailable 40408
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r
    .target Lorde Maximiliano Tyrosus
    .accept 40408 >>Aceite Armas Lendárias
    .isQuestAvailable 40408
step
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Retribution >>RestedXP Legion Remix\a) Artefato Arma: Retribuição >> Retribuição(DPS) Linha de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection >>RestedXP Legion Remix\a) Artefato Arma: Paladino Proteção >> Proteção(Tanque) Linha de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin >>RestedXP Legion Remix\a) Artefato Arma: Paladino Sagrado >> Sagrado(Curador) Linha de Missões
step
    #include ac) Order Hall Paladin Part 2@A United Force-Order Hall Paladin Part 2
]])

-- --------- Priest ---------

--Discipline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Disciplina
#displayname Artefato Arma: Disciplina
#next a) Salão da Ordem Sacerdote Parte 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 44407 >>Aceite A Terceira Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Disciplina|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389392
    .target Alonso Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 44407 >>Entregue A Terceira Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 43935 >>Aceite Uma Segunda Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Disciplina|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389392
    .target Alonso Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 43935 >>Entregue Uma Segunda Lenda
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 40706 >>Aceite Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Disciplina|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389392
    .target Alonso Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 40706 >>Entregue Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    #completewith the Azure Dragonshrine
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 41625 >>Aceite A Ira da Luz
    .target Alonso Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 41625 >>Aceite A Ira da Luz
    .target Alonso Faol
step
    .isOnQuest 41625
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    .isOnQuest 41625
    .zoneskip 702,1
    .goto 702,49.79,80.78
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
step
    .goto 627,28.64,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquimago Kalec|r.
    .turnin 41625 >>Entregue A Ira da Luz
    .accept 41626 >>Aceite Uma Nova Ameaça
    .target Arquimago Kalec
step
    .zoneskip 627,1
    .isOnQuest 41626
    .goto 627,49.25,47.64
    .zone 629 >>Usar o teletransportador no centro de Dalaran
step
    .goto 629,30.85,84.43
    >>|cRXP_WARN_Siga a seta.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal para Wyrmrest Temple|r.
    *|cRXP_WARN_Nota:|r. Você pode encontrar o portal depois de usar o teletransportador no meio de Dalaran se a seta estiver incorreta por qualquer motivo.
    .complete 41626,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #label the Azure Dragonshrine
    .goto 115,55.96,65.01
    >>|cRXP_WARN_Seguir a seta|r.
    .complete 41626,2 --1/1 Travel to the Azure Dragonshrine
step
    #loop
    .goto 115,55.90,64.90,30,0
    .goto 115,56.26,68.12,30,0
    .goto 115,54.10,66.46,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Caos Sifões|r, |cRXP_PICK_Estranhos Portais|r, e |cRXP_PICK_Caos-Maculado Lâminas|r.
    .complete 41626,3 --3/3 Clues Found
step
    .goto 115,56.69,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Dispositivo de Comunicação Etéreo|r.
    .turnin 41626 >>Entregue Uma Nova Ameaça
    .target Ethereal Communication Device
    .accept 41627 >>Aceite Um Inimigo Esquecido
step
    #completewith next
    #hidewindow
    .cast 3365 >>Siga a Seta
    .timer 37,Príncipe do Nexus Encenação
step
    .goto 115,56.65,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Interruptor do Dispositivo de Comunicação|r.
    .complete 41627,1 --1/1 Activate the communication device
step
    .goto 115,56.69,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Imagem de Kalec|r.
    .turnin 41627 >>Entregue Um Inimigo Esquecido
    .accept 41628 >>Aceite Olhos do Dragão
    .target Image of Kalec
step
    #title Usar o |T254294:0|t[Pergaminho de Teleporte do Nexus]
    .goto 114,29.25,28.57
    >>Usar o |T254294:0|t[Pergaminho de Teleporte do Nexus]
    .complete 41628,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.19,27.85
    >>|cRXP_WARN_Siga a seta.|r
    .complete 41628,2 --1/1 Surge Needle scouted
step
    .goto 114,29.66,27.50
    >>|cRXP_WARN_Siga a seta.|r
    .complete 41628,3 --1/1 Nexus foundation scouted
step
    >>Isto deve ser entregue e adicionado ao seu registro de missões automaticamente. Faça login novamente se não funcionar.
    .turnin 41628 >>Entregue Olhos do Dragão
    .accept 41629 >>Aceite Controlando o Fogo Sagrado
step
    #loop
    .goto 114,27.40,23.82,35,0
    .goto 114,25.85,26.44,35,0
    .goto 114,27.17,29.80,35,0
    .goto 114,29.52,27.00,35,0
    >>Mate |cRXP_ENEMY_Ira Brasas|r.
    .complete 41629,1 --1/1 Empowered with Unstable Holy Energy
    .mob Wrath Ember
step
    .goto 114,26.60,23.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Imagem de Kalec|r.
    .turnin 41629 >>Entregue Controlando o Fogo Sagrado
    .accept 41630 >>Aceite Deflagrar Julgamento
    .target Image of Kalec
step
    .goto 114,27.32,20.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Void Focado|r.
    .complete 41630,3 --1/1 North Surge Needle destroyed
step
    .goto 114,24.13,29.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Void Focado|r.
    .complete 41630,2 --1/1 West Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Void Focado|r.
    .complete 41630,1 --1/1 East Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Imagem de Kalec|r.
    .turnin 41630 >>Entregue Deflagrar Julgamento
    .accept 41631 >>Aceite A Câmara do Nexus
    .target Image of Kalec
step
    .isOnQuest 41631
    .goto 114,27.84,28.37,30,0
    .goto 114,27.51,26.05
    .enterScenario 1065 >>Entre no cenário |cRXP_PICK_X|r.
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Mate os |cRXP_ENEMY_Rebento do Fogo|r, |cRXP_ENEMY_Rebento do Gelo|r e |cRXP_ENEMY_Rebento da Magia|r.
    .scenario 2275,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Mage
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Usar |T135907:0|t[Cura Célere] em |cRXP_FRIENDLY_Azuregos|r.
    .scenario 2275,2 --Azuregos healed to full
    .macro Flash Heal,135907 >>Cura Célere
step
    .goto 736,23.51,67.53,15,0
    .goto 736,21.20,64.39,15,0
    .goto 736,21.93,57.90,15,0
    .goto 736,18.86,50.68,15,0
    .goto 736,22.01,43.34,15,0
    .goto 736,21.56,36.26,15,0
    .goto 736,27.49,34.52,15,0
    .goto 736,26.65,33.90
    .isInScenario 1065
    >>Usar |T135928:0|t[Levitar]. |cRXP_WARN_Avoid the flame geysers|r.
    .scenario 2277,1 --Reach the Librarium
    .usespell 1706
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>|cRXP_WARN_Espere o roleplay.|r
    .scenario 2277,2 --Find a way into the vault
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>Abate as |cRXP_ENEMY_Chamas do Julgamento|r.
    .scenario 2278,1 --Judgment's Flame defeated
    .mob Judgment's Flame
step
    .isInScenario 1065
    .goto 736,26.83,25.13,25,0
    .goto 736,31.22,22.01
    .scenario 2292,1 --Reach the Rift
step
    #completewith next
    #label NexusPrinceBilaalA
    .isInScenario 1065
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
step
    #label NexusPrinceBilaalA
    .goto 736,31.22,22.01
    .vehicle 104546 >>Clique em |cRXP_FRIENDLY_Azuregos|r
step
    #requires NexusPrinceBilaalA
    .isInScenario 1065
    .goto 736,59.24,20.32
    >>Mate |cRXP_ENEMY_Príncipe do Nexus Balaal|r.
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
    .complete 41631,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith next
    #label SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ira da Luz|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    #completewith SubdueLightsWrathA
    .goto 736,60.64,20.51
    .subzone 8119 >>Clique em |cRXP_PICK_Portal|r.
    --.subzone 13695
step
    #requires SubdueLightsWrathA
    #completewith next
    #hidewindow
    .cast 207949 >>Siga a Seta
    .timer 30,Duração da Subjugação
step
    #requires SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ira da Luz|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ira da Luz|r.
    .scenario 2281,1 --Claim Light's Wrath
    .complete 41631,2 --1/1 Light's Wrath
step
    #completewith next
    #label LeaveTheNexusVaultA
    .isInScenario 1065
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith LeaveTheNexusVaultA
    .subzone 13695 >>Clique no |cRXP_PICK_Portal para o Nexus|r
    .timer 50,Azuregos Encenação
    *|cRXP_WARN_Note:|r Coordenadas não funcionam aqui
step
    #requires LeaveTheNexusVaultA
    .isInScenario 1065
    .goto 736,59.28,20.40
    >>|cRXP_WARN_Espere o roleplay.|r
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith next
    #label TheNexusVaultA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Kalec|r.
    .turnin 41631 >>Entregue A Câmara do Nexus
    .accept 41632 >>Aceite Uma Dádiva do Tempo
    .target Arquimago Kalec
step
    .zoneskip 736,1
    #completewith TheNexusVaultA
    .goto 736,59.28,20.40
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
step
    #requires TheNexusVaultA
    .goto 627,28.64,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Kalec|r.
    .turnin 41631 >>Entregue A Câmara do Nexus
    .accept 41632 >>Aceite Uma Dádiva do Tempo
    .target Arquimago Kalec
step
    .isQuestTurnedIn 40938
    #completewith next
    #label AGiftOfTimeA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 41632 >>Entregue Uma Dádiva do Tempo
    .target Alonso Faol
step
    .isQuestTurnedIn 40938
    #completewith AGiftOfTimeA
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>Clique em |cRXP_PICK_Portal para o Templo Eterluz|r
step
    .isQuestTurnedIn 40938
    #requires AGiftOfTimeA
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 41632 >>Entregue Uma Dádiva do Tempo
    .target Alonso Faol
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Profeta Velen|r.
    .turnin 41632 >>Entregue Uma Dádiva do Tempo
    .target Profeta Velen
]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Sacerdote Sagrado
#displayname Artefato Arma: Sagrado
#next a) Salão da Ordem Sacerdote Parte 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 44407 >>Aceite A Terceira Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato sagrado|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389393
    .target Alonso Faol
    .skipgossipid 45117
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 44407 >>Entregue A Terceira Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 43935 >>Aceite Uma Segunda Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato sagrado|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389393
    .target Alonso Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 43935 >>Entregue Uma Segunda Lenda
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 40706 >>Aceite Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato sagrado|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389393
    .target Alonso Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 40706 >>Entregue Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    #completewith House Call
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 41957 >>Aceite A Súplica do Vindicante
    .target Alonso Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 41957 >>Aceite A Súplica do Vindicante
    .target Alonso Faol
step
    .isOnQuest 41957
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    #label House Call
    .goto 627,37.81,36.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r.
    .turnin 41957 >>Entregue A Súplica do Vindicante
    .accept 41966 >>Aceite Inspeção Residencial
    .target o Vindicante Boros
step
    .goto 627,36.02,36.61
    >>Usar |T135894:0|t[Purificar] no |cRXP_ENEMY_Defensor Barrem|r e o cure. Mate o |cRXP_ENEMY_Sangue Maculado Vil|r.
    .complete 41966,1 --1/1 Defender Barrem cured
    .usespell 527
    .target Defender Barrem
    .mob Fel Tainted Blood
step
    .goto 627,37.41,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Defensor Barrem|r.
    .turnin 41966 >>Entregue Inspeção Residencial
    .target Defender Barrem
    .accept 41967 >>Aceite Saído das Trevas
step
    .goto 627,70.80,43.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Penaleve|r.
    .complete 41967,1 --1/1 Flight to Darkstone Isle secured
    .target Lightfeather
step
    .goto 646,34.08,33.57
    >>Abate o |cRXP_ENEMY_Carrasco Niskarano|r.
    .complete 41967,2 --1/1 Demon Camp cleared
    .mob Niskaran Executioner
step
    #completewith next
    #hidewindow
    .cast 213109 >>Siga a Seta
    .timer 5,Encenação Alora
step
    .goto 646,33.99,33.93
    >>Usar |T135955:0|t[Ressurreição] em |cRXP_FRIENDLY_Alora|r.
    .complete 41967,3 --1/1 Alora resurrected
    .macro Resurrection,135955 >>Ressurreição
step
    .goto 646,33.99,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alora|r.
    .turnin 41967 >>Entregue Saído das Trevas
    .accept 41993 >>Aceite Salvação das Alturas
    .target Alora
step
    .goto 646,33.42,33.18
    >>Abate o |cRXP_ENEMY_Subjugador Valith|r.
    .complete 41993,1 --1/1 Assist Jace Darkweaver
    .mob Subjugator Valith
step
    .goto 646,33.58,33.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jace Tecetrevas|r.
    .turnin 41993 >>Entregue Salvação das Alturas
    .target Jace Tecetrevas
    .accept 42074 >>Aceite Retorno da Luz
step
    #title Passo Através do Portal
    .goto 646,32.04,31.92
    >>|cRXP_WARN_Seguir a seta e caminhe através do portal.|r
    .complete 42074,1 --1/1 Travel through the Portal on Darkstone Isle
step
    .isOnQuest 42074
    .goto 646,32.04,31.92
    .enterScenario 1085 >>Entre no cenário |cRXP_PICK_Retorno da Luz|r.
step
    .isInScenario 1085
    .goto 714,74.57,82.82
    >>Usar |T135907:0|t[Cura Célere] no |cRXP_FRIENDLY_Vindicante Boros|r.
    .scenario 2406,1 --Heal Vindicator Boros to full health.
    .macro Flash Heal,135907 >>Cura Célere
    .target o Vindicante Boros
step
    .isInScenario 1085
    .goto 714,71.02,72.40
    >>Abate o |cRXP_ENEMY_Comandante Xovoth|r.
    .scenario 2421,1 --Assist Jace Darkweaver.
    .mob Commander Xovoth
step
    .isInScenario 1085
    .goto 714,70.66,71.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal de Ancoragem|r.
    .scenario 2441,1 --Destroy the Anchoring Crystal
step
    .isInScenario 1085
    .goto 714,71.35,80.38,15,0
    .goto 714,69.37,81.00,10,0
    .goto 714,69.34,78.01
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 2441,2 --Exit the lower levels of the Legion Ship.
step
    .isInScenario 1085
    .goto 714,71.45,73.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Legion Jaula|r.
    *|cRXP_WARN_Nota:|r Se você ainda estiver no andar de baixo, suba primeiro.
    .scenario 2417,1 --Rescue Bo'ja
step
    .isInScenario 1085
    .goto 714,73.07,78.86
    >>Abate o |cRXP_ENEMY_Capitão Naranoth|r.
    .scenario 2446,1 --Defeat Captain Naranoth
    .mob Captain Naranoth
step
    .isInScenario 1085
    .goto 714,70.20,70.53,15,0
    .goto 714,62.43,59.71
    >>Abate a |cRXP_ENEMY_Senhora Calindris|r.
    .scenario 2425,1 --Defeat Lady Calindris
step
    .isInScenario 1085
    .goto 714,65.35,59.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_T'uure|r.
    .scenario 2426,1 --T'uure obtained.
    .complete 42074,2 --1/1 Obtain T'uure
step
    .isInScenario 1085
    .goto 714,65.51,60.06
    >>|cRXP_WARN_Espere por |cRXP_FRIENDLY_Bo'ja|r caminhar e colocar um portal|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Bo'ja's Portal de Mago|r.
    .scenario 2426,2 --Leave Niskara
step
    .isQuestTurnedIn 40938
    .goto 702,47.75,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Profeta Velen|r.
    .turnin 42074 >>Entregue Retorno da Luz
    .target Profeta Velen
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Profeta Velen|r.
    .turnin 42074 >>Entregue Retorno da Luz
    .target Profeta Velen
]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Sombra
#displayname Artefato Arma: Sombra
#next a) Salão da Ordem Sacerdote Part 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 44407 >>Aceite A Terceira Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sombra|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389394
    .target Alonso Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 44407 >>Entregue A Terceira Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 43935 >>Aceite Uma Segunda Lenda
    .target Alonso Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sombra|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389394
    .target Alonso Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 43935 >>Entregue Uma Segunda Lenda
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 40706 >>Aceite Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Sombra|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389394
    .target Alonso Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .turnin 40706 >>Entregue Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    #completewith Amassing Darkness
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 40710 >>Aceite Lâmina no Crepúsculo
    .target Alonso Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alonso Faol|r.
    .accept 40710 >>Aceite Lâmina no Crepúsculo
    .target Alonso Faol
step
    .goto 18,13.03,62.46
    >>Usar o |T254294:0|t[Pergaminho do Acampamento de Tirisfal].
    >>|cRXP_WARN_Siga a seta.|r
    .complete 40710,1 --1/1 Go to the marked location in Tirisfal Glades
    .use 173523
step
    .isOnQuest 40710
    .goto 18,13.03,62.46
    .enterScenario 991 >>Penetre o cenário |cRXP_PICK_Lâmina no Crepúsculo|r
step
    .isInScenario 991
    .goto 18,13.47,57.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Notas de Malho-escória|r.
    .scenario 2221,1 --Find the first clue
step
    .isInScenario 991
    .goto 18,13.21,55.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Notas de Malho-escória|r.
    .scenario 2221,2 --Find the second clue
step
    .isInScenario 991
    .goto 18,13.90,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Notas de Malho-escória|r.
    .scenario 2221,3 --Find the third clue
step
    #title |cFFFCDC00Nadar para Baixo|r
    .isInScenario 991
    .goto 20,37.87,12.57,8,0
    .goto 20,34.13,23.36
    >>|cRXP_WARN_Nade para baixo e entre na passagem.|r
    .scenario 2031,1 --Enter the tomb at the bottom of the lake
step
    .isInScenario 991
    .goto 20,37.16,41.44
    >>Mate os |cRXP_ENEMY_Crepúsculos Torce-lâminas|r e os |cRXP_ENEMY_Crepúsculos Lança-sombras|r.
    >>|cRXP_WARN_Espere o roleplay.|r
    .scenario 2032,1 --Defeat the guards at the door to gain access
step
    .isInScenario 991
    .goto 20,37.24,44.71
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 2048,1 --Enter the Tomb of Tyr
step
    .isInScenario 991
    #loop
    .goto 20,40.97,50.29,12,0
    .goto 20,41.22,58.63,12,0
    .goto 20,34.05,59.87,12,0
    .goto 20,33.64,50.57,12,0
    >>Mate os |cRXP_ENEMY_Crepúsculos Ritualistas|r.
    .scenario 2086,1 --Stop the dampening rituals
    .mob Twilight Ritualist
step
    #label Amassing Darkness
    .isInScenario 991
    .goto 20,37.52,55.05
    >>Mate o |cRXP_ENEMY_Trevas Espessantes|r.
    .scenario 2171,1 --Defeat the Amassing Darkness
    .mob Amassing Darkness
step
    .isInScenario 991
    .goto 20,39.37,79.78,15,0
    .goto 20,41.94,84.31,15,0
    .goto 20,47.78,75.83
    >>|cRXP_WARN_Siga a seta.|r Usar |T135739:0|t[Dissipação em massa] para matar os |cRXP_ENEMY_Tentáculos do Caos|r
    .scenario 2089,1 --Fight to the prison chamber
    .mob Void Tendril
    .usespell 311663
step
    .isInScenario 991
    .goto 20,58.77,75.20
    >>Mate o |cRXP_ENEMY_Palhares Diácono do Crepúsculo|r.
    .scenario 2099,1 --Kill the Twilight Deacon
    .mob Twilight Deacon Farthing
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Blade of the Preto Empire|r.
    .scenario 2115,1 --Take the Blade of the Black Empire
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>Usar o |T136201:0|t[|cRXP_WARN_ExtraActionButton|r] (Drenagem Sombria)
    .scenario 2116,1 --Use "Dark Drain" to kill Zakajz forever
    .complete 40710,2 --1/1 Stop the Ritual and acquire the Blade
    .timer 15,Encenação
step
    #completewith next
    #label BladeInTwilightA
    #hidewindow
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    #completewith BladeInTwilightA
    .goto 20,57.38,73.35
    .zone 627 >>Clique no Portal para Dalaran
step
    #requires BladeInTwilightA
    .goto 627,47.32,22.90
    >>|cRXP_WARN_Siga a seta.|r
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    .isQuestTurnedIn 40938
    #completewith next
    #label BladeInTwilightB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Entregue Lâmina no Crepúsculo
    .target Moira Thaurissan
step
    .isQuestTurnedIn 40938
    #completewith BladeInTwilightB
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>Clique em |cRXP_PICK_Portal para o Templo Eterluz|r
step
    .isQuestTurnedIn 40938
    #requires BladeInTwilightB
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Entregue Lâmina no Crepúsculo
    .target Moira Thaurissan
step
    #optional
    .goto 627,46.14,21.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Entregue Lâmina no Crepúsculo
    .target Moira Thaurissan
]])
--Discipline 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Disciplina
#displayname Artefato Arma: Disciplina
#next ac) Salão da Ordem: Sacerdote Parte 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Discipline
]])
--Holy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Sacerdote Sagrado
#displayname Artefato Arma: Sagrado
#next ac) Salão da Ordem: Sacerdote Parte 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Holy Priest
]])
--Shadow 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Sombra
#displayname Arma Artefato: Sombra
#next ac) Salão da Ordem: Sacerdote Parte 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Shadow
]])

--Priest Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Sacerdote Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Sacerdote
#chapter
#internal

<< Priest

step
    #completewith Recruit Ishanah2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Priest Part 1@Priestly Matters-Alonsus Faol
step
    .goto 18,78.96,40.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Alonso Faol
    .accept 40706 >>Aceite Uma Lenda que Você Pode Sustentar
    .target Alonso Faol
step
    .isQuestAvailable 40706
    .isQuestAvailable account,91955
    .goto 18,78.96,40.99
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Importante: Selecione o que você já tem para ganhar um adicional de 10% de experiência (uma única vez)|r
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Shadow >>RestedXP Legion Remix\a) Arma Artefato: Sombra >> Sombra(DPS) Campanha
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Priest >>RestedXP Legion Remix\a) Arma Artefato: Sacerdote Sagrado >> Sagrado(Curador) Campanha
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Discipline >>RestedXP Legion Remix\a) Arma Artefato: Disciplina >> Disciplina(Curador) Campanha
step
    #include ac) Order Hall Priest Part 2@The Light and the Void-Recruit Ishanah
step
    .zoneskip 702,1
    .goto 702,49.79,80.59
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
]])

-- --------- Rogue ---------

--Assassination
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Assassinato
#displayname Arma de Artefato: Assassinato
#next a) Salão da Ordem Ladino Parte 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Assassination
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 44375 >>Aceite A Última Lâmina
    .skipgossipid 45233
    .choose 1389395
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 44375 >>Entregue A Última Lâmina
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 44034 >>Aceite Outra Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 44034 >>Entregue Outra Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 40840 >>Aceite Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .choose 1389395
    .skipgossipid 45230
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 40840 >>Entregue Uma Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    #completewith Felcaller Whitley
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 626,42.37,76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Princesa Tess Greymane|r
    .target Princesa Tess Greymane
    .accept 42501 >>Aceite Serviço Completo
    .accept 42502 >>Aceite Sem Refúgio
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    *|cRXP_WARN_reconecte-se se o NPC não estiver lá|r
    .accept 43262 >>Aceite Campeã: Garona Meiorken
    .turnin 43262 >>Entregue Campeã: Garona Meiorken
    .target Garona Meiorken
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Aceite Campeã: Vanessa VanCleef
    .turnin 43261 >>Entregue Campeã: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 42502
    .cast 311709 >>Usar |T254294:0|t[Pergaminho da Floresta do Crepúsculo]
    .use 173530
step
    #completewith next
    #label Felcaller Whitley
    .goto 47,19.14,56.43,10,0
    .goto 47,19.62,54.83,10,0
    .goto 47,19.55,54.47,5,0
    .goto 47,19.36,54.99,5,0
    >>Abate |cRXP_ENEMY_Chamavil Whitley|r. Saque-o para |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    #completewith Felcaller Whitley
    .goto 47,19.06,53.88,20 >>Entre na casa e suba
step
    #requires Felcaller Whitley
    .goto 47,19.06,53.88
    >>Abate |cRXP_ENEMY_Chamavil Whitley|r. Saque-o para |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    .goto 47,19.06,53.88
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42502 >>Entregue Sem Refúgio
step
    >>Usar |T254294:0|t[Pergaminho da Barreira do Inferno]
    .complete 42501,1 --1/1 Travel to Blasted Lands
    .use 173531
step
    .goto 17,37.03,29.04
    >>Abate |cRXP_ENEMY_Caden Fitassombra|r. Saque-o para |T666475:0|t[|cRXP_LOOT_Mensagem Codificada|r].
    .complete 42501,2 --1/1 Caden Shadowgaze slain
    .mob Caden Shadowgaze
step
    .goto 17,37.01,30.04
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42501 >>Entregue Serviço Completo
    .accept 42503 >>Aceite Decifrador de Códigos
step
    #completewith next
    #label Coded Message
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42503,3 --1/1 Information found
step
    #completewith Coded Message
    .goto 17,37.04,30.41
    .cast 214079 >>Usar |T666475:0|t[Mensagem Codificada]
    .timer 25,Aguarde o RP
    .use 138102
step
    #requires Coded Message
    .goto 17,37.04,30.41
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42503,3 --1/1 Information found
    .use 138102
step
    .goto 17,36.98,29.09
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 42503,1 --1/1 Read the Coded Message
-- step
--     .goto 17,39.52,36.49
--     .zone 617 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 17,37.21,29.05
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42503 >>Entregue Decifrador de Códigos
    .accept 42539 >>Aceite Capa e Espada
    .target Malton
step
    #completewith next
    #hidewindow
    #label Blood of the Innocent
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith Blood of the Innocent
    .cast 311704 >>Usar |T254294:0|t[Pergaminho da Floresta do Crepúsculo]
    .use 173527
step
    #requires Blood of the Innocent
    #completewith next
    #label Blood of the Innocent2
    .goto 47,73.83,46.01,5,0
    .goto 47,73.87,45.53,5,0
    .goto 47,74.27,44.22,5,0
    .goto 47,74.01,44.76,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Tigela|r
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #requires Blood of the Innocent
    #completewith Blood of the Innocent2
    #title |cFFFCDC00Entre na Casa|r
    .goto 47,73.67,44.08,5 >>Entre na Casa e suba
step
    #requires Blood of the Innocent2
    .goto 47,73.64,43.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Tigela|r em cima.
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith next
    #hidewindow
    #label Althea Ebonlocke
    >>Derrote |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith Althea Ebonlocke
    .goto 47,73.71,44.23,5,0
    .goto 47,74.07,44.69,5,0
    .goto 47,74.29,44.28,5,0
    .goto 47,73.88,45.62,5,0
    .goto 47,73.72,46.12,5 >>Saia da Casa
    #title |cFFFCDC00Sair da Casa|r
step
    #requires Althea Ebonlocke
    #completewith next
    #label Althea Ebonlocke2
    >>Derrote |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #requires Althea Ebonlocke
    #completewith Althea Ebonlocke2
    .goto 47,72.83,46.9,5,0
    .goto 47,72.5,47.26,5,0
    .goto 47,72.34,47.7,5,0
    .goto 47,71.88,46.78,15 >>Entre na casa
    #title |cFFFCDC00Entre na Casa|r
step
    #requires Althea Ebonlocke2
    .goto 47,71.94,46.43
    >>Derrote |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith next
    #label Skull of the Innocent
    .goto 47,72.38,47.75,5,0
    .goto 47,72.55,47.18,5,0
    .goto 47,73.01,46.9,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Crânio|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    #completewith Skull of the Innocent
    .goto 47,73.99,48.27,10 >>Entre na Forja
step
    #requires Skull of the Innocent
    .goto 47,73.85,48.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Crânio|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    .goto 47,71.91,47.69
    >>Clique no Pop-Up de Entrega de Missão no seu Registro de Missões.
    .turnin 42539 >>Entregue Capa e Espada
    .accept 42568 >>Aceite Preparação
    .target Malton
step
    #completewith next
    #label Preparation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    .turnin 42568 >>Entregue Preparação
    .target Garona Meiorken
    .accept 42504 >>Aceite A Lâmina Oculta
    .disablecheckbox
step
    #completewith Preparation
    .cast 311712 >>Usar |T254294:0|t[Pergaminho da Floresta de Elwynn]
    .use 173532
step
    #requires Preparation
    .goto 37,36.79,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r na Floresta de Elwynn
    .turnin 42568 >>Entregue Preparação
    .target Garona Meiorken
    .accept 42504 >>Aceite A Lâmina Oculta
step
    .isOnQuest 42504
    .isQuestNotComplete 42504
    .goto 37,32.05,49.23
    .enterScenario 1123 >>Entre no Cenário
    *|cRXP_WARN_Você só pode usar montarias terrestres neste cenário|r.
--HERE
step
    #completewith next
    #label Confront Mathias Shaw.
    .zoneskip 37,1
    .isInScenario 1123
    >>|cRXP_WARN_Aguarde a encenação|r.
    *|cRXP_WARN_Você não pode usar montarias neste cenário|r
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isInScenario 1123
    .zoneskip 37,1
    #completewith Confront Mathias Shaw.
    .goto 37,32.05,49.23,40 >>Siga a Seta
    .timer 45,Aguarde o RP
step
    #requires Confront Mathias Shaw.
    .goto 37,31.92,48.99
    .isOnQuest 42504
    .isInScenario 1123
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2548,1 --Confront Mathias Shaw.
step
    #completewith Obtain the Kingslayers
    +Entre em |cRXP_WARN_Furtividade|r e evite os guardas, especialmente aqueles com marcadores de olho que detectam furtividade melhor.
step
    .isInScenario 1123
    .goto 84,72.35,88.62,15 >>Siga a Seta
step
    #completewith next
    #label smoke bomb
    .isInScenario 1123
    .goto 84,70.05,83.16,15,0
    .goto 84,69.96,79.58,15,0
    .goto 84,68.03,79.8,15,0
    .goto 84,66.49,76.54,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Caixote|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    .isInScenario 1123
    #completewith smoke bomb
    #title |cFFFCDC00Siga a Seta|r
    .goto 84,66.07,74.13,10 >>Entre em Ventobravo e na casa.
step
    #requires smoke bomb
    .isInScenario 1123
    .goto 84,66.81,73.89,8,0
    .goto 84,66.12,74.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Caixote|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    #completewith next
    #label Trader's Hall
    .goto 84,66.38,73.66,5,0
    .isInScenario 1123
    >>Usar o |T458733:0|t[Bomba de Fumaça] dentro da Casa de Leilões. |cRXP_WARN_Há um botão embaixo do objetivo da missão|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
step
    .isInScenario 1123
    #completewith Trader's Hall
    #title |cFFFCDC00Sair da Casa|r
    .goto 84,65.6,74.23,5 >>Saia da Casa
step
    #requires Trader's Hall
    .goto 84,63.27,73.7,15,0
    .goto 84,61.65,72.46,10,0
    .goto 84,61.65,72.38
    .isInScenario 1123
    >>Usar o |T458733:0|t[Bomba de Fumaça] dentro da Casa de Leilões. |cRXP_WARN_Há um botão embaixo do objetivo da missão|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
    .usespell 214645
step
    .goto 84,61.76,72.68,5,0
    .goto 84,62.5,72.22,5,0
    .goto 84,62.7,68.93
    .isInScenario 1123
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Guarda da Cidade Desconfiado|r
    .scenario 2711,1 --Pickpocket Guards until you find information
    .mob Suspicious City Guard
    .usespell 921
step
    .isInScenario 1123
    #hidewindow
    #completewith Garona
    .goto 84,64.1,70.02,15,0
    .goto 84,64.87,69.13,15,0
    .goto 84,64.36,66.58,15,0
    .goto 84,66.17,64.29,15,0
    .goto 84,67.28,64.26,15,0
    .goto 84,69.96,62.17,15,0
    .goto 84,71.93,60.61,15,0
    .goto 84,73.79,61.84,15,0
    .goto 84,73.96,60.64,15,0
    .goto 84,73.53,57.77,15,0
    .goto 84,75.18,55.28
    +1
step
    .isInScenario 1123
    >>Usar |T666475:0|t[Mensagem Codificada]. |cRXP_WARN_Há um botão embaixo do objetivo da missão|r.
    .scenario 2711,2 --Read the Coded Message
step
    #label Garona
    .isInScenario 1123
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2558,1 --Meet Garona at the Pig and Whistle Tavern in Old Town.
step
    .goto 84,75.18,55.28
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Porta|r
    .scenario 2560,1 --Open the tavern door.
step
    .goto 84,75.96,53.37
    .isInScenario 1123
    >>Mate as ondas de inimigos
    .scenario 2560,2 --Make Althea Ebonlocke talk.
    .mob Sister Althea Ebonlocke
    .mob Veiled Fanatic
    .mob Gloom
    .mob Sister Althea Ebonlocke
step
    .goto 84,75.04,55.42,5,0
    .goto 84,71.57,55.66,10,0
    .goto 84,70.08,52.68,15,0
    .goto 84,73.22,47.34,20,0
    .goto 84,76.22,44.27,20,0
    .goto 84,78.73,44.86,20,0
    .goto 84,80.77,37.82,20,0
    .goto 84,84.14,33.42,20,0
    .goto 84,83.65,30.31
    .isInScenario 1123
    #title |cFFFCDC00Siga a Seta|r
    >>Usar |T132307:0|t[Disparada] para contornar o vento ou matar |cRXP_ENEMY_Ritualista Fatigado|r
    .scenario 2561,1 --Find the Herald in Stormwind Keep.
    .mob Fatigued Ritualist
step
    .goto 84,82.6,28.2
    .isInScenario 1123
    >>Mate |cRXP_ENEMY_Melris Malagan|r
    .scenario 2562,1 --Assassinate Melris Malagan
    .timer 29.5,RP
    .mob Melris Malagan
step
    #label Obtain the Kingslayers
    .goto 84,82.83,27.93
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .complete 42504,1 --1/1 Obtain the Kingslayers
    .scenario 2563,1 --Wield the Kingslayers.
step
    .goto 84,86.9,37.2
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .scenario 2564,1 --Take the portal to Dalaran.
step
    .achievementComplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    .accept 45727 >>Aceite A União das Ilhas
    .turnin 45727 >>Entregue A União das Ilhas
    .target Arquimago Hadggar
step
    .achievementIncomplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    *|cRXP_WARN_Requer nível 30|r.
    .accept 45727 >>Aceite A União das Ilhas
    .turnin 45727 >>Entregue A União das Ilhas
    .target Arquimago Hadggar
step
    #completewith next
    #label Hall of Shadows
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    .turnin 42504 >>Entregue A Lâmina Oculta
    .target Garona Meiorken
-- step
--     #completewith Hall of Shadows
--     #label Artifact Weapon: Assassination
--     .goto 627,46.57,26.96,5,0
--     .goto 627,46.62,25.77
--     #title |cFFFCDC00Enter Forge|r
--     .cast 6477 >>Click on the |cRXP_PICK_Knocker|r
--     .gossipoption 45145 >>Talk to |cRXP_FRIENDLY_Mongar|r
--     .target Mongar
step
    #completewith Hall of Shadows
    #label Artifact Weapon: Assassination
    .goto 627,52.66,33.9,5,0
    .goto 627,54.47,31.51,5,0
    .goto 627,54.28,32.78
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>Clique na |cRXP_PICK_Aldrava|r
    .gossipoption 45402 >>Fale com |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires Hall of Shadows
    #completewith next
    #label Hall of Shadows2
    .goto 626,48.79,33.36,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    .turnin 42504 >>Entregue A Lâmina Oculta
    .target Garona Meiorken
step
    #requires Hall of Shadows
    #completewith Hall of Shadows2
    #title |cFFFCDC00Siga a Seta|r
    .goto 626,43.32,63.3,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Torch|r para sair da sala secreta.
step
    #requires Hall of Shadows2
    .goto 626,42.43,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    .turnin 42504 >>Entregue A Lâmina Oculta
    .target Garona Meiorken
]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Fora da Lei
#displayname Artefato Arma: Outlaw
#next a) Salão da Ordem Ladino Parte 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Outlaw
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 44375 >>Aceite A Última Lâmina
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    -- .skipgossipid 45232 -- I'm ready to make a decision. 2nd
    -- .skipgossipid 45230 -- 1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 44375 >>Entregue A Última Lâmina
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 44034 >>Aceite Outra Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 44034 >>Entregue Outra Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 40840 >>Aceite Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .skipgossipid 45230 --1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 40840 >>Entregue Uma Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    #completewith Board the Crimson Veil
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 626,41.28,74.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r
    .accept 40847 >>Aceite Um Acordo Amistoso
    .target Almirante de Frota Tethys
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    *|cRXP_WARN_reconecte-se se o NPC não estiver lá|r
    .accept 43262 >>Aceite Campeã: Garona Meiorken
    .turnin 43262 >>Entregue Campeã: Garona Meiorken
    .target Garona Meiorken
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Aceite Campeã: Vanessa VanCleef
    .turnin 43261 >>Entregue Campeã: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 40847
    .cast 311705 >>Usar |T413582:0|t[Pedra de Retorno Dourada]
    .use 173528
step
    #completewith next
    #label Board the Crimson Veil
    #title |cFFFCDC00Siga a Seta|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    #completewith Board the Crimson Veil
    .goto 210,40.95,74.28,10 >>Saia da Casa
    #title |cFFFCDC00Sair da Casa|r
step
    #requires Board the Crimson Veil
    .goto 210,40.77,69.12
    #title |cFFFCDC00Siga a Seta|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r
    .turnin 40847 >>Entregue Um Acordo Amistoso
    .target Almirante de Frota Tethys
    .accept 40849 >>Aceite Os Alfanjes do Terror
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r
    .complete 40849,1 --1/1 Set sail (Optional)
    .skipgossipid 44882 -- Set sail for Azsuna!
    .target Almirante de Frota Tethys
step
    #completewith Fly to Dalaran
    +Você só pode usar montarias terrestres neste cenário.
step
    #completewith next
    #label the Horizon's Edge
    .isOnQuest 40849
    >>Mate |cRXP_ENEMY_Imediato DeGauza|r
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .isOnQuest 40849
    #completewith the Horizon's Edge
    .goto 630,60.73,68.3,20 >>Embarque no Navio
step
    #requires the Horizon's Edge
    .goto 630,61.13,68.67,10,0
    .goto 630,58.56,67.81
    .isOnQuest 40849
    >>Mate |cRXP_ENEMY_Imediato DeGauza|r depois siga a seta.
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .goto 630,58.34,67.48,10,0
    .goto 630,58.25,66.97,10,0
    .goto 630,58.11,66.8,10,0
    .goto 630,57.96,66.85,10,0
    .goto 630,57.9,66.59,10,0
    .goto 630,56.43,67.28
    .isInScenario 1012
    #title |cFFFCDC00Siga a Seta|r
    .scenario 2117,1 --Find the Dread Admiral Eliza
    .timer 28,Aguarde o RP
step
    .goto 630,56.41,67.29
    .isInScenario 1012
    >>Mate |cRXP_ENEMY_Lorde Barba Salobra|r
    .scenario 2132,1 --Defeat Lord Brinebeard
    .mob Lord Brinebeard
step
    .goto 630,56.02,68.72,5,0
    .goto 630,55.27,69.92,5,0
    .goto 630,55.27,69.94,5,0
    .goto 630,55.49,70.61,5,0
    .goto 630,55.14,71.37,5,0
    .goto 630,54.05,71.48
    .isInScenario 1012
    #title |cFFFCDC00Siga a Seta|r
    >>Mate todos os |cRXP_ENEMY_Moldaventos Medonho|r e evite o |cRXP_WARN_Jato d'Água|r.
    .scenario 2133,1 --Pursue the Dread Admiral Eliza into the temple depths
    .mob Dread Squallshaper
step
    .goto 630,53.25,72.06
    .isInScenario 1012
    >>Mate |cRXP_ENEMY_Almirante do Medo Elisa|r
    .scenario 2150,1 --Defeat Eliza
    .mob Dread Admiral Eliza
step
    .goto 630,53.5,71.89
    .isInScenario 1012
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .complete 40849,2 --1/1 Dreadblades obtained
    .scenario 2150,2 --Claim the Dreadblades
step
    #completewith next
    #label Fly to Dalaran
    .goto 630,54.17,71.4,10,0
    .goto 630,55.19,71.34,10,0
    .goto 630,56.04,68.68,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Bloodsail Grifo|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .target Bloodsail Gryphon
step
    #completewith Fly to Dalaran
    .goto 630,56.25,67.9,35 >>Saia do Templo
step
    #requires Fly to Dalaran
    .goto 630,56.25,67.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Bloodsail Grifo|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .timer 12,Aguarde o RP
    .target Bloodsail Gryphon
step
    .achievementComplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    .accept 45727 >>Aceite A União das Ilhas
    .turnin 45727 >>Entregue A União das Ilhas
    .target Arquimago Hadggar
step
    .achievementIncomplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Archmage Hadggar|r
    *|cRXP_WARN_Requer nível 30|r.
    .accept 45727 >>Aceite A União das Ilhas
    .turnin 45727 >>Entregue A União das Ilhas
    .target Arquimago Hadggar
step
    #completewith next
    #hidewindow
    #label The Dreadblades
    .goto 627,52.61,34.02,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r
    .turnin 40849 >>Entregue Os Alfanjes do Terror
    .target Almirante de Frota Tethys
step
    #completewith The Dreadblades
    #label Artifact Weapon: Outlaw
    .goto 627,54.51,31.42,5,0
    .goto 627,54.32,32.84,5,0
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>Clique na |cRXP_PICK_Aldrava|r
    .gossipoption 45402 >>Fale com |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires The Dreadblades
    #completewith next
    #label The Dreadblades2
    .goto 626,48.76,33.81,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r
    .turnin 40849 >>Entregue Os Alfanjes do Terror
    .target Almirante de Frota Tethys
step
    #requires The Dreadblades
    #completewith The Dreadblades2
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Tocha|r para abrir a porta para a sala secreta.
step
    #requires The Dreadblades2
    .goto 626,41.14,74.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r
    .turnin 40849 >>Entregue Os Alfanjes do Terror
    .target Almirante de Frota Tethys
]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Subterfúgio
#displayname Arma Artefato: Subterfúgio
#next a) Salão da Ordem Ladino Parte 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Subtlety
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 44375 >>Aceite A Última Lâmina
    .skipgossipid 45233
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
    .choose 1389397
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 44375 >>Entregue A Última Lâmina
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 44034 >>Aceite Outra Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
    .choose 1389397
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 44034 >>Entregue Outra Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .accept 40840 >>Aceite Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    -- .choose 1389395
    .choose 1389397
    .skipgossipid 45232 -- I'm ready to make a decision. --2nd
    .skipgossipid 45233 -- I'm ready to make a decision. --3rd
    .skipgossipid 45230 -- I'm ready to make a decision. --1st
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .turnin 40840 >>Entregue Uma Lâmina Digna
    .target Lorde Jorach Corvoforte
step
    #completewith Lucian Trias'
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 626,41.04,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .accept 41919 >>Aceite As Sombras Revelam
    .target Valira Sanguinar
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garona Meiorken|r
    *|cRXP_WARN_reconecte-se se o NPC não estiver lá|r
    .accept 43262 >>Aceite Campeã: Garona Meiorken
    .turnin 43262 >>Entregue Campeã: Garona Meiorken
    .target Garona Meiorken
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Aceite Campeã: Vanessa VanCleef
    .turnin 43261 >>Entregue Campeã: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    #completewith next
    #label Lucian Trias'
    #hidewindow
    .goto 626,45.01,57.61,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #completewith Lucian Trias'
    .goto 626,29.48,22.39
    .cast 6477 >>Clique na |cRXP_PICK_Aldrava|r
step
    #requires Lucian Trias'
    #completewith next
    #label Lucian Trias'2
    .goto 627,45.6,28.53,10,0
    .goto 627,46.84,28.87,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #requires Lucian Trias'
    #completewith Lucian Trias'2
    .goto 627,53.16,33.12,10 >>Siga a Seta
step
    #requires Lucian Trias'2
    .goto 627,54.39,31.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .skipgossipid 45401 -- The shadows reveal.
    .target Lucian Trias
step
    #completewith next
    #hidewindow
    #label Val'zuun's intel
    .goto 627,52.78,33.64,5,0
    .goto 628,74.85,64.13,5,0
    .goto 628,73.26,65.67,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Val'zuun|r
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith Val'zuun's intel
    .goto 628,67.4,63.13,15 >>Entre no Esgoto
step
    #requires Val'zuun's intel
    .isOnQuest 41919
    .goto 628,67.4,63.13
    .gossipoption 45397 >>Fale com |cRXP_FRIENDLY_Val'zuun|r
    .timer 26,Aguarde o RP
    .target Val'zuun
step
    #completewith next
    #label The Shadows Reveal
    .goto 628,73.57,65.69,5,0
    .goto 628,76.45,67.51,5,0
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith The Shadows Reveal
    .goto 628,75.2,65.08,5 >>Fique perto da saída do esgoto |cRXP_WARN_não vá muito longe|r
step
    #requires The Shadows Reveal
    .goto 628,74.05,63.8
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    .goto 627,27.36,64.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Desmond Gravelamúria|r
    .target Desmond Gravesorrow
    .complete 41919,1 --1/1 Desmond Gravesorrow's intel
    .skipgossipid 45396 -- <Search the body for clues.
step
    #completewith next
    #label The Shadows Reveal2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41919 >>Entregue As Sombras Revelam
    .target Valira Sanguinar
    .accept 41920 >>Aceite Uma Questão de Classe
step
    #completewith The Shadows Reveal2
    #title |cFFFCDC00Entre na Casa|r
    .goto 627,51.62,68.76,5 >>Entre na casa
step
    #requires The Shadows Reveal2
    .goto 627,51.67,70.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41919 >>Entregue As Sombras Revelam
    .target Valira Sanguinar
    .accept 41920 >>Aceite Uma Questão de Classe
step
    #completewith next
    #label Rune of Portals
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Esquive as Sentinelas Arcanas e redemoinhos de fogo|r.
    .complete 41920,1 --1/1 Rune of Portals
step
    #completewith Rune of Portals
    #title |cFFFCDC00Siga a Seta|r
    .goto 627,56.97,46.87
    .cast 1784 >>Usar |T132320:0|t[Furtividade] antes de entrar na Casa.
    .usespell 1784
step
    #requires Rune of Portals
    .goto 627,53.60,47.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Esquive as Sentinelas Arcanas e redemoinhos de fogo|r.
    .complete 41920,1 --1/1 Rune of Portals
    .target Arcane Sentry
step
    #completewith next
    #label Portals delivered
    .goto 628,74.43,64.05,5,0
    .goto 628,73.03,65.41,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
step
    #completewith Portals delivered
    .goto 628,67.2,63.23,5 >>Entre no Esgoto
step
    #requires Portals delivered
    .goto 628,67.2,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
    .skipgossipid 45398 -- <Hand the Rune of Portals to Val'zuun.>
step
    .goto 628,67.82,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41920 >>Entregue Uma questão de classe
    .target Valira Sanguinar
    .accept 41921 >>Aceite Aproximando
step
    #completewith next
    #label Akaari confronted
    .goto 628,73.34,65.55,5,0
    .goto 628,76.49,67.38,5,0
    >>Mate |cRXP_ENEMY_Akaari Sombrassangue|r
    .complete 41921,1 --1/1 Akaari confronted
step
    #completewith Akaari confronted
    .goto 627,59.7,48.09,5 >>Saia do Esgoto
step
    #requires Akaari confronted
    .goto 627,49.89,37.93,5,0
    .goto 627,50.69,40.98,5,0
    .goto 627,49.48,41.21,5,0
    .goto 627,47.78,40.7
    >>Entre na casa e suba para matar |cRXP_ENEMY_Akaari Sombrassangue|r
    #title |cFFFCDC00Entre na Casa|r
    .complete 41921,1 --1/1 Akaari confronted
    .mob Akaari Shadowgore
step
    .goto 627,49.48,41.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41921 >>Entregue Aproximando
    .target Valira Sanguinar
    .accept 41922 >>Aceite Traidor!
step
    #completewith next
    #label Traitor!
    .goto 627,48.3,40.41,5,0
    .goto 627,48.17,38.22,5,0
    .goto 628,74.48,63.87,5,0
    .goto 628,72.98,65.34,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41922 >>Entregue Traidor!
    .target Valira Sanguinar
step
    #completewith Traitor!
    .goto 628,67.53,62.39,5 >>Entre no Esgoto
step
    #requires Traitor!
    .goto 628,67.53,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41922 >>Entregue Traidor!
    .target Valira Sanguinar
step
    .goto 628,67.22,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Val'zuun|r
    .accept 41924 >>Aceite Presas do Devorador
    .timer 15,Aguarde o RP
    .target Val'zuun
step
    .goto 628,66.73,61.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 41924,1 --1/1 Use the Twisted Gateway
step
    #completewith next
    #label Akaari Shadowgore
    .isOnQuest 41924
    >>Vá para |cRXP_ENEMY_Akaari Sombrassangue|r, desvie dos olhos conforme eles o tiram da furtividade.
    *Derrote |cRXP_ENEMY_Akaari Sombrassangue|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    #completewith Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    .cast 1784 >>Usar |T132320:0|t[Furtividade] para chegar furtivamente em |cRXP_ENEMY_Akaari Sombrassangue|r
    .usespell 1784
step
    #requires Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    >>Vá para |cRXP_ENEMY_Akaari Sombrassangue|r, desvie dos olhos conforme eles o tiram da furtividade.
    *Derrote |cRXP_ENEMY_Akaari Sombrassangue|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .timer 5,Aguarde o RP
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    .cast 1784 >>Usar |T132320:0|t[Furtividade] e |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Devoralmas|r.
    *|cRXP_WARN_Há um botão embaixo do objetivo da missão|r.
    .scenario 2364,1 --Use Pick Pocket on the Soulkeeper.
    .usespell 1784
    .usespell 921
    .mob Soulkeeper
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Jaula|r
    .scenario 2473,1 --Escape the Jailer's Prison.
step
    .goto 741,64.5,47.39
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Caixote|r
    .scenario 2473,2 --Reclaim your weapons.
step
    .goto 741,59.76,51.71
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Gate|r
    .scenario 2473,3 --Open the Holding Cell door.
    .timer 10,Aguarde o RP
step
    .goto 741,51.3,52.8
    .isInScenario 1078
    >>Mate |cRXP_ENEMY_Xirus|r
    .scenario 2366,1 --Slay Inquisitor Xirus.
    .mob Xirus
step
    .goto 740,52.3,70.38,10,0
    .goto 740,58.4,66.7
    .isInScenario 1078
    #title |cFFFCDC00Siga a Seta|r
    .goto 740,58.7,66.87
    .scenario 2367,2 --Find Akaari Shadowgore.
step
    .goto 740,63.61,53.24
    .isInScenario 1078
    >>Mate |cRXP_ENEMY_Akaari Sombrassangue|r |cRXP_WARN_Quando ela invoca cópias de si mesma, mate-as primeiro|r.
    .scenario 2368,1 --Kill Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    .goto 740,63.21,53.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .complete 41924,2 --1/1 Fangs of the Devourer
    .scenario 2369,1 --Wield the Fangs of the Devourer.
step
    #completewith next
    #hidewindow
    #label Fangs of the Devourer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41924 >>Entregue Presas do Devorador
    .target Valira Sanguinar
step
    #completewith Fangs of the Devourer
    .zoneskip 740,1
    .zone 628 >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .macro Leave Instance,236367 >>Saia da Instância.
step
    #requires Fangs of the Devourer
    #hidewindow
    #completewith next
    #label Fangs of the Devourer2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41924 >>Entregue Presas do Devorador
    .target Valira Sanguinar
step
    #requires Fangs of the Devourer
    #completewith Fangs of the Devourer2
    .zoneskip 626
    .goto 628,73.27,65.13,5,0
    .goto 628,76.51,67.51,5,0
    .goto 627,59.65,47.69,5 >>Saia do Esgoto
step
    #requires Fangs of the Devourer2
    #hidewindow
    #completewith next
    #label Fangs of the Devourer3
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41924 >>Entregue Presas do Devorador
    .target Valira Sanguinar
step
    #requires Fangs of the Devourer2
    #completewith Fangs of the Devourer3
    #label Artifact Weapon: Subtlety
    .zoneskip 626
    .goto 627,54.5,31.45,5,0
    .goto 627,54.32,32.81
    .cast 6477 >>Clique na |cRXP_PICK_Aldrava|r
    .gossipoption 45402 >>Fale com |cRXP_FRIENDLY_Lucian Trias|r
    .target Lucian Trias
 step
    #requires Fangs of the Devourer3
    #hidewindow
    #completewith next
    #label Fangs of the Devourer4
    .goto 626,49.45,32.64,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41924 >>Entregue Presas do Devorador
    .target Valira Sanguinar
step
    #requires Fangs of the Devourer3
    #completewith Fangs of the Devourer4
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Tocha|r para abrir a porta para a sala secreta.
step
    #requires Fangs of the Devourer4
    .goto 626,40.88,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valira Sanguinar|r
    .turnin 41924 >>Entregue Presas do Devorador
    .target Valira Sanguinar
]])
--Assassination 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma de Artefato: Assassinato
#displayname Arma de Artefato: Assassinato
#next ac) Salão da Ordem Ladino Parte 2
#internal

<< Rogue

step
    #include a) Artifact Weapon: Assassination
]])
--Outlaw 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Outlaw
#displayname Artefato Arma: Outlaw
#next ac) Salão da Ordem Ladino Parte 2
#internal

<< Rogue

step
    #include a) Artifact Weapon: Outlaw
]])
--Subtlety 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Subterfúgio
#displayname Artefato Arma: Subterfúgio
#next ac) Salão da Ordem Ladino Parte 2
#internal

<< Rogue

step
    #include a) Artifact Weapon: Subtlety
]])

--Rogue Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Ladino Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Ladino
#chapter
#internal

<< Rogue

step
    #completewith Lethal Efficiency22
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Rogue Part 1@Call of The Uncrowned-Final Shadow
step
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Jorach Corvoforte|r
    .target Lorde Jorach Corvoforte
    .accept 40840 >>Aceite Uma Lâmina Digna
step
    .isOnQuest 40840
    .goto 626,41.7,75.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Almirante de Frota Tethys|r, |cRXP_FRIENDLY_Valira Sanguinar|r e |cRXP_FRIENDLY_Princesa Tess Greymane|r.
    .complete 40840,2 --1/1 Valeera's plan considered
    .complete 40840,1 --1/1 Tethys' plan considered
    .complete 40840,3 --1/1 Tess' plan considered
    .skipgossipid 45256
    .skipgossipid 45235
    .skipgossipid 45103
    .target Almirante de Frota Tethys
    .target Valira Sanguinar
    .target Princesa Tess Greymane
step
    .isQuestAvailable 40840
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Assassination >>Remix\a) Artefato Arma: Assassinato >> Assassinato(DPS) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Outlaw >>Remix\a) Artefato Arma: Outlaw >> Outlaw(DPS) Cadeia de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Subtlety >>Remix\a) Artefato Arma: Subterfúgio >> Subterfúgio(DPS) Cadeia de Missões
step
    #include ac) Order Hall Rogue Part 2@Honoring Success-Lethal Efficiency2
]])

-- --------- Shaman ---------

--Elemental
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Elemental
#displayname Arma Artefato: Elemental
#next a) Salão da Ordem Xamã Parte 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Aceite Potencial Máximo
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Elemental|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Entregue Potencial Máximo
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Aceite Expanding Your Horizon
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Elemental|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Entregue Expanding Your Horizon
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Aceite O Chamado dos Elementos
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Isto selecionará automaticamente o artefato Elemental|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389398
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Entregue Os Elementos Chamam...
    .target Thrall
step
    #completewith The Coming Storm
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .zoneskip 726,1
    .goto 726,34.18,77.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rehgar Terrafúria|r
    .accept 43334 >>Aceite A Tormenta Vindoura
    .target Rehgar Terrafúria
step
    .goto 725,34.07,74.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rehgar Terrafúria|r
    .accept 43334 >>Aceite A Tormenta Vindoura
    .target Rehgar Terrafúria
step
    .isOnQuest 43334
    .goto 726,34.18,77.80,-1
    .goto 725,34.07,74.37,-1
    .zone 379 >>Clique em |cRXP_FRIENDLY_Graddoc|r
    .target Graddoc
step
    #label The Coming Storm
    .goto 379,66.90,56.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xuen|r
    .turnin 43334 >>Entregue A Tormenta Vindoura
    .accept 43338 >>Aceite O Códice de Ra
    .target Xuen
step
    .goto 390,22.39,26.70
    >>|cRXP_WARN_Siga a seta|r
    .complete 43338,1 --1/1 Travel to the Guo-Lai Halls
step
    .zoneskip 395
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,55.19,91.12,12 >>Entre no Salão Guo-Lai
step
    #completewith TheEdictsOfXA
    >>Mate os |cRXP_ENEMY_Mogu Espíritos|r no Salão Guo-Lai
    *|cRXP_WARN_Evasão das |cRXP_ENEMY_Estátuas Mogu|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    #completewith next
    #label TheEdictOfFireA
    >>Mate |cRXP_ENEMY_Xioliang|r. Saqueie-o para obter o |T1017867:0|t[|cRXP_LOOT_Edict of Fogo|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,47.43,81.40,15,0
    .goto 395,52.13,63.98,25,0
    .goto 395,67.44,68.62,25 >>Entre na Guo-Lai Ritual Chamber
step
    #hidewindow
    #completewith TheEdictOfFireA
    .goto 395,74.25,53.19,50 >>Siga a Seta
step
    #requires TheEdictOfFireA
    .goto 395,74.83,51.02
    >>Mate |cRXP_ENEMY_Xioliang|r. Saqueie-o para obter o |T1017867:0|t[|cRXP_LOOT_Edict of Fogo|r].
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    #label TheEdictOfStoneA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Estátua de Zhu da Pedra Eterna|r.
    >>Mate |cRXP_ENEMY_Zhu da Pedra Eterna|r. Saqueie-o para obter o |T442737:0|t[|cRXP_LOOT_Edict of Pedra|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,64.19,66.71,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,33.16,20.93,15,0
    .goto 395,48.87,30.24,15 >>Entre no Guo-Lai Vault
step
    #hidewindow
    #completewith TheEdictOfStoneA
    .goto 395,48.87,30.24,50 >>Siga a Seta
step
    #requires TheEdictOfStoneA
    .goto 395,48.87,30.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Estátua de Zhu da Pedra Eterna|r.
    >>Mate |cRXP_ENEMY_Zhu da Pedra Eterna|r. Saqueie-o para obter o |T442737:0|t[|cRXP_LOOT_Edict of Pedra|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Zhu of the Eternal Stone
step
    #completewith next
    #label TheEdictOfStormA
    >>Mate |cRXP_ENEMY_Serpente do Trovão Nalak'Ra|r. Saqueie-a para obter o |T839911:0|t[|cRXP_LOOT_Edict of Tempestade|r].
    .complete 43338,4 --1/1 The Edict of Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    #title |cFFFCDC00Check note|r
    .goto 395,32.94,21.14,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,51.81,57.95,33,0
    .goto 395,56.24,48.40,15,0
    .goto 395,64.67,23.05,15,0
    .goto 395,68.78,23.98,15,0
    .goto 395,69.57,15.71,15,0
    .goto 396,66.28,19.96
    .zone 396 >>Entre na Sala da Serpente
    *|cRXP_WARN_NOTE:|r A primeira runa no centro é a segura, apenas pise nelas.
step
    #requires TheEdictOfStormA
    .goto 396,57.75,50.75
    >>Mate |cRXP_ENEMY_Serpente do Trovão Nalak'Ra|r. Saqueie-a para obter o |T839911:0|t[|cRXP_LOOT_Edict of Tempestade|r].
    .complete 43338,4 --1/1 The Edict of the Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    #label TheCodexofRaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rehgar Terrafúria|r
    .turnin 43338 >>Entregue O Códice de Ra
    .accept 39771 >>Aceite A Voz do Trovão
    .target Rehgar Terrafúria
step
    #completewith TheCodexofRaA
    #title |cFFFCDC00Check note|r
    .goto 395,67.13,14.55,15,0
    .goto 395,70.22,18.57,15,0
    .goto 395,68.17,24.88,15,0
    .goto 395,63.00,25.50,15 >>Volte para cima
    *|cRXP_WARN_NOTE:|r A primeira runa no centro é a segura, apenas pise nelas.
step
    #requires TheCodexofRaA
    .goto 395,53.19,61.45
    >>Mate os |cRXP_ENEMY_Mogu Espíritos|r no Salão Guo-Lai
    *|cRXP_WARN_Evasão das |cRXP_ENEMY_Estátuas Mogu|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    .goto 395,47.11,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rehgar Terrafúria|r
    .turnin 43338 >>Entregue O Códice de Ra
    .accept 39771 >>Aceite A Voz do Trovão
    .target Rehgar Terrafúria
step
    #completewith next
    #label TheVoiceOfThunderA
    >>|cRXP_WARN_Siga a seta|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    #completewith TheVoiceOfThunderA
    #title Sair dos Salões Guo-Lai
    .goto 390,22.55,27.08,15 >>|cRXP_WARN_Saia dos Salões Guo-Lai|r
step
    #requires TheVoiceOfThunderA
    .goto 379,68.63,57.01
    >>|cRXP_WARN_Siga a seta|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    .isOnQuest 39771
    .goto 379,68.6,57.0
    .enterScenario 976 >>Entre no cenário |cRXP_PICK_Mestre das Tempestades|r.
step
    .isInScenario 976
    .goto 379,68.6,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xuen|r
    .scenario 1992,1 --Speak with the White Tiger.
    .skipgossipid 45121
    .target Xuen
step
    .isInScenario 976
    #completewith next
    #label DefeatTheGiantslayerA
    >>Derrote |cRXP_ENEMY_Sigurd, o Matador de Gigantes|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    #completewith DefeatTheGiantslayerA
    .goto 379,69.32,52.72
    .gossipoption 45122 >>Fale com |cRXP_FRIENDLY_Xuen|r
    .target Xuen
step
    #requires DefeatTheGiantslayerA
    .isInScenario 976
    .goto 379,69.7,53.0
    >>Derrote |cRXP_ENEMY_Sigurd, o Matador de Gigantes|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .timer 53,Encenação Xuen
    .mob Sigurd the Giantslayer
step
    .isInScenario 976
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xuen|r
    .goto 379,66.7,51.2
    .scenario 1999,1 --Speak with Xuen to Begin
    .target Xuen
    .skipgossipid 45039
step
    .isInScenario 976
    .goto 379,66.7,51.2
    >>Derrote |cRXP_ENEMY_Chen Malte do Trovão|r e |cRXP_ENEMY_Li Li Malte do Trovão|r
    .scenario 1999,2 --Chen Stormstout Defeated
    .scenario 1999,3 --Li Li Stormstout Defeated
    .mob Chen Malte do Trovão
    .mob Li Li Malte do Trovão
step
    #completewith next
    #label WeaponsOfStormA
    .isInScenario 976
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Fist of Ra-den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    #completewith WeaponsOfStormA
    #title Entre no Templo
    .goto 379,68.60,45.89,15 >>Entre no Templo do Tigre Branco
step
    #requires WeaponsOfStormA
    .isInScenario 976
    .goto 379,68.79,43.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Fist of Ra-den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
    .timer 25,Duração da encenação
step
    .isInScenario 976
    .goto 379,68.8,43.7
    >>Mate |cRXP_ENEMY_Lorde Kra'vos|r.
    .scenario 2079,1 --Defeat Lord Kra'vos
    .timer 27,Duração da encenação
    .mob Low Inquisitor
    .mob Lord Kra'vos
step
    .goto 379,68.79,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal Astral para a Voragem|r
    .complete 39771,3 --1/1 Return to the Maelstrom
step
    #optional
    .isQuestTurnedIn 41510
    .goto 726,34.15,77.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rehgar Terrafúria|r
    .turnin 39771 >>Entregue A Voz do Trovão
    .target Rehgar Terrafúria
step
    .goto 726,33.48,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rehgar Terrafúria|r
    .turnin 39771 >>Entregue A Voz do Trovão
    .target Rehgar Terrafúria
]])
--Enhancement
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Aprimoramento
#displayname Arma Artefato: Aprimoramento
#next a) Salão da Ordem Xamã Parte 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Aggramar|r.
    .accept 44006 >>Aceite Potencial Máximo
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Aggramar|r.
    *|cRXP_WARN_This will automatically pick the Aperfeiçoamento artifact|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Aggramar|r.
    .turnin 44006 >>Entregue Potencial Máximo
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Aggramar|r.
    .accept 43945 >>Aceite Expandindo Seus Horizontes
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Aggramar|r.
    *|cRXP_WARN_This will automatically pick the Aperfeiçoamento artifact|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Aggramar|r.
    .turnin 43945 >>Entregue Expandindo Seus Horizontes
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Aceite O Chamado dos Elementos
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_This will automatically pick the Aperfeiçoamento artifact|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389399
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Entregue Os Elementos Chamam...
    .target Thrall
step
    #completewith Where the Hammer Falls
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .zoneskip 726,1
    .goto 726,34.51,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tempestária Mylra|r.
    .accept 42931 >>Aceite Onde Cai o Martelo
    .target Tempestária Mylra
step
    .goto 725,35.76,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tempestária Mylra|r.
    .accept 42931 >>Aceite Onde Cai o Martelo
    .target Tempestária Mylra
step
    #optional
    .zoneskip 726,1
    .goto 726,60.13,66.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Bicovento|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Bicovento
step
    .goto 725,35.48,77.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Bicovento|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Bicovento
step
    #label Where the Hammer Falls
    .goto 207,47.10,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .turnin 42931 >>Entregue Onde Cai o Martelo
    .target Thrall
    .accept 42932 >>Aceite O Que a Petramáter Sabe
step
    .goto 207,56.35,12.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therazane|r.
    .turnin 42932 >>Entregue O Que a Petramáter Sabe
    .target Therazane
    .accept 42933 >>Aceite Os Troggs que Caíram na Terra
    .accept 42935 >>Aceite O Resgate dos Dracos de Pedra
    .accept 42936 >>Aceite Jogada Apertada
step
    #completewith FelrockTroggsSlainA
    #hidewindow
    #loop
    .goto 207,47.33,13.05,45,0
    .goto 207,37.76,14.14,35,0
    .goto 207,35.96,23.04,35,0
    .goto 207,45.67,15.53,35,0
    +1
step
    #completewith StoneDrakesRescuedA
    >>Mate os |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #completewith StoneDrakesRescuedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Guardiões Opalescentes Desmontados|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label StoneDrakesRescuedA
    >>Mate os |cRXP_ENEMY_Felrock Troggs|r ao redor dos |cRXP_FRIENDLY_Stone Drakes|r.
    .complete 42935,1 --6/6 Stone Drakes Rescued
    .target Stone Drake
step
    #completewith OpalescentGuardiansRebuiltA
    >>Mate os |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #label OpalescentGuardiansRebuiltA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Guardiões Opalescentes Desmontados|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label FelrockTroggsSlainA
    >>Mate os |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    .goto 207,31.22,20.94
    >>|cRXP_WARN_Siga a seta.|r
    .complete 42936,2 --5/5 Guardians Escorted to Aeosera
step
    .goto 207,56.35,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therazane|r.
    .turnin 42933 >>Entregue Os Troggs que Caíram na Terra
    .turnin 42935 >>Entregue O Resgate dos Dragões de Pedra
    .turnin 42936 >>Entregue Jogada Apertada
    .accept 42937 >>Aceite Surra em Pedragulha
    .target Therazane
step
    .goto 207,56.73,12.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Aeosera|r
    .complete 42937,1 --1/1 Fly Aeosera to Needlerock
    .timer 60,Duração de Voo
step
    .goto 207,31.71,31.29
    >>|cRXP_WARN_Espere o roleplay.|r
    .complete 42937,2 --1/1 Assault Needlerock with Aeosera
step
    .goto 207,25.24,30.33
    >>Temporizador 60
step
    .goto 207,24.21,29.70
    >>Mate |cRXP_ENEMY_Borlock das Profundezas|r.
    .complete 42937,3 --1/1 Borlock of the Deeps slain
    .mob Borlock of the Deeps
step
    .goto 207,56.36,12.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therazane|r.
    .turnin 42937 >>Entregue Surra em Pedragulha
    .target Therazane
step
    .goto 207,56.54,12.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .accept 40224 >>Aceite O Martelo nas Profundezas
    .target Thrall
step
    .goto 207,56.39,12.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal para as Profundezas Esfaceladas|r
    .complete 40224,1 --1/1 Enter the Crumbling Depths
step
    .isOnQuest 40224
    .goto 207,56.39,12.78
    .enterScenario 950 >>Entre no cenário |cRXP_PICK_Purificação do Mar Profundo|r.
step
    .isInScenario 950
    .goto 729,33.08,72.98,35,0
    .goto 729,37.17,72.79
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 1902,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    #loop
    .goto 729,42.73,72.45,30,0
    .goto 729,39.10,83.23,30,0
    >>Mate os |cRXP_ENEMY_Devouring Imps|r.
    .scenario 1905,1 --Defeat all the Devouring Imps.
    .mob Devouring Imp
step
    .isInScenario 950
    .goto 729,48.80,78.32,35,0
    .goto 729,54.62,79.55,35,0
    .goto 729,59.60,82.33
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 1906,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    .goto 729,62.77,79.31
    >>>Mate o |cRXP_ENEMY_Corrupted Gyreworm|r.
    .scenario 1907,1 --Slay the Corrupted Gyreworm.
    .mob COrrupted Gyreworm
step
    .isInScenario 950
    .goto 729,62.71,67.05,35,0
    .goto 729,59.56,65.26
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 1908,1 --Follow the trail to find Geth'xun.
step
    .goto 729,54.30,54.58
    .isInScenario 950
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas pedras ao redor do |cRXP_PICK_Martelo da Perdição|r.
    .scenario 1909,1 --Acquire the Doomhammer.
    .complete 40224,2 --Acquire the Doomhammer
step
    .isInScenario 950
    .goto 729,52.96,53.11
    >>Mate |cRXP_ENEMY_Geth'xun|r.
    .scenario 1910,1 --Slay Geth'xun.
    .mob Geth'xun
step
    .isInScenario 950
    .goto 729,52.72,53.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Tempestária Mylra|r.
    .scenario 1911,1 --Help Stormcaller Mylra.
    .target Tempestária Mylra
step
    .zoneskip 729,1
    #completewith next
    #label ReturnToTheMaelstromA
    #hidewindow
    .complete 40224,3 --1/1 Return to the Maelstrom
step
    #completewith ReturnToTheMaelstromA
    .goto 729,53.13,55.80
    .zone 207 >>Clique em |cRXP_FRIENDLY_Bicovento|r.
step
    #requires ReturnToTheMaelstromA
    .goto 207,56.39,12.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Bicovento|r.
    .complete 40224,3 --1/1 Return to the Maelstrom
    .target Bicovento
step
    .goto 726,34.52,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tempestária Mylra|r.
    .turnin 40224 >>Entregue O Martelo nas Profundezas
    .target Tempestária Mylra
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Xamã de Restauração
#displayname Artefato Arma: Restauração
#next a) Salão da Ordem Xamã Parte 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Aceite Potencial Máximo
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Entregue Potencial Máximo
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Aceite Expanding Your Horizon
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Entregue Expanding Your Horizon
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Aceite O Chamado dos Elementos
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Restauração|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389400
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Entregue Os Elementos Chamam...
    .target Thrall
step
    #completewith ThirdClueA
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 726,33.80,79.21,-1
    .goto 725,31.97,74.72,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erunak Falapedra|r.
    .accept 43644 >>Aceite Às Profundezas
    .target Erunak Stonespeaker
step
    .goto 726,33.69,78.65,-1
    .goto 725,33.81,75.85,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Bolha de Vashj'ir|r.
    .complete 43644,1 --1/1 Travel to Vashj'ir with Erunak
    .target Bubble of Vashj'ir
step
    .goto 205,43.62,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erunak Falapedra|r.
    .turnin 43644 >>Entregue Às Profundezas
    .target Erunak Stonespeaker
    .accept 43645 >>Aceite Na Trilha da Falaondas
step
    .goto 205,40.50,74.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Adelee's Cajado|r.
    .complete 43645,1 --1/1 First Clue Found
step
    #completewith next
    #label ThirdClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Adelee's Diário|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #title |cFFFCDC00Entre na sala|r
    #completewith ThirdClueA
    .goto 205,33.10,68.76,10 >>|cRXP_WARN_Entre na sala.|r
step
    #requires ThirdClueA
    .goto 205,33.08,67.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Adelee's Diário|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #completewith next
    #label SecondClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    #title |cFFFCDC00Sair da Sala|r
    #completewith SecondClueA
    .goto 205,33.11,69.01,10 >>|cRXP_WARN_Saia da sala.|r
step
    #requires SecondClueA
    .goto 205,37.31,69.81,35,0
    .goto 205,39.15,56.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    .goto 205,43.60,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erunak Falapedra|r.
    .turnin 43645 >>Entregue Na Trilha da Falaondas
    .target Erunak Stonespeaker
    .accept 40341 >>Aceite Trono das Marés: Poder de Azshara
    .goto 204,70.71,29.33,35,0
step
    .goto 204,70.91,29.74
    >>Você pode usar uma montaria subaquática como |T133936:0|t[Tartaruga Marinha].|cRXP_WARN_
    .complete 40341,1 --1/1 Travel to the Abyssal Maw
step
    .goto 204,69.18,25.52
    >>|cRXP_WARN_Siga a seta.|r
    .complete 40341,2 --1/1 Enter the Throne of Tides
step
    .isOnQuest 40341
    .goto 204,69.18,25.52
    .enterScenario 1066 >>Entre no cenário |cRXP_PICK_A Rainha das Trevas e o Mar|r.
step
    .isInScenario 1066
    .goto 742,50.09,82.31
    >>Usar |T136044:0|t[Maré Curativa] no |cRXP_FRIENDLY_Gigante do Mar|r.
    .scenario 2282,1 --Heal the Sea Giant.
    .target Grash
    .usespell 8004
step
    .isInScenario 1066
    .goto 742,49.93,82.67
    >>Mate os |cRXP_ENEMY_Naga Brutos|r.
    .scenario 2282,2 --Kill the Naga Brutes.
step
    .isInScenario 1066
    .goto 742,50.04,82.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grash|r.
    .scenario 2282,3 --Recruit the Sea Giant.
    .target Grash
    .skipgossipid 45587
    .skipgossipid 45621
step
    .isInScenario 1066
    .goto 742,49.91,55.50
    >>Mate os |cRXP_ENEMY_Enfurecido Makrura das Profundezas|r, os |cRXP_ENEMY_Chamaré Zithreenai|r, e os |cRXP_ENEMY_
    .scenario 2283,1 --Defeat Adelee's Guards.
step
    .isInScenario 1066
    .goto 742,50.05,51.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_FRIENDLY_Falaondas Adelee|r.
    .scenario 2283,2 --Rescue Adelee.
    .target Wavespeaker Adelee
step
    .isInScenario 1066
    .goto 742,49.88,54.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grash|r.
    .scenario 2284,1 --Ask Grash to Smash the Ice Wall
    .target Grash
    .skipgossipid 45543
step
    .isInScenario 1066
    .goto 742,49.94,42.15
    >>Mate o |cRXP_ENEMY_Kra'liss|r.
    .scenario 2284,2 --Defeat Kra'liss
    .mob Kra'liss
step
    .isInScenario 1066
    .goto 742,49.92,30.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Bolha Para Cima|r.
    .scenario 2286,1 --Use Erunak's spell to ascend the riptide.
step
    #title |cFFFCDC00Esquivar as Ondas|r
    .isInScenario 1066
    .goto 743,50.48,56.05
    >>|cRXP_WARN_Esquive as ondas e siga a seta.|r
    .scenario 2286,2 --Run through the wave gauntlet.
step
    .isInScenario 1066
    .goto 743,50.64,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grash|r.
    .scenario 2287,1 --Ask Grash to destroy the ice wall.
    .target Grash
    .skipgossipid 45472
step
    .goto 743,50.53,42.91
    .isInScenario 1066
    >>Mate a |cRXP_ENEMY_Senhora Zithreen|r.
    .scenario 2287,2 --Slay Lady Zithreen.
    .mob Lady Zithreen
step
    .isInScenario 1066
    .goto 743,50.56,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Sharas'dal|r.
    .scenario 2288,1 --Pick up Sharas'dal.
    .complete 40341,3 --1/1 Acquire Sharas'dal
    .timer 35,Duração da encenação
step
    .goto 743,50.57,42.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Bolha para a Voragem|r.
    .complete 40341,4 --1/1 Return to the Maelstrom
step
    .goto 726,34.53,76.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Tempestária Mylra|r.
    .turnin 40341 >>Entregue Trono das Marés: Poder de Azshara
    .target Tempestária Mylra
]])
--Elemental 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Elemental
#displayname Arma Artefato: Elemental
#next ac) Salão da Ordem Xamã Parte 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Elemental
]])
--Enhancement 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Aperfeiçoamento
#displayname Arma Artefato: Aperfeiçoamento
#next ac) Salão da Ordem Xamã Parte 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Enhancement
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Restauração
#displayname Artefato Arma: Restauração
#next ac) Salão da Ordem Xamã Parte 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman
]])

--Shaman Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Xamã Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Xamã
#chapter
#internal

<< Shaman

step
    #completewith Azeroth Needs You2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Shaman Part 1@A Ring Unbroken-Shaman at the Maelstrom
step
    .goto 725,36.20,74.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Aceite O Chamado dos Elementos
    .target Thrall
step
    .isQuestAvailable 41335
    .isQuestAvailable account,91955
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Importante: Selecione o que você já tem para ganhar um adicional de 10% de experiência (uma única vez)|r
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Elemental >>RestedXP Legion Remix\a) Artefato Arma: Elemental >> Elemental(DPS) Linha de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Enhancement >>RestedXP Legion Remix\a) Artefato Arma: Aperfeiçoamento >> Aperfeiçoamento(DPS) Linha de Missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman >>RestedXP Legion Remix\a) Artefato Arma: Xamã de Restauração >> Restauração(Curador) Linha de Missões
step
    #include ac) Order Hall Shaman Part 2@A Ring Reforged-Azeroth Needs You
step
    .zoneskip 726,1
    .goto 726,29.81,52.02
    .zone 627 >>Clique no |cRXP_PICK_Portal para Dalaran|r.
]])

-- --------- Warlock ---------

--Affliction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Suplício
#displayname Arma Artefato: Suplício
#next a) Salão da Ordem Bruxo Parte 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_em seu salão da ordem de classe|r.
    .accept 44089 >>Aceite Um Arsenal Maior
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Isto escolherá automaticamente o artefato Suplício|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389401
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Entregue Potencial Máximo
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_em seu salão da ordem de classe|r.
    .accept 43984 >>Aceite O Tomo se Abre Novamente
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Isto escolherá automaticamente o artefato Suplício|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389401
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Entregue O Tomo se Abre Novamente
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Aceite O Tomo dos Implementos Pestilentos
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Affliction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389401
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Entregue O Tomo dos Implementos Pestilentos
    .target Calydus
step
    #completewith Following the Curse
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Aceite Ulthalesh, a Ceifadora do Vento Morto
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Aceite Ulthalesh, a Ceifadora do Vento Morto
    .target Calydus
step
    .isOnQuest 40495
    .zone 47 >>Usar o |T254294:0|t[Pergaminho da Floresta do Crepúsculo]
    .use 173527
step
    .goto 47,77.45,35.87
    >>|cRXP_WARN_Siga a seta.|r
    .complete 40495,1 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r e o derrote
    .complete 40495,2 --1/1 Convince Revil to help.
    .timer 6,Encenação de Revil
    .target Revil Kost
    .skipgossipid 44918
step
    #label Following the Curse
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40495 >>Entregue Ulthalesh, a Ceifadora do Vento Morto
    .accept 40588 >>Aceite Seguindo a Maldição
    .target Revil Kost
step
    .isOnQuest 40588
    #title |cFFFCDC00Fique perto de Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .isOnQuest 40588
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escorte |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40588
    .goto 47,85.55,40.69
    .countdown 20 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title |cFFFCDC00Fique perto de Ariden|r
    .isOnQuest 40588
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escorte |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40588
    .goto 42,44.33,34.54
    .countdown 20 >>Mate os |cRXP_ENEMY_Cavaleiros das Trevas|r
step
    #title Fique perto de Ariden
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escorte |cRXP_FRIENDLY_Revil Kost|r
    .complete 40588,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40588 >>Entregue Seguindo a Maldição
    .accept 40604 >>Aceite Perturbando o Passado
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Diário Surrado|r.
    .complete 40604,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diário Surrado|r
    .turnin 40604 >>Entregue Perturbando o Passado
    .accept 40606 >>Aceite Apontar o Caminho
    .target Battered Journal
step
    .goto 42,52.13,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Bússola|r.
    .complete 40606,1 --1/1 Ariden's Compass
step
    .goto 42,52.42,34.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40606 >>Entregue Apontar o Caminho
    .accept 40611 >>Aceite O Destino do Vento Morto
    .target Revil Kost
step
    #completewith next
    #hidewindow
    .cast 198335 >>Siga a Seta
    .timer 20,Encenação
step
    .goto 42,35.57,35.52
    >>Usar o |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Harmonizar a Bússola).
    .complete 40611,1 --1/1 Attuned at Deadman's Crossing
step
    #completewith next
    #hidewindow
    .cast 198335 >>Siga a Seta
    .timer 15,Encenação
step
    .goto 42,46.99,62.32
    >>Usar o |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Harmonizar a Bússola).
    .complete 40611,3 --1/1 Attuned at the bridge
step
    #completewith next
    #label TheFateOfDeadwindA
    >>Usar o |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Harmonizar a Bússola).
    .complete 40611,2 --1/1 Attuned at the church
step
    #title |cFFFCDC00Entre na igreja|r
    #completewith TheFateOfDeadwindA
    .goto 42,40.66,77.80,6 >>|cRXP_WARN_Siga a seta na igreja.|r
step
    #requires TheFateOfDeadwindA
    #completewith next
    #hidewindow
    .cast 198335 >>Siga a Seta
    .timer 13,Encenação
step
    #requires TheFateOfDeadwindA
    .goto 42,40.82,78.50
    >>Usar o |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Harmonizar a Bússola).
    .complete 40611,2 --1/1 Attuned at the church
step
    .goto 42,49.46,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40611 >>Vire para O Destino do Vento Morto
    .accept 41155 >>Aceite Os Cavalgantes Negros
    .target Revil Kost
step
    .isOnQuest 41155
    .goto 42,46.28,69.07
    .enterScenario 988 >>|cRXP_WARN_Entre no |cRXP_PICK_The Escuridão Riders|r cenário|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 988
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Pule para baixo
step
    #requires KarazhanCatacombsA
    .isInScenario 988
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entre nas catacumbas|r
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 988
    #title Usar |T607512:0|t[Portal Demônioíaco]
    .goto 46,55.90,69.19
    >>Usar |T607512:0|t[Portal Demônioíaco] em |cRXP_ENEMY_Ariden|r |cRXP_WARN_do registro de missões|r.
    .scenario 2022,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 111771
step
    .isInScenario 988
    .goto 46,56.36,69.25
    >>Mate |cRXP_ENEMY_O Conservador|r.
    .scenario 2023,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Siga a Seta
    .timer 25,Encenação
step
    .isInScenario 988
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Ulthalesh|r. |cRXP_WARN_Espere a encenação|r.
    .scenario 2024,1 --Ulthalesh found
step
    .isInScenario 988
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Siga a seta pelas escadas até |cRXP_ENEMY_Ariden|r.
    .scenario 2025,1 --Ariden followed
    .timer 17,Encenação Ariden
step
    .isInScenario 988
    .goto 46,68.36,24.43
    >>Mate |cRXP_ENEMY_Ariden|r.
    .scenario 2026,1 --Ariden defeated
    .timer 33,Encenação Ariden
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Apocalipse|r.
    .complete 41155,1 --1/1 Complete the Dark Riders scenario
    .complete 41155,2 --1/1 Ulthalesh claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    *|cRXP_WARN_Nota:|r Se ele ainda estiver em luta, mate os inimigos em combate com ele.
    .turnin 41155 >>Entregue Os Cavalgantes Negros
    .target Revil Kost
step
    .isQuestAvailable 40823
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Revil Kost|r.
    .accept 41156 >>Aceite O Poder Possuído
    .target Revil Kost
step
    .zoneskip 46,1
    .cooldown item,250411,>0,1
    .zone 627 >>Usar a |T134419:0|t[Pedra de Regresso do Trilha-tempo] para ir a Dalaran
    .use 250411
step
    .isOnQuest 41156
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 41156 >>Entregue O Poder Possuído
    .target Calydus
]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Demonologia
#displayname Artefato Arma: Demonologia
#next a) Salão da Ordem Bruxo Parte 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_no seu salão da ordem|r.
    .accept 44089 >>Aceite Um Arsenal Maior
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Demonologia|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389402
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Entregue Potencial Máximo
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_no seu salão da ordem|r.
    .accept 43984 >>Aceite O Tomo se Abre Novamente
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Isso selecionará automaticamente o artefato Demonologia|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389402
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Entregue O Tomo se Abre Novamente
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Aceite O Tomo dos Implementos Pestilentos
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Demonology artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389402
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Entregue O Tomo dos Implementos Pestilentos
    .target Calydus
step
    #completewith Grave Dust
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Aceite Reagentes do Ritual
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Aceite Reagentes do Ritual
    .target Calydus
step
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    #optional
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Passe pelo portal para Dalaran.|r
step
    #optional
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Siga a saída do canal.|r
step
    .isOnQuest 42128
    .zoneskip 628,1
    .goto 628,65.60,56.81,12,0
    .goto 628,77.31,68.50,10,0
    .goto 627,59.67,47.69
    .zone 627 >>|cRXP_WARN_Siga a saída do canal.|r
step
    #label Grave Dust
    .goto 627,33.41,39.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Túmulo Recém-Cavado|r.
    .complete 42128,1 --1/1 Grave Dust
step
    .goto 627,38.65,24.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Lata de Óleo Superaquecido|r.
    .complete 42128,2 --1/1 Can of Overheated Oil
step
    .goto 627,48.51,38.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Conhaque Envelhecido de Ameixa-da-Neve|r.
    .complete 42128,3 --1/1 Aged Snowplum Brandy
step
    .goto 627,60.04,38.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Docile Stag|r.
    .complete 42128,4 --1/1 Stag Blood Sample
    .skipgossipid 45158
step
    #completewith next
    #label RitualReagentsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Entregue Reagentes do Ritual
    .accept 42168 >>Aceite Olhando para a Escuridão
    .target Calydus
step
    #title |cFFFCDC00Entre na sala|r
    #completewith RitualReagentsA
    .goto 627,56.84,46.85,8 >>|cRXP_WARN_Siga a seta para a sala.|r
step
    #requires RitualReagentsA
    .goto 627,54.39,46.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Entregue Reagentes do Ritual
    .accept 42168 >>Aceite Olhando para a Escuridão
    .target Calydus
step
    .goto 627,53.73,47.31
    >>Usar o |T1020342:0|t[|cRXP_WARN_ExtraActionButton|r] (Comunhão Sombria)
    .complete 42168,1 --1/1 Scrying Ritual Perfomed
step
    .goto 627,53.50,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thal'kiel|r.
    .complete 42168,2 --1/1 Skull of the Man'ari's location discovered
    .target Thal'kiel
    .skipgossipid 45512
    .skipgossipid 45513
    .skipgossipid 45546
step
    .goto 627,54.37,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 42168 >>Entregue Olhando para a Escuridão
    .accept 42125 >>Aceite Sussurros Sombrios
    .timer 9,Portal aparece em
    .target Calydus
step
    .goto 627,53.74,47.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal do Demônio de Calydus|r.
    .complete 42125,1 --1/1 Enter Calydus's Demonic Portal
step
    .isOnQuest 42125
    .goto 627,53.74,47.26
    .enterScenario 1097 >>Entre em |cRXP_PICK_Sussurros da Escuridão|r.
step
    .isInScenario 1097
    .goto 680,25.64,61.87,20,0
    .goto 680,27.53,64.61
    >>Mate os |cRXP_ENEMY_Eredar Doomweavers|r
    .scenario 2443,1 --Locate the Skull of the Man'ari
    .mob Eredar Doomweaver
step
    .isInScenario 1097
    .goto 680,27.50,64.74
    >>Mate o |cRXP_ENEMY_Demônio Superior Vilanesco|r.
    .scenario 2475,1 --Defeat the Felborn Overfiend
    .mob Felborn Overfiend
step
    .isInScenario 1097
    .goto 680,28.71,61.97,10,0
    .goto 680,29.16,61.32
    >>Usar o |T607512:0|t[Portal Demônioíaco] sobre a barreira
    .scenario 2476,1 --Mephistroth's Barrier crossed
    .usespell 111771
step
    .isInScenario 1097
    .goto 680,30.27,60.56
    >>Mate as |cRXP_ENEMY_Demon forces|r e |cRXP_ENEMY_Senhora da Dor Nikta|r e a |cRXP_ENEMY_Lady Tyrana|r no final.
    .scenario 2477,2 --Defeat waves of enemies
    .scenario 2477,1 --Defeat the leaders of the attackers
    .mob Eredar Soulgrinder
    .mob Dreadguard Sentry
    .mob Wrathguard Hellblade
    .mob Fel Mongrel
    .mob Pain Mistress Nikta
    .mob Lady Tyrana
step
    .isInScenario 1097
    .goto 680,30.64,63.49
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 2478,1 --Interrupted Mephistroth's ritual
step
    .isInScenario 1097
    .goto 680,31.11,65.96
    >>Mate |cRXP_ENEMY_Mephistroph|r.
    .scenario 2478,2 --Mephistroth Defeated
    .mob Mephistroph
step
    .goto 680,31.08,65.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Crânio|r de Man'ari.
    .complete 42125,2 --1/1 Obtain the Skull of the Man'ari
step
    .goto 680,31.36,65.90
    .isInScenario 1097
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Portal|r.
    .scenario 2502,1 --Portal of Thal'kiel used
step
    #optional
    .isQuestTurnedIn 40823
    .isOnQuest 42125
    .goto 627,34.87,45.45,10,0
    .goto 628,21.20,55.73,10,0
    .goto 628,29.53,51.96,10,0
    .goto 628,28.55,44.40
    .zone 717 >>Entre nos Esgotos de Dalaran e clique no |cRXP_PICK_Portal para a Fenda Chagamedo|r
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,55.83,49.89,20,0
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Entregue Sussurros Sombrios
    .target Calydus
step
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Entregue Sussurros Sombrios
    .target Calydus
]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma de Artefato: Destruição
#displayname Arma de Artefato: Destruição
#next a) Salão da Ordem de Bruxaria Parte 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_em seu salão da ordem de classe|r.
    .accept 44089 >>Aceite Um Arsenal Maior
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_isso selecionará automaticamente o artefato de Destruição|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389403
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Entregue Potencial Máximo
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 43984 >>Aceite O Tomo se Abre Novamente
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_isso selecionará automaticamente o artefato de Destruição|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389403
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Entregue O Tomo se Abre Novamente
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Aceite O Tomo dos Implementos Pestilentos
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Destruction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389403
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Entregue O Tomo dos Implementos Pestilentos
    .target Calydus
step
    #completewith Caer Darrow
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Aceite Encontre o Cetro
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Aceite Encontre o Cetro
    .target Calydus
step
    #label Caer Darrow
    .goto 22,66.83,75.18
    >>Usar o |T254294:0|t[Pergaminho do Castro das Flechas]
    .complete 43100,2 --1/1 Go to Caer Darrow
    .use 173526
step
    #title Encontre Informações (1/3)
    .goto 22,69.03,77.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Logbook of Ur'dan|r.
    *|cRXP_WARN_nota:|r Esta missão está codificada, o que significa que você deve fazê-la nesta ordem exata, caso contrário, a seta estará errada.
    .complete 43100,3,1 --1/3 Find information on the Shadow Council
step
    #title Encontre Informações (2/3)
    .goto 22,69.40,77.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Carta Esquecida|r.
    *|cRXP_WARN_nota:|r Esta missão está codificada, o que significa que você deve fazê-la nesta ordem exata, caso contrário, a seta estará errada.
    .complete 43100,3,2 --2/3 Find information on the Shadow Council
step
    #title Encontre Informações (3/3)
    .goto 22,69.14,79.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Aviso do Conselho|r.
    *|cRXP_WARN_nota:|r Esta missão está codificada, o que significa que você deve fazê-la nesta ordem exata, caso contrário, a seta estará errada.
    .complete 43100,3 --3/3 Find information on the Shadow Council
step
    .goto 22,69.94,74.01
    >>Mate |cRXP_ENEMY_Jergosh, o Invocador|r. Saque o |T133738:0|t[|cRXP_LOOT_Livro de Medivh|r] dele.
    .complete 43100,4 --1/1 Take the Book of Medivh from Jergosh
    .mob Jergosh the Invoker
step
    #completewith next
    #hidewindow
    .gossipoption 45857 >>Siga a Seta
    .timer 25,Encenação: Calydus
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r
    .complete 43100,5 --1/1 Speak with Calydus
    .target Calydus
    .skipgossipid 45857
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r
    .turnin 43100 >>Entregue Encontre o Cetro
    .accept 43153 >>Aceite Um Olho no Cetro
    .target Calydus
step
    .goto 22,69.26,79.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal para Tol Barad|r.
    .complete 43153,1 --1/1 Take the Portal to Tol Barad
step
    .isOnQuest 43153
    .goto 22,69.26,79.21
    .enterScenario 1155 >>Inicie o cenário |cRXP_PICK_Um Olho no Cetro|r.
step
    .isInScenario 1155
    .goto 773,42.70,40.04
    >>|cRXP_WARN_Siga a seta.|r
    .scenario 2700,1 --Find the Shadow Council group.
step
    #completewith next
    #label SpeakWithAllarisAndNagazA
    .isInScenario 1155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Allaris e Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    #title |cFFFCDC00Entre na prisão|r
    #completewith SpeakWithAllarisAndNagazA
    .goto 773,42.70,38.47,8 >>|cRXP_WARN_Siga a seta na prisão.|r
step
    #requires SpeakWithAllarisAndNagazA
    .isInScenario 1155
    .goto 773,42.64,35.61,8,0
    .goto 773,43.72,35.65,8,0
    .goto 773,43.76,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Allaris e Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    .isInScenario 1155
    .goto 773,44.99,30.60,15,0
    .goto 773,48.64,31.16
    >>|cRXP_WARN_Seguir a seta. Espere a encenação.|r
    .scenario 2716,1 --Find Tyranis in D-Block
step
    .isInScenario 1155
    .goto 773,48.63,31.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Tyranis Malem|r.
    .scenario 2717,1 --Break Tyranis' chain or leave him
    .target Tyranis Malem
step
    .isInScenario 1155
    .goto 773,45.07,30.73
    >>|cRXP_WARN_Seguir a seta. Espere a encenação.|r
    .scenario 2718,1 --Continue searching the rest of the cell block.
step
    .goto 773,43.05,26.14
    .isInScenario 1155
    >>Mate |cRXP_ENEMY_Nagaz|r.
    .scenario 2719,1 --Follow then kill Nagaz.
    .mob Nagaz
step
    .isInScenario 1155
    .goto 773,43.89,26.61,12,0
    .goto 773,42.68,30.57
    >>|cRXP_WARN_Seguir a seta. Espere a encenação.|r
    .scenario 2720,1 --Continue searching D-Block.
step
    .goto 773,39.53,30.76,15,0
    .goto 773,38.99,32.85
    .isInScenario 1155
    >>|cRXP_WARN_Seguir a seta. Espere a encenação.|r
    .scenario 2724,1 --Find the prison manifest.
step
    #completewith EnterBaradinHoldC
    #label EnterBaradinHoldA
    #hidewindow
    .isInScenario 1155
    .scenario 2725,1 --Enter Baradin Hold
step
    #title |cFFFCDC00Saia da Prisão|r
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldB
    .goto 773,40.19,30.27,10,0
    .goto 773,43.79,31.78,10,0
    .goto 773,43.64,35.79,8,0
    .goto 773,42.73,35.83,8,0
    .goto 773,42.68,39.66,10 >>|cRXP_WARN_Siga a seta para sair da prisão.|r
step
    #title |cFFFCDC00Entre em Baradin Segurar|r
    #requires EnterBaradinHoldB
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldC
    .goto 773,46.29,47.92,8,0
    .goto 773,47.59,48.18,8,0
    .goto 773,47.63,50.13,8 >>|cRXP_WARN_Siga a seta para Baradin Segurar.|r
step
    #requires EnterBaradinHoldA
    .isInScenario 1155
    .goto 773,47.66,52.69
    .scenario 2725,1 --Enter Baradin Hold
step
    .isInScenario 1155
    .goto 774,48.26,14.85
    >>Mate |cRXP_ENEMY_Occul'tharon|r. |cRXP_WARN_Espere a encenação.|r
    .scenario 2726,1 --Kill Occul'tharon and find the Eye of Dalaran.
    .complete 43153,2 --1/1 Find the Eye of Dalaran
    .mob Occul'tharon
step
    .goto 774,48.10,28.74,-1
    .goto 619,46.84,64.48,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal do Demônio|r.
    .complete 43153,3 --1/1 Return to Calydus in Dalaran
step
    .goto 627,74.09,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r
    .turnin 43153 >>Entregue Um Olho no Cetro
    .target Calydus
    .accept 43254 >>Aceite Arruinando o Ritual
step
    #completewith next
    #label RitualRuinationA
    #hidewindow
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith RitualRuinationA
    .goto 627,74.70,42.78
    .vehicle 110480 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_FRIENDLY_Morcevil|r.
    .target Fel Bat
step
    #requires RitualRuinationA
    .goto 619,55.32,63.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_FRIENDLY_Morcevil|r.
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith next
    #hidewindow
    .goto 646,60.40,25.22,10 >>Siga a Seta
    .timer 60,Encenação de Gul'dan
step
    .goto 646,55.79,63.01
    >>|cRXP_WARN_Espere o roleplay.|r
    .complete 43254,2 --1/1 Listen to Gul'dan
step
    .goto 646,55.91,62.89
    >>Abate |cRXP_ENEMY_Allaris Narassin|r.
    .complete 43254,3 --1/1 Slay Allaris Narassin
    .mob Allaris Narassin
step
    .goto 646,60.17,25.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cetro de Sargeras|r.
    .complete 43254,4 --1/1 Take the Scepter of Sargeras
step
    .goto 619,55.74,63.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Altar da Legião|r.
    .complete 43254,5 --1/1 Ruin the ritual
step
    .goto 619,55.50,63.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal do Demônio|r.
    .complete 43254,6 --1/1 Escape to Dalaran and meet Calydus
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Entregue Arruinando o Ritual
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Entregue Arruinando o Ritual
    .target Calydus
]])
--Affliction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Suplício
#displayname Arma Artefato: Suplício
#next ac) Salão da Ordem do Bruxo Parte 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Affliction
]])
--Demonology 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Demonologia
#displayname Arma Artefato: Demonologia
#next ac) Salão da Ordem do Bruxo Parte 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Demonology
]])
--Destruction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma Artefato: Destruição
#displayname Arma Artefato: Destruição
#next ac) Salão da Ordem do Bruxo Parte 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Destruction
]])

--Warlock Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem Bruxo Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Bruxo
#chapter
#internal

<< Warlock

step
    #completewith Ritssyn Flamescowl2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    #include ab) Order Hall Warlock Part 1@The Sixth-New Blood
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Aceite O Tomo dos Implementos Pestilentos
    .target Calydus
step
    .isQuestAvailable 40684
    .isQuestAvailable account,91955
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Importante: Selecione o que você já tem para ganhar um adicional de 10% de experiência (uma única vez)|r
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Affliction >>Remix\a) Artefato Arma: Suplício >> Suplício(DPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Demonology >>Remix\a) Artefato Arma: Demonologia >> Demonologia(DPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Destruction >>Remix\a) Artefato Arma: Destruição >> Destruição(DPS) Questline
step
    #include ac) Order Hall Warlock Part 2@Dreadscar-Ritssyn Flamescowl
step
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Passe pelo portal para Dalaran.|r
step
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Siga a saída do canal.|r
]])

-- --------- Warrior ---------

--Arms
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Armas
#displayname Artefato Arma: Armas
#next a) Salão da Ordem Introdução da Campanha
#internal

<< Warrior

step
    #completewith Artifact Weapon: Arms
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Aceite Mais uma Lenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45055 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Entregue Mais uma Lenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Aceite Mais Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Entregue Mais Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Aceite Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Entregue Armas Lendárias
    .target Odyn
step
    #completewith Tirisfal Glades
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato ou mude para uma especialização que já tenha seu artefato|r.
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 41105 >>Aceite A Espada dos Reis
    .target Odyn
step
    #completewith next
    #label Tirisfal Glades
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    #completewith Tirisfal Glades
    .goto 695,58.37,25
    .gossipoption 44742 >>Fale com |cRXP_FRIENDLY_Aerylia|r
    .timer 11,Aguarde o RP
    .target Aerylia
step
    #requires Tirisfal Glades
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    .isOnQuest 41105
    #title |cFFFCDC00Siga a Seta|r
    .goto 18,13.5,56.65,100 >>Siga a Seta
    *|cRXP_WARN_if you are stuck;relog|r
step
    .isOnQuest 41105
    #title |cFFFCDC00Siga a Seta|r
    .goto 18,13.5,56.65
    .scenario 2237,1 --Investigate the camp.
step
    .isInScenario 1037
    .goto 18,13.5,56.65
    .isOnQuest 41105
    >>Abate |cRXP_ENEMY_Ritualista do Crepúsculo|r
    .scenario 2203,1 --Slay the ritualists torturing Thoradin.
    .mob Twilight Ritualist
    .timer 62,Aguarde o RP
step
    .goto 18,15.3,56.11
    .isInScenario 1037
    #title |cFFFCDC00Siga a Seta|r
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 2204,1 --Follow and listen to Thoradin.
step
    .goto 20,37.46,13.1,10,0
    .goto 20,37.29,13.18,15,0
    .goto 20,35.33,20.04,15,0
    .goto 20,34.6,25.07,15,0
    .goto 20,37.1,45.3
    .isInScenario 1037
    #title |cFFFCDC00Siga a Seta|r
    >>Entre na Sepultura
    .scenario 2210,1 --Enter the Tomb of Tyr.
step
    #loop
    .goto 20,39.88,52.69,15,0
    .goto 20,39.29,58.06,15,0
    .goto 20,34.81,57.54,15,0
    .goto 20,35.1,51.59,15,0
    .isInScenario 1037
    >>Interrompa e atordoe |cRXP_ENEMY_Tentáculo do Caos|r, depois mate-os.
    .scenario 2211,1 --Void Tendrils killed
    .usespell 107570
    .usespell 6552
    .timer 8,Aguarde o RP
    .mob Void Tendril
step
    .goto 20,37.51,54.88
    .isInScenario 1037
    >>Abate |cRXP_ENEMY_Soth'ozz, o Guardião|r e |cRXP_ENEMY_Cria de Carne|r
    .scenario 2212,1 --Kill Soth'ozz
    .mob Soth'ozz the Guardian
    .mob Flesh Spawn
step
    .goto 20,37.61,67.86,15,0
    .goto 20,41.57,82.39,15,0
    .goto 20,44.23,89.03,15,0
    .goto 20,47.55,76.18
    .isInScenario 1037
    #title |cFFFCDC00Siga a Seta|r
    >>Abate o |cRXP_ENEMY_Ilusionista Sem-rosto|r
    .scenario 2213,1 --Reach the prison chamber.
    .mob Faceless Illusionist
step
    .goto 20,61.31,74.33
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Zakajz, o Corruptor|r
    .scenario 2214,1 --Take the sword
    .timer 15,Aguarde o RP
    .mob Zakajz the Corruptor
step
    .goto 20,62.54,74.72
    .isInScenario 1037
    >>Mate |cRXP_ENEMY_Zakajz, o Corruptor|r |cRXP_ENEMY_e espere a encenação|r.
    .scenario 2215,1 --Defeat Zakajz
    .mob Zakajz the Corruptor
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Arma|r dentro do cadáver.
    .scenario 2216,1 --Take Strom'kar, the Warbreaker.
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>Usar o |cRXP_WARN_ExtraActionButton|r
    .scenario 2216,2 --Zakajz killed permanently.
    .usespell 206455
step
    .goto 20,58.01,74.18
    .isInScenario 1037
    #label Artifact Weapon: Arms
    >>Entre na luz e use o |cRXP_WARN_ExtraActionButton|r
    .complete 41105,5 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.36,84.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 41105 >>Entregue A Espada dos Reis
    .target Odyn
]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Arma Artefato: Fúria
#displayname Artefato Arma: Fúria
#next a) Salão da Ordem Introdução da Campanha
#internal

<< Warrior

step
    #completewith Artifact Weapon: Fury
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Aceite Mais uma Lenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45055 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Entregue Mais uma Lenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Aceite Mais Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Entregue Mais Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Aceite Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Entregue Armas Lendárias
    .target Odyn
step
    #completewith Aerylia
    +|cRXP_WARN_Certifique-se de ter uma arma utilizável equipada. Se não, equipe uma até obter seu artefato, ou mude para uma especialização que já tenha seu artefato.|r
step
    .goto 695,58.35,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 40043 >>Aceite O Caçador de Heróis
    .target Odyn
step
    #completewith next
    #label Aerylia
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .skipgossipid 44731
step
    #completewith Aerylia
    .goto 695,58.37,24.95
    .gossipoption 44731 >>Fale com |cRXP_FRIENDLY_Aerylia|r
    .timer 30,Aguarde o RP
    .target Aerylia
step
    #requires Aerylia
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .timer 10,Aguarde o RP
step
    .isOnQuest 40043
    .countdown 10 >>|cRXP_WARN_Aguarde a encenação|r.
step
    .goto 634,61.34,45.87
    .isOnQuest 40043
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Fogueira|r
    .scenario 1888,1 --Light the bonfire.
step
    #loop
    .goto 634,61.67,46.62,20,0
    .goto 634,61.1,45.11,20,0
    .isInScenario 944
    >>Mate as ondas de inimigos.
    .scenario 1889,2,1 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
step
    .goto 634,60.86,45.42
    .isInScenario 944
    >>Mate as ondas de inimigos.
    .scenario 1889,2,2 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    #loop
    .goto 634,60.95,46.73,25,0
    .goto 634,60.9,45.2,25,0
    .isInScenario 944
    >>Mate as ondas de inimigos.
    .scenario 1889,2,3 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    .goto 634,61.4,47.17
    .isInScenario 944
    >>Mate |cRXP_ENEMY_Helarjar Aspirante|r
    .scenario 1889,1,1 --Kill the leader of the attackers
    .mob Aspiring Helarjar
step
    .isInScenario 944
    .goto 634,61.35,48.52
    >>Mate |cRXP_ENEMY_Místico Necromântico|r
    .scenario 1943,1,1 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,60.03,47.45
    >>Mate |cRXP_ENEMY_Místico Necromântico|r
    .scenario 1943,1,2 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,59.37,46.7,15,0
    .goto 634,58.9,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Runa|r
    .scenario 1891,1,1 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,58.61,46.15,15,0
    .goto 634,58.63,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Runa|r
    .scenario 1891,1,2 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59,44.47,15,0
    .goto 634,58.62,43.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Runa|r
    .scenario 1891,1,3 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59.37,43.61,15,0
    .goto 634,60.03,43.23,15,0
    .goto 634,60.13,42.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Runa|r
    .scenario 1891,1,4 --Destroy the Prison Runestones
step
    .goto 634,59.54,43.82
    .isInScenario 944
    >>Derrote |cRXP_ENEMY_Vigfus Lâmina de Vento|r |cRXP_WARN_não o derrote em um golpe|r.
    *|cRXP_WARN_Se os NPCs ficarem presos; reconecte-se|r
    .scenario 1912,1 --Defeat Vigfus Bladewind
    .mob Vigfus Bladewind
step
    .isInScenario 944
    .goto 694/1220,1705.2569,3440.3982
    .goto 694/1511,1705.2569,3440.3982,20 >>Derrote |cRXP_ENEMY_Vigfus Lâmina de Vento|r |cRXP_WARN_novamente|r.
step
    .isInScenario 944
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    >>|cRXP_WARN_Espere a encenação|r
    >>Mate |cRXP_ENEMY_Vigfus Lâmina de Vento|r.
    .scenario 1913,1 --Chase and kill Vigfus
    .mob Vigfus Bladewinds
step
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    .isInScenario 944
    #label Artifact Weapon: Fury
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .scenario 1914,1 --Take the Warswords
    .complete 40043,2 --1/1 Deal with Vigfus Bladewind and his warband
step
    >>Saia da Instância (clique com o botão direito no seu retrato) ou pressione a macro.
    .complete 40043,3 --1/1 Return to Skyhold
    .macro Leave Instance,236367 >>Saia da Instância.
step
    .goto 695,58.35,84.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 40043 >>Entregue O Caçador de Heróis
    .target Odyn
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Artefato Arma: Guerreiro Proteção
#displayname Artefato Arma: Proteção
#next a) Salão da Ordem Introdução da Campanha
#internal

<< Warrior

step
    #completewith Artifact Weapon: Warrior Protection
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Aceite Mais uma Lenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 44417,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45058 -- I'm ready to make a decision.
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isQuestComplete 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Entregue Mais uma Lenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Aceite Mais Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .target Odyn
    .complete 43949,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isQuestComplete 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Entregue Mais Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Aceite Armas Lendárias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Entregue Armas Lendárias
    .target Odyn
step
    #completewith Axe and You Shall Receive
    +|cRXP_WARN_Verifique se você tem uma arma utilizável equipada; se não, equipe uma até obter seu artefato ou mudar para uma especialização para a qual você já tem um artefato|r
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 39191 >>Aceite Legado do Quebragelo
    .target Odyn
step
    .isOnQuest 39191
    .goto 695,59.35,26.3
    .gossipoption 44315 >>Fale com |cRXP_FRIENDLY_Hruthnir|r
    .timer 20,Aguarde o RP
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Durnolf|r
    .accept 44255 >>Aceite Machadinha quando nasce...
    .target Intendente Durnolf
step
    #label Axe and You Shall Receive
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Durnolf|r
    .turnin 44255 >>Entregue Machadinha quando nasce...
    .target Intendente Durnolf
step
    .goto 695,59.36,25.30
    >>|cRXP_WARN_Espere a encenação|r
    .complete 39191,1,1 --1/1 Speak with Hruthnir
    .skipgossipid 44315
    .target Hruthnir
step
    #completewith Pillik
    .isOnQuest 39191
    +|cRXP_WARN_Você pode voar de montaria aqui|r
step
    .goto 634,84.34,9.52
    .isOnQuest 39191
    >>Abate |cRXP_ENEMY_Pillik|r
    .scenario 1856,1 --Defeat Pillik
    .timer 50,Aguarde o RP
    .mob Pillik
step
    #label Pillik
    .goto 634,83.85,9.5
    .countdown 50
step
    #completewith next
    #label Find Magnar
    .isInScenario 909
    >>Abate |cRXP_ENEMY_Tempestades Rodopiantes|r na porta
    .scenario 1829,1 --Find Magnar
    .mob Swirling Storms
step
    #completewith Find Magnar
    *|cRXP_WARN_Espere a porta se abrir|r
    .goto 635,64.31,55.79,10,0
    .goto 635,53.54,56.17,15 >>Abate |cRXP_ENEMY_Moldavento Espectral|r para se livrar dos ventos
    .usespell 57755
    .mob Spectral Windshaper
step
    #requires Find Magnar
    .goto 635,52.31,63.89
    .isInScenario 909
    >>Abate |cRXP_ENEMY_Tempestades Rodopiantes|r na porta
    .scenario 1829,1 --Find Magnar
    .timer 30,Aguarde o RP
step
    #completewith next
    #label Hruthnir
    .isInScenario 909
    >>Abate |cRXP_ENEMY_Magnar Quebragelo|r e as ondas de inimigos
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    #completewith Hruthnir
    .goto 635,51.4,71.07
    .gossipoption 44546 >>Fale com |cRXP_FRIENDLY_Hruthnir|r
    .timer 85,Aguarde o RP
    .target Hruthnir
step
    #requires Hruthnir
    .goto 635,50.59,87.12
    .isInScenario 909
    >>Derrota |cRXP_ENEMY_Magnar Quebragelo|r e as ondas de inimigos
    *Abate |cRXP_ENEMY_Moldavento Espectral|r para se livrar dos ventos
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    .isInScenario 909
    .goto 635,50.12,82.45
    >>|cRXP_WARN_Aguarde a encenação|r.
    .scenario 1869,1
    .mob Magnar Icebreaker
    .mob Spectral Windshaper
step
    .goto 635,49.95,82.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Arma|r
    .complete 39191,2 --1/1 Deal with Magnar Icebreaker
    -- .scenario 1833,1
step
    #label Artifact Weapon: Warrior Protection
    .goto 635,49.95,82.61
    >>Usar o |cRXP_WARN_ExtraActionButton|r
    .complete 39191,3 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.35,84.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .turnin 39191 >>Entregue Legado do Quebragelo
    .target Odyn
]])
--Arms 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefato Arma: Armas
#displayname Artefato Arma: Armas
#next ac) Salão da Ordem Guerreiro Parte 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Arms
]])
--Fury 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefato Arma: Fúria
#displayname Artefato Arma: Fúria
#next ac) Salão da Ordem do Guerreiro Parte 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Fury
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arma Artefato: Guerreiro Proteção
#displayname Artefato Arma: Proteção
#next ac) Salão da Ordem do Guerreiro Parte 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection
]])

--Warrior Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Salão da Ordem
#name a) Salão da Ordem do Guerreiro Parte 1
#displayname |cFF00CCFF1|r - Salão da Ordem Introdução|r
#next ac) Salão da Ordem Guerreiro
#chapter
#internal

<< Warrior

step
    #completewith Accept The Eye of Odyn2
    #hidewindow
    +teste
    .use 245925 -- Artifactium Sand
    .use 249891 -- Mound of Artifactium Sand
    .use 246937 -- Perfected Epoch Memento
    .use 242516 -- Memento of Epoch Legends
    .use 238726 -- Drake Treat
    .use 217956 -- Timeless Scroll of Summoning
    .use 217730 -- Timeless Scroll of Chaos
    .use 217606 -- Timeless Scroll of Fortitude
    .use 217731 -- Timeless Scroll of Mystic Power
    .use 217608 -- Timeless Scroll of Battle Shout
    .use 217901 -- Timeless Drums
    .use 217607 -- Timeless Scroll of the Wild
    .use 217929 -- Timeless Scroll of Cleansing
    .use 246936 -- Resonant Epoch Memento
    .use 249786 -- Dreamweaver Champion's Insignia
    .use 249787 -- Court of Farondis Champion's Insignia
    .use 249785 -- Highmountain Tribe Champion's Insignia
    .use 249783 -- Nightfallen Champion's Insignia
    .use 249781 -- Wardens Champion's Insignia
    .use 249780 -- Army of the Light Champion's Insignia
    .use 249782 -- Valarjar Champion's Insignia
    .use 249784 -- Legionfall Champion's Insignia
    .use 249788 -- Argussian Reach Champion's Insignia
    .usespell 1241425 -- Temporal Retreat
    -- .openitem 237812 -- Cache of Infinite Treasure
    -- .openitem 243373 -- Timerunner's Weaponry
    -- .openitem 246814 -- Bronze Cache
    -- .openitem 246813 -- Greater Bronze Cache
    -- .openitem 245553 -- Heroic Cache of Infinite Treasure
    -- .openitem 253224 -- Mote of a Broken Time
    -- .use 251821
    -- .use 256763
step << Alliance
    #include ab) Order Hall Warrior Part 1@OrderHallWarriorA1Start-OrderHallWarriorA1End
step << Horde
    #include ab) Order Hall Warrior Part 1@OrderHallWarriorH1Start-OrderHallWarriorH1End
step
    #include ab) Order Hall Warrior Part 1@OrderHallWarrior1-Order Hall Warrior Part 1
step
    .isQuestAvailable 40579
    #label Order Hall Warrior
    .goto 695,58.33,84.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Odyn|r
    .accept 40579 >>Aceite Armas Lendárias
    .target Odyn
step
    .isQuestAvailable 40579
    +Selecione um dos guias a seguir por enquanto:
    *|cRXP_WARN_Você poderá fazer as outras linhas de missão mais tarde|r
    *|cFFFF0000Você não pode progredir se não selecionar um|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arms >>RestedXP Legion Remix\a) Arma Artefato: Armas >> Armas (DPS) Linha de missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fury >>RestedXP Legion Remix\a) Arma Artefato: Fúria >> Fúria (DPS) Linha de missões
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection >>RestedXP Legion Remix\a) Arma Artefato: Guerreiro Proteção >> Proteção (Tanque) Linha de missões
step
    #include ac) Order Hall Warrior Part 2@OrderHallPart2Start1-Accept The Eye of Odyn
]])
