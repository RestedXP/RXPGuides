if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
-- #############################################
-- #                  MIDNIGHT                 #
-- #############################################

--GC: Stormwind Quests
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Subida de nivel rápida
#name a) Misiones de Ventormenta
#internal

step
    .goto 84,63.79,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renato Galina|r
    .accept 332 >>Acepta la misión Publicidad de la bodega
    .target Renato Galina
step
    .goto 84,62.32,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harlan Bagley|r
    .accept 333 >>Acepta la misión Harlan necesita un nuevo suministro
    .target Harlan Bagley
step
    .goto 84,58.10,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rema Schneider|r
    .turnin 333 >>Entrega la misión Harlan necesita un nuevo suministro
    .target Rema Schneider
    .accept 334 >>Acepta la misión Un paquete para Thurman
step
    .goto 84,60.26,76.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Suzetta Galina|r
    .turnin 332 >>Entrega la misión Publicidad de la bodega
    .target Suzetta Galina
step
    .goto 84,52.58,83.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Schneider|r
    .turnin 334 >>Entrega la misión Un paquete para Thurman
    .target Thurman Schneider

]])
--Housing Alliance
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Subida de nivel rápida
#name a) Tutorial de "Housing" de la Alianza
#internal

step
    >>Presiona la macro "En la ventana de Objetos Utilizables" para iniciar el tutorial de "housing"
    .accept 91863 >>Acepta la misión Mi primer hogar
    .macro House Teleport, 975747 >>Teletransporte a la Casa
step
    .goto 2352,53.13,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyssabel Floralba|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135761
    .skipgossipid 135770
    .target Lyssabel Dawnpetal
step
    >>Compra una Casa disponible
    .complete 91863,4 --1/1 Acquire a house

--teleport unlock


step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyssabel Floralba|r |cRXP_WARN_junto a ti|r.
    .turnin 91863 >>Entrega la misión Mi primer hogar
    .accept 94455 >>Acepta la misión Mi lugar, mi hogar
    .target Lyssabel Dawnpetal
step
    >>Entra en tu Casa.
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Entrega la misión Mi lugar, mi hogar
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Mareas Altas" Ren|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Mareas Altas" Ren|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Usa la |T742183:0|t[Almohada de sacerdote de Sethraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tocho Cueronube|r.
    .turnin 94210 >>Entrega la misión Tu propio nido
    .target Tocho Cloudhide
    .accept 94379 >>Acepta la misión Mejoras hogareñas
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Routha|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Housing Horde
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Subida de nivel rápida
#name a) Tutorial de "Housing" de la Horda
#internal

<< Horde

step
    >>Presiona la macro "En la ventana de Objetos Utilizables" para iniciar el tutorial de "housing"
    .accept 91863 >>Acepta la misión Mi primer hogar
    .macro House Teleport, 975747 >>Teletransporte a la Casa
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tocho Cueronube|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135727
    .skipgossipid 135740
step
    >>Compra una Casa disponible
    .complete 91863,4 --1/1 Acquire a house
step
    .goto 2351,56.84,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tocho Cueronube|r |cRXP_WARN_junto a ti|r.
    .turnin 91863 >>Entrega la misión Mi primer hogar
    .accept 94455 >>Acepta la misión Mi lugar, mi hogar
    .target Tocho Cloudhide

--teleport unlock


step
    >>Entra en tu Casa.
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Entrega la misión Mi lugar, mi hogar
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Mareas Altas" Ren|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Mareas Altas" Ren|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Usa la |T742183:0|t[Almohada de sacerdote de Sethraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tocho Cueronube|r.
    .turnin 94210 >>Entrega la misión Tu propio nido
    .target Tocho Cloudhide
    .accept 94379 >>Acepta la misión Mejoras hogareñas
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Routha|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Darkmoon Faire
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Subida de nivel rápida
#name a) Feria de la Luna Negra
#internal

step << Alliance
    #completewith next
    #label ProfessionsDmf1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Aprende |T4620669:0|t[Alquimia]
    .dmf
step << Alliance
    #completewith ProfessionsDmf1
    .goto 37,41.95,67.16
    >>Usa la macro en el "Marco de objetos activos" para olvidar |T4620679:0|t[Minería]
    .macro Unlearn Mining,4620679 >>Olvida Minería
    .train 2575,3
    .subzoneskip 37,1
    .isOnQuest 7905
step << Alliance
    #requires ProfessionsDmf1
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Aprende |T4620669:0|t[Alquimia]
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
    .train 45357 >>Aprende |T4620676:0|t[Inscripción]
    .dmf
step << Alliance
    #completewith ProfessionsDmf2
    .goto 37,41.95,67.16
    >>Usa la macro en el "Marco de objetos activos" para olvidar |T4620675:0|t[Herboristería].
    .macro Unlearn Herbalism,4620675 >>Desaprende Herboristería
    .subzoneskip 37,1
    .isOnQuest 7905
    .train 2366,3
step << Alliance
    #requires ProfessionsDmf2
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>Aprende |T4620676:0|t[Inscripción]
    .skipgossipid 38859
    .skipgossipid 38890
    .skipgossipid 39321
    .target Lien Farner
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharynn Bouden|r.
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
    .target Tharynn Bouden
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.78,69.55
    .zone 407 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kae Ti|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29451 >>Entrega la misión El maestro estratega
    .isOnQuest 29451
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29456 >>Entrega la misión Un estandarte capturado
    .isOnQuest 29456
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29457 >>Entrega la misión La insignia del enemigo
    .isOnQuest 29457
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29458 >>Entrega la misión El diario encontrado
    .isOnQuest 29458
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29443 >>Entrega la misión Un cristal curioso
    .isOnQuest 29443
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29444 >>Entrega la misión Un huevo exótico
    .isOnQuest 29444
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29445 >>Entrega la misión Un grimorio intrigante
    .isOnQuest 29445
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profesor Paleo|r.
    .turnin 29446 >>Entrega la misión Un arma asombrosa
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelvas Roñoso|r
    .turnin 7905 >>Entrega la misión La Feria de la Luna Negra
    .target Gelvas Roñoso
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stamp Tronacuerno|r.
    .accept 29509 >>Acepta la misión Rana en harina, cosa fina
    .target Sello Tronacuerno
    .train 2550,3
    .itemcount 30817,5
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Usa |T133642:0|t[Ranas rollizas].
    .collect 72056,5,29509,1,-1 --Plump Frogs (5)
    .collect 30817,5,29509,1,-1 --Simple Flour (5)
    .collect 72057,5,29509,1 --Breaded Frog (5)
    .train 2550,3
    .use 72056 --Plump Frog
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Usa |T237579:0|t[Ranas empanadas].
    .collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
    .use 72057 --Breaded Frog
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stamp Tronacuerno|r.
    .turnin 29509 >>Entrega la misión Rana en harina, cosa fina
    .target Sello Tronacuerno
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylannia|r.
    .accept 29506 >>Acepta la misión Burbujas moradas
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
    .buy 29506,5
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .train 2259,3
step
    .goto 407,50.54,69.56
    >>Usa |T132793:0|t[Coctelera].
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sylannia|r.
    .turnin 29506 >>Entrega la misión Burbujas moradas
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_1|r].
    .turnin 29445 >>Entrega la misión Un grimorio intrigante
    .target Sayge
    .zoneskip 407,1
    .isOnQuest 29445
    .dmf
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_2|r].
    .accept 29515 >>Acepta la misión Escribiendo el futuro
    .target Sayge
    .zoneskip 407,1
    .dmf
    .train 45357,3
step
    .goto 407,53.23,75.82
    .aura 23768 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_3|r].
    .skipgossipid 31569
    .skipgossipid 31565
    .skipgossipid 30027
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
    >>Usa |T413571:0|t[Fardo de hierbas exóticas].
    .collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>Usa |T237061:0|t[Tinta profética].
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sayge|r.
    .turnin 29515 >>Entrega la misión Escribiendo el futuro
    .target Sayge
    .zoneskip 407,1
    .dmf
step
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yebb Tesorillos|r.
    .turnin 29444 >>Entrega la misión Un huevo exótico
    .target Yebb Tesorillos
    .zoneskip 407,1
    .dmf
    .isOnQuest 29444
step << Alliance
    .isOnQuest 65436
    >>Usa la |T134309:0|t[Escama de dragón perdida] para teletransportarte a Ventormenta.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .dmf
step << Horde
    .isOnQuest 65435
    >>Usa la |T134309:0|t[Escama de dragón perdida] para teletransportarte a Orgrimmar.
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
#group RestedXP Subida de nivel rápida
#name a) Torre de la Hora de Cromi
#internal


step << Alliance
    #completewith next
    #label The Legion Returns
    .goto 84,49.19,87.25,8,0
    .goto 84,49,86.94,8,0
    .goto 84,48.66,87.49,8,0
    .goto 84,49.11,87.64,8,0
    .goto 84,49.42,86.83,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Tablero de ¡Se busca héroe!|r
    .accept 40519 >>Acepta la misión Legion: La Legión ha vuelto
    .choose 1851120
step << Alliance
    #completewith The Legion Returns
    .goto 84,56.257,17.311,812 >>Sal de La Torre de los magos
step << Alliance
    #requires The Legion Returns
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Tablero de ¡Se busca héroe!|r
    .accept 40519 >>Acepta la misión Legion: La Legión ha vuelto
    .choose 1851120
step << Alliance
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Tablero de ¡Se busca héroe!|r
    .accept 62567 >>Acepta la misión Se buscan aventureros: El llamado de Cromi
    .choose 1668214
step << Alliance
    .goto 84,56.26,17.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r.
    .turnin 62567 >>Entrega la misión Se buscan aventureros: El llamado de Cromi
    .target Cromi
step << Alliance
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Entra en Hora de Cromi
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Cromi
step << Alliance
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wrathion|r.
    .accept 65436 >>Acepta la misión Las Islas Dragón esperan
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
    >>Usa la |T134309:0|t[Escama de dragón perdida] para teletransportarte a Ventormenta.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
]])
--GC Alliance: Chromie Time Normal
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Subida de nivel rápida
#name a) GC Hora de Cromi Normal
#internal

step
    #label ChromieTime
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cromi|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Entra en Hora de Cromi
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Cromi
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Tablero de ¡Se busca héroe!|r
    .accept 40519 >>Acepta la misión Legion: La Legión ha vuelto
    .choose 1851120
step
    #label CallBoardStart3
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wrathion|r.
    .accept 65436 >>Acepta la misión Las Islas Dragón esperan
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
    >>Usa la |T134309:0|t[Escama de dragón perdida] para teletransportarte a Ventormenta.
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
#group RestedXP Guerra Within Contenido de nivel máximo
#name a) Teletransporte: El Rompealbas
#internal

step
    .zoneskip 2215
    .zone 2359 >>Abre el Buscador de mazmorras, navega hasta Mazmorras con seguidores, y únete a la cola para |cRXP_WARN_'El Rompealbas'|r.
step
    .zoneskip 2215
    .gossipoption 124142 >>Habla con la |cRXP_FRIENDLY_General Golpacero|r en Rompealbas. |cRXP_WARN_Debería estar visible desde la entrada. Usa el marco de objetivos activos para marcarla.|r
    .target General Steelstrik
]])
--Phase Diving
RXPGuides.RegisterGuide([[
#retail
#version 1
#group Guerra Within Loremaster
#name a) Desbloqueo de Fasenáutica
#internal


step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hashim|r
    .turnin 90938 >>Entrega la misión Un paseo por el Vacío
    .target Hashim
    .isOnQuest 90938
step
    .isQuestTurnedIn account,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>Equipa las |T7110834:0|t[Vendas reshii]
    .use 235499
step
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hashim|r
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>Equipa las |T7110834:0|t[Vendas reshii]
    .use 235499
    .subzoneskip 15807,1
step
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Acepta la misión Otro mundo
    .target Shad'anis
step
    .isOnQuest 89380
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89380 >>Entrega la misión Otro mundo
    .accept 89343 >>Acepta la misión El Vacío desatado
    .target Shad'anis
step
    .goto 2371,50.41,36.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Conducto fásico|r
    .complete 89343,2 --1/1 Untethered Space entered
step
    .goto 2371,50.41,36.40
    >>Usa el |T4913234:0|t[|cRXP_WARN_Botón de Acción Extra|r]
    *|cRXP_WARN_Reinicia sesión (relog) si no puedes entregar la misión tras usar el |cRXP_WARN_Botón de Acción Extra|r|r
    .complete 89343,3 --1/1 Return to Normal Space
step
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89343 >>Entrega la misión El Vacío desatado
    .accept 89344 >>Acepta la misión Ojos que no te ven...
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
    .aura 1214374,1 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Conducto fásico|r
step
    #requires WhatDoesntSeeYouA
    #completewith next
    >>Mata |cRXP_ENEMY_Observadores desatados|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Observador desatado
step
    #requires WhatDoesntSeeYouA
    .goto 2371,49.10,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Energía fásica|r
    .complete 89344,2 --1/1 Phase Energy collected
step
    #loop
    .goto 2371,48.33,37.15,30,0
    .goto 2371,49.39,36.27,35,0
    .goto 2371,49.20,39.49,35,0
    .goto 2371,48.06,38.61,35,0
    >>Mata |cRXP_ENEMY_Observadores desatados|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Observador desatado
step
    #completewith next
    #label WhatDoesntSeeYouB
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Entrega la misión Ojos que no te ven...
    .accept 89345 >>Acepta la misión El horror desatado
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Elimina el buff |T135752:0|t[Fasenáutica] (con Clic Derecho)
    .macro Remove Aura,135752 >>Quitar Aura
step
    #requires WhatDoesntSeeYouB
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Entrega la misión Ojos que no te ven...
    .accept 89345 >>Acepta la misión El horror desatado
    .target Shad'anis
step
    #completewith next
    #label Netherdeath
    >>Mata al |cRXP_ENEMY_Parcabisal|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Parcabisal
step
    #completewith Netherdeath
    .goto 2371,50.41,36.41
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Conducto fásico|r.
step
    #requires Netherdeath
    .goto 2371,48.44,39.56,30,0
    .goto 2371,47.90,40.57
    >>Mata al |cRXP_ENEMY_Parcabisal|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Parcabisal
step
    #completewith next
    #label TheUntetheredHorrorA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Entrega la misión El horror desatado
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Elimina el "buff" |T135752:0|t[Fasenáutica] (con Clic Derecho)
    .macro Remove Aura,135752 >>Quitar Aura
step
    #completewith TheUntetheredHorrorA
    #hidewindow
    .goto 2371,50.36,36.31,20 >>Sigue la Flecha
step
    #requires TheUntetheredHorrorA
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Entrega la misión El horror desatado
    .target Shad'anis
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Acepta la misión Vendado
    .target Hashim
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hashim|r y selecciona las mejoras.
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hashim|r
    .turnin 89561 >>Entrega la misión Vendado
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
#name a) Vuelo dinámico Panda
#internal

step
    #completewith Skyriding Panda
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Acepta la misión Cielonáutica
    .timer 5,RP
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r y elige una de las monturas.
    *|cRXP_WARN_Aún puedes obtener las otras monturas en otro momento|r.
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Señor Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Haz clic derecho para aprender tu montura.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your
    .use 194034
    .use 194521
    .use 194106
    .use 194549
    .use 194705
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Señor Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 90754 >>Entrega la misión Cielonáutica
    .accept 80013 >>Acepta la misión Cómo planear con tu dragón
    .target Señor Andestrasz
step
    .goto 371,65.27,37.27
    >>Monta
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    .goto 371,66.51,37.16,10,0
    .goto 371,67.46,36.29
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80013,2,2 --2/5 Glide through the Rings
step
    .goto 371,67.46,36.29,10,0
    .goto 371,67.80,34.64
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80013,2,3 --3/5 Glide through the Rings
step
    .goto 371,67.80,34.64,10,0
    .goto 371,67.41,33.91
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80013,2,4 --4/5 Glide through the Rings
step
    .goto 371,67.41,33.91
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.73,33.58
    >>Aterriza en la colina
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celormu|r
    .turnin 80013 >>Entrega la misión Cómo planear con tu dragón
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80015 >>Acepta la misión Cómo zambullirte con tu dragón
    .target Señor Andestrasz
step
    .goto 371,66.64,37.18,10,0
    .goto 371,67.90,37.18
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] para mantener tu velocidad.
    .complete 80015,2,2 --2/7 Glide through the Rings
step
    .goto 371,67.90,37.18,10,0
    .goto 371,68.95,37.95
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] para mantener tu velocidad.
    .complete 80015,2,3 --3/7 Glide through the Rings
step
    .goto 371,68.95,37.95,10,0
    .goto 371,69.83,39.60
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] para mantener tu velocidad.
    .complete 80015,2,4 --4/7 Glide through the Rings
step
    .goto 371,69.83,39.60,10,0
    .goto 371,70.00,43.96
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] para mantener tu velocidad.
    .complete 80015,2,5 --5/7 Glide through the Rings
step
    .goto 371,70.00,43.96,10,0
    .goto 371,68.31,46.92
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] para mantener tu velocidad.
    .complete 80015,2,6 --6/7 Glide through the Rings
step
    .goto 371,68.31,46.92
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] para mantener tu velocidad.
    .complete 80015,2 --7/7 Glide through the Rings
step
    .goto 371,66.29,49.31
    >>Sigue la flecha
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.25,49.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celormu|r
    .turnin 80015 >>Entrega la misión Cómo zambullirte con tu dragón
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80016 >>Acepta la misión La necesidad de alcanzar mayor velocidad
    .target Señor Andestrasz
step
    .goto 371,66.29,37.21,10,0
    .goto 371,68.27,36.26
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80016,2,2 --2/6 Glide through the Rings
step
    .goto 371,68.27,36.26,10,0
    .goto 371,68.81,32.48
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80016,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.81,32.48,10,0
    .goto 371,67.41,27.37
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80016,2,4 --4/6 Glide through the Rings
step
    .goto 371,67.41,27.37,15,0
    .goto 371,66.02,25.50
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80016,2,5 --5/6 Glide through the Rings
step
    .goto 371,66.02,25.50
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,65.01,24.46
    >>Sigue la flecha.
    .complete 80016,3 --1/1 Land in the Target Area
step
    .goto 371,64.98,24.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celormu|r
    .turnin 80016 >>Entrega la misión La necesidad de alcanzar mayor velocidad
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80017 >>Acepta la misión La necesidad de volar más alto
    .target Señor Andestrasz
step
    .goto 371,66.32,37.22,15,0
    .goto 371,67.93,35.70
    >>Déjate planear hacia abajo
    .complete 80017,2,2 --2/6 Glide through the Rings
step
    .goto 371,67.93,35.70,15,0
    .goto 371,68.77,33.45
    >>Sigue los anillos. Usa el |T4640498:0|t[Ascenso al cielo] después de alcanzar el anillo.
    .complete 80017,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.77,33.45,15,0
    .goto 371,68.51,29.83
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80017,2,4 --4/6 Glide through the Rings
step
    .goto 371,68.51,29.83,15,0
    .goto 371,65.39,29.58
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80017,2,5 --5/6 Glide through the Rings
step
    .goto 371,65.39,29.58
    >>Sigue los anillos. Usa |T4640490:0|t[Impulso de avance] o |T4640498:0|t[Ascenso al cielo] para mantener tu velocidad.
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.59,28.66
    >>Sigue la flecha
    .complete 80017,3 --1/1 Land in the Target Area
step
    .goto 371,62.47,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celormu|r
    .turnin 80017 >>Entrega la misión La necesidad de volar más alto
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80018 >>Acepta la misión Volar con estilo
    .target Señor Andestrasz
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Estrado de transformación|r |cRXP_WARN_y sal de él inmediatamente|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    #label Skyriding Panda
    .goto 371,65.07,36.97,10,0
    .goto 371,65.28,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 80018 >>Entrega la misión Volar con estilo
    .accept 90755 >>Acepta la misión Cuando el tiempo vuela
    .target Señor Andestrasz
step
    #completewith next
    #label TimeFliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Entrega la misión Cuando el tiempo vuela
    .target Moratari
step
    #completewith TimeFliesA
    .goto 371,65.13,37.09
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal a Dalaran|r
step
    #requires TimeFliesA
    #label Skyriding
    .goto 627,72.04,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Entrega la misión Cuando el tiempo vuela
    .target Moratari
]])

-- ================= ARTIFACT WEAPONS ================

-- --------- Death Knight ---------

--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Sangre
#displayname Arma artefacto: Sangre
#next a) Sede de clase Caballero de la Muerte Parte 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Usa |T135766:0|t[Portamorta]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Usa el teletransportador
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 44401 >>Acepta la misión Un arma para cada ocasión
    .target Duque Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sangre|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390097
    .target Duque Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 44401 >>Entrega la misión Un arma para cada ocasión
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 43962 >>Acepta la misión Espadas del destino
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sangre|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390097
    .target Duque Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 43962 >>Entrega la misión Espadas del destino
    .target Duque Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 40715 >>Acepta la misión Un pacto necesario
    .target Rensar Granzuña
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sangre|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390097
    .target Rensar Granzuña
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40715 >>Entrega la misión Un pacto necesario
    .target Rensar Granzuña
step
    #completewith Baron Sliver
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r
step
    .isQuestAvailable 43962
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r.
    .accept 40740 >>Acepta la misión Los muertos y los condenados
    .target Alto señor Darion Mograine
step
    #optional
    .goto 647,57.76,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alto señor Darion Mograine|r.
    .accept 40740 >>Acepta la misión Los muertos y los condenados
    .target Alto señor Darion Mograine
step
    .goto 646,31.97,31.91
    >>|cRXP_WARN_Sigue la flecha y entra por el portal.|r
    .complete 40740,2 --1/1 Enter into the Legion Portal
step
    .isOnQuest 40740
    .isQuestNotComplete 40740
    .goto 646,31.97,31.91
    .enterScenario 940 >>Entra en el escenario |cRXP_PICK_La Cosecha del Desgarrador|r
step
    .isInScenario 940
    .goto 714,17.60,47.83
    >>Mata al |cRXP_ENEMY_Carcelero Niskaran|r.
    .scenario 1884,1 --Search for Baron Sliver.
    .mob Niskaran Jailer
step
    .isInScenario 940
    .goto 714,22.14,50.77
    >>|cRXP_WARN_Sigue la Flecha|r.
    .scenario 2154,1 --Follow Baron Silver
step
    #label Baron Sliver
    .isInScenario 940
    .goto 714,23.74,50.28
    >>Mata |cRXP_ENEMY_Fatídico de Niskara|r y |cRXP_ENEMY_Avizor guardia vil|r.
    .scenario 2135,1 --Protect Baron Sliver while he disables the Fel Barrier
    .mob Niskaran Doombringer
    .mob Avizor guardia vil
step
    #title |cFFFCDC00Escolta Barraón Plateado|r
    .isInScenario 940
    .goto 714,37.70,47.45
    >>Mata a las |cRXP_ENEMY_Guardias viles Centinelas|r en el camino, si no |cRXP_FRIENDLY_Barón Plateado|r quedará atrapado.
    .scenario 2136,1 --Search the Legion camp.
    .mob Avizor guardia vil
step
    .goto 714,43.82,38.27
    .isInScenario 940
    >>Mata al |cRXP_PICK_Inquisidor Zalinor|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Piedra angular de la Legión|r
    .scenario 2137,1 --Hunt down Inquisitior Zalinor and obtain his key.
    .mob Inquisitior Zalinor
step
    #completewith next
    #hidewindow
    .cast 202595 >>Sigue la Flecha
    .timer 55,Roleplay
step
    .isInScenario 940
    .goto 714,37.12,48.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Minerva Cuervotriste|r. << Horde
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Dagnar Stonebrow|r. << Alliance
    .scenario 2138,1 --Release your ally
    .target Minerva Cuervotriste << Horde
    .target Dagnar Stonebrow << Alliance
step
    .isInScenario 940
    .goto 714,47.96,58.44
    >>Usa el |T136120:0|t[Caparazón antimagia] para evitar el daño de los vacíos viles.
    >>|cRXP_WARN_Defiende|r |cRXP_FRIENDLY_Barón Plateado|r de nuevo.
    .scenario 2139,1 --Citadel Barrier Disabled
    .usespell 48707
    .mob Niskaran Doombringer
    .mob Avizor guardia vil
    .mob Voracious Felmaw
    .mob Niskaran Houndmaster
step
    .isInScenario 940
    .goto 714,61.34,59.78
    >>Usa el |T136120:0|t[Caparazón antimagia] para evitar el daño de los vacíos viles.
    >>Usa |T237532:0|t[Atracción letal] para ponerte al alcance del |cRXP_ENEMY_Tumor de repulsión|r.
    .scenario 2141,1 --Search within the citadel for Margrave
    .usespell 48707
    .usespell 49576
step
    .goto 714,65.10,59.87
    .isInScenario 940
    >>Mata a |cRXP_ENEMY_Gorelix|r.
    .scenario 2142,1 --Slay Gorelix
    .mob Gorelix
step
    .isInScenario 940
    .goto 714,64.15,60.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Fauces de los Malditos|r
    .scenario 2143,1 --Take the Maw of the Damned
    .complete 40740,3 --1/1 Obtain the Maw of the Damned
step
    .goto 714,63.06,60.82
step
    .isInScenario 940
    .goto 714,63.06,60.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portón de la muerte|r.
    .scenario 2180,1 --Use Baron Sliver's Death Gate
step
    .isOnQuest 40740
    .goto 701,47.57,90.74
    .zone 648 >>Haz clic en la |cRXP_PICK_Puerta de Acherus|r después del "roleplay".
step
    .isQuestAvailable 39832
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r.
    .turnin 40740 >>Entrega la misión Los muertos y los condenados
    .timer 63,Mograine "Roleplay"
    .target Alto señor Darion Mograine
step
    #optional
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r.
    .turnin 40740 >>Entrega la misión Los muertos y los condenados
    .target Alto señor Darion Mograine
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: DK Escarcha
#displayname Arma artefacta: Escarcha
#next a) Sede de clase Caballero de la Muerte Parte 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Usa |T135766:0|t[Portamorta]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Usa el teletransportador
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 44401 >>Acepta la misión Un arma para cada ocasión
    .target Duque Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Escarcha|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390098
    .target Duque Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 44401 >>Entrega la misión Un arma para cada ocasión
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 43962 >>Acepta la misión Espadas del destino
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Escarcha|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390098
    .target Duque Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 43962 >>Entrega la misión Espadas del destino
    .target Duque Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 40715 >>Acepta la misión Un pacto necesario
    .target Rensar Granzuña
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Escarcha|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390098
    .target Rensar Granzuña
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40715 >>Entrega la misión Un pacto necesario
    .target Rensar Granzuña
step
    #completewith Fragments of Frostmourne
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 627,73.09,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .accept 38990 >>Acepta la misión El llamado de Corona de Hielo
    .target Highlord Darion Mograine
step
    .goto 627,73.60,46.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portón de la muerte|r
    .complete 38990,1 --1/1 Use Death Gate
step
    .goto 698,59.7,17.3
    .isInScenario 901
    >>|cRXP_WARN_Colócate sobre el botón|r
    .scenario 1809,1 --Open the Gate to Icecrown
step
    .goto 698,59.74,0.36
    .scenario 1973,1 --1/1 Enter Icecrown Citadel
step
    #completewith next
    +|cRXP_WARN_Para abrir la puerta, mata al |cRXP_ENEMY_Guardián de la puerta piel de piedra|r sobre al menos un botón (o usa |T237532:0|t|r[Atracción letal] |cRXP_WARN_para atraerlo sobre uno) y colócate sobre el segundo.
step
    #label Fragments of Frostmourne
    .goto 700,52.16,66.08
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Trozos de Agonía de Escarcha|r
    .scenario 1810,1,1 --1/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,59.89,53.69
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Trozos de Agonía de Escarcha|r
    .scenario 1810,1,2 --2/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.27,41.31
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Trozos de Agonía de Escarcha|r
    .scenario 1810,1,3 --3/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.33,49.96
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Trozos de Agonía de Escarcha|r
    .scenario 1810,1 --4/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.82,53.41
    .isInScenario 901
    >>|cRXP_WARN_Ponte sobre el teletransportador|r
    .scenario 1811,1 --Use the Scourge Teleporter within the Spire
step
    #completewith next
    #hidewindow
    .cast 186253 >>Sigue la Flecha
    .timer 24,Roleplay
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Empuñadura de Agonía de Escarcha|r
    .scenario 1812,1 --Reforge the fragments and form your weapon
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Espadas del Príncipe Caído|r
    >>Mata al |cRXP_ENEMY_Eco de Arthas Menethil|r
    *Mata a |cRXP_ENEMY_Source|r antes de que lo alcancen.
    .scenario 1814,1 --Purge the blades of the malevolent souls within
    .timer 8,Teletranspórtate dentro
    .mob Echo of Arthas Menethil
    .mob Mindless Ghoul
    .mob Icefallen Geist
    .mob Enraged Zombie
step
    .isInScenario 901
    .goto 701,49.85,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Espadas del Príncipe Caído|r
    .complete 38990,2 --1/1 Obtain the Blades of the Fallen Prince
step
    .goto 701,49.8,51.7
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Espadas del Príncipe Caído|r
    .scenario 2224,1 --Take the Blades of the Fallen Prince.
step
    .goto 701,49.52,90.69
    .isInScenario 901
    >>|cRXP_WARN_Espera al roleplay|r
    .scenario 1827,1 --Obtain the Lich King's blessing
step
    .zoneskip 648
    .goto 701,47.64,90.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Puerta de Acherus|r
    .scenario 2923,1 --1/1 Acherus Waygate taken
step
    .goto 648,51.01,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .turnin 38990 >>Entrega la misión El llamado de Corona de Hielo
    .timer 60,Roleplay
    .target Highlord Darion Mograine
]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Profano
#displayname Arma artefacto: Profano
#next a) Sede de clase Caballero de la Muerte Parte 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Usa |T135766:0|t[Portamorta]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Usa el teletransportador
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 44401 >>Acepta la misión Un arma para cada ocasión
    .target Duque Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Profano|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390099
    .target Duque Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 44401 >>Entrega la misión Un arma para cada ocasión
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .goto 648,35.01,37.23
    .zone 647 >>Usa el teletransportador
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 43962 >>Acepta la misión Espadas del destino
    .target Duque Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Profano|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390099
    .target Duque Lankral
    .skipgossipid 46633
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 43962 >>Entrega la misión Espadas del destino
    .target Duque Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .accept 40715 >>Acepta la misión Un pacto necesario
    .target Rensar Granzuña
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Profano|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390099
    .target Rensar Granzuña
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40715 >>Entrega la misión Un pacto necesario
    .target Rensar Granzuña
step
    #completewith Apocalypse
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    >>Esta misión debería añadirse automáticamente a tu registro de misiones. Si no es así, reinicia sesión (relog).
    .accept 40930 >>Acepta la misión Apocalipsis
step
    .goto 47,77.42,35.89
    >>Usa el |T254294:0|t[Pergamino de Bosque del Ocaso]. |cRXP_WARN_Sigue la flecha hacia la casa.|r
    .complete 40930,1 --1/1 Investigate Manor Mistmantle in Duskwood
    .use 173527
step
    .goto 47,77.42,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r y derrótalo.
    .complete 40930,2 --1/1 Convince Revil to help
    .timer 11,Revil "Roleplay"
    .target Revil Kost
    .skipgossipid 44918
step
    #label Apocalypse
    .goto 47,77.42,36.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40930 >>Entrega la misión Apocalipsis
    .accept 40931 >>Acepta la misión Siguiendo a la maldición
    .target Revil Kost
step
    .isOnQuest 40931
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Mata a los |cRXP_ENEMY_Jinetes oscuros|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .isOnQuest 40931
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escolta al |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40931
    .goto 47,85.55,40.69
    .countdown 20 >>Mata a los |cRXP_ENEMY_Jinetes oscuros|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .isOnQuest 40931
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escolta al |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40931
    .goto 42,44.33,34.54
    .countdown 20 >>Mata a los |cRXP_ENEMY_Jinetes oscuros|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escolta al |cRXP_FRIENDLY_Revil Kost|r
    .complete 40931,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40931 >>Entrega la misión Siguiendo a la maldición
    .accept 40932 >>Acepta la misión Perturbando el pasado
    .target Revil Kost
step
    .goto 42,52.32,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Diario maltrecho|r.
    .complete 40932,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.31,33.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Diario maltrecho|r.
    .turnin 40932 >>Entrega la misión Perturbando el pasado
    .target Battered Journal
step
    .goto 42,52.42,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .accept 40933 >>Acepta la misión Una macabra tarea
    .target Revil Kost
step
    .goto 42,53.39,73.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las diferentes |cRXP_PICK_tumbas poco profundas|r hasta que encuentres a |cRXP_ENEMY_Laith Sha'ol|r. Mata a |cRXP_ENEMY_Laith Sha'ol|r.
    .complete 40933,1 --1/1 Learn the location of the Dark Riders
    .mob Laith Sha'ol
step
    .goto 42,49.46,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40933 >>Entrega la misión Una macabra tarea
    .accept 40986 >>Acepta la misión Los jinetes oscuros
    .target Revil Kost
step
    .isOnQuest 40986
    .goto 42,46.28,69.07
    .enterScenario 1026 >>|cRXP_WARN_Entra en la gesta |cRXP_PICK_Los jinetes oscuros|r|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1026
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Salta hacia abajo
step
    #requires KarazhanCatacombsA
    .isInScenario 1026
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entra en las catacumbas|r
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1026
    #title Usa |T237532:0|t[Atracción letal]
    .goto 46,55.90,69.19
    >>Usa |T237532:0|t[Atracción letal] en |cRXP_ENEMY_Ariden|r |cRXP_WARN_desde el registro de misiones|r.
    .scenario 2159,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1026
    .goto 46,56.36,69.25
    >>Mata a |cRXP_ENEMY_El Conservador|r.
    .scenario 2160,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Sigue la Flecha
    .timer 25,Roleplay
step
    .isInScenario 1026
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Apocalipsis|r. |cRXP_WARN_Espera a que termine el "roleplay"|r.
    .scenario 2161,1 --Apocalypse found
step
    .isInScenario 1026
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Sigue la flecha subiendo las escaleras hacia |cRXP_ENEMY_Ariden|r.
    .scenario 2162,1 --Ariden followed
    .timer 15,Ariden "Roleplay"
step
    .isInScenario 1026
    .goto 46,68.36,24.43
    >>Mata a |cRXP_ENEMY_Ariden|r.
    .scenario 2163,1 --Ariden defeated
    .complete 40986,1 --1/1 Defeat the Dark Riders
    .timer 33,Ariden "Roleplay"
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Apocalipsis|r.
    .complete 40986,2 --1/1 Apocalypse claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    *|cRXP_WARN_Note:|r Si todavía está en combate, mata a los enemigos con los que está luchando.
    .turnin 40986 >>Entrega la misión Los jinetes oscuros
    .accept 40987 >>Acepta la misión La llamada de la venganza
    .target Revil Kost
step
    .goto 46,69.62,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portón de la muerte para ir al Trono Helado|r.
    .complete 40987,1 --1/1 Take the Death Gate to the Frozen Throne
step
    .isOnQuest 40987
    .goto 701,47.57,90.74
    .zone 648 >>Haz clic en la |cRXP_PICK_Puerta de Acherus|r después del "roleplay".
step
    .goto 648,50.99,50.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r.
    .turnin 40987 >>Entrega la misión La llamada de la venganza
    .target Highlord Darion Mograine

]])
--Blood 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma artefacto: Sangre
#displayname Arma artefacto: Sangre
#next ac) Sede declase Caballero de la Muerte Parte 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Arma artefacto: Sangre
]])
--Frost 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma artefacto: DK Escarcha
#displayname Arma artefacta: Escarcha
#next ac) Sede declase Caballero de la Muerte Parte 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Arma artefacto: DK Escarcha
]])
--Unholy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma artefacto: Profano
#displayname Arma artefacto: Profano
#next ac) Sede declase Caballero de la Muerte Parte 2
#internal


<< DeathKnight

step
    #include RestedXP Legion Remix\a) Arma artefacto: Profano
]])

--Death Knight Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sede de clase Caballero de la Muerte Parte 1
#displayname |cFF00CCFF1|r - Introducción a la sede de clase|r
#next ac) Caballero de la Muerte de la Sala de Orden
#chapter
#internal

<< DeathKnight

step
    #completewith Enlist Nazgrim2
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaberk|r.
    *|cRXP_WARN_Nota:|r Esto debería ser agregado automáticamente a tu registro de misiones mientras estés en Dalaran. Si no, desconecta y vuelve a entrar (relog).
    .accept 40714 >>Acepta la misión El grito de guerra
    .target Kaberk
step
    .goto 627,73.11,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Duque Lankral|r.
    .turnin 40714 >>Entrega la misión El grito de guerra
    .accept 40715 >>Acepta la misión Un pacto necesario
    .target Duque Lankral
step
    .isQuestAvailable account,91955
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_IMPORTANTE: Selecciona el que ya tienes para obtener un 10% adicional de xp (solo una vez)|r
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost DK >> Cadena de misiones de Escarcha (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Unholy >> Cadena de misiones de Profano (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Blood >> Cadena de misiones de Sangre (Tanque)
step
    #include ac) Order Hall Demon Hunter Part 2@Plans and Preparations-Enlist Nazgrim
step
    .zoneskip 648,1
    .goto 648,24.76,33.70
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
]])

-- --------- Demon Hunter ---------

--Havoc
RXPGuides.RegisterGuide([[}
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Devastación
#displayname Artefacto Arma: Devastación
#next a) Sede de clase Cazador de demonios Parte 1
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
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .accept 44383 >>Acepta la misión En busca de poder
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390100
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 44383 >>Entrega la misión En busca de poder
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
    .accept 40814 >>Acepta la misión El poder para sobrevivir
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40814 >>Entrega la misión El poder para sobrevivir
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    #completewith By Any Means
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isQuestAvailable 40249
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
    .accept 40819 >>Acepta la misión Haciendo los preparativos
step
    .isQuestTurnedIn 40249
    .goto 720,58.61,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
    .accept 40819 >>Acepta la misión Haciendo los preparativos
step
    .isQuestTurnedIn 40249
    #completewith next
    #label Making Arrangements
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40819 >>Entrega la misión Haciendo los preparativos
    .accept 39051 >>Acepta la misión Cueste lo que cueste
step
    .isQuestTurnedIn 40249
    #completewith Making Arrangements
    .goto 720,59.31,91.85
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 40249
    #requires Making Arrangements
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40819 >>Entrega la misión Haciendo los preparativos
    .accept 39051 >>Acepta la misión Cueste lo que cueste
step
    #label By Any Means
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40819 >>Entrega la misión Haciendo los preparativos
    .accept 39051 >>Acepta la misión Cueste lo que cueste
step
    .goto 627,66.09,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Celador Alturas|r
    .complete 39051,1 --1/1 Convince Warden Alturas
    .skipgossipid 45518
    .skipgossipid 45519
    .target Warden Alturas
step
    .goto 627,66.63,68.84
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Espera al "Roleplay"|r
    >>Mata a |cRXP_ENEMY_Taldath el Destructor|r
    .complete 39051,3 --1/1 Taldath interrogated
    .mob Taldath the Destroyer
step
    .goto 723,50.32,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 39051 >>Entrega la misión Cueste lo que cueste
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
    .accept 39247 >>Acepta la misión La cacería
step
    #completewith next
    #label Illidari Fel Bat
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Murciélago vil illidari|r
    .complete 39247,1
    .target Illidari Fel Bat
step
    #completewith Illidari Fel Bat
    .zone 627 >>Sal de la Instancia (clic derecho en tu marco de personaje) o presiona la macro.
    .macro Leave Instance,236367 >> Sal de la Instancia
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Murciélago vil illidari|r
    .complete 39247,1
    .timer 53,RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .enterScenario 900 >>|cRXP_WARN_Espera al Roleplay|r.
    .timer 8
step
    .isInScenario 900
    .goto 680,25.63,58.94
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isInScenario 900
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03
    >>Mata a TODOS los |cRXP_ENEMY_Demonios|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
    .mob Felsoul Berserker
step
    .isInScenario 900
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    .scenario 1822,1,1
step
    .isInScenario 900
    .goto 680,29.16,61.02,10,0
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    .scenario 1822,1,2
step
    .isInScenario 900
    #loop
    .goto 680,30.09,60.65,20,0
    .goto 680,29.97,63.95,30,0
    .goto 680,30.57,63.9,30,0
    .goto 680,30.3,65.99,30,0
    .goto 680,31.07,66,30,0
    >>Mata a los |cRXP_ENEMY_Demonios|r |cRXP_WARN_pero ignora al |cRXP_ENEMY_Triturador Almavil|r, el infernal aunque tengas "aggro"|r.
    .scenario 1822,2,100
    .mob Fist of the Deceiver
    .mob Living Flame
    .mob Felsoul Ritualist
step
    .isInScenario 900
    .goto 680,31.25,66.26,10,0
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    .scenario 1822,1,3
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>Mata a |cRXP_ENEMY_Varedis Almavil|r
    .scenario 1825,1
    .mob Varedis Almavil
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Espadas Gemelas del Falsario|r
    .complete 39247,2 --1/1 Twinblades of the Deceiver
    .scenario 2712,1
step
    .isInScenario 900
    .zone 627 >>Sal de la Instancia (clic derecho en tu marco de personaje) o presiona la macro.
    .macro Leave Instance,236367 >> Sal de la Instancia
step
    .isQuestAvailable 40249
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'vas Espinosangriento|r
    .turnin 39247 >>Entrega la misión La cacería
    .target Kor'vas Espinosangriento
step
    #completewith next
    #label Turn in The Hunt
    .isQuestTurnedIn 40249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'vas Espinosangriento|r
    .turnin 39247 >>Entrega la misión La cacería
    .target Kor'vas Espinosangriento
step
    #completewith Turn in The Hunt
    #label ArtifactWeaponHavocY
    .isQuestTurnedIn 40249
    .goto 627,98.13,69.47
    .zone 720 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step
    #requires Turn in The Hunt
    .isQuestTurnedIn 40249
    #label ArtifactWeaponHavocZ
    .goto 720,59.31,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'vas Espinosangriento|r
    .turnin 39247 >>Entrega la misión La cacería
    .target Kor'vas Espinosangriento
]])
--Vengeance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Venganza
#displayname Arma artefacto: Venganza
#next a) Sede de clase Cazador de demonios Parte 1
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
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .accept 44383>>Acepta la misión En busca de poder
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390101
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 44383 >>Entrega la misión En busca de poder
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
    .accept 40814>>Acepta la misión El poder para sobrevivir
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .turnin 40814 >>Entrega la misión El poder para sobrevivir
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    #completewith Crystallized Soul
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 627,74.98,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .accept 40247 >>Acepta la misión Pedir un favor
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    .isQuestAvailable 39247
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    .turnin 40247 >>Entrega la misión Pedir un favor
    .accept 41804 >>Acepta la misión Pídelo y lo tendrás
    .timer 57.5,RP
    .target Archimago Khadgar
step
    .isQuestTurnedIn 39247
    #completewith next
    #label Turn in Asking a Favor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    .turnin 40247 >>Entrega la misión Pedir un favor
    .accept 41804 >>Acepta la misión Pídelo y lo tendrás
    .disablecheckbox
    .target Archimago Khadgar
step
    .isQuestTurnedIn 39247
    #completewith Turn in Asking a Favor
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 39247
    #requires Turn in Asking a Favor
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    .turnin 40247 >>Entrega la misión Pedir un favor
    .accept 41804 >>Acepta la misión Pídelo y lo tendrás
    .timer 58.5,RP
    .target Archimago Khadgar
step
    .goto 627,25.35,47.24,15,0
    .goto 627,26.78,44.84
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 41804,1 --1/1 Follow Archmage Khadgar
step
    #label Crystallized Soul
    .goto 627,26.78,44.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cajón|r
    .complete 41804,2 --1/1 Crystallized Soul
    .timer 12.5,RP
step
    .goto 627,28.49,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    .turnin 41804 >>Entrega la misión Pídelo y lo tendrás
    .target Archimago Khadgar
    .accept 41806 >>Acepta la misión Regresa con Jace
step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jace Tejeoscuro|r
    .turnin 41806 >>Entrega la misión Regresa con Jace
    .accept 41807 >>Acepta la misión Estableciendo una conexión
    .target Jace Tejeoscuro
step
    .goto 627,74.35,52.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Comunicador de la Legión|r
    .complete 41807,1 --1/1 Legion Communicator activated
    .timer 19,RP
step
    .goto 627,74.43,51.31
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 41807,2 --1/1 Scout's report received
step
    .goto 627,74.54,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jace Tejeoscuro|r
    .turnin 41807 >>Entrega la misión Estableciendo una conexión
    .target Jace Tejeoscuro
step
    .goto 627,75.05,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .accept 40249 >>Acepta la misión La venganza será nuestra
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
step
    #completewith next
    #label Fly to the Broken Shore
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    #completewith Fly to the Broken Shore
    .goto 627,75.28,47.58
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Murciélago vil illidari|r
    .timer 24,RP
    .target Illidari Fel Bat
step
    #requires Fly to the Broken Shore
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .isOnQuest 40249
    .enterScenario 961 >>|cRXP_WARN_Espera al Roleplay|r.
step
    .goto 676,15.09,51.77
    .isOnQuest 40249
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Allari la Comealmas|r
    .scenario 1939,1 --Free Allari the Souleater.
    .target Allari la Comealmas
step
    .goto 676,16.02,54.95,15,0
    .goto 676,16.04,56.14,20,0
    .goto 676,17.61,57.44
    .isInScenario 961
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Portales|r
    .scenario 1940,1, --Destroy the Legion portals.
step
    .goto 676,20.19,61.38
    .isInScenario 961
    >>Mata a |cRXP_ENEMY_Saera, heraldo de la Perdición|r y a |cRXP_ENEMY_Taraar, heraldo de la Perdición|r
    .scenario 2299,2 --Eliminate Doomherald Taraar.
    .scenario 2299,1 --Eliminate Doomherald Saera.
    .mob Doomherald Saera
    .mob Doomherald Taraar
step
    .goto 676,20.69,62.76
    .isInScenario 961
    >>Mata a |cRXP_ENEMY_Gorgonnash|r
    .scenario 1948,1 --Destroy Gorgonnash.
    .mob Gorgonnash
step
    .isInScenario 961
    .goto 676,21.92,61.12
    >>Usa |T1247266:0|t[Visión espectral] frente a la cueva.
    .scenario 1941,1 --Find Caria's trail.
    .usespell 188501
step
    .isInScenario 961
    .goto 676,21.92,61.12
    .cast 207965 >>Haz clic en los |cRXP_PICK_Escombros|r
step
    #completewith next
    #label Caria Felsoul
    .isInScenario 961
    >>Mata a |cRXP_ENEMY_Caria Almavil|r
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Almavil
step
    .isInScenario 961
    #completewith Caria Felsoul
    .goto 676,23.26,62.14,15,0
    .goto 676,23.73,63.82,15,0
    .goto 676,24.3,64.04,15,0
    .goto 676,25.11,63.11,30 >>Sigue la Flecha
    .timer 9,RP
step
    #requires Caria Felsoul
    .goto 676,26.82,61.37
    >>Mata a |cRXP_ENEMY_Caria Almavil|r
    .isInScenario 961
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Almavil
step
    .goto 676,26.77,61.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .complete 40249,2 --1/1 Aldrachi Warblades
    .scenario 2302,1
step
    .zone 627 >>Sal de la Instancia (clic derecho en tu marco de personaje) o presiona la macro.
    .macro Leave Instance,236367 >> Sal de la Instancia
    .complete 40249,3 --1/1 Return to Dalaran
step
    .isQuestAvailable 39247
    #completewith next
    #label Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'vas Espinosangriento|r
    .turnin 40249 >>Entrega la misión La venganza será nuestra
    .target Kor'vas Espinosangriento
step
    .isQuestAvailable 39247
    #completewith Vengeance Will Be Ours
    #label ArtifactWeaponVengeanceY
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|
step
    #label ArtifactWeaponVengeanceZ
    .isQuestAvailable 39247
    #requires Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'vas Espinosangriento|r
    .turnin 40249 >>Entrega la misión La venganza será nuestra
    .target Kor'vas Espinosangriento
]])
--Havoc 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefacto Arma: Devastación
#displayname Artefacto Arma: Devastación
#next ac) Sede de clase Cazador de demonios Parte 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Devastación
]])
--Vengeance 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Venganza
#displayname Arma artefacto: Venganza
#next ac) Sede de clase Cazador de demonios Parte 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Arma artefacto: Venganza
]])

--Demon Hunter Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sede de clase Cazador de demonios Parte 1
#displayname |cFF00CCFF1|r - Introducción a la sede de clase|r
#next a) Cazador de demonios Sala de orden
#chapter
#internal

<< DemonHunter

step
    #completewith Champion: Asha Ravensong2
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Seguidor|r.
    .target Kayn Furia del Sol
    .target Altruis el Sufridor
    .accept 40814 >>Acepta la misión El poder para sobrevivir
step
    .isQuestAvailable 40814
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Havoc >> Cadena de misiones de Devastación (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Vengeance >> Cadena de misiones de Venganza (Tanque)
step
    #include ac) Order Hall Demon Hunter Part 2@Eternal Vigil-Champion: Asha Ravensong
]])

-- --------- Druid ---------

--Balance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Druida Equilibrio
#displayname Arma artefacto: Equilibrio
#next a) Sala de orden Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Sigue la Flecha
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Atraviesa el portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40783
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44443 >>Acepta la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Equilibrio|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390102
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44443 >>Entrega la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44431 >>Acepta la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40783
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Equilibrio|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390102
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44431 >>Entrega la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 43980 >>Acepta la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40783
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Equilibrio|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390102
    .target Rensar Granzuña
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 43980 >>Entrega la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .accept 40646 >>Acepta la misión Armas legendarias
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Equilibrio|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390102
    .target Rensar Granzuña
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 40646 >>Entrega la misión Armas legendarias
    .target Rensar Granzuña
step
    #completewith Scythe of Elune
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 747,44.52,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naralex|r
    .accept 40783 >>Acepta la misión La Guadaña de Elune
    .target Naralex
step
    #completewith ToDuskwoodD
    #label ToDuskwoodA
    >>Viaja a Bosque del Ocaso
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToDuskwoodA
    #label ToDuskwoodB
    .goto 747,55.76,21.99
    .zone 715 >>Atraviesa el portal hacia la Senda del Sueño Esmeralda
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToDuskwoodB
    #completewith ToDuskwoodA
    #label ToDuskwoodC
    .zone 715 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToDuskwoodC
    #completewith ToDuskwoodA
    #label ToDuskwoodD
    .goto 715,31.46,26.05
    .zone 116 >>Atraviesa el portal hacia Bosque del Ocaso
step
    #requires ToDuskwoodA
    .goto 715,39.93,69.76
    >>Viaja a Bosque del Ocaso
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    #completewith next
    #hidewindow
    .goto 47,48.90,34.31,15 >>Sigue la Flecha
    .timer 15,"Roleplay" de Valorn
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Sigue la flecha. Espera a que termine el roleplay|r.
    .complete 40783,2 --1/1 Meet with Valorn
step
    #label Scythe of Elune
    .goto 47,48.90,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valorn Ramaquieta|r
    .turnin 40783 >>Entrega la misión La Guadaña de Elune
    .accept 40784 >>Acepta la misión Su lugar legítimo
    .timer 4,Roleplay
    .target Valorn Stillbough
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Espera al roleplay|r
    .complete 40784,1 --1/1 Scythe of Elune taken
step
    .goto 47,48.84,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belysra Brisa Estelar|r
    .turnin 40784 >>Entrega la misión Su lugar legítimo
    .target Belysra Starbreeze
    .accept 40785 >>Acepta la misión Un enemigo de la oscuridad
step
    #title |cFFFCDC00Entra en la Casa|r
    .goto 47,77.42,36.13
    >>|cRXP_WARN_Sigue la Flecha|r.
    .complete 40785,2 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.42,36.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40785 >>Entrega la misión Un enemigo de la oscuridad
    .accept 40834 >>Acepta la misión Siguiendo a la maldición
    .target Revil Kost
step
    .isOnQuest 40834
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Mata a los |cRXP_ENEMY_Jinetes oscuros|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .isOnQuest 40834
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escolta al |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40834
    .goto 47,85.55,40.69
    .countdown 20 >>Mata a los |cRXP_ENEMY_Jinetes oscuros|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .isOnQuest 40834
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escolta al |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40834
    .goto 42,44.33,34.54
    .countdown 20 >>Mata a los |cRXP_ENEMY_Jinetes oscuros|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escolta al |cRXP_FRIENDLY_Revil Kost|r
    .complete 40834,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40834 >>Entrega la misión Siguiendo a la maldición
    .accept 40835 >>Acepta la misión Perturbando el pasado
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Diario maltrecho|r.
    .complete 40835,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Diario maltrecho|r
    .turnin 40835 >>Entrega la misión Perturbando el pasado
    .target Battered Journal
step
    .goto 42,52.42,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r
    .accept 40837 >>Acepta la misión La cacería en el Paso de la Muerte
    .target Revil Kost
step
    .goto 42,51.57,43.62
    >>|cRXP_WARN_Sigue la Flecha|r.
    .complete 40837,1 --1/1 Follow the worgen tracks
step
    .goto 42,47.22,51.69
    >>|cRXP_WARN_Sigue la Flecha|r.
    .complete 40837,2 --1/1 Continue following the worgen
step
    .goto 42,49.17,57.66
    >>|cRXP_WARN_Sigue la Flecha|r.
    .complete 40837,3 --1/1 Continue following the worgen
step
    .goto 42,45.93,63.33
    >>|cRXP_WARN_Sigue la Flecha|r.
    .complete 40837,4 --1/1 Continue following the worgen
step
    .goto 42,46.90,69.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40837 >>Entrega la misión La cacería en el Paso de la Muerte
    .accept 40838 >>Acepta la misión Los jinetes oscuros
    .target Revil Kost
step
    .isOnQuest 40838
    .goto 42,46.28,69.07
    .enterScenario 1014 >>|cRXP_WARN_Sigue la Flecha|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1014
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Salta hacia abajo
step
    #requires KarazhanCatacombsA
    .isInScenario 1014
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entra en las catacumbas|r
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1014
    #title Usa |T252188:0|t[Rayo solar]
    .goto 46,55.90,69.19
    >>Usa |T252188:0|t[Rayo solar] en |cRXP_ENEMY_Ariden|r |cRXP_WARN_del registro de misiones|r.
    .scenario 2109,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1014
    .goto 46,56.36,69.25
    >>Mata a |cRXP_ENEMY_El Conservador|r.
    .scenario 2110,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Sigue la Flecha
    .timer 25,Roleplay
step
    .isInScenario 1014
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_La Guadaña de Elune|r. |cRXP_WARN_Espera al "roleplay"|r.
    .scenario 2111,1 --Scythe of Elune found
step
    .isInScenario 1014
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Sigue la flecha subiendo las escaleras hacia |cRXP_ENEMY_Ariden|r.
    .scenario 2112,1 --Ariden followed
    .timer 15,Ariden "Roleplay"
step
    .isInScenario 1014
    .goto 46,68.36,24.43
    >>Mata a |cRXP_ENEMY_Ariden|r.
    .scenario 2113,1 --Ariden defeated
    .complete 40838,1 --1/1 Defeat the Dark Riders
    .timer 33,Ariden "Roleplay"
    .mob Ariden
step
    .goto 46,68.28,24.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_La Guadaña de Elune|r.
    .complete 40838,2 --1/1 The Scythe of Elune claimed
    .timer 25,Roleplay
step
    .goto 46,68.27,27.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40838 >>Entrega la misión Los jinetes oscuros
    .accept 40900 >>Acepta la misión La carga sobre el hombro
    .target Revil Kost
step
    #completewith TheBurdenBorneC
    #label TheBurdenBorneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 40900 >>Entrega la misión La carga sobre el hombro
    .target Rensar Granzuña
step
    #completewith TheBurdenBorneA
    #label TheBurdenBorneB
    .zone 715 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    #completewith TheBurdenBorneA
    #requires TheBurdenBorneB
    #label TheBurdenBorneC
    .goto 715,45.60,23.46
    .zone 747 >>Atraviesa el portal hacia la Senda del Sueño Esmeralda
step
    #requires TheBurdenBorneA
    .goto 747,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 40900 >>Entrega la misión La carga sobre el hombro
    .target Rensar Granzuña
]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Druida Feral
#displayname Arma artefacto: Feral
#next a) Sala de orden Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Sigue la Flecha
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Atraviesa el portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 42428
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44443 >>Acepta la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Feral|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390103
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44443 >>Entrega la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44431 >>Acepta la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Feral|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390103
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44431 >>Entrega la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 43980 >>Acepta la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Feral|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390103
    .target Rensar Granzuña
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 43980 >>Entrega la misión Otra arma de tiempos pasados
    .accept 42428 >>Acepta la misión El santuario de Ashamane
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .accept 40646 >>Acepta la misión Armas legendarias
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Feral|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390103
    .target Rensar Granzuña
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 40646 >>Entrega la misión Armas legendarias
    .target Rensar Granzuña
step
    #completewith Aid for the Ashen
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 42428 >>Acepta la misión El santuario de Ashamane
    .target Rensar Granzuña
step
    .goto 747,61.73,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danise Mirada estelar|r.
    .complete 42428,1 --1/1 Hippogryph taken to Ashamane's Fall
    .timer 57,Duración del Vuelo
    .target Danise Stargazer
    .skipgossipid 45654
step
    .goto 641,70.39,46.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delandros Luna Resplandeciente|r.
    .turnin 42428 >>Entrega la misión El santuario de Ashamane
    .target Delandros Shimmermoon
    .accept 42439 >>Acepta la misión Ayuda para los Cinéreos
    .accept 42438 >>Acepta la misión Semillas de renovación
step
    #completewith SeedsOfRenewalA
    >>Mata a los |cRXP_ENEMY_Azotadores de alma eredar|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #title Semilla (1/3)
    .goto 641,71.69,43.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_cadáver|r de |cRXP_FRIENDLY_Emtheas Ojorreal|r.
    .complete 42438,1,1 --1/3 Tel'andu Seed
    .target Emtheas Trueeye
step
    #title Semilla (2/3)
    .goto 641,70.04,42.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_cadáver|r de |cRXP_FRIENDLY_Asthalor Luna Crepuscular|r.
    .complete 42438,1,2 --2/3 Tel'andu Seed
    .target Asthalor Duskmoon
step
    #label SeedsOfRenewalA
    #title Semilla (3/3)
    .goto 641,71.00,38.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_cadáver|r de |cRXP_FRIENDLY_Iyseelar Canción del Rocío|r.
    .complete 42438,1 --3/3 Tel'andu Seed
    .target Iyseelar Dewsong
step
    #loop
    .goto 641,71.70,38.40,35,0
    .goto 641,71.55,42.50,35,0
    .goto 641,70.24,41.08,35,0
    >>Mata a los |cRXP_ENEMY_Azotadores de alma eredar|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #label Aid for the Ashen
    .goto 641,73.23,42.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delandros Luna Resplandeciente|r
    .turnin 42439 >>Entrega la misión Ayuda para los Cinéreos
    .turnin 42438 >>Entrega la misión Semillas de renovación
    .accept 42440 >>Acepta la misión El santuario en peligro
    .target Delandros Shimmermoon
step
    .goto 641,73.75,40.59
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 42440,1 --1/1 Investigate Ashamane's Fall
step
    .goto 641,73.82,39.02
    >>Mata a |cRXP_ENEMY_Algromon|r
    .complete 42440,2 --1/1 Algromon slain
    .mob Algromon
step
    .goto 641,73.83,38.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Delandros Luna Resplandeciente|r
    .turnin 42440 >>Entrega la misión El santuario en peligro
    .accept 42430 >>Acepta la misión Los Colmillos de Ashamane
    .target Delandros Shimmermoon
step
    .goto 641,73.75,38.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_FRIENDLY_Colmillo de Ébano|r
    .complete 42430,1 --1/1 Ebonfang Mounted
    .target Ebonfang
step
    .isOnQuest 42430
    .goto 641,73.75,38.40
    .enterScenario 1108 >>Entra en la gesta |cRXP_PICK_Los Colmillos de Ashamane|r.
step
    .isInScenario 1108
    .goto 680,21.70,39.36
    >>|cRXP_WARN_Sigue la flecha.|r
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
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Interruptor de la puerta|r
step
    #requires DoorSwitchA
    #completewith DoorwayOpenedA
    #label DoorSwitchB
    .goto 680,23.14,37.77
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Interruptor de la puerta|r
    .timer 15,La puerta se abre en
step
    #requires DoorwayOpenedA
    .isInScenario 1108
    .goto 680,22.80,35.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los dos |cRXP_PICK_Interruptores de la puerta|r
    >>|cRXP_WARN_Esperar para que la puerta se abra después de hacer clic en los dos interruptores|r
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    #completewith next
    #label FollowVerstoksTrailA
    >>|cRXP_WARN_Sigue la Flecha|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    #completewith FollowVerstoksTrailA
    .goto 692,54.48,40.91
    .cast 214240 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Plataforma|r
    *- |cRXP_WARN_Asegúrate de estar en forma de gato|r
step
    #requires FollowVerstoksTrailA
    .isInScenario 1108
    .goto 692,45.45,29.90
    >>|cRXP_WARN_Sigue la Flecha|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    .isInScenario 1108
    .goto 692,43.10,21.57
    >>Derrota a |cRXP_ENEMY_Verstok|r
    .scenario 2534,1 --Defeat Verstok
    .mob Verstok
step
    .isInScenario 1108
    .goto 692,41.89,33.91,15,0
    .goto 692,31.11,72.27,15,0
    .goto 692,33.74,72.68
    >>|cRXP_WARN_Sigue la Flecha|r
    .scenario 2545,1 --Chase after Verstok
step
    .isInScenario 1108
    .goto 693,53.19,18.21
    >>Mata a la |cRXP_ENEMY_Maestra de las redes Shinaris|r.
    .scenario 2546,1 --Webmistress Shinaris Slain
    .timer 18,Verstok "Roleplay"
    .mob Webmistress Shinaris
step
    .isInScenario 1108
    .goto 693,54.72,20.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Colmillos de Ashamane|r
    .scenario 2547,1 --Retrieve the Fangs of Ashamane
step
    .isOnQuest 42430
    .isQuestNotComplete 42430
    .isInScenario 1108
    .goto 693,54.76,19.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_FRIENDLY_Colmillo de Ébano|r.
    .scenario 2552,1 --Ride upon Ebonfang
    .target Ebonfang
step
    .goto 747,44.52,51.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 42430 >>Entrega la misión Los Colmillos de Ashamane
    .target Rensar Granzuña
]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Druida Guardián
#displayname Arma artefacto: Guardián
#next a) Sala de orden Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Sigue la Flecha
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Atraviesa el portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 41468
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44443 >>Acepta la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Guardián|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390104
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44443 >>Entrega la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44431 >>Acepta la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Guardián|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390104
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44431 >>Entrega la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 43980 >>Acepta la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Guardián|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390104
    .target Rensar Granzuña
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 43980 >>Entrega la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .accept 40646 >>Acepta la misión Armas legendarias
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Guardián|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390104
    .target Rensar Granzuña
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 40646 >>Entrega la misión Armas legendarias
    .target Rensar Granzuña
step
    #completewith ToTheHillsA
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 41468 >>Acepta la misión Señora de la Zarpa
    .target Rensar Granzuña
step
    #completewith next
    #label MistressOfTheClawA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lea Zarpapetra|r
    .turnin 41468 >>Entrega la misión Señora de la Zarpa
    .accept 41782 >>Acepta la misión A las colinas
    .target Lea Stonepaw
step
    #title |cFFFCDC00Entra en la cueva|r
    #completewith MistressOfTheClawA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Sigue la flecha hacia el interior de la cueva|r
step
    #requires MistressOfTheClawA
    .goto 641,39.27,18.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lea Zarpapetra|r
    .turnin 41468 >>Entrega la misión Señora de la Zarpa
    .accept 41782 >>Acepta la misión A las colinas
    .target Lea Stonepaw
step
    #completewith next
    #label ToTheHillsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Frasco de agua de la poza de la luna|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #title |cFFFCDC00Sal de la Cueva|r
    #completewith ToTheHillsA
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Sigue la flecha para salir de la cueva|r
step
    #requires ToTheHillsA
    .goto 747,35.66,25.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Frasco de agua de la poza de la luna|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #completewith ToTheHillsE
    #label ToTheHillsB
    >>Viaja a Colinas Pardas
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToTheHillsB
    #label ToTheHillsC
    .goto 747,55.76,21.99
    .zone 715 >>Atraviesa el portal hacia la Senda del Sueño Esmeralda
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToTheHillsC
    #completewith ToTheHillsB
    #label ToTheHillsD
    .zone 715 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToTheHillsD
    #completewith ToTheHillsB
    #label ToTheHillsE
    .goto 715,31.46,26.05
    .zone 116 >>Cruza el portal a Colinas Pardas
step
    #requires ToTheHillsB
    >>Viaja a Colinas Pardas
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .goto 116,50.46,29.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_FRIENDLY_Hipogrifo garra pétrea|r
    .complete 41782,3 --1/1 Take Stonepaw's Hippogryph to Lea Stonepaw (Optional)
    .target Stonepaw's Hippogryph
step
    .goto 116,50.29,37.96,25,0
    .goto 116,50.98,37.10
    >>|cRXP_WARN_Sigue la Flecha|r
    .complete 41782,4 --1/1 Locate Lea Stonepaw
step
    .goto 116,51.28,36.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lea Zarpapetra|r
    .turnin 41782 >>Entrega la misión A las colinas
    .target Lea Stonepaw
step
    #title |cFFFCDC00Revisar Nota|r
    .goto 116,50.50,37.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursol|r
    *|cRXP_WARN_Nota: Si no puedes ver el Roleplay o |cRXP_FRIENDLY_Ursol|r entonces reinicia sesión junto a |cRXP_FRIENDLY_Lea Zarpapetra|r.|r
    .accept 41790 >>Acepta la misión La primera prueba de Ursol
    .target Ursol
step
    .goto 116,50.68,37.44
    >>Mata al |cRXP_ENEMY_Campeón ancestral|r
    .complete 41790,1 --1/1 Overcome Ursol's first trial
    .mob Ancestral Champion
step
    .goto 116,50.52,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursol|r
    .turnin 41790 >>Entrega la misión La primera prueba de Ursol
    .accept 41791 >>Acepta la misión La segunda prueba de Ursol
    .target Ursol
step
    .goto 116,50.70,37.37
    >>Mata a las |cRXP_WARN_tres oleadas|r de |cRXP_ENEMY_Guerreros ancestrales|r y |cRXP_ENEMY_Chamanes|r
    .complete 41791,1 --1/1 Overcome the second of Ursol's trials
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursol|r.
    .turnin 41791 >>Entrega la misión La segunda prueba de Ursol
    .accept 41792 >>Acepta la misión La tercera prueba de Ursol
    .target Ursol
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursol para comenzar la tercera prueba|r
    .complete 41792,1 --1/1 Speak with Ursol to begin the third trial
    .timer 50,Roleplay
    .target Ursol to begin the third trial
    .skipgossipid 45309
step
    .goto 116,51.15,36.99
    >>Mata a los |cRXP_ENEMY_Guerreros ancestrales|r y |cRXP_ENEMY_Chamanes|r que aparezcan
    *|cRXP_WARN_También puedes sanarla|r
    .complete 41792,2 --1/1 Protect Lea Stonepaw
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.51,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursol|r
    .turnin 41792 >>Entrega la misión La tercera prueba de Ursol
    .target Ursol
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lea Zarpapetra|r
    .accept 40647 >>Acepta la misión Cuando los sueños se convierten en pesadillas
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>Usa el |T236878:0|t[Frasco de agua de la poza de la luna]
    .complete 40647,1 --1/1 Enter the Emerald Dream
    .use 136414
step
    .isOnQuest 40647
    .goto 116,51.25,36.85
    .enterScenario 990 >>Entra a la gesta de la |cRXP_PICK_Guarida de Ursoc|r.
step
    .isInScenario 990
    .goto 757,47.23,81.67,25,0
    .goto 757,48.72,51.65
    >>|cRXP_WARN_Sigue la Flecha|r
    .scenario 2029,1 --Locate the Claws of Ursoc
step
    .goto 757,46.86,30.53
    .isInScenario 990
    >>Mata al |cRXP_ENEMY_Profanador Pezuña podrida|r y |cRXP_ENEMY_Acechasombras|r
    .scenario 2327,1 --Defend the Spirit of Ursoc
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,50.13,32.38
    >>Mata a los |cRXP_ENEMY_Blightborne Sludges|r y a los |cRXP_ENEMY_Acechasombras Pezuña podrida|r.
    .scenario 2030,1 --Survive the first assault
    .mob Rothoof Shadowstalker
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,49.40,33.06
    >>Mata al |cRXP_ENEMY_Profanador Pezuña podrida|r y |cRXP_ENEMY_Acechasombras|r.
    .scenario 2033,1 --Survive the second assault
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,46.32,30.25
    >>Mata a los |cRXP_ENEMY_Blightborne Sludges|r y a los |cRXP_ENEMY_Defensor corrupto|r.
    .scenario 2034,1 --Survive the third assault
    .mob Corrupted Defender
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,50.30,31.30
    >>Mata a los dos |cRXP_ENEMY_Defensores corruptos|r. Espera el "roleplay" de 70 segundos después de quedar aturdido.
    .scenario 2035,1 --Survive the final assault
    .mob Corrupted Defender
step
    .isInScenario 990
    .goto 757,49.96,28.35
    >>Mata a |cRXP_ENEMY_Malithar|r.
    .scenario 2040,1 --Defeat Malithar
    .complete 40647,2 --1/1 Defeat the Forces of the Nightmare
    .mob Malithar
step
    .isInScenario 990
    .goto 757,50.08,26.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Garras de Ursoc|r
    .scenario 2041,1 --Obtain the Claws of Ursoc
    .complete 40647,3 --1/1 Obtain the Claws of Ursoc
step
    .isOnQuest 40647
    .zoneskip 757,1
    .zone 116 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lea Zarpapetra|r
    .skipgossipid 45251
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lea Zarpapetra|r.
    .turnin 40647 >>Entrega la misión Cuando los sueños se convierten en pesadillas
    .accept 41918 >>Acepta la misión El soñador regresa
    .target Lea Stonepaw
step
    .zoneskip 715
    .isOnQuest 41918
    .zone 715 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    .zoneskip 715,1
    .isOnQuest 41918
    .goto 715,45.60,23.46
    .zone 747 >>|cRXP_WARN_Sigue la flecha a través del portal|r
step
    .goto 747,44.66,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 41918 >>Entrega la misión El soñador regresa
    .target Rensar Granzuña
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Druida Restauración
#displayname Arma artefacto: Restauración
#next a) Sala de orden Druida Parte 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Usa el |T135763:0|t[Caminasueños]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Sigue la Flecha
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Atraviesa el portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40649
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44443 >>Acepta la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Restauración|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390105
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44443 >>Entrega la misión Armas de los ancestros
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 44431 >>Acepta la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Restauración|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390105
    .target Rensar Granzuña
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 44431 >>Entrega la misión Más armas antiguas
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .accept 43980 >>Acepta la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Restauración|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390105
    .target Rensar Granzuña
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .turnin 43980 >>Entrega la misión Otra arma de tiempos pasados
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .accept 40646 >>Acepta la misión Armas legendarias
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Restauración|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390105
    .target Rensar Granzuña
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r.
    .turnin 40646 >>Entrega la misión Armas legendarias
    .target Rensar Granzuña
step
    #completewith Leafbeard the Storied
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 747,44.61,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardián Remulos|r.
    .accept 40649 >>Acepta la misión Reúnete con Mylune
    .target Guardián Remulos
step
    .goto 747,52.30,52.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r.
    .turnin 40649 >>Entrega la misión Reúnete con Mylune
    .accept 41422 >>Acepta la misión Preparativos necesarios
    .target Mylune
step
    .goto 747,35.66,25.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Taza vacía|r.
    .complete 41422,1 --1/1 Cup of Moonwater
step
    #label Leafbeard the Storied
    .goto 747,32.79,29.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hojabarba el Ilustre|r.
    .complete 41422,2 --1/1 Leafbeard's Blessing obtained
    .target Leafbeard the Storied
    .skipgossipid 46113
    .skipgossipid 45260
step
    .goto 747,52.30,52.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mylune|r.
    .turnin 41422 >>Entrega la misión Preparativos necesarios
    .accept 41449 >>Acepta la misión Únete a la Soñadora
    .target Mylune
step
    #completewith next
    #label JoinTheDreamerA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naralex|r.
    .turnin 41449 >>Entrega la misión Únete a la Soñadora
    .accept 41436 >>Acepta la misión Dormido del todo
    .target Naralex
step
    #title |cFFFCDC00Entra en la cueva|r
    #completewith JoinTheDreamerA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Sigue la flecha hacia el interior de la cueva|r
step
    #requires JoinTheDreamerA
    .goto 747,40.62,1.53,10,0
    .goto 641,39.56,18.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naralex|r.
    .turnin 41449 >>Entrega la misión Únete a la Soñadora
    .accept 41436 >>Acepta la misión Dormido del todo
    .target Naralex
step
    .goto 641,39.63,18.09
    >>Usa la |T608949:0|t[Cup of Moonwater]
    .complete 41436,1 --1/1 Enter the Emerald Dream
    .use 135506
step
    #completewith InDeepSlumberC
    #label InDeepSlumberA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_G'Hanir|r |cRXP_WARN_fuera de la cueva|r.
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
step
    #title |cFFFCDC00Liberar Bashana|r
    #completewith InDeepSlumberA
    #label InDeepSlumberB
    .goto 747,40.83,2.02,8,0
    .goto 747,43.96,6.16,8,0
    .goto 747,47.97,4.09,8,0
    .goto 747,47.21,7.17
    .cast 311698 >>Haz clic en las |cRXP_PICK_Raíces|r
step
    #title |cFFFCDC00Abandona la cueva, cúrate|r
    #requires InDeepSlumberB
    #completewith InDeepSlumberA
    #label InDeepSlumberC
    .goto 747,45.81,11.47,10,0
    .goto 747,48.95,15.49,8,0
    .goto 747,41.96,9.58,8,0
    .goto 747,42.55,16.10,8,0
    .goto 747,41.20,18.49,8,0
    .goto 747,46.76,29.02,8 >>|cRXP_WARN_Sigue la flecha fuera de la cueva|r.
    *|cRXP_WARN_Si la corrupción avanza demasiado, abandona la misión y reloguea|r.
step
    #requires InDeepSlumberA
    .goto 747,45.12,50.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_G'Hanir|r
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
    .timer 10,Despertar en
step
    .goto 641,39.62,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naralex|r.
    .turnin 41436 >>Entrega la misión Dormido del todo
    .accept 41690 >>Acepta la misión La reunión
    .target Naralex
step
    #completewith next
    #label ReconveneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyessa Florvigía|r.
    .turnin 41690 >>Entrega la misión La reunión
    .accept 41689 >>Acepta la misión Purificando al Árbol Madre
    .target Lyessa Bloomwatcher
step
    #title |cFFFCDC00Sal de la Cueva|r
    #completewith ReconveneA
    .goto 747,41.02,2.21,8,0
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Sigue la flecha para salir de la cueva|r
step
    #requires ReconveneA
    .goto 747,45.20,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyessa Florvigía|r.
    .turnin 41690 >>Entrega la misión La reunión
    .accept 41689 >>Acepta la misión Purificando al Árbol Madre
    .target Lyessa Bloomwatcher
step
    .goto 747,55.74,21.91
    >>Atraviesa el portal hacia la Senda del Sueño
    .complete 41689,1 --1/1 Enter the Dreamway
step
    .goto 715,53.69,53.00
    >>Cruza el portal a Monte Hyjal
    .complete 41689,2 --1/1 Travel to Mount Hyjal
step
    #hidewindow
    #completewith next
    #label CleansingTheMotherTreeA
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    #completewith CleansingTheMotherTreeA
    #label CleansingTheMotherTreeB
    .enterScenario 1061 >>Entra en la gesta |cRXP_PICK_Purificando al Árbol Madre|r
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #requires CleansingTheMotherTreeB
    #completewith next
    #hidewindow
    .gossipoption 45306 >>Sigue la Flecha
    .timer 21,Omnuron "Roleplay"
step
    #requires CleansingTheMotherTreeB
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,59.51,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Señor del Cielo Omnuron|r.
    .scenario 2259,1 --Find out what happened from Skylord Omnuron.
    .target Señor del Cielo Omnuron
    .skipgossipid 45306
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    --.goto 198/1,-349880.01465,493840.00000
    .goto 198,60.52,44.54
    >>Sana a |cRXP_FRIENDLY_Celestina de la Cosecha|r.
    .scenario 2269,2 --Heal Celestine to full health.
    .target Celestina de la Cosecha
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,61.68,43.60
    >>Sana al |cRXP_FRIENDLY_Archidruida Hamuul Tótem de Runah|r.
    .scenario 2269,1 --Heal Hamuul to full health.
    .target Archidruida Hamuul Tótem de Runa
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.70,41.85
    >>Usa |T236288:0|t[Cura de la Naturaleza] en |cRXP_FRIENDLY_Zen'tabra|r.
    .scenario 2269,3 --Cleanse Zen'tabra.
    .target Zen'tabra
    .macro Nature's Cure,236288 >>Cura de la Naturaleza
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #hidewindow
    #completewith next
    .gossipoption 45261 >>Sigue la Flecha
    .timer 6,Roleplay breve
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .goto 198,60.24,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyessa Florvigía|r.
    .scenario 2270,1 --Speak to Lyessa.
    .timer 180,Duración del combate
    .target Lyessa Bloomwatcher
    .skipgossipid 45261
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.31,42.76
    >>|cRXP_WARN_Sana a tus aliados durante ~3 minutos|r.
    .scenario 2272,1 --1
    .scenario 2272,2 --Lyessa Must Survive
    .skipgossipid 45138
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,25.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Lyessa Florvigía|r.
    .scenario 2325,1 --Give Corrupted G'Hanir to Lyessa.
    .target Lyessa Bloomwatcher
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Espera al "roleplay"|r.
    .scenario 2325,2 --Witness G'Hanir's rebirth.
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_G'Hanir|r.
    .scenario 2372,1 --Wield G'Hanir, the Mother Tree.
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>Usa |T1115592:0|t[Llamada del Árbol Madre] |cRXP_WARN_en el registro de misiones debajo de tu minimapa|r.
    .scenario 2274,1 --Call upon the souls of the forest.
    .timer 15,Destromath "Roleplay"
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Espera al roleplay|r.
    .scenario 2274,2 --Eliminate Destromath.
step
    #completewith CleansingTheMotherTreeE
    #label CleansingTheMotherTreeC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyessa Florvigía|r.
    .turnin 41689 >>Entrega la misión Purificando al Árbol Madre
    .target Lyessa Bloomwatcher
step
    .zoneskip 198,1
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeD
    .goto 198,59.05,43.52
    .zone 715 >>Entra en el portal hacia la Senda del Sueño Esmeralda
step
    #requires CleansingTheMotherTreeD
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeF
    .zone 715 >>Usa el |T135763:0|t[Caminasueños]
step
    .zoneskip 715,1
    #requires CleansingTheMotherTreeF
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeE
    .goto 715,45.60,23.46
    .zone 747 >>Entra en el portal hacia La Arboleda de los Sueños
step
    #requires CleansingTheMotherTreeC
    .goto 747,45.20,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyessa Florvigía|r.
    .turnin 41689 >>Entrega la misión Purificando al Árbol Madre
    .target Lyessa Bloomwatcher
]])
--Balance 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Druida Equilibrio
#displayname Arma artefacto: Equilibrio
#next ac) Sede de la clase de Druida - Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arma artefacto: Druida Equilibrio
]])
--Feral 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Druida Feral
#displayname Arma artefacto: Feral
#next ac) Sede de la clase de Druida - Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arma artefacto: Druida Feral
]])
--Guardian 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Druida Guardián
#displayname Arma artefacto: Guardián
#next ac) Sede de la clase de Druida - Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arma artefacto: Druida Guardián
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Druida Restauración
#displayname Artefacto Arma: Restauración
#next ac) Sala de orden Druida Parte 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arma artefacto: Druida Restauración
]])

--Druid Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sala de orden Druida Parte 1
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next ac) Sala de orden Druida
#chapter
#internal

<< Druid

step
    #completewith Making Trails2
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rensar Granzuña|r
    .accept 40646 >>Acepta la misión Armas legendarias
    .target Rensar Granzuña
step
    .isQuestAvailable 40646
    .isQuestAvailable account,91955
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_IMPORTANTE: Selecciona el que ya tienes para obtener un 10% adicional de xp (solo una vez)|r
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Balance Druid >> Equilibrio(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Feral Druid >> Feral(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Guardian Druid >> Guardián(Tanque) Cadena de misiones
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Restoration Druid >> Restauración(Sanador) Cadena de misiones
step
    #include ac) Order Hall Druid Part 2@Sowing The Seed-Making Trails
step
    .zoneskip 747,1
    .goto 747,56.51,43.15
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
]])

-- --------- Hunter ---------

--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Maestría de bestias
#displayname Artefacto Arma: Maestría de bestias
#next a) Sede de clase Cazador Parte 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 44366 >>Acepta la misión Una última aventura
    .target Emmarel Velasombra
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto escogerá automáticamente el artefacto Maestría de bestias|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390106
    .target Emmarel Velasombra
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 44366 >>Entrega la misión Una última aventura
    .target Emmarel Velasombra
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 44043 >>Acepta la misión Continuando la leyenda
    .target Emmarel Velasombra
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto escogerá automáticamente el artefacto Maestría de bestias|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390106
    .target Emmarel Velasombra
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 44043 >>Entrega la misión Continuando la leyenda
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 40618 >>Acepta la misión Armas legendarias
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto escogerá automáticamente el artefacto Maestría de bestias|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390106
    .target Emmarel Velasombra
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40618 >>Entrega la misión Armas legendarias
    .target Emmarel Velasombra
step
    #completewith Beastly Expedition
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 41541 >>Acepta la misión Una expedición horrorosa
    .target Emmarel Velasombra
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 41541 >>Acepta la misión Una expedición horrorosa
    .target Emmarel Velasombra
step
    .isQuestTurnedIn 40959
    .isOnQuest 41541
    .goto 739,48.66,43.46
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
step
    #label Beastly Expedition
    .goto 627,71.39,50.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r.
    .turnin 41541 >>Entrega la misión Una expedición horrorosa
    .accept 41574 >>Acepta la misión Protagonismo robado
    .target Grif Corazón Salvaje
step
    #completewith next
    #hidewindow
    .vehicle 106236 >>Sigue la Flecha
    .timer 65,Duración del Vuelo
step
    .goto 627,71.22,51.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Huey|r.
    .complete 41574,1 --1/1 Fly with Grif to Shield's Rest
    .target Huey
step
    #completewith next
    #hidewindow
    .goto 634,85.40,9.66
    .gossipoption 45594 >>Sigue la Flecha
    .timer 71,Roleplay de Grif
step
    .goto 634,84.90,9.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r.
    .scenario 2291,1 --1/1 Meet Prustaga with Grif.
    .target Grif Corazón Salvaje
    .skipgossipid 45594
step
    #title |cFFFCDC00Esquiva los pequeños tornados|r
    .isInScenario 1068
    .goto 635,75.26,58.95,10,0
    .goto 635,52.67,52.30
    >>|cRXP_WARN_Sigue la flecha hasta la tumba.|r
    >>Mata a |cRXP_ENEMY_Ingrida Tejetormenta|r y a |cRXP_ENEMY_Creador de vientos espectral|r.
    .scenario 2300,1 --Find Warlord Volund's tomb.
    .mob Stormweaver Ingrida
    .mob Spectral Windshaper
step
    .isInScenario 1068
    .goto 635,55.02,43.84
    >>Mata a las oleadas de |cRXP_ENEMY_Guardias de tumba inquieto|r y de |cRXP_ENEMY_Rastreadores perturbados|r.
    .scenario 2301,1 --Protect Prustaga as she opens Volund's tomb.
    .timer 131,Duración del Roleplay
    .mob Restless Tombguard
    .mob Disturbed Tracker
    .mob Disturbed Worg
step
    .isInScenario 1068
    .goto 635,58.06,19.20
    >>Mata al |cRXP_ENEMY_Triturador autómata|r. |cRXP_WARN_Espera al "roleplay".|r
    .scenario 2298,1 --Search for Titanstrike.
    .mob Automated Crusher
step
    .isInScenario 1068
    .goto 635,58.27,17.73
    >>Mata al |cRXP_ENEMY_Señor de la Guerra Volund|r. |cRXP_WARN_Espera al "roleplay".|r
    .scenario 2423,1 --Defeat Warlord Volund.
    .mob Warlord Volund
step
    .isInScenario 1068
    .goto 635,58.25,17.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Teleportation Pad|r.
    .scenario 2424,1 --Join Keeper Mimiron in Ulduar.
    .complete 41574,2 --Track down Titanstrike: 1/1
step
    #title |cFFFCDC00Evita las bombas|r
    .goto 745,44.93,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mimiron|r.
    .turnin 41574 >>Entrega la misión Protagonismo robado
    .accept 42158 >>Acepta la misión El taller del creador
    .target Mimiron
step
    #completewith TheCreatorsWorkshopI
    #label TheCreatorsWorkshopA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopB
    .goto 745,44.93,37.33
    .gossipoption 45357 >>Habla con |cRXP_FRIENDLY_Mimiron|r.
    .timer 50,Primera Emergencia
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Panel de control (1/2)
    #requires TheCreatorsWorkshopB
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopC
    #title Salto sobre las olas
    .goto 745,40.46,41.42
    .cast 6477 >>Haz clic en el |cRXP_PICK_Panel de control|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Panel de control (2/2)
    #requires TheCreatorsWorkshopC
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopD
    #title Salta sobre las olas
    #loop
    .goto 745,40.46,41.42,8,0
    .goto 745,41.44,44.14,8,0
    .cast 6477 >>Haz clic en el |cRXP_PICK_Panel de control|r.
    .timer 14,Segunda Emergencia
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de estabilización (1/4)
    #requires TheCreatorsWorkshopD
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopE
    .goto 745,45.50,43.96
    .cast 6477 >>Haz clic en el |cRXP_PICK_Nodo de matriz de estabilización|r.
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
    #title Nodo de estabilización (2/4)
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopF
    .cast 6477 >>Haz clic en el |cRXP_PICK_Nodo de matriz de estabilización|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de estabilización (3/4)
    #requires TheCreatorsWorkshopF
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopG
    .cast 6477 >>Haz clic en el |cRXP_PICK_Nodo de matriz de estabilización|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nodo de estabilización (4/4)
    #requires TheCreatorsWorkshopG
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopH
    .cast 6477 >>Haz clic en el |cRXP_PICK_Nodo de matriz de estabilización|r.
    .timer 25,Última Emergencia
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #requires TheCreatorsWorkshopH
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopI
    .goto 745,43.65,36.37
    .cast 6477 >>Haz clic en |cRXP_PICK_¡NO PULSES ESTE BOTÓN!|r.
    .timer 27,Misión completada en
step
    #requires TheCreatorsWorkshopA
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
    .skipgossipid 45357
step
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mimiron|r.
    .turnin 42158 >>Entrega la misión El taller del creador
    .accept 42185 >>Acepta la misión Nunca vayas de cacería a solas
    .target Mimiron
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .zoneskip 745,1
    .goto 745,43.73,37.94
    .zone 120 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Plataforma de teletransporte|r.
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .goto 120,25.73,47.51
    .enterScenario 1099 >>Vuela a la gesta |cRXP_PICK_Nunca vayas de cacería a solas|r.
    .timer 33,Roleplay
step
    .isInScenario 1099
    #title Muévete una vez para iniciar el diálogo
    .goto 120,25.78,47.70
    >>|cRXP_WARN_Espera al "roleplay".|r
    .scenario 2452,1 --Converse with Thorim.
step
    .isInScenario 1099
    .goto 120,25.90,48.55
    >>Mata a los |cRXP_ENEMY_Protodracos estruendosos|r y |cRXP_ENEMY_Clamatormentas ferviente|r.
    .scenario 2474,1 --Fend off the vrykul horde.
    .mob Thunderous Proto-Drake
    .mob Fervant Stormcaller
step
    .goto 120,25.74,47.38
    .isInScenario 1099
    >>Mata a |cRXP_ENEMY_Prustuga|r.
    .scenario 2480,1 --Defeat Prustaga.
    .timer 73,Roleplay
    .mob Prustaga
step
    .isInScenario 1099
    .goto 120,25.74,47.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Hati|r.
    .scenario 2481,1 --Bind Hati's spirit to your own.
    .target Hati
step
    .isInScenario 1099
    .goto 120,25.74,47.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Titánica|r.
    .scenario 2482,1 --Wield Titanstrike.
    .complete 42185,2 --1/1 Titanstrike recovered
    .timer 65,Espera a Huey
step
    .isInScenario 1099
    .goto 120,26.05,47.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Huey|r después del "roleplay".
    .scenario 2483,1 --Ride Huey to return to Dalaran.
    .timer 36,Duración del Vuelo
step
    .isQuestTurnedIn 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r.
    .turnin 42185 >>Entrega la misión Nunca vayas de cacería a solas
    .target Grif Corazón Salvaje
step
    .isQuestAvailable 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r.
    .turnin 42185 >>Entrega la misión Nunca vayas de cacería a solas
    .accept 41009 >>Acepta la misión De cazador a cazador
    .target Grif Corazón Salvaje
step
    .isQuestAvailable 40959
    #completewith next
    #label HunterToHunterBMA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 41009 >>Entrega la misión De cazador a cazador
    .target Emmarel Velasombra
step
    .isQuestAvailable 40959
    #title |cRXP_WARN_Entra en la Casa|r
    #completewith HunterToHunterBMA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Sigue la flecha hacia el interior de la casa.|r
step
    .isQuestAvailable 40959
    #requires HunterToHunterBMA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 41009 >>Entrega la misión De cazador a cazador
    .target Emmarel Velasombra
]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Puntería
#displayname Arma artefacto: Puntería
#next a) Sede de clase Cazador Parte 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 44366 >>Acepta la misión Una última aventura
    .target Emmarel Velasombra
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Puntería|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390107
    .target Emmarel Velasombra
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 44366 >>Entrega la misión Una última aventura
    .target Emmarel Velasombra
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 44043 >>Acepta la misión Continuando la leyenda
    .target Emmarel Velasombra
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Puntería|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390107
    .target Emmarel Velasombra
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 44043 >>Entrega la misión Continuando la leyenda
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 40618 >>Acepta la misión Armas legendarias
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Puntería|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390107
    .target Emmarel Velasombra
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40618 >>Entrega la misión Armas legendarias
    .target Emmarel Velasombra
step
    #completewith RendezvousWithTheCourierA
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 41540 >>Acepta la misión Encuentro con el mensajero
    .target Emmarel Velasombra
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 41540 >>Acepta la misión Encuentro con el mensajero
    .target Emmarel Velasombra
step
    .isQuestTurnedIn 40959
    .isOnQuest 41540
    .goto 739,48.66,43.46
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
step
    #completewith next
    #label RendezvousWithTheCourierA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mensajero Consuelda|r.
    .turnin 41540 >>Entrega la misión Encuentro con el mensajero
    .accept 40392 >>Acepta la misión El llamado del tirador
    .target Mensajero Consuelda
step
    .isQuestAvailable 40959
    .zoneskip 627,1
    #title |cFFFCDC00Abandona la casa|r
    #completewith RendezvousWithTheCourierA
    .goto 627,58.58,51.30,8 >>|cRXP_WARN_Sigue la flecha fuera de la casa.|r
step
    #requires RendezvousWithTheCourierA
    .goto 627,71.43,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Mensajero Consuelda|r.
    .turnin 41540 >>Entrega la misión Encuentro con el mensajero
    .target Mensajero Consuelda
    .accept 40392 >>Acepta la misión El llamado del tirador
step
    .goto 646,32.28,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .complete 40392,2 --1/1 Speak to Vereesa Windrunner
    .target Vereesa Brisaveloz
step
    .convertquest 40402,40400 << Alliance
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .turnin 40392 >>Entrega la misión El llamado del tirador
    .accept 40402 >>Acepta la misión Operación clandestina
    .target Vereesa Brisaveloz
step
    #completewith next
    #hidewindow
    .gossipoption 47259 >>Sigue la Flecha
    .timer 56,Vereesa Roleplay
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .complete 40402,1 --1/1 Listen to Vereesa Windrunner
    .target Vereesa Brisaveloz
    .skipgossipid 47259
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .turnin 40402 >>Entrega la misión Operación clandestina
    .accept 40419 >>Acepta la misión "Misión de rescate"
    .target Vereesa Brisaveloz
step
    #completewith next
    #hidewindow
    .gossipoption 47260 >>Sigue la Flecha
    .timer 14,Vereesa Roleplay
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .complete 40419,1 --1/1 Speak to Vereesa and begin the mission
    .target Vereesa Brisaveloz
    .skipgossipid 47260
step
    .isOnQuest 40419
    .goto 646,32.06,31.98
    .enterScenario 972 >>Ve a través del portal para entrar en el escenario |cRXP_PICK_Legado de los Windrunners|r.
step
    .goto 714,16.33,52.95
    >>|cRXP_WARN_Sigue la flecha.|r
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
    >>Mata a los |cRXP_ENEMY_Eredar Portal Lords|r.
    .scenario 2000,1 --Eliminate the demon summoners to close the portal.
    .timer 12,Espera el Roleplay
    .mob Eredar Portal Lord
step
    .isInScenario 972
    .goto 714,38.84,45.41
    >>Mata a los |cRXP_ENEMY_demonios|r en el camino para abrir paso a |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .scenario 2001,1 --Advance into Legion territory and look for Alleria and Orestes.
step
    .isInScenario 972
    .goto 714,40.57,45.66
    >>Mata a la |cRXP_ENEMY_Mistress Torvis|r y |cRXP_WARN_espera el Roleplay|r.
    .scenario 2002,1 --Eliminate Mistress Torvis and save Orestes.
step
    .isInScenario 972
    .goto 714,41.13,54.04,25,0
    .goto 714,50.07,57.89
    >>Mata al |cRXP_ENEMY_Heraldo Xarbizuld|r.
    .scenario 2017,1 --Enter the cathedral and defeat Herald Xarbizuld.
    .mob Herald Xarbizuld
step
    .isInScenario 972
    .goto 714,64.28,60.03
    >>Mata al |cRXP_ENEMY_Alto Inquisidor Qormaladon|r y a los |cRXP_ENEMY_Gazes of Qormaladon|r.
    .scenario 2063,1 --Defeat High Inquisitor Qormaladon and his eyes
    .mob Fiery Gaze of Qormaladon
    .mob Icy Gaze of Qormaladon
    .mob High Inquisitor Qormaladon
step
    #completewith next
    #hidewindow
    .goto 714,69.98,59.65,20,0
    .goto 714,71.47,73.66,20 >>Sigue la Flecha
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 2255,1 --Help Vereesa search the Inquisitor's overlook for Alleria.
    .complete 40419,3 --1/1 Rescue Alleria Windrunner
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Thas'dorah, Legado de los Brisaveloz|r.
    .scenario 2061,1 --Pick up Thas'dorah, Legacy of the Windrunners.
    .complete 40419,4 --1/1 Take Thas'dorah (Optional)
    .timer 8,Roleplay
step
    .goto 714,70.91,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa y abandona Niskara|r.
    .complete 40419,5 --1/1 Talk to Vereesa and leave Niskara
    .target Vereesa and leave Niskara
    .skipgossipid 45238
step
    .goto 627,66.03,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vereesa Brisaveloz|r.
    .turnin 40419 >>Entrega la misión "Misión de rescate"
    .accept 40952 >>Acepta la misión De cazador a cazador
    .target Vereesa Brisaveloz
step
    #completewith next
    #label HunterToHunterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40952 >>Entrega la misión De cazador a cazador
    .target Emmarel Velasombra
step
    #title |cRXP_WARN_Entra en la casa|r
    #completewith HunterToHunterA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Sigue la flecha hacia el interior de la casa.|r
step
    #requires HunterToHunterA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40952 >>Entrega la misión De cazador a cazador
    .target Emmarel Velasombra
]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Supervivencia
#displayname Artefacto Arma: Supervivencia
#next a) Sede de clase Cazador Parte 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 44366 >>Acepta la misión Una última aventura
    .target Emmarel Velasombra
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Supervivencia|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390108
    .target Emmarel Velasombra
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 44366 >>Entrega la misión Una última aventura
    .target Emmarel Velasombra
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 44043 >>Acepta la misión Continuando la leyenda
    .target Emmarel Velasombra
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Supervivencia|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390108
    .target Emmarel Velasombra
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 44043 >>Entrega la misión Continuando la leyenda
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 40618 >>Acepta la misión Armas legendarias
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    *|cRXP_WARN_Se seleccionará automáticamente el artefacto de Supervivencia|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390108
    .target Emmarel Velasombra
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40618 >>Entrega la misión Armas legendarias
    .target Emmarel Velasombra
step
    #completewith Preparation for the Hunt
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 41542 >>Acepta la misión Preparativos para la cacería
    .target Emmarel Velasombra
step
    .goto 627,60.04,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 41542 >>Acepta la misión Preparativos para la cacería
    .target Emmarel Velasombra
step
    .isQuestTurnedIn 40959
    .isOnQuest 41542
    .goto 739,48.66,43.46
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
step
    #label Preparation for the Hunt
    .goto 627,71.11,50.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Apata Altamontaña|r.
    .turnin 41542 >>Entrega la misión Preparativos para la cacería
    .accept 39427 >>Acepta la misión La bendición del Espíritu de águila.
    .target Apata Altamontaña
step
    .goto 627,71.74,50.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_FRIENDLY_Hipogrifo de Altamontaña|r.
    .complete 39427,1 --1/1 Fly to Spiritwatch Point
    .target Highmountain Hippogryph
    --.timer 107,Flight Duration
step
    .goto 650,59.53,81.22
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 39427,2 --1/1 Get back to Spiritwatch Point
step
    .goto 650,58.91,81.14
    >>Mata a |cRXP_ENEMY_Degar Tótem de Sangre|r.
    .complete 39427,3 --1/1 Kill Degar Bloodtotem
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Ohn'ahra|r.
    .complete 39427,4 --1/1 Receive the Eagle Spirit's blessing
    .target Ohn'ahra
step
    .goto 650,60.79,80.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Apata Altamontaña|r.
    .turnin 39427 >>Entrega la misión La bendición del Espíritu de águila.
    .accept 40385 >>Acepta la misión La lanza en las sombras
    .target Apata Altamontaña
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Ohn'ahra|r.
    .complete 40385,1 --1/1 Take the Eagle Spirit flight to the harbor
    .target Ohn'ahra
step
    .isOnQuest 40385
    .goto 650,60.82,80.83
    .enterScenario 973 >>Entra en |cRXP_PICK_La lanza en las sombras|r.
step
    #completewith next
    #hidewindow
    .gossipoption 45080 >>Sigue la Flecha
    .timer 27,Apata "Roleplay"
step
    .isInScenario 973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Apata en el punto de aterrizaje.|r.
    .scenario 1965,1 --Speak with Apata at the landing site.
    .target Apata at the landing site.
    .skipgossipid 45080
step
    .isInScenario 973
    .goto 694,56.83,46.24
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 1967,1 --Investigate Tideskorn Harbor
step
    .isInScenario 973
    .goto 634,57.51,46.48
    >>Mata al |cRXP_ENEMY_Custodio de la niebla|r o usa tu |T135834:0|t[Trampa congelante] en el |cRXP_ENEMY_Custodio de la niebla|r.
    .scenario 1968,1 --Defeat the Mist Warder using your Freezing Trap.
    .mob Mist Warder
    .usespell 187650
step
    .isInScenario 973
    .goto 634,57.61,46.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Piedra de resguardo rúnica|r.
    .scenario 2055,1 --Obtain the Activated Wardstone
step
    .isInScenario 973
    #title Piedra de resguardo (1/3)
    .goto 634,58.96,46.69,24,0
    .goto 634,58.80,44.93
    >>Mata al |cRXP_ENEMY_Custodio de la niebla|r o usa tu |T135834:0|t[Trampa congelante] en el |cRXP_ENEMY_Custodio de la niebla|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Piedra de resguardo rúnica|r.
    *|cRXP_WARN_NOTA:|r El orden está predefinido. Si haces la misión en un orden diferente, las indicaciones de la ruta serán incorrectas.
    .scenario 1969,1,1 --1/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Piedra de resguardo (2/3)
    .goto 634,58.62,43.48
    >>Mata al |cRXP_ENEMY_Custodio de la niebla|r o usa tu |T135834:0|t[Trampa congelante] en el |cRXP_ENEMY_Custodio de la niebla|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Piedra de resguardo rúnica|r.
    *|cRXP_WARN_NOTA:|r El orden está predefinido. Si haces la misión en un orden diferente, las indicaciones de la ruta serán incorrectas.
    .scenario 1969,1,2 --2/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Piedra de resguardo (3/3)
    .goto 634,60.01,43.75
    >>Mata al |cRXP_ENEMY_Custodio de la niebla|r o usa tu |T135834:0|t[Trampa congelante] en el |cRXP_ENEMY_Custodio de la niebla|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Piedra de resguardo rúnica|r.
    *|cRXP_WARN_NOTA:|r El orden está predefinido. Si haces la misión en un orden diferente, las indicaciones de la ruta serán incorrectas.
    .scenario 1969,1 --3/3 Obtain more Activated Wardstones
step
    #completewith next
    #hidewindow
    .gossipoption 44907 >>Sigue la Flecha
    .timer 13,Apata "Roleplay"
step
    .isInScenario 973
    .goto 634,55.32,42.45,-1
    .goto 694,55.32,42.45,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Apata Altamontaña|r.
    .scenario 1970,1 --Speak with Apata
    .target Apata Altamontaña
    .skipgossipid 44906
    .skipgossipid 44907
step
    .isInScenario 973
    .goto 694,55.44,42.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arpón mágico|r.
    .scenario 1971,1 --Use the harpoon to cross the fog.
    .timer 20,Roleplay
step
    .isInScenario 973
    .goto 694,55.95,40.44
    >>Usa |T135815:0|t[Bengala] y mata a los |cRXP_ENEMY_Acechadores ilusorios|r.
    .scenario 1976,1 --Use Flare to reveal and defeat the illusions.
    .mob Illusory Stalker
    .usespell 1543
step
    .isInScenario 973
    .goto 694,54.91,39.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Trampa de niebla|r.
    >>Mata a los |cRXP_ENEMY_Acechadores ilusorios|r y a |cRXP_ENEMY_Dakarr|r.
    .scenario 1977,1 --Place a trap in the mists to catch Dakarr.
    .mob Dakarr
    .mob Illusory Stalker
step
    .isInScenario 973
    .goto 694,57.40,37.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Trampa de niebla|r.
    >>Mata a los |cRXP_ENEMY_Acechadores ilusorios|r y a |cRXP_ENEMY_Dakarr|r.
    .scenario 1985,1 --Trap Dakarr in the mist lair.
    .mob Dakarr
    .mob Illusory Stalker
step
    #completewith next
    #label SlayDakarrA
    .isInScenario 973
    >>Mata a |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    #title |cFFFCDC00Entra en la cueva|r
    #completewith SlayDakarrA
    .goto 694,57.88,34.53,8 >>|cRXP_WARN_Sigue la flecha hacia el interior de la cueva.|r
step
    #requires SlayDakarrA
    .isInScenario 973
    .goto 694,58.52,33.73
    >>Mata a |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    .isInScenario 973
    .goto 694,58.49,33.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Garfa Corva|r.
    .scenario 1987,1 --Take Talonclaw.
    .complete 40385,2 --1/1 Slay the Highmountain's Bane and reclaim Talonclaw
step
    .goto 694,58.58,33.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal a Dalaran|r.
    .complete 40385,3 --1/1 Return to Dalaran
step
    #completewith next
    #label TheSpearInTheShadowA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40385 >>Entrega la misión La lanza en las sombras
    .target Emmarel Velasombra
step
    #title |cRXP_WARN_Entra en la Casa|r
    #completewith TheSpearInTheShadowA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Sigue la flecha hacia el interior de la casa.|r
step
    #requires TheSpearInTheShadowA
    .goto 627,60.05,53.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .turnin 40385 >>Entrega la misión La lanza en las sombras
    .target Emmarel Velasombra
]])
--Beast Mastery 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma artefacto: Bestias
#displayname Arma artefacto: Bestias
#next ac) Sede de clase Cazador Parte 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Maestría de bestias
]])
--Marksmanship 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma artefacto: Puntería
#displayname Arma artefacto: Puntería
#next ac) Sede de clase Cazador Parte 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Arma artefacto: Puntería
]])
--Survival 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma artefacto: Supervivencia
#displayname Arma artefacto: Supervivencia
#next ac) Sede de clase Cazador Parte 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Supervivencia
]])

--Hunter Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sede de clase Cazador Parte 1
#displayname |cFF00CCFF1|r - Introducción a la sede de clase|r
#next ac) Sala de orden del Cazador
#chapter
#internal

<< Hunter

step
    #completewith The Campaign Begins2
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Emmarel Velasombra|r.
    .accept 40618 >>Acepta la misión Armas legendarias
    .target Emmarel Velasombra
step
    .isQuestAvailable 40618
    .isQuestAvailable account,91955
    .goto 627,60.03,53.41
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_IMPORTANTE: Selecciona el que ya tienes para obtener un 10% adicional de xp (solo una vez)|r
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery >> Cadena de misiones de Bestias (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Marksmanship >> Cadena de misiones de Puntería (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Survival >> Cadena de misiones de Supervivencia (DPS)
step
    #include ac) Order Hall Hunter Part 2@Eagle's Wings-The Campaign Begins
step
    .zoneskip 739,1
    .goto 739,48.63,43.48
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
]])

-- --------- Mage ---------

--Arcane
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Arcano
#displayname Arma artefacto: Arcano
#next a) Sede de clase de Mago Parte 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Arcane
    #hidewindow
    +prueba
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
    .zone 734 >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
    .usespell 193759
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 44310 >>Acepta la misión Tres veces más poder
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .turnin 44310 >>Entrega la misión Tres veces más poder
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .accept 43441 >>Acepta la misión Una segunda arma
    .target Meryl Tormenta Vil
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 43441 >>Entrega la misión Una segunda arma
    .target Meryl Tormenta Vil
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 41085 >>Acepta la misión El arma de un mago
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Libro|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .turnin 41085 >>Entrega la misión El arma de un mago
step
    #completewith Wyrmrest Temple
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 42001 >>Acepta la misión Aluneth, Gran Bastón de Magna
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 42001 >>Acepta la misión Aluneth, Gran Bastón de Magna
step
    .isQuestAvailable 41113
    .goto 735,62.48,51.16
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .usespell 224869
step
    .isQuestTurnedIn 41113
    .goto 734,57.36,90.36
    .zone 627 >>Usa |T1535374:0|t[Teletransporte: Dalaran - Islas Quebradas] o |TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .usespell 224869
step
    #requires Greatstaff of the Magna
    .goto 627,28.54,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Kalec|r
    .turnin 42001 >>Entrega la misión Aluneth, Gran Bastón de Magna
    .target Archimago Kalec
    .accept 42006 >>Acepta la misión Una nueva amenaza
step
    #completewith next
    #label Wyrmrest Temple
    .goto 627,46.37,53.12,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #completewith Wyrmrest Temple
    .goto 627,49.47,47.22,10 >>Ve al centro de Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.71,84.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    .goto 115,56.01,65.92
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42006,2 --1/1 Travel to the Azure Dragonshrine
step
    .goto 115,56.4,65.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Pista|r
    .complete 42006,3,1 --3/3 Clues Found
step
    .goto 115,56.29,66.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Pista|r
    .complete 42006,3,2 --3/3 Clues Found
step
    .goto 115,56.04,67.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Pista|r
    .complete 42006,3,3 --3/3 Clues Found
step
    .goto 115,56.69,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Dispositivo|r
    .turnin 42006 >>Entrega la misión Una nueva amenaza
    .accept 42007 >>Acepta la misión Un enemigo olvidado
step
    #completewith next
    #label Communication Device
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    #completewith Communication Device
    .goto 115,56.66,69.11
    .cast 3365 >>Haz clic en el |cRXP_PICK_Dispositivo de comunicación|r
    .timer 26,RP
step
    #requires Communication Device
    .goto 115,56.66,69.11
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42007 >>Entrega la misión Un enemigo olvidado
    .accept 42008 >>Acepta la misión Ojos del dragón
step
    #completewith next
    #label Nexus spire
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42008,1 --1/1 Nexus spire scouted
step
    #completewith Nexus spire
    .cast 311678 >>Usa el |T254294:0|t[Pergamino de teletransporte al Nexo]
    .use 173430
step
    #requires Nexus spire
    .goto 114,29.02,28.45
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42008,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.29,28.47
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42008,2 --1/1 Surge Needle scouted
step
    .goto 114,29.02,27.16
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42008,3 --1/1 Nexus foundation scouted
step
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42008 >>Entrega la misión Ojos del dragón
    .accept 42009 >>Acepta la misión Controlando la energía arcana
step
    #loop
    .goto 114,29.2,25.94,35,0
    .goto 114,28.08,24.32,35,0
    .goto 114,26.5,24.85,35,0
    .goto 114,26.02,27.6,35,0
    .goto 114,27.11,29.21,35,0
    >>Mata al |cRXP_ENEMY_Arcano aberrante|r para llenar la barra.
    .complete 42009,1 --1/1 Empowered with Unstable Arcane Energy
    .mob Arcane Aberrant
    .mob Arcane Aberrant
step
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42009 >>Entrega la misión Controlando la energía arcana
    .accept 42010 >>Acepta la misión Energía arcana liberada
step
    .goto 114,27.32,20.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Vacío concentrado|r
    .complete 42010,3 --1/1 North Surge Needle destroyed
step
    .goto 114,32.71,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Vacío concentrado|r
    .complete 42010,1 --1/1 East Surge Needle destroyed
step
    .goto 114,24.14,29.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Vacío concentrado|r
    .complete 42010,2 --1/1 West Surge Needle destroyed
step
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42010 >>Entrega la misión Energía arcana liberada
    .accept 42011 >>Acepta la misión La bóveda del Nexo
step
    .isOnQuest 42011
    .goto 114,27.52,26.16
    .enterScenario 1101 >>Entra en El Nexo
step
    #loop
    .goto 736,36.1,69.38,15,0
    .goto 736,35.24,66.21,15,0
    .goto 736,37.45,66.22,15,0
    .isInScenario 1101
    >>Mata a los |cRXP_ENEMY_Scions|r
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
    #title |cFFFCDC00Sigue la Flecha|r
    >>Usa |T135739:0|t[Resplandecer] o |T135736:0|t[Traslación] a través de las Barreras o salta de espaldas hacia ellas para atravesarlas.
    .usespell 1953
    .scenario 2467,1 --Reach the Librarium
    .timer 44,RP
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2467,2 --Find a way into the vault
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>Mata al |cRXP_ENEMY_Eco de Aluneth|r
    .scenario 2468,1 --Echo of Aluneth defeated
    .mob Echo of Aluneth
step
    #completewith next
    #label Reach the Rift
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith Reach the Rift
    .isInScenario 1101
    .goto 736,26.92,25.76,15,0
    .goto 736,31.06,22.83,15 >>Sigue la flecha, luego espera a que aparezca |cRXP_FRIENDLY_Azuregos|r
    .timer 38,RP
    .target Azuregos
step
    #requires Reach the Rift
    .goto 736,31.06,22.83
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith next
    #label Nexus-Prince Bilaal
    .isInScenario 1101
    >>Mata al |cRXP_ENEMY_Príncipe del Nexo Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith Nexus-Prince Bilaal
    .isInScenario 1101
    .goto 736,31.32,22.37
    *|cRXP_WARN_Espera a que aparezca|r |cRXP_FRIENDLY_Azuregos|r|cRXP_WARN_|r.
    .vehicle >>Haz clic en |cRXP_PICK_Azuregos|r
    .timer 35,RP
    .target Azuregos
step
    #requires Nexus-Prince Bilaal
    .goto 736,59.19,20.4
    .isInScenario 1101
    >>Mata al |cRXP_ENEMY_Príncipe del Nexo Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .timer 28,RP
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    *Usa el |cRXP_WARN_|T237448:0|t[Botón de acción extra]|r dentro de los campos mágicos morados.
    *|cRXP_WARN_Ten cuidado con las burbujas flotantes, ya que te repelen|r.
    .scenario 2471,1 --Place the First Scroll of Meitre
    .scenario 2471,2 --Place the Second Scroll of Meitre
    .scenario 2471,3 --Place the Third Scroll of Meitre
    .usespell 225025
step
    .isInScenario 1101
    #label Artifact Weapon: Arcane
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r del medio.
    .complete 42011,2 --1/1 Aluneth
step
    #completewith next
    #label Nexus Vault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Kalec|r
    .turnin 42011 >>Entrega la misión La bóveda del Nexo
    .target Archimago Kalec
    .accept 41114 >>Acepta la misión El regreso del campeón
    .disablecheckbox
step
    #completewith Nexus Vault
    .zoneskip 627
    .zone 627 >>Entra en Dalaran (revisa tus teletransportes)
    .usespell 224869
    .usespell 193759
step
    #requires Nexus Vault
    .goto 627,28.62,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Kalec|r dentro de la Ciudadela Violeta.
    .turnin 42011 >>Entrega la misión La bóveda del Nexo
    .timer 10,RP
    .target Archimago Kalec
]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Fuego
#displayname Arma artefacto: Fuego
#next a) Sede de clase de Mago Parte 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Fire
    #hidewindow
    +prueba
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
    .zone 734 >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 44310 >>Acepta la misión Tres veces más poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .turnin 44310 >>Entrega la misión Tres veces más poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .accept 43441 >>Acepta la misión Una segunda arma
    .target Meryl Tormenta Vil
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 43441 >>Entrega la misión Una segunda arma
    .target Meryl Tormenta Vil
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 41085 >>Acepta la misión El arma de un mago
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Libro|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .turnin 41085 >>Entrega la misión El arma de un mago
step
    #completewith Crystal's Message
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 40267 >>Acepta la misión Un mensaje inesperado
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 40267 >>Acepta la misión Un mensaje inesperado
step
    #completewith next
    #hidewindow
    #label Crystal's Message
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #completewith Crystal's Message
    .cast 195264 >>Usa |T132776:0|t[Cristal resplandeciente brillante]
    .timer 40,RP
    .use 130131
step
    #requires Crystal's Message
    #completewith next
    #label Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,54.59,55.34,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Acepta la misión El naranja es el nuevo violeta
    .turnin 44240 >>Entrega la misión El naranja es el nuevo violeta
    .target Jackson Watkins
step
    #requires Crystal's Message
    #completewith Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.66,57.89,40 >>Sigue la Flecha
step
    #requires Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.54,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Acepta la misión El naranja es el nuevo violeta
    .turnin 44240 >>Entrega la misión El naranja es el nuevo violeta
    .target Jackson Watkins
step
    #requires Crystal's Message
    .isQuestTurnedIn 41113
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 735,55.6,56.06,15,0
    .goto 734,59.95,56.3
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #requires Crystal's Message
    .isQuestAvailable 41113
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 735,62.63,51.41
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    .isQuestAvailable 41113
    .goto 735,62.63,51.41
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    .goto 734,57.31,90.48
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
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
    >>Ve al centro de Dalaran y |TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    #completewith Dalaran Crater
    .goto 734,57.28,90.47
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal|r
step
    #requires Dalaran Crater
    .goto 627,53.13,52.24,10,0
    .goto 627,49.01,47.36,10,0
    .goto 629,36.82,72.57,10,0
    .goto 629,28.76,77.32
    >>Ve al centro de Dalaran y |TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    .goto 25,28.74,37.33
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 40267,2 --1/1 Meet Archmage Modera in Hillsbrad
step
    .goto 25,28.74,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Archimaga Modera|r
    .turnin 40267 >>Entrega la misión Un mensaje inesperado
    .target Archimaga Modera
    .accept 40270 >>Acepta la misión El camino de la redención
    .timer 99,RP
step
    .goto 25,28.74,37.33
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40270,1 --1/1 Discover the location of Felo'melorn
step
    .goto 25,28.73,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aethas Atracasol|r
    .turnin 40270 >>Entrega la misión El camino de la redención
    .target Aethas Atracasol
    .accept 11997 >>Acepta la misión La llama helada
    .timer 12,RP
step
    .goto 25,28.76,37.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 11997,1 --1/1 Mage Portal Taken
step
    .goto 700,76.67,63.89
    .isOnQuest 11997
    >>Mata a los |cRXP_ENEMY_Conjurador hielonato|r esquiva las corrientes de viento
    .scenario 1926,1 --Defeat the Iceborn Conjurer and enter into Icecrown Citadel
    .mob Iceborn Conjurer
step
    .goto 700,76.73,62.14
    .isInScenario 957
    >>Destruye el |cRXP_ENEMY_Muro de escarcha permanente|r
    .scenario 1927,1,1 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,76.08,55.91,10,0
    .goto 700,73.6,54.72
    .isInScenario 957
    >>Destruye el |cRXP_ENEMY_Muro de escarcha permanente|r
    .scenario 1927,1,2 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,62.12,53.59
    .isInScenario 957
    >>Destruye el |cRXP_ENEMY_Muro de escarcha permanente|r
    .scenario 1927,1,3 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,52.47,38.37
    .isInScenario 957
    >>Destruye el |cRXP_ENEMY_Muro de escarcha permanente|r
    .scenario 1927,1,4 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,51.9,29.32
    .isInScenario 957
    >>Mata a las |cRXP_ENEMY_waves|r de enemigos
    .scenario 1928,1 --Defeat waves of enemies
    .mob Exploding Ghoul
    .mob Burning Skeleton
    .mob Charbone
step
    .goto 700,51.84,17.39
    .isInScenario 957
    >>Mata a |cRXP_ENEMY_Lyandra Caminante del Sol|r
    .scenario 1929,1 --Slay Lyandra Sunstrider
    .mob Lyandra Sunstrider
step
    #label Artifact Weapon: Fire
    .goto 700,51.8,16.4
    .isInScenario 957
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Felo'melorn|r
    .scenario 1930,1 --Take Felo'melorn
    .complete 11997,2 --1/1 Obtain Felo'melorn
step
    #completewith next
    #label Frozen Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Archimaga Modera|r
    .turnin 11997 >>Entrega la misión La llama helada
    .target Archimaga Modera
step
    #completewith Frozen Flame
    .goto 700,51.85,18.65
    .zoneskip 627
    .zone 627 >>Entra en Dalaran (Revisa tus Teletransportes)
    .usespell 224869
    .usespell 193759
step
    #requires Frozen Flame
    .goto 627,28.40,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Archimaga Modera|r
    .turnin 11997 >>Entrega la misión La llama helada
    .target Archimaga Modera
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Mago de escarcha
#displayname Arma artefacta: Escarcha
#next a) Sede de clase de Mago Parte 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Frost Mage
    #hidewindow
    +prueba
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
    .zone 734 >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 44310 >>Acepta la misión Tres veces más poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .turnin 44310 >>Entrega la misión Tres veces más poder
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .accept 43441 >>Acepta la misión Una segunda arma
    .target Meryl Tormenta Vil
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 43441 >>Entrega la misión Una segunda arma
    .target Meryl Tormenta Vil
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 41085 >>Acepta la misión El arma de un mago
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Libro|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .turnin 41085 >>Entrega la misión El arma de un mago
step
    #completewith Speak with Meryl
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 42452 >>Acepta la misión En busca de Frío del ébano
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 42452 >>Acepta la misión En busca de Frío del ébano
step
    #loop
    .goto 735,55.14,34.77,5,0
    .goto 735,52.65,41.84,10,0
    .goto 735,66.62,40.84,10,0
    .goto 735,53.89,49.19,10,0
    .goto 735,65.02,49.44,10,0
    .goto 735,66.53,40.82,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Pistas|r
    .complete 42452,1 --3/3 Find information on Arrexis
step
    #completewith next
    #label Speak with Meryl
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42452,2 --1/1 Speak with Meryl
    -- .skipgossipid 46445
step
    #completewith Speak with Meryl
    .isQuestAvailable 41113
    .goto 735,59.12,43.03
    .gossipoption 45566 >>Habla con |cRXP_FRIENDLY_Meryl|r
    .timer 54,RP
    .target Meryl
step
    #completewith Speak with Meryl
    .isQuestTurnedIn 41113
    .goto 735,55.36,38.2
    .gossipoption 46445 >>Habla con |cRXP_FRIENDLY_Meryl|r
    -- .timer 55,RP
    .target Meryl
step
    #requires Speak with Meryl
    .goto 735,59.15,42.94
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42452,2 --1/1 Speak with Meryl
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 42452 >>Entrega la misión En busca de Frío del ébano
    .target Meryl Tormenta Vil
    .accept 42477 >>Acepta la misión Daio el Decrépito
    .accept 42476 >>Acepta la misión Excavación Paso de la Muerte
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 42452 >>Entrega la misión En busca de Frío del ébano
    .target Meryl Tormenta Vil
    .accept 42477 >>Acepta la misión Daio el Decrépito
    .accept 42476 >>Acepta la misión Excavación Paso de la Muerte
step
    .goto 735,60.64,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodi|r
    .accept 42455 >>Acepta la misión Las gemas de Alodi
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
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal|r o Usa |T1535374:0|t[Teletransporte: Dalaran - Islas Quebradas]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestAvailable 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00Sigue la Flecha|r
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
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal|r o Usa |T1535374:0|t[Teletransporte: Dalaran - Islas Quebradas]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestTurnedIn 41113
    #requires Bank of Dalaran2
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    #completewith next
    #label manager
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    #completewith manager
    #loop
    .goto 627,52.42,18.04,10,0
    .goto 627,52.25,14.72,10,0
    .goto 627,50.32,16.94,10,0
    .gossipoption 45770 >>Habla con |cRXP_FRIENDLY_Glutonia|r
    .timer 26,RP
    .target Glutonia
step
    #requires manager
    .goto 627,55.08,16.45
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    .goto 627,55.08,16.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 42455,3 --1/1 Enter Alodi's personal vault
step
    #loop
    .goto 627,50.78,15.72,10,0
    .goto 627,54.31,14.99,10,0
    .goto 627,53.92,18.72,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Gemas|r
    .complete 42455,4 --3/3 Find the Mana Gems
step
    #completewith next
    #hidewindow
    #label Blasted Lands Scroll
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    #completewith Blasted Lands Scroll
    .goto 627,54.22,19.39
    .cast 311800 >>Usa |T254294:0|t[Pergamino de las Tierras Devastadas]
    .use 173699
step
    #requires Blasted Lands Scroll
    .goto 17,32.51,45.14
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    .goto 17,32.51,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daio|r
    .complete 42477,3 --1/1 Speak with Daio
    .timer 15,RP
    .skipgossipid 45996
    .skipgossipid 45997
    .skipgossipid 45998
    .target Daio
step
    #loop
    .goto 17,32.97,44.98,10,0
    .goto 17,32.22,45.76,10,0
    .goto 17,32.77,45.79,10,0
    >>Mata a las olas de enemigos
    .complete 42477,4 --1/1 Survive Daio's Challenge
    .timer 30,RP
    .mob Tramposo maligno
    .mob Empowered Wrathguard
    .mob Eredar Mage
step
    #completewith next
    >>Usa el |T254294:0|t[Pergamino de Karazhan] en |cRXP_WARN_10 SECONDS LEFT|r
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42477,5 --1/1 Get the Demon Stone
step
    >>Usa el |T254294:0|t[Pergamino de Karazhan]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    .goto 42,35.83,64.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Pole|r
    .complete 42476,3 --1/1 Find remaining ritual items
step
    .goto 42,35.04,62.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Nota|r en la tienda.
    .complete 42476,4 --1/1 Find any text on the ritual
    .timer 30,RP
step
    .goto 42,34.16,59.67
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42476,5 --1/1 Listen to Merina
step
    .goto 42,34.14,59.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    .complete 42476,6 --1/1 Take the Ritual Focusing Crystal
step
    #completewith next
    #label Turn in Alodi's Gems
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Entrega la misión Las gemas de Alodi
    .target Alodi
step
    #completewith Turn in Alodi's Gems
    .zoneskip 734
    .cast 193759 >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
    .usespell 193759
step
    #requires Turn in Alodi's Gems
    .goto 734,53.54,70.05,20,0
    .goto 735,56.68,70.92,20,0
    .goto 735,60.77,43.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Entrega la misión Las gemas de Alodi
    .target Alodi
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 42476 >>Entrega la misión Excavación Paso de la Muerte
    .target Meryl Tormenta Vil
    .turnin 42477 >>Entrega la misión Daio el Decrépito
    .accept 42479 >>Acepta la misión El cazador de magos
    .target Meryl Tormenta Vil
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 42476 >>Entrega la misión Excavación Paso de la Muerte
    .target Meryl Tormenta Vil
    .turnin 42477 >>Entrega la misión Daio el Decrépito
    .accept 42479 >>Acepta la misión El cazador de magos
    .target Meryl Tormenta Vil
step
    #completewith next
    #label Dalaran to Faronaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aludane Nubeblanca|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
-- step
--     #completewith Dalaran to Faronaar
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
step
    .isQuestAvailable 41113
    #completewith Dalaran to Faronaar
    .goto 735,62.44,51.32
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    #completewith Dalaran to Faronaar
    .goto 734,57.39,90.1
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal|r
step
    #requires Dalaran to Faronaar
    .goto 627,69.82,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aludane Nubeblanca|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
    .timer 200,RP
    .skipgossipid 44179
    .target Aludane Nubeblanca
step
    .isOnQuest 42479
    .goto 630,26.79,49.02
    #title |cFFFCDC00Sigue la Flecha|r
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2526,1 --Speak with Meryl and Alodi
    .target Meryl and Alodi
step
    .isOnQuest 42479
    .goto 630,26.8,49.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Fel Atenuación Resguardo|r
    *|cRXP_WARN_Intenta volar, algunas partes de este escenario lo permiten|r.
    .scenario 2528,1,1 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,29.96,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Fel Atenuación Resguardo|r
    *|cRXP_WARN_Intenta volar en algunas partes de este escenario|r.
    .scenario 2528,1,2 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,30.11,48.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Resguardo de disminución de vileza|r
    *|cRXP_WARN_Intenta volar, algunas partes de esta gesta lo permiten|r.
    .scenario 2528,1,3 --Wards set up
    .target Fel Dampening Ward
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2529,1 --Go to the center of the Altar of End Times.
    .timer 50,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    .scenario 2529,2 --Activate the Ritual Focus
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r, termina de canalizar y mata a los enemigos que se acercan.
    .scenario 2530,1,15 --Activate the Ritual Focus
    .mob Guardia de cólera
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r, termina de canalizar y mata a los enemigos que se acercan.
    .scenario 2530,1,45 --Activate the Ritual Focus
    .mob Guardia de cólera
    .mob Netherflame Infernal
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r, termina de canalizar y mata a los enemigos que se acercan.
    .scenario 2530,1,75 --Activate the Ritual Focus
    .mob Netherflame Infernal
    .mob Legion Jailer
    .mob Tramposo maligno
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r, termina de canalizar y mata a los enemigos que se acercan.
    .scenario 2530,1,87 --Activate the Ritual Focus
    .timer 15,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2530,1 --Activate the Ritual Focus
step
    .goto 619,67.0,92.9
    .isInScenario 1122
    >>Mata a |cRXP_ENEMY_Balaadur|r
    .scenario 2531,1 --Slay Balaadur
    .mob Balaadur
step
    .goto 619,67.05,92.74
    #label Artifact Weapon: Frost Mage
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .scenario 2532,1 --Claim Ebonchill.
    .complete 42479,2 --1/1 Claim Ebonchill
step
    #completewith next
    #label Mage Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 42479 >>Entrega la misión El cazador de magos
    .target Meryl Tormenta Vil
step
    #completewith Mage Hunter
    .zoneskip 734
    .cast 193759 >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
    .usespell 193759
step
    #requires Mage Hunter
    .goto 734,53.3,72.2,20,0
    .goto 734,59.04,56.7,20,0
    .goto 735,56.68,33.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .turnin 42479 >>Entrega la misión El cazador de magos
    .target Meryl Tormenta Vil
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
#name z) Arma artefacto: Arcano
#displayname Arma artefacto: Arcano
#next ac) Sede de clase de Mago Parte 2
#internal

<< Mage

step
    #include a) Arma artefacto: Arcano
]])
--Fire 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Fuego
#displayname Arma artefacto: Fuego
#next ac) Sede de clase de Mago Parte 2
#internal

<< Mage

step
    #include a) Arma artefacto: Fuego
]])
--Frost 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Mago Escarcha
#displayname Arma artefacta: Escarcha
#next ac) Sede de clase de Mago Parte 2
#internal

<< Mage

step
    #include a) Artefacto Arma: Mago de escarcha
]])

--Mage Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sede de clase de Mago Parte 1
#displayname |cFF00CCFF1|r - Introducción a la sede de clase|r
#next ac) Sala de Órdenes: Mago
#chapter
#internal

<< Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meryl Tormenta Vil|r
    .target Meryl Tormenta Vil
    .accept 41085 >>Acepta la misión El arma de un mago
step
    .isQuestAvailable 41085
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fire >> Cadena de misiones de Fuego (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arcane >> Cadena de misiones de Arcano (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost Mage >> Cadena de misiones de Escarcha (DPS)
step
    >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
    .accept 41114 >>Acepta la misión El regreso del campeón
    .usespell 193759
step
    >>Usa |T1536440:0|t[Teletransporte: Salón del Guardián].
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
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Maestro cervecero
#displayname Arma artefacto: Maestro cervecero
#next a) Sede de clase de Monje Parte 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Brewmaster
    #hidewindow
    +prueba
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
    .cast 126892 >>Usa |T775462:0|t[Peregrinaje zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 44424 >>Acepta la misión Tres caminos, tres armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 44424 >>Entrega la misión Tres caminos, tres armas
    .target Li Li Cerveza de Trueno
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 43973 >>Acepta la misión Dos caminos, dos armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 43973 >>Entrega la misión Dos caminos, dos armas
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .accept 40636 >>Acepta la misión Prepárate para golpear
    .target Ponshu Cuerpo Férreo
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu Cuerpo Férreo
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 40636 >>Entrega la misión Prepárate para golpear
step
    #completewith The Wanderer's Companion
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .accept 42762 >>Acepta la misión El acompañante del vagabundo
    .target Ponshu Cuerpo Férreo
step
    #completewith next
    #label Tak-Tak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith Tak-Tak
    #title |cFFFCDC00Sal de la Casa|r
    .goto 709,49.71,47.37,10 >>Sal de la Casa
step
    #requires Tak-Tak
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .timer 23,RP
    .skipgossipid 45493
    .target Tak-Tak
step
    #label The Wanderer's Companion
    .goto 371,41.67,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Mono|r
    .turnin 42762 >>Entrega la misión El acompañante del vagabundo
    .target El Rey Mono
    .accept 42768 >>Acepta la misión El acertijo de la Pureza
    .accept 42766 >>Acepta la misión El acertijo de la barrisca
    .accept 42767 >>Acepta la misión El acertijo de la Tierra
step
    #completewith next
    #label Pure Water Core
    >>Mata a la |cRXP_ENEMY_Profanadora Ma'Veth|r y al |cRXP_ENEMY_Espíritu de agua profanado|r. Despójalos para obtener |T132844:0|t[|cRXP_LOOT_Núcleo de agua pura|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith Pure Water Core
    .cast 311850 >>Usa la |T615341:0|t[Jarra de pureza]
    .use 173703
step
    #requires Pure Water Core
    .goto 376,63.22,26.04
    >>Mata a |cRXP_ENEMY_Profanadora Ma'Veth|r y a |cRXP_ENEMY_Espíritu de agua profanado|r. Despoja para |T132844:0|t[|cRXP_LOOT_Pure Agua Núcleo|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith next
    #label Roasted Grain
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Grano|r
    .complete 42767,1,1 --5/5 Sack of Roasted Grain
step
    #completewith Roasted Grain
    .cast 311857 >>Usa |T615341:0|t[Jarra de pureza]
    .use 173704
step
    #requires Roasted Grain
    #loop
    .goto 376,52.94,60.67,20,0
    .goto 376,51.13,60.79,20,0
    .goto 376,51.08,62.49,20,0
    .goto 376,52.6,63.37,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Grano|r
    .complete 42767,1, --5/5 Sack of Roasted Grain
step
    #completewith next
    #label Vadis
    >>Mata a |cRXP_ENEMY_Vadis|r y |TInterface/cursor/crosshair/interact.blp:20|thaz clic en el |cRXP_PICK_Keg|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    #completewith Vadis
    #title |cFFFCDC00Entra en la Casa|r
    .goto 376,51.6,64.28,10,0
    .goto 376,51.43,65.17,10,0
    .goto 376,51.11,64.98,10 >>Entra en la Casa y sube las escaleras.
step
    #requires Vadis
    .goto 376,51.50,64.43
    >>Mata a |cRXP_ENEMY_Vadis|r y |TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Barril|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Mono|r |cRXP_WARN_a tu lado|r.
    .turnin 42766 >>Entrega la misión El acertijo de la barrisca
    .target El Rey Mono
    .turnin 42768 >>Entrega la misión El acertijo de la Pureza
    .turnin 42767 >>Entrega la misión El acertijo de la Tierra
    .accept 42957 >>Acepta la misión Viaje al este
step
    #completewith next
    #label Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Mono|r
    .turnin 42957 >>Entrega la misión Viaje al este
    .accept 42868 >>Acepta la misión El desafío del Rey Mono
    .disablecheckbox
step
    #completewith Journey to the East
    .zoneskip 376,1
    .cast 311861 >>Usa la |T615341:0|t[Jarra de pureza]
    .use 173706
step
    #requires Journey to the East
    #completewith next
    #label Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Mono|r
    .turnin 42957 >>Entrega la misión Viaje al este
    .accept 42868 >>Acepta la misión El desafío del Rey Mono
step
    #completewith Journey to the East2
    #hidewindow
    #requires Journey to the East
    .goto 371,55.03,60.75,30 >>Sigue la Flecha
step
    #requires Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Mono|r
    .goto 371,55.42,58.14
    .turnin 42957 >>Entrega la misión Viaje al este
    .accept 42868 >>Acepta la misión El desafío del Rey Mono
step
    .goto 371,55.31,58.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Caldero de cerveza|r
    .complete 42868,1 --1/1 Brewpot Set
    .timer 7.5,RP
step
    .goto 371,55.37,58.54
    .isOnQuest 42868
    .cast 217213 >>Haz clic en la |cRXP_PICK_Esfera Azul|r
    .timer 12,RP
step
    .goto 371,55.24,58.52
    .isOnQuest 42868
    .cast 217216 >>Haz clic en la |cRXP_PICK_Harina|r
    .timer 10.5,RP
step
    .goto 371,55.21,58.43
    .isOnQuest 42868
    .cast 217219 >>Haz clic en la |cRXP_PICK_Barrica|r
    .timer 11,RP
step
    .goto 371,55.39,58.46
    .isOnQuest 42868
    .cast 217224 >>Haz clic en el |cRXP_PICK_Plátano|r
    .timer 10,RP
step
    .goto 371,55.28,58.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Objetos|r
    .complete 42868,2 --1/1 Brew Completed
step
    .goto 371,55.43,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Mono|r
    .turnin 42868 >>Entrega la misión El desafío del Rey Mono
    .target El Rey Mono
    .accept 42765 >>Acepta la misión La prueba en el Templo
step
    #completewith next
    #label Jade Serpent
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    #completewith Jade Serpent
    .goto 791,34.58,43.45,10 >>Entra en el Templo del Dragón de Jade
    .timer 40,RP
step
    #requires Jade Serpent
    .goto 371,56.19,57.98
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_Espera al Roleplay|r.
    *|cRXP_WARN_No puedes montar en este escenario|r.
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,30.45,59.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Puerta|r y avanza.
    .scenario 2649,1
step
    .goto 791,30.41,59.54,15,0
    .goto 792,40.41,20.97,15,0
    .goto 792,34.88,44.12
    >>Mata a |cRXP_ENEMY_Cazador de Almas de la Inquisición|r
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>Mata a |cRXP_ENEMY_Cazador de Almas de la Inquisición|r y sus |cRXP_ENEMY_minions|r.
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
    .mob Inquisitor's Eye
step
    .goto 792,32.6,63.36,15,0
    .goto 792,51.17,71.47
    >>Mata al |cRXP_ENEMY_Torturador de la Inquisición|r y a los |cRXP_ENEMY_secuaces|r.
    .scenario 2649,2,2
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Impling Pillager
step
    .goto 792,61.76,73.56,15,0
    .goto 792,66.55,46.16,15,0
    .goto 792,56.64,42.48
    >>Mata a |cRXP_ENEMY_Cazador de Almas de la Inquisición|r y sus |cRXP_ENEMY_esbirros|r.
    .scenario 2649,2,3
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,25.15,66.37,15,0
    .goto 791,27.33,71.8
    >>Mata a |cRXP_ENEMY_Belphiar|r
    .scenario 2650,1
    .timer 20,RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00Sigue la Flecha|r
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2684,1
    .isInScenario 1137
step
    .goto 791,45.39,80.88,15,0
    .goto 791,54.79,84.16,15,0
    .goto 791,53.68,75.04,15,0
    .goto 791,48.47,65.14,15,0
    .goto 791,51.32,52.08
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2661,1
    .timer 22,RP
    .isInScenario 1137
step
    .goto 791,51.32,52.08
    >>Mata a las oleadas de |cRXP_ENEMY_Demons|r
    .scenario 2663,2,15
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,46.5,48.86
    >>Mata a las oleadas de |cRXP_ENEMY_Demons|r
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
    >>Mata a |cRXP_ENEMY_Lord Korithis|r
    *|cRXP_WARN_No es posible una flecha más precisa|r.
    .scenario 2665,1
    .isInScenario 1137
    .mob Lord Korithis
step
    .isInScenario 1137
    #label Artifact Weapon: Brewmaster
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    *|cRXP_WARN_No es posible una flecha más precisa|r.
    .scenario 2666,1
    .complete 42765,2 --1/1 Obtain Fu Zan
step
    #completewith next
    #label Yu'lon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_No es posible una flecha más precisa|r.
    .scenario 2701,1
    .skipgossipid 46181
    .isInScenario 1137
step
    #completewith Yu'lon
    .goto 791,69.73,60.48
    .vehicle >>Haz clic en la |cRXP_PICK_Yu'lon|r
    .timer 30,RP
    .target Yu'lon
step
    #requires Yu'lon
    .goto 791,69.73,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_No es posible una flecha más precisa|r.
    .scenario 2701,1
    .timer 30,RP
    .skipgossipid 46181
    .isInScenario 1137
    .target Yu'lon
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .turnin 42765 >>Entrega la misión La prueba en el Templo
    .target Ponshu Cuerpo Férreo
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Tejedor de niebla
#displayname Artefacto Arma: Tejedor de niebla
#next a) Sede de clase de Monje Parte 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Mistweaver
    #hidewindow
    +prueba
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
    .cast 126892 >>Usa |T775462:0|t[Peregrinaje zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 44424 >>Acepta la misión Tres caminos, tres armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 44424 >>Entrega la misión Tres caminos, tres armas
    .target Li Li Cerveza de Trueno
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 43973 >>Acepta la misión Dos caminos, dos armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 43973 >>Entrega la misión Dos caminos, dos armas
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .accept 40636 >>Acepta la misión Prepárate para golpear
    .target Ponshu Cuerpo Férreo
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu Cuerpo Férreo
step
    .subzoneskip 7902,1
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 40636 >>Entrega la misión Prepárate para golpear
step
    #completewith Taran Zhu
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .accept 41003 >>Acepta la misión El regalo del emperador
    .target Ponshu Cuerpo Férreo
step
    #completewith next
    #label MistweaverScenario
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith MistweaverScenario
    #hidewindow
    .goto 709,50.49,47.67,15,0
    .goto 709,49.36,47.43,15 >>Sigue la Flecha
step
    #requires MistweaverScenario
    .goto 709,47.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 84.5,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    .countdown 29 >>|cRXP_WARN_Espera al Roleplay|r.
step
    #label Taran Zhu
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>Usa el |T1360980:0|t[Vivificar] en |cRXP_FRIENDLY_Taran Zhu|r.
    .scenario 2091,1
    .timer 26.5,RP
    .target Taran Zhu
    .usespell 116670
step
    .isOnQuest 41003
    #completewith Aspersius
    +Usa el |T1360980:0|t[Vivificar] en |cRXP_FRIENDLY_Taran Zhu|r y tu equipo para mantenerlos vivos o resucitar.
    *|cRXP_WARN_Es importante; no puedes avanzar si está muerto|r.
    .target Taran Zhu
step
    .isInScenario 1007
    .goto 728,78.47,48.82
    >>Mata al |cRXP_ENEMY_Guardia infernal Xaphan|r
    .scenario 2098,4
    .timer 30,RP
    .mob Hellwarden Xaphan
step
    .isInScenario 1007
    .goto 728,59.2,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fei Li|r
    .scenario 2100,1
    .skipgossipid 44884
    .target Fei Li
step
    .isInScenario 1007
    .goto 728,58.86,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Taoshi|r
    .scenario 2100,3
    .skipgossipid 44888
    .target Taoshi
step
    .isInScenario 1007
    .goto 728,58.97,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro de halcones Nurong|r
    .scenario 2100,2
    .skipgossipid 44887
    .target Maestro de halcones Nurong
step
    .isInScenario 1007
    .goto 728,61.89,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Taran Zhu|r
    .scenario 2131,1
    .skipgossipid 45376
    .target Taran Zhu
step
    #label Aspersius
    .isInScenario 1007
    .goto 728,40.25,48.82
    >>Mata a |cRXP_ENEMY_Aspersius|r
    .scenario 2131,2
    .mob Aspersius
step
    #label Artifact Weapon: Mistweaver
    .goto 728,39.21,48.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .complete 41003,2 --1/1 Acquire Sheilun
    .scenario 2157,1
step
    .goto 728,44.12,53.64
    >>|cRXP_WARN_En la sección "Objetos Utilizables"|r Hay una macro, úsala después de hablar con |cRXP_FRIENDLY_Taran Zhu|r.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Instance,236367 >> Abandona la Instancia
    .skipgossipid 45497
    .target Tak-Tak
step
    #completewith next
    #label The Emperor's Gift
    #title |cFFFCDC00Macro de spam|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .turnin 41003 >>Entrega la misión El regalo del emperador
    .macro Leave Instance,236367 >> Abandona la Instancia
    .target Ponshu Cuerpo Férreo
step
    #completewith The Emperor's Gift
    .goto 709,49.76,47.48,15 >>Entra en el Templo
step
    #requires The Emperor's Gift
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .turnin 41003 >>Entrega la misión El regalo del emperador
    .target Ponshu Cuerpo Férreo
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artefacto: Viajero del Viento
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#displayname Artefacto Arma: Viajero del viento
#next a) Sede de clase de Monje Parte 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Windwalker
    #hidewindow
    +Prueba
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
    .cast 126892 >>Usa |T775462:0|t[Peregrinaje zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 44424 >>Acepta la misión Tres caminos, tres armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 44424 >>Entrega la misión Tres caminos, tres armas
    .target Li Li Cerveza de Trueno
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 43973 >>Acepta la misión Dos caminos, dos armas
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 43973 >>Entrega la misión Dos caminos, dos armas
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .accept 40636 >>Acepta la misión Prepárate para golpear
    .target Ponshu Cuerpo Férreo
step
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu Cuerpo Férreo
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .turnin 40636 >>Entrega la misión Prepárate para golpear
step
    #completewith Legend of the Sands
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .target Ponshu Cuerpo Férreo
    .accept 40569 >>Acepta la misión La Leyenda de las Arenas
step
    #completewith next
    #label Prepare To Strike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Li Li Cerveza de Trueno|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .target Li Li Cerveza de Trueno
step
    #completewith Prepare To Strike
    #title |cFFFCDC00Entra en la Casa|r
    .goto 709,51.28,53.77,10,0
    .goto 709,49.91,58.68,10 >>Entra en la Casa
step
    #requires Prepare To Strike
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Li Li Cerveza de Trueno|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .skipgossipid 44948
    .skipgossipid 45131
    .skipgossipid 45128
    .target Li Li Cerveza de Trueno
step
    #label Legend of the Sands
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .turnin 40569 >>Entrega la misión La Leyenda de las Arenas
    .accept 40633 >>Acepta la misión ¡Hacia la aventura!
    .timer 48,RP
    .target Ponshu Cuerpo Férreo
--rp shenagans possible
step
    .goto 709,50.49,58.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Cometa|r |cRXP_WARN_después del Roleplay|r.
    .complete 40633,1 --1/1 Ride Li Li's kite to Ramkahen (Optional)
    .timer 15,RP
step
    .goto 249,54.85,32.90
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 40633,2 --1/1 Meet With Li Li in Ramkahen
    .target Li Li Cerveza de Trueno
step
    .goto 249,54.85,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Li Li Cerveza de Trueno|r
    .turnin 40633 >>Entrega la misión ¡Hacia la aventura!
    .target Li Li Cerveza de Trueno
step
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Phaoris|r
    .accept 40634 >>Acepta la misión Trueno en la arena
    .target King Phaoris
step
    #completewith next
    #label Clue Discovered
    >>Mata a Nader|cRXP_ENEMY_. Despójalo para obtener |T348535:0|t[|rEsencia de Torbellino|cRXP_LOOT_].
    .complete 40634,1 --1/1 Clue Discovered
    .mob Nader
step
    #completewith Clue Discovered
    #title |cFFFCDC00Sal de la Casa|r
    .goto 249,54.92,33.66,15 >>Sal de la Casa
step
    #requires Clue Discovered
    #title |cFFFCDC00Fly manually|r
    .goto 249,45.65,14.35
    >>Mata |cRXP_ENEMY_Nader|r. Despójalo para obtener |T348535:0|t[|cRXP_LOOT_Esencia de Torbellino].
    .complete 40634,1 --1/1 Clue Discovered
step
    #completewith next
    #label Thunder on the Sands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Phaoris|r
    .turnin 40634 >>Entrega la misión Trueno en la arena
    .target King Phaoris
    .accept 40570 >>Acepta la misión Hacia los cielos
    .disablecheckbox
step
    #completewith Thunder on the Sands
    .goto 249,54.92,33.81,15 >>Entra en el Edificio
    #title |cFFFCDC00Entra en el edificio|r
step
    #requires Thunder on the Sands
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Phaoris|r
    .turnin 40634 >>Entrega la misión Trueno en la arena
    .target King Phaoris
    .accept 40570 >>Acepta la misión Hacia los cielos
step
    #completewith next
    #label Essence of the Whirlwind
    >>Usa |T348535:0|t[Esencia del Torbellino]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
step
    #completewith Essence of the Whirlwind
    #title |cFFFCDC00Sal del edificio|r
    .goto 249,54.93,33.94,13 >>Sal del edificio
step
    #requires Essence of the Whirlwind
    .goto 249,54.93,33.94
    >>Usa |T348535:0|t[Esencia del Torbellino]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,RP
    .use 132745
step
    .isOnQuest 40570
    .goto 716,30.9,45.18
    .enterScenario 983 >>Entra en la gesta de |cRXP_PICK_Viajero del viento|r.
step
    .isInScenario 983
    .goto 716,30.9,45.18
    >>Mata a los |cRXP_ENEMY_Vientos aulladores|r y a los |cRXP_ENEMY_Arenizos menores|r.
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    #completewith next
    #label Tornadoes
    .isInScenario 983
    #title |cFFFCDC00Sigue la Flecha|r
    >>Esquiva los tornados y entra en los remolinos verdes para obtener un aumento de velocidad.
    .scenario 2013,1
step
    #completewith Tornadoes
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 21 >>Espera frente a los tornados
    .timer 21
step
    #requires Tornadoes
    .isInScenario 983
    .goto 716,29.61,50.7,15,0
    .goto 716,31.34,51.67,15,0
    .goto 716,33.17,50.27,15,0
    .goto 716,30.74,49.37,15,0
    .goto 716,31.03,49.94
    #title |cFFFCDC00Sigue la Flecha|r
    >>Esquiva los tornados y entra en los remolinos verdes para obtener un aumento de velocidad.
    .scenario 2013,1
step
    .isInScenario 983
    .goto 716,32.58,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Orbe tocada por la tormenta|r
    .scenario 2007,1,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Orbe tocada por la tormenta|r
    .scenario 2007,1,2
    .mob Storm Cloud
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Orbe tocada por la tormenta|r
    .scenario 2007,1,3
    .timer 34,RP
    .mob Storm Cloud
    .mob Howling Winds
    .mob Lesser Sandling
step
    #completewith next
    #hidewindow
    #label Scion of Typhinius
    .isInScenario 983
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2007,2
    .timer 8,RP
step
    #completewith Scion of Typhinius
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 34 >>Espera a que aparezca el |cRXP_ENEMY_Sucesor de Typhinius|r.
    .mob Scion of Typhinius
step
    #requires Scion of Typhinius
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00Sigue la Flecha|r
    >>Mata al |cRXP_ENEMY_Sucesor de Typhinius|r
    .scenario 2007,2
    .timer 9,RP
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,31.6,66.01
    >>Mata a sus |cRXP_ENEMY_Esbirros|r
    .scenario 2008,1,1
    .timer 5,RP
    .mob Kaeled
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>Mata a sus |cRXP_ENEMY_Esbirros|r
    .scenario 2008,1,2
    .timer 7,RP
    .mob Storm Cloud
    .mob Na'ser
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.88,67.53
    >>Mata a sus |cRXP_ENEMY_Esbirros|r
    .scenario 2008,1,3
    .timer 15,RP
    .mob Melezan
    .mob Storm Cloud
step
    .isInScenario 983
    .goto 716,32.16,66.89
    >>Mata a |cRXP_ENEMY_Zaurac|r
    .scenario 2008,1,4
    .timer 3,RP
    .mob Zaurac
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Zaurac|r
    .scenario 2009,1
    .timer 25,RP
    .target Zaurac
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>Mata a |cRXP_ENEMY_Typhinius|r
    .scenario 2010,1
    .mob Typhinius
step
    .isInScenario 983
    .goto 716,35.76,82.93
    #label Artifact Weapon: Windwalker
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Fists|r
    .complete 40570,2 --1/1 Obtain the Fists of the Heavens
    .scenario 2011,1
    .mob Typhinius
step
    #completewith next
    #label Into The Heavens1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Li Li Cerveza de Trueno|r
    .turnin 40570 >>Entrega la misión Hacia los cielos
    .target Li Li Cerveza de Trueno
step
    #completewith Into The Heavens1
    .goto 716,35.65,84.21
    .vehicle >>Haz clic en la cometa
    .timer 28,RP
step
    #requires Into The Heavens1
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Li Li Cerveza de Trueno|r
    .turnin 40570 >>Entrega la misión Hacia los cielos
    .target Li Li Cerveza de Trueno
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
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name z) Arma artefacto: Maestro cervecero
#displayname Arma artefacto: Maestro cervecero
#next ac) Sede de clase de Monje Parte 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Arma artefacto: Maestro cervecero
]])
--Mistweaver 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Tejedor de niebla
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#displayname Arma artefacto: Tejedor de niebla
#next ac) Sede de clase de Monje Parte 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Tejedor de niebla
]])
--Windwalker 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacto: Viajero del viento
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#displayname Arma artefacto: Viajero del viento
#next ac) Sede de clase de Monje Parte 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artefacto: Viajero del Viento
]])

--Monk Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sede de clase de Monje Parte 1
#displayname |cFF00CCFF1|r - Introducción a la sede de clase|r
#next ac) Sala de orden Monje
#chapter
#internal

<< Monk

step
    #completewith The Fight Begins2
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ponshu Cuerpo Férreo|r
    .accept 40636 >>Acepta la misión Prepárate para golpear
    .target Ponshu Cuerpo Férreo
step
    .isQuestAvailable 40636
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Windwalker >> Cadena de misiones de Viajero del viento (DPS)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Brewmaster >> Cadena de misiones de Maestro cervecero (Tanque)
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Mistweaver >> Cadena de misiones de Tejedor de niebla (Sanador)
step
    #include ac) Order Hall Monk Part 2@Matter of Planning-The Fight Begins
step << Alliance
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step << Horde
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Da-Nel iniciado|r |cRXP_WARN_junto a ti|r
    .accept 42186 >>Acepta la misión Poder creciente
    .target Initiate Da-Nel
]])

-- --------- Paladin ---------

--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Paladín Sagrado
#displayname Arma artefacto: Sagrado
#next a) Sala de la Orden: Paladín Parte 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Holy Paladin
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 44370 >>Acepta la misión Completando tu arsenal
    .skipgossipid 45133
    .choose 1271766
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271766
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 44370 >>Entrega la misión Completando tu arsenal
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 44063 >>Acepta la misión Mejorando tu arsenal
    .choose 1271766
    .skipgossipid 45133
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271766
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 44063 >>Entrega la misión Mejorando tu arsenal
    .target Señor Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 40408,1 >>Acepta la misión Armas legendarias
    .skipgossipid 45133
    .choose 1271766
    .target Señor Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271766
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 40408,1 >>Entrega la misión Armas legendarias
    .target Señor Maxwell Tyrosus
step
    #completewith Lanigosa
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 627,74.99,48.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .accept 42231 >>Acepta la misión El paladín misterioso
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Acepta la misión Campeona: Lady Liadrin
    .turnin 42881 >>Entrega la misión Campeona: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 42231,1 --1/1 Travel to Dalaran
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 39864,1 --1/1 Travel to Dalaran
step << Alliance
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Entrega la misión El paladín misterioso
    .target Travard
    .accept 42377 >>Acepta la misión El rastro del hermano
step << Horde
    #completewith next
    #label Mysterious Paladin
    .goto 627,59,21.04,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Entrega la misión El paladín misterioso
    .target Travard
    .accept 42377 >>Acepta la misión El rastro del hermano
    .disablecheckbox
step << Horde
    #completewith Mysterious Paladin
    #hidewindow
    .goto 627,72.01,49.34,40 >>Sigue la Flecha
step << Horde
    #requires Mysterious Paladin
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Entrega la misión El paladín misterioso
    .target Travard
    .accept 42377 >>Acepta la misión El rastro del hermano
step
    #completewith next
    #label Wyrmrest Temple
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith Wyrmrest Temple
    .goto 627,52.75,51.91,20,0
    .goto 627,49,47.36,5 >>Entra en el centro de Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.72,84.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
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
    .gossipoption 45405 >>Habla con |cRXP_FRIENDLY_Lanigosa|r
    .target Lanigosa
step
    #requires Lanigosa
    .goto 115,56.48,26.96
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
    .target Lanigosa
step
    #completewith next
    #label Galford's location
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Nota|r
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    #completewith Galford's location
    .goto 115,56.57,28.64,10 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Estatua Rota|r |cRXP_WARN_es posible que tengas que hacerlo dos veces|r.
    .timer 51,RP
step
    #requires Galford's location
    .goto 115,60.04,36.19
    #title |cFFFCDC00Sigue la Flecha|r
    >>|cRXP_WARN_Asegúrate de que has hecho clic en la|r |cRXP_PICK_Estatua Rota|r antes de continuar.
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    .goto 115,61.05,38.05
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42377,4 --1/1 Go to the chasm on the Path of Giants
    .timer 25,RP
step
    .goto 115,61.05,38.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanigosa|r
    .complete 42377,5 --1/1 Speak with Lanigosa
    .timer 17,RP
    .skipgossipid 45651
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>Mata a |cRXP_ENEMY_Jotun|r
    *|cRXP_WARN_Sana a |cRXP_FRIENDLY_Lanigosa|r si es necesario|r.
    .complete 42377,6 --1/1 Defeat Jotun
    .mob Jotun
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Chispa|r
    .complete 42377,7 --1/1 Take the Spark of Tyr
step
    .goto 115,60.95,38.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Lanigosa|r
    .complete 42377,8 --1/1 Take Lanigosa's ride to Dalaran. (Optional)
    .timer 25
    .target Lanigosa
step
    .goto 627,79.17,46.08
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42377,9 --1/1 Return to Dalaran.
step
    .goto 627,72.03,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Travard|r
    .turnin 42377 >>Entrega la misión El rastro del hermano
    .target Travard
    .accept 42120 >>Acepta la misión La Mano de plata
step
    #completewith next
    #label in Tirisfal Glades
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
step
    #completewith in Tirisfal Glades
    .cast 311681 >>Usa |T254294:0|t[Pergamino de campamento de Tirisfal]
    .use 173523
step
    #requires in Tirisfal Glades
    .isOnQuest 42120
    .goto 18,13.45,56.68
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
    .target Travard
step
    .isOnQuest 42120
    .goto 18,13.45,56.68,10 >>|cRXP_WARN_Sigue la Flecha|r.
    .timer 30,RP
step
    .isInScenario 1092
    .goto 18,14.09,56.5
    .gossipoption 45511 >>Habla con |cRXP_FRIENDLY_Travard|r
    .target Travard
step
    .goto 20,37.35,12.43,15,0
    .goto 20,35.12,20.33,15,0
    .goto 20,34.78,26.48,15,0
    .goto 20,37.19,43.18
    .isInScenario 1092
    #title |cFFFCDC00Sigue la Flecha|r
    >>Entra en la Tumba, mata a |cRXP_ENEMY_Ignoto sin amo|r y |cRXP_ENEMY_Engendro de carne|r
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
    >>Mata a |cRXP_ENEMY_Ignoto sin amo|r, a |cRXP_ENEMY_Engendro de carne|r y a |cRXP_ENEMY_G'noz el Enloquecido|r
    *|cRXP_WARN_Sana a tu equipo cuando estén heridos, no puedes continuar de otra forma|r.
    .scenario 2447,1 --Tyr's Crypt cleared.
    .timer 65,RP
    .mob Masterless Faceless Corrupter
    .mob Flesh Spawn
    .mob G'norz the Crazed
step
    .isInScenario 1092
    .goto 20,37.64,65.74
    >>|cRXP_WARN_Espera el Roleplay|r — |cRXP_WARN_Sana a tu equipo cuando estén heridos, no puedes continuar de otra forma|r.
    .scenario 2448,1 --Listen to Travard.
step
    .goto 20,38.77,77.48,15,0
    .goto 20,42.9,85.49,20,0
    .goto 20,47.49,75.46,15,0
    .goto 20,52.02,74.87,15,0
    .goto 20,62.67,74.52
    .isInScenario 1092
    >>Escolta a |cRXP_FRIENDLY_Travard|r — |cRXP_WARN_Sana a tu equipo cuando estén heridos, no puedes continuar de otra forma|r.
    .scenario 2449,1 --Find the final piece to the ritual.
    .mob Masterless Faceless Corrupter
step
    .isInScenario 1092
    .goto 20,62.67,74.52
    >>Mata a |cRXP_ENEMY_Aberración espantosa|r — |cRXP_WARN_Sana a tu equipo cuando estén heridos, no puedes continuar de otra forma|r.
    .scenario 2453,1,1
    .timer 30,RP
    .mob Horrific Aberration
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2453,1,2
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    .goto 20,41.81,82.42
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2454,1
step
    .isInScenario 1092
    .goto 20,42.94,84.92
    >>Limpia a |cRXP_FRIENDLY_Righteous Crusaders|r y sana a |cRXP_FRIENDLY_Albar Argenta|r
    *|cRXP_WARN_Hay una habilidad de purificación adicional en el objetivo del escenario|r.
    .scenario 2455,1
    .scenario 2455,2
    .usespell 19750
    .usespell 4987
    .target Righteous Crusader
    .target Albar Argenta
step
    .isInScenario 1092
    .goto 20,38.63,76.01,20,0
    .goto 20,37.68,63.55
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2456,1
    .timer 180,RP
step
    .isInScenario 1092
    .goto 20,37.61,65.32
    >>Mata las oleadas de enemigos |cRXP_WARN_y sana a tu equipo|r.
    .scenario 2457,1,100
    .mob Flesh Spawn
    .mob Masterless Faceless Corrupter
    .mob Mordoth the Hunter
step
    .goto 20,37.43,55.14
    .isInScenario 1092
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .scenario 2458,1 --Claim the Silver Hand.
    .complete 42120,3 --1/1 Claim the Silver Hand
step
    .isInScenario 1092
    .zone 627 >>Sal de la Instancia (clic derecho en tu marco de personaje) o presiona la macro.
    .macro Leave Instance,236367 >> Abandona la Instancia
step
    .isQuestAvailable 44370,44063
    #label Artifact Weapon: Holy Paladin
    .goto 627,71.83,45.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42120 >>Entrega la misión La Mano de plata
    .target Señor Maxwell Tyrosus
    .accept 38576 >>Acepta la misión Nos veremos en Esperanza de la Luz
step << Horde
    .isQuestTurnedIn 40408
    .goto 627,58.5,20.55,10,0
    .goto 627,61.89,13.63
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step << Alliance
    .isQuestTurnedIn 40408
    .goto 627,36.64,65.28,15,0
    .goto 627,32.64,69.87
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 44370,44063
    .goto 24,49.86,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42120 >>Entrega la misión La Mano de plata
    .target Señor Maxwell Tyrosus
step << Alliance
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Sigue la Flecha
step << Alliance
    #requires Light's Hope Sanctum
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38576 >>Entrega la misión Nos veremos en Esperanza de la Luz
    .target Señor Maxwell Tyrosus
step << Alliance
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>Sigue la Flecha
step << Alliance
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38576 >>Entrega la misión Nos veremos en Esperanza de la Luz
    .target Señor Maxwell Tyrosus
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma de artefacto: Protección de paladín
#displayname Artefacto Arma: Protección
#next a) Sala de la Orden: Paladín Parte 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Paladin Protection
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 44370 >>Acepta la misión Completando tu arsenal
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 44370 >>Entrega la misión Completando tu arsenal
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 44063 >>Acepta la misión Mejorando tu arsenal
    .choose 1271767
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 44063 >>Entrega la misión Mejorando tu arsenal
    .target Señor Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 40408,1 >>Acepta la misión Armas legendarias
    .choose 1271767
    .target Señor Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 40408,1 >>Entrega la misión Armas legendarias
    .target Señor Maxwell Tyrosus
step
    #completewith Orik and Tahu
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Acepta la misión Campeona: Lady Liadrin
    .turnin 42881 >>Entrega la misión Campeona: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,49.83,72.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 42000 >>Acepta la misión En busca de la verdad
    .target Señor Maxwell Tyrosus
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 42000,1,1 --1/1 Travel to Dalaran
step
    .zoneskip 627,1
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 42000 >>Acepta la misión En busca de la verdad
    .target Señor Maxwell Tyrosus
step
    #completewith next
    #label Orik and Tahu
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    #completewith Orik and Tahu
    .goto 627,72.69,50.01
    .gossipoption 45806 >>Habla con |cRXP_FRIENDLY_Orik y Tahu|r
    .timer 39,RP
step
    #requires Orik and Tahu
    .goto 627,72.69,50.01
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    .goto 627,72.67,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orik Corazón Veraz|r
    .turnin 42000 >>Entrega la misión En busca de la verdad
    .target Orik Trueheart
    .accept 42002 >>Acepta la misión A Rasganorte
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    #completewith Argent Hippogryph
    .goto 627,72.96,50.08
    .vehicle >>Haz clic en el |cRXP_PICK_Argent Hipogrifo|r
    .timer 12,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    .goto 117,56.88,78.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orik Corazón Veraz|r
    .turnin 42002 >>Entrega la misión A Rasganorte
    .target Orik Trueheart
    .accept 42005 >>Acepta la misión El fin de la saga
step
    .goto 117,56.88,78.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tahu Viento Sabio|r
    .complete 42005,1 --1/1 Speak with Tahu Sagewind
    .skipgossipid 45439
    .skipgossipid 45440
    .target Tahu Viento Sabio
step
    .goto 117,62.27,82.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Grave|r
    .complete 42005,2 --1/1 Find the hero's grave
    .timer 68.5,RP
step
    .goto 117,62.27,82.13
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42005,3 --1/1 Complete the ritual
step
    .cast 441154 >>Usa |T134491:0|t[Vale de Nostwin]
    .itemcount 238727,1
    .use 238727
step
    .goto 627,72.52,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orik Corazón Veraz|r en Dalaran.
    .turnin 42005 >>Entrega la misión El fin de la saga
    .target Orik Trueheart
    .accept 42017 >>Acepta la misión Santuario de la Veraguardia
step
    .isOnQuest 42017
    .goto 627,72.18,50.45
    .vehicle >>Haz clic en el |cRXP_PICK_Argent Hipogrifo|r
    .timer 29,RP
step
    .isOnQuest 42017
    .goto 634,85.5,10.65,40 >>|cRXP_WARN_Espera al Roleplay|r.
    .timer 16,RP
step
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 634,83.93,9.52
    .isOnQuest 42017
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2390,1 --Speak with Orik.
    .target Orik
step
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker
    .isInScenario 1082
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2391,1 --Get to the shrine.
step
    #completewith Inna the Cryptstalker
    .isInScenario 1082
    .goto 635,74.6,58.74,25 >>Mata a los |cRXP_ENEMY_Porteros|r
    *Si es necesario, recoge una lanza y usa el botón de acción extra para infligir mucho daño.
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
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 635,62.96,53.11,20,0
    .goto 635,57.63,50.72,20,0
    .goto 635,51.99,49.86,20,0
    .goto 635,52.28,53.36,10  >>Esquiva los tornados manteniéndote en el lado derecho cerca del muro.
    .timer 35,RP
    *Mata |cRXP_ENEMY_Escudero drekirjar|r y |cRXP_ENEMY_Creador de vientos espectral|r
    .mob Drekirjar Shieldbearer
    .mob Spectral Windshaper
step
    #requires Inna the Cryptstalker2
    .isInScenario 1082
    .goto 635,51.52,52.04
    >>|cRXP_WARN_Espera al "Roleplay" cerca de la puerta|r.
    .scenario 2391,1 --Get to the shrine.
step
    #completewith next
    #label magic and survive
    .isInScenario 1082
    >>Usa |T524354:0|t[Escudo divino] u otra habilidad defensiva potente, y sánate si es necesario.
    *|cRXP_WARN_Se recibe daño masivo poco después de hacer clic en la puerta.|r
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
    .aura 210223 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Puerta|r
    .timer 10,Supervivencia
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #requires magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    #title |cFFFCDC00Gran Defensa|r
    >>Usa |T524354:0|t[Escudo divino] u otra habilidad defensiva potente, y sánate si es necesario.
    *|cRXP_WARN_Se recibe daño masivo poco después de hacer clic en la puerta.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    .goto 635,27.89,45.25
    .isInScenario 1082
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2392,1 --Investigate the shrine.
step
    #completewith next
    #label Yrgrim the Truthseeker
    .isInScenario 1082
    >>Derrota a |cRXP_ENEMY_Yrgrim el Buscador de la verdad|r |cRXP_WARN_si está congelado mata a la |cRXP_ENEMY_Creadora de runas Griselda|r|r luego espera a que termine el "roleplay".
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
step
    #completewith Yrgrim the Truthseeker
    .isInScenario 1082
    .goto 635,25.93,44.53
    .gossipoption 45218 >>Habla con |cRXP_FRIENDLY_Yrgrim el Buscador de la verdad|r
    .timer 4.5,RP
    .target Yrgrim the Truthseeker
step
    #requires Yrgrim the Truthseeker
    .goto 635,25.93,44.53,10,0
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>Derrota a |cRXP_ENEMY_Yrgrim el Buscador de la verdad|r |cRXP_WARN_si está congelado mata a la |cRXP_ENEMY_Creadora de runas Griselda|r|r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
    .mob Runeshaper Griselda
step
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .scenario 2395,1 --Take up Truthguard.
    .complete 42017,2 --1/1 Claim the Truthguard
step
    .isOnQuest 42017
    .goto 634,83.95,9.55,10,0
    .goto 634,85.47,10.83
    .vehicle >>Haz clic en el |cRXP_PICK_Hipogrifo Argenta|r
    .target Argent Hippogryph
    .timer 20,RP
step
    .isQuestAvailable 38576
    .isOnQuest 42017
    #label Artifact Weapon: Paladin Protection
    .goto 627,71.74,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r |cRXP_WARN_en Dalaran|r.
    .turnin 42017 >>Entrega la misión Santuario de la Veraguardia
    .target Señor Maxwell Tyrosus
    .accept 38576 >>Acepta la misión Nos veremos en Esperanza de la Luz
step
    .isQuestTurnedIn 38576
    .isOnQuest 42017
    #completewith next
    #label Shrine of the Truthguard3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42017 >>Entrega la misión Santuario de la Veraguardia
    .target Señor Maxwell Tyrosus
step << Alliance
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,34.98,66.58,20,0
    .goto 627,32.65,69.91
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step << Horde
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,58.71,20.66,20,0
    .goto 627,61.93,13.5
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
step
    #requires Shrine of the Truthguard3
    .isQuestTurnedIn 38576
    .goto 24,49.88,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42017 >>Entrega la misión Santuario de la Veraguardia
    .target Señor Maxwell Tyrosus
step << Alliance
    .isQuestAvailable 38576
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    .isQuestAvailable 38576
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Sigue la Flecha
step << Alliance
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith next
    #label Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,58.71,20.66,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith Light's Hope Sanctum
    .isQuestAvailable 38576
    #hidewindow
    .goto 627,61.93,13.5,30 >>Sigue la Flecha
step << Horde
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,61.93,13.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label A United Force
    .isQuestAvailable 38576
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38576 >>Entrega la misión Nos veremos en Esperanza de la Luz
    .target Señor Maxwell Tyrosus
step
    #completewith A United Force
    #hidewindow
    .isQuestAvailable 38576
    .goto 24,63.15,37.22,40 >>Sigue la Flecha
step
    #requires A United Force
    .isQuestAvailable 38576
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38576 >>Entrega la misión Nos veremos en Esperanza de la Luz
    .target Señor Maxwell Tyrosus
]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Reprensión
#displayname Arma artefacto: Reprensión
#next a) Sala de la Orden: Paladín Parte 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Retribution
    #hidewindow
    +prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 44370 >>Acepta la misión Completando tu arsenal
    .skipgossipid 45133
    .choose 1271768
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271768
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 44370 >>Entrega la misión Completando tu arsenal
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 44063 >>Acepta la misión Mejorando tu arsenal
    .choose 1271768
    .skipgossipid 45133
    .target Señor Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271768
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 44063 >>Entrega la misión Mejorando tu arsenal
    .target Señor Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 40408,1 >>Acepta la misión Armas legendarias
    .skipgossipid 45133
    .choose 1271768
    .target Señor Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271768
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 40408,1 >>Entrega la misión Armas legendarias
    .target Señor Maxwell Tyrosus
step
    #completewith Spirits exorcised
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .accept 42770 >>Acepta la misión Buscando el camino a seguir
step
    >>Usa |T413582:0|t[Piedra de hogar radiante]
    .complete 42770,1 --1/1 Hearth to Uther's Tomb
    .use 173537
step
    .goto 22,51.55,79.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42770 >>Entrega la misión Buscando el camino a seguir
    .target Señor Maxwell Tyrosus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Sumo sacerdote Thel'danis|r y |cRXP_FRIENDLY_Mehlar Hojalba|r
    .accept 42772 >>Acepta la misión Terreno sagrado
    .goto 22,51.45,79.02
    .target +High Priest Thel'danis
    .accept 42771 >>Acepta la misión Manteniendo la paz
    .goto 22,51.36,79
    .target +Mehlar Dawnblade
step
    #completewith Spirits exorcised
    >>Mata |cRXP_ENEMY_Espectro angustiado|r y |cRXP_ENEMY_Residente perturbado|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    .goto 22,50.34,80.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Lápida|r
    .complete 42772,1,1 --3/3 Graveyards purified
step
    .goto 22,49.84,77.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Lápida|r
    .complete 42772,1,2 --3/3 Graveyards purified
step
    #label Spirits exorcised
    .goto 22,51.04,76.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Lápida|r
    .complete 42772,1,3 --3/3 Graveyards purified
step
    #loop
    .goto 22,53.96,79.94,40,0
    .goto 22,47.73,81.17,40,0
    .goto 22,50.3,75.3,40,0
    >>Mata |cRXP_ENEMY_Espectro angustiado|r y |cRXP_ENEMY_Residente perturbado|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    >>Mata al |cRXP_ENEMY_Cañonero Dargal|r |cRXP_WARN_junto a ti|r
    .complete 42771,2 --1/1 Cannoneer Dargal slain
    .mob Cannoneer Dargal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Sumo sacerdote Thel'danis|r y |cRXP_FRIENDLY_Mehlar Hojalba|r.
    .turnin 42772 >>Entrega la misión Terreno sagrado
    .goto 22,51.44,79.02
    .target +High Priest Thel'danis
    .turnin 42771 >>Entrega la misión Manteniendo la paz
    .goto 22,51.35,78.99
    .target +Mehlar Dawnblade
step
    .goto 22,51.62,81.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .accept 42773 >>Acepta la misión Luz reveladora
    .timer 27,RP
    .target Señor Maxwell Tyrosus
step
    .goto 22,52.08,83.26
    #title |cFFFCDC00Sigue la Flecha|r
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42773,1 --1/1 Join Maxwell Tyrosus in the tomb
step
    #completewith next
    #label Commune with Uther
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    #completewith Commune with Uther
    .goto 22,52.08,83.26
    .cast 216268 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Placa conmemorativa|r
    .timer 27,RP
step
    #requires Commune with Uther
    .goto 22,52.08,83.26
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    .goto 22,52.11,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42773 >>Entrega la misión Luz reveladora
    .target Señor Maxwell Tyrosus
    .accept 42774 >>Acepta la misión La esperanza prevalece
step
    .isOnQuest 42774
    .goto 22,52.1,83.03
    .cast 311750 >>Usa |T132161:0|t[Silbato de hipogrifo] afuera.
    .timer 20,Cuenta atrás para desconectar
    .use 311750
step
    .isOnQuest 42774
    .logout >>Desconecta y vuelve a entrar para teletransportarte.
    .timer 20,RP
    .macro Logout,638661 >>Desconecta
-- step
--     .isOnQuest 42774
--     .countdown 20 >>
step
    .goto 23,74.28,53.25
    *|cRXP_WARN_Espera a que termine el temporizador de desconexión, luego vuelve a entrar.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42774 >>Entrega la misión La esperanza prevalece
    .accept 38376 >>Acepta la misión La búsqueda del Alto Señor
    .target Señor Maxwell Tyrosus
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    #completewith Argent Hippogryph
    .goto 23,74.17,53.07
    .cast 183677 >>Haz clic en el |cRXP_PICK_Hipogrifo Argenta|r
    .timer 20,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    .goto 23,70.19,55.87
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    .goto 676,15.69,51.36
    .isOnQuest 38376
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 1488,1 --Lead the paladins of the Argent Crusade into battle
step
    #loop
    .goto 676,15.21,51.51,20,0
    .goto 676,16.52,51.94,20,0
    .isInScenario 775
    >>Mata |cRXP_ENEMY_Demonios|r
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
    >>Mata al |cRXP_ENEMY_Carcelero Zerus|r
    .scenario 1486,1 --Destroy Jailer Zerus
    .mob Jailer Zerus
step
    #title |cFFFCDC00Entra en la cueva|r
    .isInScenario 775
    .goto 676,22.26,61.13,15 >>Entra en la Cueva
step
    #requires Ashbringer
    .isInScenario 775
    .goto 676,23.42,62.88,15,0
    .goto 676,23.83,63.9,15,0
    .goto 676,24.23,63.98,15,0
    .goto 676,26.84,61.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Crematoria|r
    .scenario 1487,1
    .timer 55,RP
    .complete 38376,2 --1/1 Obtain the Ashbringer
step
    .goto 676,26.87,61.25
    .isInScenario 775
    .countdown 55 >>|cRXP_WARN_Espera al Roleplay|r.
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Usa el |cRXP_WARN_Botón de Acción Extra|r
    .scenario 2632,1 --Break free from Balnazzar's control.
    .mob Balnazzar
    .usespell 216693
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Mata a |cRXP_ENEMY_Balnazzar|r
    .complete 38376,3 --1/1 Balnazzar slain
    .mob Balnazzar
step
    .isInScenario 775
    .zone 23 >>Sal de la Instancia (clic derecho en tu marco de personaje) o presiona la macro.
    .macro Leave Instance,236367 >> Sal de la Instancia
step
    .zoneskip 23,1
    .goto 23,74.28,53.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38376 >>Entrega la misión La búsqueda del Alto Señor
    .target Señor Maxwell Tyrosus
    .accept 42811 >>Acepta la misión Nos veremos en Esperanza de la Luz
step
    #completewith next
    #label Search for the Highlord
    .goto 23,75.43,52.65,10,0
    .goto 24,41.98,89.52,5,0
    .goto 24,45.4,83.87,5,0
    .goto 24,41.73,72.95,5,0
    .goto 24,44.64,70.09,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38376 >>Entrega la misión La búsqueda del Alto Señor
    .target Señor Maxwell Tyrosus
    .accept 42811 >>Acepta la misión Nos veremos en Esperanza de la Luz
step
    #completewith Search for the Highlord
    .goto 24,49.9,72.38,20 >>Entra en la Capilla de la Esperanza de la Luz y atraviesa el túnel
step
    #requires Search for the Highlord
    .goto 24,49.9,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 38376 >>Entrega la misión La búsqueda del Alto Señor
    .target Señor Maxwell Tyrosus
    .accept 42811 >>Acepta la misión Nos veremos en Esperanza de la Luz
step
    #completewith next
    #hidewindow
    #label Chapel
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith Chapel
    .goto 24,40.06,92.46,10 >>Entra en la Capilla
step
    #requires Chapel
    #label Artifact Weapon: Retribution
    .goto 24,41.52,90.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Secret Puerta|r
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label Light's Hope
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42811 >>Entrega la misión Nos veremos en Esperanza de la Luz
    .target Señor Maxwell Tyrosus
    .disablecheckbox
step
    #completewith Light's Hope
    .goto 24,46.48,82.49,15,0
    .goto 24,41.21,73.21,15,0
    .goto 24,63.20,37.34,40 >>Sigue la Flecha
step
    #requires Light's Hope
    .goto 24,63.20,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .turnin 42811 >>Entrega la misión Nos veremos en Esperanza de la Luz
    .target Señor Maxwell Tyrosus
]])
--Holy 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefacto Arma: Paladín sagrado
#displayname Arma de artefacto: Sagrado
#next ac) Salón de las órdenes Paladín Parte 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Arma artefacto: Paladín Sagrado
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefacto Arma: Paladín Protección
#displayname Artefacto Arma: Paladín Protección
#next ac) Sagrario de la Orden Paladín Parte 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Arma de artefacto: Protección de paladín
]])
--Retribution 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefacto Arma: Reprensión
#displayname Artefacto Arma: Reprensión
#next ac) Sagrario de la Orden Paladín Parte 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Arma artefacto: Reprensión
]])

--Paladin Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sala de la Orden: Paladín Parte 1
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next ac) Sala de orden La hermandad de los Defias
#chapter
#internal

<< Paladin

step
    #completewith Order Hall Paladin Part 2
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Maxwell Neófitus|r
    .target Señor Maxwell Tyrosus
    .accept 40408 >>Acepta la misión Armas legendarias
    .isQuestAvailable 40408
step
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Retribution >> Retribución(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection >> Protección(Tanque) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin >> Sagrado(Sanador) Cadena de misiones
step
    #include ac) Order Hall Paladin Part 2@A United Force-Order Hall Paladin Part 2
]])

-- --------- Priest ---------

--Discipline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Disciplina
#displayname Arma de artefacto: Disciplina
#next a) Sala de orden Sacerdote Parte 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Acepta la misión La tercera leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto Disciplina|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Entrega la misión La tercera leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Acepta la misión Una segunda leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto Disciplina|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Entrega la misión Una segunda leyenda
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acepta la misión Una leyenda en las manos
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto escogerá automáticamente el artefacto Disciplina|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Entrega la misión Una leyenda en las manos
    .target Alonsus Faol
step
    #completewith the Azure Dragonshrine
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41625 >>Acepta la misión La Cólera de Luz
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41625 >>Acepta la misión La Cólera de Luz
    .target Alonsus Faol
step
    .isOnQuest 41625
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    .isOnQuest 41625
    .zoneskip 702,1
    .goto 702,49.79,80.78
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
step
    .goto 627,28.64,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Kalec|r.
    .turnin 41625 >>Entrega la misión La Cólera de Luz
    .accept 41626 >>Acepta la misión Una nueva amenaza
    .target Archimago Kalec
step
    .zoneskip 627,1
    .isOnQuest 41626
    .goto 627,49.25,47.64
    .zone 629 >>Usa el teletransportador en el centro de Dalaran
step
    .goto 629,30.85,84.43
    >>|cRXP_WARN_Sigue la flecha.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal al Templo del Reposo del Dragón|r.
    *|cRXP_WARN_Nota:|r. Puedes encontrar el portal tras usar el teletransportador en el centro de Dalaran si la flecha es incorrecta por cualquier motivo.
    .complete 41626,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #label the Azure Dragonshrine
    .goto 115,55.96,65.01
    >>|cRXP_WARN_Sigue la Flecha|r.
    .complete 41626,2 --1/1 Travel to the Azure Dragonshrine
step
    #loop
    .goto 115,55.90,64.90,30,0
    .goto 115,56.26,68.12,30,0
    .goto 115,54.10,66.46,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Succiones del vacío|r, |cRXP_PICK_Portales extraños|r, y |cRXP_PICK_Espadas corruptas por el Vacío|r.
    .complete 41626,3 --3/3 Clues Found
step
    .goto 115,56.69,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Dispositivo de comunicación etéreo|r.
    .turnin 41626 >>Entrega la misión Una nueva amenaza
    .target Ethereal Communication Device
    .accept 41627 >>Acepta la misión Un enemigo olvidado
step
    #completewith next
    #hidewindow
    .cast 3365 >>Sigue la Flecha
    .timer 37,Príncipe del Nexo "Roleplay"
step
    .goto 115,56.65,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Interruptor del dispositivo de comunicación|r.
    .complete 41627,1 --1/1 Activate the communication device
step
    .goto 115,56.69,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Kalec|r.
    .turnin 41627 >>Entrega la misión Un enemigo olvidado
    .accept 41628 >>Acepta la misión Ojos del dragón
    .target Image of Kalec
step
    #title Usa el |T254294:0|t[Pergamino de teletransporte al Nexo]
    .goto 114,29.25,28.57
    >>Usa el |T254294:0|t[Pergamino de teletransporte al Nexo]
    .complete 41628,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.19,27.85
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 41628,2 --1/1 Surge Needle scouted
step
    .goto 114,29.66,27.50
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 41628,3 --1/1 Nexus foundation scouted
step
    >>Esto debería entregarse y añadirse a tu registro de misiones automáticamente. Desconecta y vuelve a entrar si no funciona.
    .turnin 41628 >>Entrega la misión Ojos del dragón
    .accept 41629 >>Acepta la misión Dominando el Fuego Sagrado
step
    #loop
    .goto 114,27.40,23.82,35,0
    .goto 114,25.85,26.44,35,0
    .goto 114,27.17,29.80,35,0
    .goto 114,29.52,27.00,35,0
    >>Mata |cRXP_ENEMY_Brasales de cólera|r.
    .complete 41629,1 --1/1 Empowered with Unstable Holy Energy
    .mob Wrath Ember
step
    .goto 114,26.60,23.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Kalec|r.
    .turnin 41629 >>Entrega la misión Dominando el Fuego Sagrado
    .accept 41630 >>Acepta la misión Una explosión de sentencias
    .target Image of Kalec
step
    .goto 114,27.32,20.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Vacío concentrado|r.
    .complete 41630,3 --1/1 North Surge Needle destroyed
step
    .goto 114,24.13,29.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Vacío concentrado|r.
    .complete 41630,2 --1/1 West Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Vacío concentrado|r.
    .complete 41630,1 --1/1 East Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Imagen de Kalec|r.
    .turnin 41630 >>Entrega la misión Una explosión de sentencias
    .accept 41631 >>Acepta la misión La bóveda del Nexo
    .target Image of Kalec
step
    .isOnQuest 41631
    .goto 114,27.84,28.37,30,0
    .goto 114,27.51,26.05
    .enterScenario 1065 >>Entra en la gesta |cRXP_PICK_X|r.
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Mata al |cRXP_ENEMY_Sucesor de fuego|r, |cRXP_ENEMY_Sucesor de hielo|r, y |cRXP_ENEMY_Sucesor de magia|r.
    .scenario 2275,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Mage
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Usa la |T135907:0|t[Sanación relámpago] en |cRXP_FRIENDLY_Azuregos|r.
    .scenario 2275,2 --Azuregos healed to full
    .macro Flash Heal,135907 >>Sanación relámpago
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
    >>Usa |T135928:0|t[Levitar]. |cRXP_WARN_Evita los géiseres de llamas|r.
    .scenario 2277,1 --Reach the Librarium
    .usespell 1706
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>|cRXP_WARN_Espera al "roleplay".|r
    .scenario 2277,2 --Find a way into the vault
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>Mata a la |cRXP_ENEMY_Llama del Juicio|r.
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
    .vehicle 104546 >>Haz clic en |cRXP_FRIENDLY_Azuregos|r
step
    #requires NexusPrinceBilaalA
    .isInScenario 1065
    .goto 736,59.24,20.32
    >>Mata a |cRXP_ENEMY_Príncipe del Nexo Bilaal|r.
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
    .complete 41631,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith next
    #label SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Cólera de luz|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    #completewith SubdueLightsWrathA
    .goto 736,60.64,20.51
    .subzone 8119 >>Haz clic en el |cRXP_PICK_Portal|r.
    --.subzone 13695
step
    #requires SubdueLightsWrathA
    #completewith next
    #hidewindow
    .cast 207949 >>Sigue la Flecha
    .timer 30,Duración de Subyugar
step
    #requires SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Cólera de luz|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Cólera de luz|r.
    .scenario 2281,1 --Claim Light's Wrath
    .complete 41631,2 --1/1 Light's Wrath
step
    #completewith next
    #label LeaveTheNexusVaultA
    .isInScenario 1065
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith LeaveTheNexusVaultA
    .subzone 13695 >>Haz clic en el |cRXP_PICK_Portal a El Nexo|r
    .timer 50,Azuregos "Roleplay"
    *|cRXP_WARN_Nota:|r Las coordenadas no funcionan aquí
step
    #requires LeaveTheNexusVaultA
    .isInScenario 1065
    .goto 736,59.28,20.40
    >>|cRXP_WARN_Espera al "roleplay".|r
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith next
    #label TheNexusVaultA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Kalec|r.
    .turnin 41631 >>Entrega la misión La bóveda del Nexo
    .accept 41632 >>Acepta la misión Un regalo del tiempo
    .target Archimago Kalec
step
    .zoneskip 736,1
    #completewith TheNexusVaultA
    .goto 736,59.28,20.40
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
step
    #requires TheNexusVaultA
    .goto 627,28.64,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Kalec|r.
    .turnin 41631 >>Entrega la misión La bóveda del Nexo
    .accept 41632 >>Acepta la misión Un regalo del tiempo
    .target Archimago Kalec
step
    .isQuestTurnedIn 40938
    #completewith next
    #label AGiftOfTimeA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 41632 >>Entrega la misión Un regalo del tiempo
    .target Alonsus Faol
step
    .isQuestTurnedIn 40938
    #completewith AGiftOfTimeA
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>Haz clic en el |cRXP_PICK_Portal al Templo Luz Abisal|r
step
    .isQuestTurnedIn 40938
    #requires AGiftOfTimeA
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 41632 >>Entrega la misión Un regalo del tiempo
    .target Alonsus Faol
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r.
    .turnin 41632 >>Entrega la misión Un regalo del tiempo
    .target Profeta Velen
]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Sacerdote Sagrado
#displayname Arma artefacto: Sagrado
#next a) Sala de orden Sacerdote Parte 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Acepta la misión La tercera leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sagrado|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45117
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Entrega la misión La tercera leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Acepta la misión Una segunda leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sagrado|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Entrega la misión Una segunda leyenda
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acepta la misión Una leyenda en las manos
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sagrado|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Entrega la misión Una leyenda en las manos
    .target Alonsus Faol
step
    #completewith House Call
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41957 >>Acepta la misión La súplica del vindicador
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41957 >>Acepta la misión La súplica del vindicador
    .target Alonsus Faol
step
    .isOnQuest 41957
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    #label House Call
    .goto 627,37.81,36.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vindicador Boros|r.
    .turnin 41957 >>Entrega la misión La súplica del vindicador
    .accept 41966 >>Acepta la misión Visita a domicilio
    .target Vindicador Boros
step
    .goto 627,36.02,36.61
    >>Usa |T135894:0|t[Purificar] en el |cRXP_ENEMY_Defensor Barrem|r y cúralo. Mata a la |cRXP_ENEMY_Sangre mácula vil|r.
    .complete 41966,1 --1/1 Defender Barrem cured
    .usespell 527
    .target Defender Barrem
    .mob Fel Tainted Blood
step
    .goto 627,37.41,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Defensor Barrem|r.
    .turnin 41966 >>Entrega la misión Visita a domicilio
    .target Defender Barrem
    .accept 41967 >>Acepta la misión Salido de la oscuridad
step
    .goto 627,70.80,43.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Pluma ligera|r.
    .complete 41967,1 --1/1 Flight to Darkstone Isle secured
    .target Lightfeather
step
    .goto 646,34.08,33.57
    >>Mata al |cRXP_ENEMY_Verdugo niskariano|r.
    .complete 41967,2 --1/1 Demon Camp cleared
    .mob Niskaran Executioner
step
    #completewith next
    #hidewindow
    .cast 213109 >>Sigue la Flecha
    .timer 5,Alora "Roleplay"
step
    .goto 646,33.99,33.93
    >>Usa |T135955:0|t[Resurrección] en |cRXP_FRIENDLY_Alora|r.
    .complete 41967,3 --1/1 Alora resurrected
    .macro Resurrection,135955 >>Resurrección
step
    .goto 646,33.99,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alora|r.
    .turnin 41967 >>Entrega la misión Salido de la oscuridad
    .accept 41993 >>Acepta la misión Salvación desde arriba
    .target Alora
step
    .goto 646,33.42,33.18
    >>Mata al |cRXP_ENEMY_Subyugador Valith|r.
    .complete 41993,1 --1/1 Assist Jace Darkweaver
    .mob Subjugator Valith
step
    .goto 646,33.58,33.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jace Tejeoscuro|r.
    .turnin 41993 >>Entrega la misión Salvación desde arriba
    .target Jace Tejeoscuro
    .accept 42074 >>Acepta la misión El regreso de la Luz
step
    #title Atraviesa el portal
    .goto 646,32.04,31.92
    >>|cRXP_WARN_Sigue la flecha y atraviesa el portal.|r
    .complete 42074,1 --1/1 Travel through the Portal on Darkstone Isle
step
    .isOnQuest 42074
    .goto 646,32.04,31.92
    .enterScenario 1085 >>Entra en la gesta |cRXP_PICK_El regreso de la Luz|r.
step
    .isInScenario 1085
    .goto 714,74.57,82.82
    >>Usa |T135907:0|t[Sanación relámpago] en el |cRXP_FRIENDLY_Vindicador Boros|r.
    .scenario 2406,1 --Heal Vindicator Boros to full health.
    .macro Flash Heal,135907 >>Sanación relámpago
    .target Vindicador Boros
step
    .isInScenario 1085
    .goto 714,71.02,72.40
    >>Mata al |cRXP_ENEMY_Comandante Xovoth|r.
    .scenario 2421,1 --Assist Jace Darkweaver.
    .mob Commander Xovoth
step
    .isInScenario 1085
    .goto 714,70.66,71.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal de anclaje|r.
    .scenario 2441,1 --Destroy the Anchoring Crystal
step
    .isInScenario 1085
    .goto 714,71.35,80.38,15,0
    .goto 714,69.37,81.00,10,0
    .goto 714,69.34,78.01
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 2441,2 --Exit the lower levels of the Legion Ship.
step
    .isInScenario 1085
    .goto 714,71.45,73.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Jaula de la Legión|r.
    *|cRXP_WARN_Nota:|r Si todavía estás abajo, sube primero.
    .scenario 2417,1 --Rescue Bo'ja
step
    .isInScenario 1085
    .goto 714,73.07,78.86
    >>Mata al |cRXP_ENEMY_Capitán Naranoth|r.
    .scenario 2446,1 --Defeat Captain Naranoth
    .mob Captain Naranoth
step
    .isInScenario 1085
    .goto 714,70.20,70.53,15,0
    .goto 714,62.43,59.71
    >>Mata a |cRXP_ENEMY_Lady Calindris|r.
    .scenario 2425,1 --Defeat Lady Calindris
step
    .isInScenario 1085
    .goto 714,65.35,59.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_T'uure|r.
    .scenario 2426,1 --T'uure obtained.
    .complete 42074,2 --1/1 Obtain T'uure
step
    .isInScenario 1085
    .goto 714,65.51,60.06
    >>|cRXP_WARN_Espera a que |cRXP_FRIENDLY_Bo'ja|r baje y coloque un portal|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Mago del Portal de Bo'ja|r.
    .scenario 2426,2 --Leave Niskara
step
    .isQuestTurnedIn 40938
    .goto 702,47.75,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r.
    .turnin 42074 >>Entrega la misión El regreso de la Luz
    .target Profeta Velen
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Profeta Velen|r.
    .turnin 42074 >>Entrega la misión El regreso de la Luz
    .target Profeta Velen
]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Sombra
#displayname Arma artefacto: Sombra
#next a) Sala de orden Sacerdote Parte 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Acepta la misión La tercera leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sombra|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Entrega la misión La tercera leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Acepta la misión Una segunda leyenda
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sombra|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Entrega la misión Una segunda leyenda
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acepta la misión Una leyenda en las manos
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Esto elegirá automáticamente el artefacto de Sombra|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Entrega la misión Una leyenda en las manos
    .target Alonsus Faol
step
    #completewith Amassing Darkness
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no es así, equipa una hasta que consigas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40710 >>Acepta la misión La espada en el Crepúsculo
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40710 >>Acepta la misión La espada en el Crepúsculo
    .target Alonsus Faol
step
    .goto 18,13.03,62.46
    >>Usa el |T254294:0|t[Pergamino de campamento de Tirisfal].
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 40710,1 --1/1 Go to the marked location in Tirisfal Glades
    .use 173523
step
    .isOnQuest 40710
    .goto 18,13.03,62.46
    .enterScenario 991 >>Entra en el escenario |cRXP_PICK_Blade in Crepúsculo|r
step
    .isInScenario 991
    .goto 18,13.47,57.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Notas de Martillo de escoria|r.
    .scenario 2221,1 --Find the first clue
step
    .isInScenario 991
    .goto 18,13.21,55.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Slaghammer's Notes|r.
    .scenario 2221,2 --Find the second clue
step
    .isInScenario 991
    .goto 18,13.90,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Notas de Martillo de escoria|r.
    .scenario 2221,3 --Find the third clue
step
    #title |cFFFCDC00Nadar abajo|r
    .isInScenario 991
    .goto 20,37.87,12.57,8,0
    .goto 20,34.13,23.36
    >>|cRXP_WARN_Nada abajo e entra en el pasaje.|r
    .scenario 2031,1 --Enter the tomb at the bottom of the lake
step
    .isInScenario 991
    .goto 20,37.16,41.44
    >>Mata al |cRXP_ENEMY_Tuercehojas crepuscular|r y al |cRXP_ENEMY_Invocador de sombras del Crepúsculo|r.
    >>|cRXP_WARN_Espera para el Roleplay.|r
    .scenario 2032,1 --Defeat the guards at the door to gain access
step
    .isInScenario 991
    .goto 20,37.24,44.71
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 2048,1 --Enter the Tomb of Tyr
step
    .isInScenario 991
    #loop
    .goto 20,40.97,50.29,12,0
    .goto 20,41.22,58.63,12,0
    .goto 20,34.05,59.87,12,0
    .goto 20,33.64,50.57,12,0
    >>Mata a los |cRXP_ENEMY_Twilight Ritualists|r.
    .scenario 2086,1 --Stop the dampening rituals
    .mob Ritualista crepuscular
step
    #label Amassing Darkness
    .isInScenario 991
    .goto 20,37.52,55.05
    >>Mata al |cRXP_ENEMY_Amasando oscuridad|r.
    .scenario 2171,1 --Defeat the Amassing Darkness
    .mob Amassing Darkness
step
    .isInScenario 991
    .goto 20,39.37,79.78,15,0
    .goto 20,41.94,84.31,15,0
    .goto 20,47.78,75.83
    >>|cRXP_WARN_Sigue la flecha.|r Usa |T135739:0|t[Disipación en masa] para matar a los |cRXP_ENEMY_Tentáculos del vacío|r
    .scenario 2089,1 --Fight to the prison chamber
    .mob Void Tendril
    .usespell 311663
step
    .isInScenario 991
    .goto 20,58.77,75.20
    >>Mata al |cRXP_ENEMY_Diácono del Crepúsculo Farthing|r.
    .scenario 2099,1 --Kill the Twilight Deacon
    .mob Twilight Deacon Farthing
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Espada del Imperio Negro|r.
    .scenario 2115,1 --Take the Blade of the Black Empire
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>Usa la |T136201:0|t[|cRXP_WARN_ExtraActionButton|r] (Drenaje tétrico)
    .scenario 2116,1 --Use "Dark Drain" to kill Zakajz forever
    .complete 40710,2 --1/1 Stop the Ritual and acquire the Blade
    .timer 15,Roleplay
step
    #completewith next
    #label BladeInTwilightA
    #hidewindow
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    #completewith BladeInTwilightA
    .goto 20,57.38,73.35
    .zone 627 >>Haz clic en el Portal a la Ciudad de Dalaran.
step
    #requires BladeInTwilightA
    .goto 627,47.32,22.90
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    .isQuestTurnedIn 40938
    #completewith next
    #label BladeInTwilightB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Entrega la misión La espada en el Crepúsculo
    .target Moira Thaurissan
step
    .isQuestTurnedIn 40938
    #completewith BladeInTwilightB
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>Haz clic en el |cRXP_PICK_Portal al Templo de la Luz Abisal|r
step
    .isQuestTurnedIn 40938
    #requires BladeInTwilightB
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Entrega la misión La espada en el Crepúsculo
    .target Moira Thaurissan
step
    #optional
    .goto 627,46.14,21.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Entrega la misión La espada en el Crepúsculo
    .target Moira Thaurissan
]])
--Discipline 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Disciplina
#displayname Arma de artefacto: Disciplina
#next ac) Salón de las Órdenes - Sacerdote (Parte 2)
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Disciplina
]])
--Holy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Sacerdote sagrado
#displayname Arma de artefacto: Sagrado
#next ac) Salón de las Órdenes - Sacerdote (Parte 2)
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Arma artefacto: Sacerdote Sagrado
]])
--Shadow 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Sombra
#displayname Arma de artefacto: Sombra
#next ac) Sala de orden Sacerdote Parte 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Arma artefacto: Sombra
]])

--Priest Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sala de orden Sacerdote Parte 1
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next a) Sacerdote de la Sala de Orden
#chapter
#internal

<< Priest

step
    #completewith Recruit Ishanah2
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonsus Faol|r
    .accept 40706 >>Acepta la misión Una leyenda en las manos
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isQuestAvailable account,91955
    .goto 18,78.96,40.99
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_IMPORTANTE: Selecciona el que ya tienes para obtener un 10% adicional de xp (solo una vez)|r
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Shadow >> Sombra(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Priest >> Sagrado(Sanador) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Discipline >> Disciplina(Sanador) Cadena de misiones
step
    #include ac) Order Hall Priest Part 2@The Light and the Void-Recruit Ishanah
step
    .zoneskip 702,1
    .goto 702,49.79,80.59
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
]])

-- --------- Rogue ---------

--Assassination
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma de artefacto: Asesinato
#displayname Arma de artefacto: Asesinato
#next a) Salón de las Órdenes - Pícaro (Parte 1)
#internal

<< Rogue

step
    #completewith Artifact Weapon: Assassination
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Acepta la misión La última espada
    .skipgossipid 45233
    .choose 1389395
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Entrega la misión La última espada
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Acepta la misión Otra espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Entrega la misión Otra espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Acepta la misión Una espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .choose 1389395
    .skipgossipid 45230
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Entrega la misión Una espada digna
    .target Lord Jorach Ravenholdt
step
    #completewith Felcaller Whitley
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 626,42.37,76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Princesa Tess Cringris|r
    .target Princesa Tess Cringris
    .accept 42501 >>Acepta la misión Terminando el trabajo
    .accept 42502 >>Acepta la misión Sin santuario
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    *|cRXP_WARN_Reloguea si el NPC no está aquí|r
    .accept 43262 >>Acepta la misión Campeona: Garona Semiorco
    .turnin 43262 >>Entrega la misión Campeona: Garona Semiorco
    .target Garona Semiorco
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Acepta la misión Campeona: Vanessa VanCleef
    .turnin 43261 >>Entrega la misión Campeona: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 42502
    .cast 311709 >>Usa |T254294:0|t[Pergamino de Bosque del Ocaso]
    .use 173530
step
    #completewith next
    #label Felcaller Whitley
    .goto 47,19.14,56.43,10,0
    .goto 47,19.62,54.83,10,0
    .goto 47,19.55,54.47,5,0
    .goto 47,19.36,54.99,5,0
    >>Mata a |cRXP_ENEMY_Invocador vil Blancal|r. Despójalo para obtener |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    #completewith Felcaller Whitley
    .goto 47,19.06,53.88,20 >>Entra en la Casa y sube
step
    #requires Felcaller Whitley
    .goto 47,19.06,53.88
    >>Mata a |cRXP_ENEMY_Invocador vil Blancal|r. Despójalo para obtener |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    .goto 47,19.06,53.88
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42502 >>Entrega la misión Sin santuario
step
    >>Usa |T254294:0|t[Pergamino de las Tierras Devastadas]
    .complete 42501,1 --1/1 Travel to Blasted Lands
    .use 173531
step
    .goto 17,37.03,29.04
    >>Mata a |cRXP_ENEMY_Caden Vistasombra|r. Despójalo para obtener |T666475:0|t[|cRXP_LOOT_Mensaje codificado|r].
    .complete 42501,2 --1/1 Caden Shadowgaze slain
    .mob Caden Shadowgaze
step
    .goto 17,37.01,30.04
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42501 >>Entrega la misión Terminando el trabajo
    .accept 42503 >>Acepta la misión Decodificador
step
    #completewith next
    #label Coded Message
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42503,3 --1/1 Information found
step
    #completewith Coded Message
    .goto 17,37.04,30.41
    .cast 214079 >>Usa el |T666475:0|t[Mensaje codificado]
    .timer 25,RP
    .use 138102
step
    #requires Coded Message
    .goto 17,37.04,30.41
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42503,3 --1/1 Information found
    .use 138102
step
    .goto 17,36.98,29.09
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 42503,1 --1/1 Read the Coded Message
-- step
--     .goto 17,39.52,36.49
--     .zone 617 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 17,37.21,29.05
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42503 >>Entrega la misión Decodificador
    .accept 42539 >>Acepta la misión Capa y daga
    .target Malton
step
    #completewith next
    #hidewindow
    #label Blood of the Innocent
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith Blood of the Innocent
    .cast 311704 >>Usa el |T254294:0|t[Pergamino de Bosque del Ocaso]
    .use 173527
step
    #requires Blood of the Innocent
    #completewith next
    #label Blood of the Innocent2
    .goto 47,73.83,46.01,5,0
    .goto 47,73.87,45.53,5,0
    .goto 47,74.27,44.22,5,0
    .goto 47,74.01,44.76,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cuenco|r
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #requires Blood of the Innocent
    #completewith Blood of the Innocent2
    #title |cFFFCDC00Entra en la Casa|r
    .goto 47,73.67,44.08,5 >>Entra en la casa y sube las escaleras
step
    #requires Blood of the Innocent2
    .goto 47,73.64,43.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cuenco|r arriba.
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith next
    #hidewindow
    #label Althea Ebonlocke
    >>Derrota a |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith Althea Ebonlocke
    .goto 47,73.71,44.23,5,0
    .goto 47,74.07,44.69,5,0
    .goto 47,74.29,44.28,5,0
    .goto 47,73.88,45.62,5,0
    .goto 47,73.72,46.12,5 >>Sal de la Casa
    #title |cFFFCDC00Sal de la Casa|r
step
    #requires Althea Ebonlocke
    #completewith next
    #label Althea Ebonlocke2
    >>Derrota a |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #requires Althea Ebonlocke
    #completewith Althea Ebonlocke2
    .goto 47,72.83,46.9,5,0
    .goto 47,72.5,47.26,5,0
    .goto 47,72.34,47.7,5,0
    .goto 47,71.88,46.78,15 >>Entra en la Casa
    #title |cFFFCDC00Entra en la Casa|r
step
    #requires Althea Ebonlocke2
    .goto 47,71.94,46.43
    >>Derrota a |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith next
    #label Skull of the Innocent
    .goto 47,72.38,47.75,5,0
    .goto 47,72.55,47.18,5,0
    .goto 47,73.01,46.9,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Calavera|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    #completewith Skull of the Innocent
    .goto 47,73.99,48.27,10 >>Entra en la Forja
step
    #requires Skull of the Innocent
    .goto 47,73.85,48.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Calavera|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    .goto 47,71.91,47.69
    >>Haz clic en la Ventana Emergente de Entrega de Misión en tu registro de Misiones.
    .turnin 42539 >>Entrega la misión Capa y daga
    .accept 42568 >>Acepta la misión Preparación
    .target Malton
step
    #completewith next
    #label Preparation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    .turnin 42568 >>Entrega la misión Preparación
    .target Garona Semiorco
    .accept 42504 >>Acepta la misión La espada oculta
    .disablecheckbox
step
    #completewith Preparation
    .cast 311712 >>Usa |T254294:0|t[Pergamino del Bosque de Elwynn]
    .use 173532
step
    #requires Preparation
    .goto 37,36.79,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r en Bosque de Elwynn
    .turnin 42568 >>Entrega la misión Preparación
    .target Garona Semiorco
    .accept 42504 >>Acepta la misión La espada oculta
step
    .isOnQuest 42504
    .isQuestNotComplete 42504
    .goto 37,32.05,49.23
    .enterScenario 1123 >>Entra en la Gesta
    *|cRXP_WARN_Solo puedes usar monturas terrestres en este escenario|r.
--HERE
step
    #completewith next
    #label Confront Mathias Shaw.
    .zoneskip 37,1
    .isInScenario 1123
    >>|cRXP_WARN_Espera al Roleplay|r.
    *|cRXP_WARN_No puedes montar en este escenario|r
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isInScenario 1123
    .zoneskip 37,1
    #completewith Confront Mathias Shaw.
    .goto 37,32.05,49.23,40 >>Sigue la Flecha
    .timer 45,RP
step
    #requires Confront Mathias Shaw.
    .goto 37,31.92,48.99
    .isOnQuest 42504
    .isInScenario 1123
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2548,1 --Confront Mathias Shaw.
step
    #completewith Obtain the Kingslayers
    +Entra en |cRXP_WARN_Sigilo|r y evita a los guardias, especialmente a los que tienen marcadores de ojo porque detectan mejor el sigilo.
step
    .isInScenario 1123
    .goto 84,72.35,88.62,15 >>Sigue la Flecha
step
    #completewith next
    #label smoke bomb
    .isInScenario 1123
    .goto 84,70.05,83.16,15,0
    .goto 84,69.96,79.58,15,0
    .goto 84,68.03,79.8,15,0
    .goto 84,66.49,76.54,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cajón|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    .isInScenario 1123
    #completewith smoke bomb
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 84,66.07,74.13,10 >>Entra en Ventormenta y en la casa.
step
    #requires smoke bomb
    .isInScenario 1123
    .goto 84,66.81,73.89,8,0
    .goto 84,66.12,74.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cajón|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    #completewith next
    #label Trader's Hall
    .goto 84,66.38,73.66,5,0
    .isInScenario 1123
    >>Usa la |T458733:0|t[Bomba de humo] dentro de la Casa de Subastas. |cRXP_WARN_Hay un botón debajo del objetivo de la misión|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
step
    .isInScenario 1123
    #completewith Trader's Hall
    #title |cFFFCDC00Sal de la Casa|r
    .goto 84,65.6,74.23,5 >>Sal de la Casa
step
    #requires Trader's Hall
    .goto 84,63.27,73.7,15,0
    .goto 84,61.65,72.46,10,0
    .goto 84,61.65,72.38
    .isInScenario 1123
    >>Usa la |T458733:0|t[Bomba de humo] dentro de la Casa de Subastas. |cRXP_WARN_Hay un botón debajo del objetivo de la misión|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
    .usespell 214645
step
    .goto 84,61.76,72.68,5,0
    .goto 84,62.5,72.22,5,0
    .goto 84,62.7,68.93
    .isInScenario 1123
    >>Usa |T133644:0|t[Robar] en |cRXP_ENEMY_Guardia de la ciudad sospechoso|r
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
    >>Usa |T666475:0|t[Mensaje codificado]. |cRXP_WARN_Hay un botón debajo del objetivo de la misión|r.
    .scenario 2711,2 --Read the Coded Message
step
    #label Garona
    .isInScenario 1123
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2558,1 --Meet Garona at the Pig and Whistle Tavern in Old Town.
step
    .goto 84,75.18,55.28
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Puerta|r
    .scenario 2560,1 --Open the tavern door.
step
    .goto 84,75.96,53.37
    .isInScenario 1123
    >>Mata a las olas de enemigos
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
    #title |cFFFCDC00Sigue la Flecha|r
    >>Usa |T132307:0|t[Sprint] para eludir el viento o mata a |cRXP_ENEMY_Ritualista fatigado|r
    .scenario 2561,1 --Find the Herald in Stormwind Keep.
    .mob Fatigued Ritualist
step
    .goto 84,82.6,28.2
    .isInScenario 1123
    >>Mata a |cRXP_ENEMY_Melris Malagan|r
    .scenario 2562,1 --Assassinate Melris Malagan
    .timer 29.5,RP
    .mob Melris Malagan
step
    #label Obtain the Kingslayers
    .goto 84,82.83,27.93
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .complete 42504,1 --1/1 Obtain the Kingslayers
    .scenario 2563,1 --Wield the Kingslayers.
step
    .goto 84,86.9,37.2
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .scenario 2564,1 --Take the portal to Dalaran.
step
    .achievementComplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    .accept 45727 >>Acepta la misión Uniendo las islas
    .turnin 45727 >>Entrega la misión Uniendo las islas
    .target Archimago Khadgar
step
    .achievementIncomplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    *|cRXP_WARN_Requiere nivel 30|r.
    .accept 45727 >>Acepta la misión Uniendo las islas
    .turnin 45727 >>Entrega la misión Uniendo las islas
    .target Archimago Khadgar
step
    #completewith next
    #label Hall of Shadows
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    .turnin 42504 >>Entrega la misión La espada oculta
    .target Garona Semiorco
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
    .cast 6477 >>Haz clic en la |cRXP_PICK_Aldaba|r
    .gossipoption 45402 >>Habla con |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires Hall of Shadows
    #completewith next
    #label Hall of Shadows2
    .goto 626,48.79,33.36,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    .turnin 42504 >>Entrega la misión La espada oculta
    .target Garona Semiorco
step
    #requires Hall of Shadows
    #completewith Hall of Shadows2
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 626,43.32,63.3,10 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Antorcha|r para salir de la habitación secreta.
step
    #requires Hall of Shadows2
    .goto 626,42.43,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    .turnin 42504 >>Entrega la misión La espada oculta
    .target Garona Semiorco
]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Outlaw
#displayname Artefacto Arma: Outlaw
#next a) Salón de las Órdenes - Pícaro (Parte 1)
#internal

<< Rogue

step
    #completewith Artifact Weapon: Outlaw
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Acepta la misión La última espada
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Entrega la misión La última espada
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Acepta la misión Otra espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Entrega la misión Otra espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Acepta la misión Una espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .skipgossipid 45230 --1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Entrega la misión Una espada digna
    .target Lord Jorach Ravenholdt
step
    #completewith Board the Crimson Veil
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 626,41.28,74.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r
    .accept 40847 >>Acepta la misión Un acuerdo amistoso
    .target Almirante de la flota Tethys
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    *|cRXP_WARN_Reloguea si el NPC no está aquí|r
    .accept 43262 >>Acepta la misión Campeona: Garona Semiorco
    .turnin 43262 >>Entrega la misión Campeona: Garona Semiorco
    .target Garona Semiorco
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Acepta la misión Campeona: Vanessa VanCleef
    .turnin 43261 >>Entrega la misión Campeona: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 40847
    .cast 311705 >>Usa |T413582:0|t[Gilded Piedra de hogar]
    .use 173528
step
    #completewith next
    #label Board the Crimson Veil
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    #completewith Board the Crimson Veil
    .goto 210,40.95,74.28,10 >>Sal de la Casa
    #title |cFFFCDC00Sal de la Casa|r
step
    #requires Board the Crimson Veil
    .goto 210,40.77,69.12
    #title |cFFFCDC00Sigue la Flecha|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r
    .turnin 40847 >>Entrega la misión Un acuerdo amistoso
    .target Almirante de la flota Tethys
    .accept 40849 >>Acepta la misión Los Filos del Terror
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r
    .complete 40849,1 --1/1 Set sail (Optional)
    .skipgossipid 44882 -- Set sail for Azsuna!
    .target Almirante de la flota Tethys
step
    #completewith Fly to Dalaran
    +Solo puedes usar monturas de tierra en este escenario.
step
    #completewith next
    #label the Horizon's Edge
    .isOnQuest 40849
    >>Mata al |cRXP_ENEMY_Contramaestre DeGauza|r
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .isOnQuest 40849
    #completewith the Horizon's Edge
    .goto 630,60.73,68.3,20 >>Aborda el Barco
step
    #requires the Horizon's Edge
    .goto 630,61.13,68.67,10,0
    .goto 630,58.56,67.81
    .isOnQuest 40849
    >>Mata al |cRXP_ENEMY_Contramaestre DeGauza|r y luego sigue la flecha.
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
    #title |cFFFCDC00Sigue la Flecha|r
    .scenario 2117,1 --Find the Dread Admiral Eliza
    .timer 28,RP
step
    .goto 630,56.41,67.29
    .isInScenario 1012
    >>Mata al |cRXP_ENEMY_Lord Barbamar|r
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
    #title |cFFFCDC00Sigue la Flecha|r
    >>Mata a todos los |cRXP_ENEMY_Domaborrascas aterrador|r y evita el |cRXP_WARN_chorro de agua|r.
    .scenario 2133,1 --Pursue the Dread Admiral Eliza into the temple depths
    .mob Dread Squallshaper
step
    .goto 630,53.25,72.06
    .isInScenario 1012
    >>Mata al |cRXP_ENEMY_Almirante del terror Eliza|r
    .scenario 2150,1 --Defeat Eliza
    .mob Dread Admiral Eliza
step
    .goto 630,53.5,71.89
    .isInScenario 1012
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .complete 40849,2 --1/1 Dreadblades obtained
    .scenario 2150,2 --Claim the Dreadblades
step
    #completewith next
    #label Fly to Dalaran
    .goto 630,54.17,71.4,10,0
    .goto 630,55.19,71.34,10,0
    .goto 630,56.04,68.68,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Bloodsail Grifo|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .target Bloodsail Gryphon
step
    #completewith Fly to Dalaran
    .goto 630,56.25,67.9,35 >>Abandona el Templo
step
    #requires Fly to Dalaran
    .goto 630,56.25,67.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Bloodsail Grifón|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .timer 12,RP
    .target Bloodsail Gryphon
step
    .achievementComplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    .accept 45727 >>Acepta la misión Uniendo las islas
    .turnin 45727 >>Entrega la misión Uniendo las islas
    .target Archimago Khadgar
step
    .achievementIncomplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archimago Khadgar|r
    *|cRXP_WARN_Requiere nivel 30|r.
    .accept 45727 >>Acepta la misión Uniendo las islas
    .turnin 45727 >>Entrega la misión Uniendo las islas
    .target Archimago Khadgar
step
    #completewith next
    #hidewindow
    #label The Dreadblades
    .goto 627,52.61,34.02,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r
    .turnin 40849 >>Entrega la misión Los Filos del Terror
    .target Almirante de la flota Tethys
step
    #completewith The Dreadblades
    #label Artifact Weapon: Outlaw
    .goto 627,54.51,31.42,5,0
    .goto 627,54.32,32.84,5,0
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>Haz clic en la |cRXP_PICK_Aldaba|r
    .gossipoption 45402 >>Habla con |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires The Dreadblades
    #completewith next
    #label The Dreadblades2
    .goto 626,48.76,33.81,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r
    .turnin 40849 >>Entrega la misión Los Filos del Terror
    .target Almirante de la flota Tethys
step
    #requires The Dreadblades
    #completewith The Dreadblades2
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Antorcha|r para abrir la puerta de la habitación secreta.
step
    #requires The Dreadblades2
    .goto 626,41.14,74.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r
    .turnin 40849 >>Entrega la misión Los Filos del Terror
    .target Almirante de la flota Tethys
]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Sutileza
#displayname Artefacto Arma: Sutileza
#next a) Salón de las Órdenes - Pícaro (Parte 1)
#internal

<< Rogue

step
    #completewith Artifact Weapon: Subtlety
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Acepta la misión La última espada
    .skipgossipid 45233
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Entrega la misión La última espada
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Acepta la misión Otra espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Entrega la misión Otra espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Acepta la misión Una espada digna
    .target Lord Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Entrega la misión Una espada digna
    .target Lord Jorach Ravenholdt
step
    #completewith Lucian Trias'
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 626,41.04,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .accept 41919 >>Acepta la misión Las sombras revelan
    .target Valeera Sanguinar
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garona Semiorco|r
    *|cRXP_WARN_Reloguea si el NPC no está aquí|r
    .accept 43262 >>Acepta la misión Campeona: Garona Semiorco
    .turnin 43262 >>Entrega la misión Campeona: Garona Semiorco
    .target Garona Semiorco
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Acepta la misión Campeona: Vanessa VanCleef
    .turnin 43261 >>Entrega la misión Campeona: Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    #completewith next
    #label Lucian Trias'
    #hidewindow
    .goto 626,45.01,57.61,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #completewith Lucian Trias'
    .goto 626,29.48,22.39
    .cast 6477 >>Haz clic en la |cRXP_PICK_Aldaba|r
step
    #requires Lucian Trias'
    #completewith next
    #label Lucian Trias'2
    .goto 627,45.6,28.53,10,0
    .goto 627,46.84,28.87,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #requires Lucian Trias'
    #completewith Lucian Trias'2
    .goto 627,53.16,33.12,10 >>Sigue la Flecha
step
    #requires Lucian Trias'2
    .goto 627,54.39,31.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lucian Trias|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Val'zuun|r
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith Val'zuun's intel
    .goto 628,67.4,63.13,15 >>Entra en la Cloaca
step
    #requires Val'zuun's intel
    .isOnQuest 41919
    .goto 628,67.4,63.13
    .gossipoption 45397 >>Habla con |cRXP_FRIENDLY_Val'zuun|r
    .timer 26,RP
    .target Val'zuun
step
    #completewith next
    #label The Shadows Reveal
    .goto 628,73.57,65.69,5,0
    .goto 628,76.45,67.51,5,0
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith The Shadows Reveal
    .goto 628,75.2,65.08,5 >>En pie cerca de la salida de la Alcantarilla |cRXP_WARN_no vayas demasiado lejos|r
step
    #requires The Shadows Reveal
    .goto 628,74.05,63.8
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    .goto 627,27.36,64.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Desmond Penatumba|r
    .target Desmond Gravesorrow
    .complete 41919,1 --1/1 Desmond Gravesorrow's intel
    .skipgossipid 45396 -- <Search the body for clues.
step
    #completewith next
    #label The Shadows Reveal2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Entrega la misión Las sombras revelan
    .target Valeera Sanguinar
    .accept 41920 >>Acepta la misión Una cuestión de sutileza
step
    #completewith The Shadows Reveal2
    #title |cFFFCDC00Entra en la Casa|r
    .goto 627,51.62,68.76,5 >>Entra en la Casa
step
    #requires The Shadows Reveal2
    .goto 627,51.67,70.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Entrega la misión Las sombras revelan
    .target Valeera Sanguinar
    .accept 41920 >>Acepta la misión Una cuestión de sutileza
step
    #completewith next
    #label Rune of Portals
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Esquivar a los Centinelas Arcanos y los remolinos de fuego|r.
    .complete 41920,1 --1/1 Rune of Portals
step
    #completewith Rune of Portals
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 627,56.97,46.87
    .cast 1784 >>Usa |T132320:0|t[Sigilo] antes de entrar en la Casa.
    .usespell 1784
step
    #requires Rune of Portals
    .goto 627,53.60,47.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Esquiva los Centinelas Arcanos y los remolinos de fuego|r.
    .complete 41920,1 --1/1 Rune of Portals
    .target Arcane Sentry
step
    #completewith next
    #label Portals delivered
    .goto 628,74.43,64.05,5,0
    .goto 628,73.03,65.41,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
step
    #completewith Portals delivered
    .goto 628,67.2,63.23,5 >>Entra en la alcantarilla
step
    #requires Portals delivered
    .goto 628,67.2,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
    .skipgossipid 45398 -- <Hand the Rune of Portals to Val'zuun.>
step
    .goto 628,67.82,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41920 >>Entrega la misión Una cuestión de sutileza
    .target Valeera Sanguinar
    .accept 41921 >>Acepta la misión Arrinconando a Akaari
step
    #completewith next
    #label Akaari confronted
    .goto 628,73.34,65.55,5,0
    .goto 628,76.49,67.38,5,0
    >>Mata a |cRXP_ENEMY_Akaari Sombrarboleda|r
    .complete 41921,1 --1/1 Akaari confronted
step
    #completewith Akaari confronted
    .goto 627,59.7,48.09,5 >>Abandona la Alcantarilla
step
    #requires Akaari confronted
    .goto 627,49.89,37.93,5,0
    .goto 627,50.69,40.98,5,0
    .goto 627,49.48,41.21,5,0
    .goto 627,47.78,40.7
    >>Entra en la casa y sube las escaleras para matar a |cRXP_ENEMY_Akaari Sombrarboleda|r
    #title |cFFFCDC00Entra en la Casa|r
    .complete 41921,1 --1/1 Akaari confronted
    .mob Akaari Shadowgore
step
    .goto 627,49.48,41.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41921 >>Entrega la misión Arrinconando a Akaari
    .target Valeera Sanguinar
    .accept 41922 >>Acepta la misión ¡Traidor!
step
    #completewith next
    #label Traitor!
    .goto 627,48.3,40.41,5,0
    .goto 627,48.17,38.22,5,0
    .goto 628,74.48,63.87,5,0
    .goto 628,72.98,65.34,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Entrega la misión ¡Traidor!
    .target Valeera Sanguinar
step
    #completewith Traitor!
    .goto 628,67.53,62.39,5 >>Entra en la Cloaca
step
    #requires Traitor!
    .goto 628,67.53,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Entrega la misión ¡Traidor!
    .target Valeera Sanguinar
step
    .goto 628,67.22,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Val'zuun|r
    .accept 41924 >>Acepta la misión Colmillos del Devorador
    .timer 15,RP
    .target Val'zuun
step
    .goto 628,66.73,61.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 41924,1 --1/1 Use the Twisted Gateway
step
    #completewith next
    #label Akaari Shadowgore
    .isOnQuest 41924
    >>Acércate a |cRXP_ENEMY_Akaari Sombrarboleda|r y esquiva los ojos cuando te saquen del sigilo.
    *Derrota |cRXP_ENEMY_Akaari Sombrarboleda|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    #completewith Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    .cast 1784 >>Usa |T132320:0|t[Sigilo] para acercarte sigilosamente a |cRXP_ENEMY_Akaari Sombrarboleda|r
    .usespell 1784
step
    #requires Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    >>Viaja a |cRXP_ENEMY_Akaari Sombrarboleda|r, esquiva los ojos mientras te sacan del sigilo.
    *Derrota a |cRXP_ENEMY_Akaari Sombrarboleda|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .timer 5,RP
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    .cast 1784 >>Usa |T132320:0|t[Sigilo] y |T133644:0|t[Robar] al |cRXP_ENEMY_Guardaalmas|r.
    *|cRXP_WARN_Hay un botón debajo del objetivo de la misión.|r
    .scenario 2364,1 --Use Pick Pocket on the Soulkeeper.
    .usespell 1784
    .usespell 921
    .mob Soulkeeper
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Jaula|r
    .scenario 2473,1 --Escape the Jailer's Prison.
step
    .goto 741,64.5,47.39
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cajón|r
    .scenario 2473,2 --Reclaim your weapons.
step
    .goto 741,59.76,51.71
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Puerta|r
    .scenario 2473,3 --Open the Holding Cell door.
    .timer 10,RP
step
    .goto 741,51.3,52.8
    .isInScenario 1078
    >>Mata a |cRXP_ENEMY_Xirus|r
    .scenario 2366,1 --Slay Inquisitor Xirus.
    .mob Xirus
step
    .goto 740,52.3,70.38,10,0
    .goto 740,58.4,66.7
    .isInScenario 1078
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 740,58.7,66.87
    .scenario 2367,2 --Find Akaari Shadowgore.
step
    .goto 740,63.61,53.24
    .isInScenario 1078
    >>Mata a |cRXP_ENEMY_Akaari Sombrarboleda|r |cRXP_WARN_Cuando genere clones de sí misma, mátalos primero.|r
    .scenario 2368,1 --Kill Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    .goto 740,63.21,53.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .complete 41924,2 --1/1 Fangs of the Devourer
    .scenario 2369,1 --Wield the Fangs of the Devourer.
step
    #completewith next
    #hidewindow
    #label Fangs of the Devourer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Entrega la misión Colmillos del Devorador
    .target Valeera Sanguinar
step
    #completewith Fangs of the Devourer
    .zoneskip 740,1
    .zone 628 >>Abandona la Instancia (clic derecho en tu marco) o presiona la macro.
    .macro Leave Instance,236367 >> Abandona la Instancia
step
    #requires Fangs of the Devourer
    #hidewindow
    #completewith next
    #label Fangs of the Devourer2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Entrega la misión Colmillos del Devorador
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer
    #completewith Fangs of the Devourer2
    .zoneskip 626
    .goto 628,73.27,65.13,5,0
    .goto 628,76.51,67.51,5,0
    .goto 627,59.65,47.69,5 >>Abandona la alcantarilla
step
    #requires Fangs of the Devourer2
    #hidewindow
    #completewith next
    #label Fangs of the Devourer3
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Entrega la misión Colmillos del Devorador
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer2
    #completewith Fangs of the Devourer3
    #label Artifact Weapon: Subtlety
    .zoneskip 626
    .goto 627,54.5,31.45,5,0
    .goto 627,54.32,32.81
    .cast 6477 >>Haz clic en la |cRXP_PICK_Aldaba|r
    .gossipoption 45402 >>Habla con |cRXP_FRIENDLY_Lucian Trias|r
    .target Lucian Trias
 step
    #requires Fangs of the Devourer3
    #hidewindow
    #completewith next
    #label Fangs of the Devourer4
    .goto 626,49.45,32.64,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Entrega la misión Colmillos del Devorador
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer3
    #completewith Fangs of the Devourer4
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Antorcha|r para abrir la puerta de la habitación secreta.
step
    #requires Fangs of the Devourer4
    .goto 626,40.88,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Entrega la misión Colmillos del Devorador
    .target Valeera Sanguinar
]])
--Assassination 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefacto Arma: Asesinato
#displayname Arma de artefacto: Asesinato
#next ac) Salón de las Órdenes Pícaro Parte 2
#internal

<< Rogue

step
    #include a) Arma de artefacto: Asesinato
]])
--Outlaw 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma de artefacto: Forajido
#displayname Arma de artefacto: Forajido
#next ac) Salón de las Órdenes Pícaro Parte 2
#internal

<< Rogue

step
    #include a) Artefacto Arma: Outlaw
]])
--Subtlety 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacta: Sutileza
#displayname Arma de artefacto: Sutileza
#next ac) Salón de las Órdenes Pícaro Parte 2
#internal

<< Rogue

step
    #include a) Artefacto Arma: Sutileza
]])

--Rogue Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Salón de las Órdenes - Pícaro (Parte 1)
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next ac) Sede de Clase Pícaro
#chapter
#internal

<< Rogue

step
    #completewith Lethal Efficiency22
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Ravenholdt
    .accept 40840 >>Acepta la misión Una espada digna
step
    .isOnQuest 40840
    .goto 626,41.7,75.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante de la flota Tethys|r, |cRXP_FRIENDLY_Valeera Sanguinar|r,  y la  |cRXP_FRIENDLY_Princesa Tess Cringrís|r.
    .complete 40840,2 --1/1 Valeera's plan considered
    .complete 40840,1 --1/1 Tethys' plan considered
    .complete 40840,3 --1/1 Tess' plan considered
    .skipgossipid 45256
    .skipgossipid 45235
    .skipgossipid 45103
    .target Almirante de la flota Tethys
    .target Valeera Sanguinar
    .target Princesa Tess Cringris
step
    .isQuestAvailable 40840
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Assassination >> Asesinato(DPS) cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Outlaw >> Outlaw(DPS) cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Subtlety >> Sutileza(DPS) cadena de misiones
step
    #include ac) Order Hall Rogue Part 2@Honoring Success-Lethal Efficiency2
]])

-- --------- Shaman ---------

--Elemental
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacta: Elemental
#displayname Arma de artefacto: Elemental
#next a) Sala de orden Chamán Parte 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Acepta la misión Tu máximo potencial
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto Elemental|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Entrega la misión Tu máximo potencial
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Acepta la misión Expandiendo tus horizontes
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto elemental|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Entrega la misión Expandiendo tus horizontes
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Acepta la misión Los elementos nos llaman...
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto elemental|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389398
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Entrega la misión Los elementos nos llaman...
    .target Thrall
step
    #completewith The Coming Storm
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .zoneskip 726,1
    .goto 726,34.18,77.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rehgar Furiatierra|r
    .accept 43334 >>Acepta la misión La tormenta inminente
    .target Rehgar Furiatierra
step
    .goto 725,34.07,74.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rehgar Furiatierra|r
    .accept 43334 >>Acepta la misión La tormenta inminente
    .target Rehgar Furiatierra
step
    .isOnQuest 43334
    .goto 726,34.18,77.80,-1
    .goto 725,34.07,74.37,-1
    .zone 379 >>Haz clic en |cRXP_FRIENDLY_Graddoc|r
    .target Graddoc
step
    #label The Coming Storm
    .goto 379,66.90,56.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xuen|r
    .turnin 43334 >>Entrega la misión La tormenta inminente
    .accept 43338 >>Acepta la misión El códice de Ra
    .target Xuen
step
    .goto 390,22.39,26.70
    >>|cRXP_WARN_Sigue la Flecha|r
    .complete 43338,1 --1/1 Travel to the Guo-Lai Halls
step
    .zoneskip 395
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,55.19,91.12,12 >>Entra en Guo-Lai Halls
step
    #completewith TheEdictsOfXA
    >>Mata a los |cRXP_ENEMY_Mogu Licores|r en Guo-Lai Halls
    *|cRXP_WARN_Evade a los |cRXP_ENEMY_Mogu Statues|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    #completewith next
    #label TheEdictOfFireA
    >>Mata al |cRXP_ENEMY_Xioliang|r. Despójalo para |T1017867:0|t[|cRXP_LOOT_Edict of Fuego|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,47.43,81.40,15,0
    .goto 395,52.13,63.98,25,0
    .goto 395,67.44,68.62,25 >>Entra en Guo-Lai Ritual Chamber
step
    #hidewindow
    #completewith TheEdictOfFireA
    .goto 395,74.25,53.19,50 >>Sigue la Flecha
step
    #requires TheEdictOfFireA
    .goto 395,74.83,51.02
    >>Mata al |cRXP_ENEMY_Xioliang|r. Despójalo para |T1017867:0|t[|cRXP_LOOT_Edict of Fuego|r].
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    #label TheEdictOfStoneA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Statue of Zhu de la Piedra Eterna|r.
    >>Mata a |cRXP_ENEMY_Zhu de la Piedra Eterna|r. Despójalo para obtener el |T442737:0|t[|cRXP_LOOT_Edict of Piedra|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,64.19,66.71,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,33.16,20.93,15,0
    .goto 395,48.87,30.24,15 >>Entra en Guo-Lai Vault
step
    #hidewindow
    #completewith TheEdictOfStoneA
    .goto 395,48.87,30.24,50 >>Sigue la Flecha
step
    #requires TheEdictOfStoneA
    .goto 395,48.87,30.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Estatua de Zhu de la Piedra Eterna|r.
    >>Mata al |cRXP_ENEMY_Zhu de la Piedra Eterna|r. Despójalo para |T442737:0|t[|cRXP_LOOT_Edict of Piedra|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Zhu of the Eternal Stone
step
    #completewith next
    #label TheEdictOfStormA
    >>Mata al |cRXP_ENEMY_Dragón del trueno Nalak'Ra|r. Despójalo para |T839911:0|t[|cRXP_LOOT_Edict of Tormenta|r].
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
    .zone 396 >>Entra en Hall of the Serpent
    *|cRXP_WARN_NOTA:|r La primera runa en el centro es la segura, solo pisa esas.
step
    #requires TheEdictOfStormA
    .goto 396,57.75,50.75
    >>Mata a |cRXP_ENEMY_Dragón del trueno Nalak'Ra|r. Despójalo para obtener el |T839911:0|t[|cRXP_LOOT_Edict of Tormenta|r].
    .complete 43338,4 --1/1 The Edict of the Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    #label TheCodexofRaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rehgar Furiatierra|r
    .turnin 43338 >>Entrega la misión El códice de Ra
    .accept 39771 >>Acepta la misión La voz del trueno
    .target Rehgar Furiatierra
step
    #completewith TheCodexofRaA
    #title |cFFFCDC00Revisar nota|r
    .goto 395,67.13,14.55,15,0
    .goto 395,70.22,18.57,15,0
    .goto 395,68.17,24.88,15,0
    .goto 395,63.00,25.50,15 >>Vuelve escaleras arriba
    *|cRXP_WARN_NOTE:|r La primera runa en el centro es la segura, solo pisa sobre esas.
step
    #requires TheCodexofRaA
    .goto 395,53.19,61.45
    >>Mata a los |cRXP_ENEMY_Mogu Licores|r en las Salas Guo-Lai
    *|cRXP_WARN_Evita los |cRXP_ENEMY_Mogu Statues|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    .goto 395,47.11,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rehgar Furiatierra|r
    .turnin 43338 >>Entrega la misión El códice de Ra
    .accept 39771 >>Acepta la misión La voz del trueno
    .target Rehgar Furiatierra
step
    #completewith next
    #label TheVoiceOfThunderA
    >>|cRXP_WARN_Sigue la Flecha|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    #completewith TheVoiceOfThunderA
    #title Abandona Guo-Lai Halls
    .goto 390,22.55,27.08,15 >>|cRXP_WARN_Abandona Guo-Lai Halls|r
step
    #requires TheVoiceOfThunderA
    .goto 379,68.63,57.01
    >>|cRXP_WARN_Sigue la Flecha|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    .isOnQuest 39771
    .goto 379,68.6,57.0
    .enterScenario 976 >>Entra en el |cRXP_PICK_Maestro de las tormentas|r escenario.
step
    .isInScenario 976
    .goto 379,68.6,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xuen|r
    .scenario 1992,1 --Speak with the White Tiger.
    .skipgossipid 45121
    .target Xuen
step
    .isInScenario 976
    #completewith next
    #label DefeatTheGiantslayerA
    >>Derrota a |cRXP_ENEMY_Sigurd el Asesino de Gigantes|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    #completewith DefeatTheGiantslayerA
    .goto 379,69.32,52.72
    .gossipoption 45122 >>Habla con |cRXP_FRIENDLY_Xuen|r
    .target Xuen
step
    #requires DefeatTheGiantslayerA
    .isInScenario 976
    .goto 379,69.7,53.0
    >>Derrota a |cRXP_ENEMY_Sigurd el Asesino de Gigantes|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .timer 53,Roleplay de Xuen
    .mob Sigurd the Giantslayer
step
    .isInScenario 976
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xuen|r
    .goto 379,66.7,51.2
    .scenario 1999,1 --Speak with Xuen to Begin
    .target Xuen
    .skipgossipid 45039
step
    .isInScenario 976
    .goto 379,66.7,51.2
    >>Derrota a |cRXP_ENEMY_Chen Cerveza de Trueno|r y a |cRXP_ENEMY_Li Li Cerveza de Trueno|r
    .scenario 1999,2 --Chen Stormstout Defeated
    .scenario 1999,3 --Li Li Stormstout Defeated
    .mob Chen Cerveza de Trueno
    .mob Li Li Cerveza de Trueno
step
    #completewith next
    #label WeaponsOfStormA
    .isInScenario 976
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Fist of Ra Den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    #completewith WeaponsOfStormA
    #title Entra en el Templo
    .goto 379,68.60,45.89,15 >>Entra en el Templo del Tigre Blanco
step
    #requires WeaponsOfStormA
    .isInScenario 976
    .goto 379,68.79,43.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Fist of Ra Den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
    .timer 25,Duración del Roleplay
step
    .isInScenario 976
    .goto 379,68.8,43.7
    >>Mata a |cRXP_ENEMY_Señor Kra'vos|r.
    .scenario 2079,1 --Defeat Lord Kra'vos
    .timer 27,Duración del Roleplay
    .mob Low Inquisitor
    .mob Lord Kra'vos
step
    .goto 379,68.79,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Puerta Astral hacia la Vorágine|r
    .complete 39771,3 --1/1 Return to the Maelstrom
step
    #optional
    .isQuestTurnedIn 41510
    .goto 726,34.15,77.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rehgar Furiatierra|r
    .turnin 39771 >>Entrega la misión La voz del trueno
    .target Rehgar Furiatierra
step
    .goto 726,33.48,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rehgar Furiatierra|r
    .turnin 39771 >>Entrega la misión La voz del trueno
    .target Rehgar Furiatierra
]])
--Enhancement
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Mejora
#displayname Artefacto Arma: Mejora
#next a) Sala de orden Chamán Parte 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Acepta la misión Tu máximo potencial
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Esto recogerá automáticamente el artefacto Mejora|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Entrega la misión Tu máximo potencial
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Acepta la misión Expandiendo tus horizontes
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Esto recogerá automáticamente el artefacto Mejora|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Entrega la misión Expandiendo tus horizontes
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Acepta la misión Los elementos nos llaman...
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Esto automáticamente seleccionará el artefacto Mejora|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389399
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Entrega la misión Los elementos nos llaman...
    .target Thrall
step
    #completewith Where the Hammer Falls
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .zoneskip 726,1
    .goto 726,34.51,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Clamatormentas Mylra|r.
    .accept 42931 >>Acepta la misión Donde cae el martillo
    .target Clamatormentas Mylra
step
    .goto 725,35.76,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Clamatormentas Mylra|r.
    .accept 42931 >>Acepta la misión Donde cae el martillo
    .target Clamatormentas Mylra
step
    #optional
    .zoneskip 726,1
    .goto 726,60.13,66.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_FRIENDLY_Picotormenta|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Picotormenta
step
    .goto 725,35.48,77.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Picotormenta|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Picotormenta
step
    #label Where the Hammer Falls
    .goto 207,47.10,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .turnin 42931 >>Entrega la misión Donde cae el martillo
    .target Thrall
    .accept 42932 >>Acepta la misión La información de la Madre Pétrea
step
    .goto 207,56.35,12.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therazane|r.
    .turnin 42932 >>Entrega la misión La información de la Madre Pétrea
    .target Therazane
    .accept 42933 >>Acepta la misión Una maldición de troggs contra la tierra
    .accept 42935 >>Acepta la misión El rescate de los dracos de piedra
    .accept 42936 >>Acepta la misión Jugada decisiva
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
    >>Mata a los |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #completewith StoneDrakesRescuedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Disassembled Opalescent Guardianes|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label StoneDrakesRescuedA
    >>Mata a los |cRXP_ENEMY_Felrock Troggs|r alrededor de los |cRXP_FRIENDLY_Stone Drakes|r.
    .complete 42935,1 --6/6 Stone Drakes Rescued
    .target Stone Drake
step
    #completewith OpalescentGuardiansRebuiltA
    >>Mata a los |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #label OpalescentGuardiansRebuiltA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Disassembled Opalescent Guardianes|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label FelrockTroggsSlainA
    >>Mata a los |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    .goto 207,31.22,20.94
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 42936,2 --5/5 Guardians Escorted to Aeosera
step
    .goto 207,56.35,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therazane|r.
    .turnin 42933 >>Entrega la misión Una maldición de troggs contra la tierra
    .turnin 42935 >>Entrega la misión El rescate de los dracos de piedra
    .turnin 42936 >>Entrega la misión Jugada decisiva
    .accept 42937 >>Acepta la misión La destrucción de Rocaguja
    .target Therazane
step
    .goto 207,56.73,12.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Aeosera|r
    .complete 42937,1 --1/1 Fly Aeosera to Needlerock
    .timer 60,Duración del Vuelo
step
    .goto 207,31.71,31.29
    >>|cRXP_WARN_Espera para el Roleplay.|r
    .complete 42937,2 --1/1 Assault Needlerock with Aeosera
step
    .goto 207,25.24,30.33
    >>Temporizador 60
step
    .goto 207,24.21,29.70
    >>Mata a |cRXP_ENEMY_Borlock de las profundidades|r.
    .complete 42937,3 --1/1 Borlock of the Deeps slain
    .mob Borlock of the Deeps
step
    .goto 207,56.36,12.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therazane|r.
    .turnin 42937 >>Entrega la misión La destrucción de Rocaguja
    .target Therazane
step
    .goto 207,56.54,12.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .accept 40224 >>Acepta la misión El martillo en las profundidades
    .target Thrall
step
    .goto 207,56.39,12.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal to the Derrumbamiento Depths|r
    .complete 40224,1 --1/1 Enter the Crumbling Depths
step
    .isOnQuest 40224
    .goto 207,56.39,12.78
    .enterScenario 950 >>Entra en el |cRXP_PICK_Cleansing the Deep|r escenario.
step
    .isInScenario 950
    .goto 729,33.08,72.98,35,0
    .goto 729,37.17,72.79
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 1902,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    #loop
    .goto 729,42.73,72.45,30,0
    .goto 729,39.10,83.23,30,0
    >>Mata a los |cRXP_ENEMY_Devouring Imps|r.
    .scenario 1905,1 --Defeat all the Devouring Imps.
    .mob Devouring Imp
step
    .isInScenario 950
    .goto 729,48.80,78.32,35,0
    .goto 729,54.62,79.55,35,0
    .goto 729,59.60,82.33
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 1906,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    .goto 729,62.77,79.31
    >>>Mata al |cRXP_ENEMY_Corrupted Gyreworm|r.
    .scenario 1907,1 --Slay the Corrupted Gyreworm.
    .mob COrrupted Gyreworm
step
    .isInScenario 950
    .goto 729,62.71,67.05,35,0
    .goto 729,59.56,65.26
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 1908,1 --Follow the trail to find Geth'xun.
step
    .goto 729,54.30,54.58
    .isInScenario 950
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las rocas que rodean la |cRXP_PICK_Martillo Maldito|r.
    .scenario 1909,1 --Acquire the Doomhammer.
    .complete 40224,2 --Acquire the Doomhammer
step
    .isInScenario 950
    .goto 729,52.96,53.11
    >>Mata a |cRXP_ENEMY_Geth'xun|r.
    .scenario 1910,1 --Slay Geth'xun.
    .mob Geth'xun
step
    .isInScenario 950
    .goto 729,52.72,53.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_FRIENDLY_Clamatormentas Mylra|r.
    .scenario 1911,1 --Help Stormcaller Mylra.
    .target Clamatormentas Mylra
step
    .zoneskip 729,1
    #completewith next
    #label ReturnToTheMaelstromA
    #hidewindow
    .complete 40224,3 --1/1 Return to the Maelstrom
step
    #completewith ReturnToTheMaelstromA
    .goto 729,53.13,55.80
    .zone 207 >>Haz clic en la |cRXP_FRIENDLY_Picotormenta|r.
step
    #requires ReturnToTheMaelstromA
    .goto 207,56.39,12.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_FRIENDLY_Picotormenta|r.
    .complete 40224,3 --1/1 Return to the Maelstrom
    .target Picotormenta
step
    .goto 726,34.52,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Clamatormentas Mylra|r.
    .turnin 40224 >>Entrega la misión El martillo en las profundidades
    .target Clamatormentas Mylra
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Chamán de restauración
#displayname Artefacto Arma: Restauración
#next a) Sala de orden Chamán Parte 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Acepta la misión Tu máximo potencial
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Restauración|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Entrega la misión Tu máximo potencial
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Acepta la misión Expandiendo tus horizontes
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Restauración|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Entrega la misión Expandiendo tus horizontes
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Acepta la misión Los elementos nos llaman...
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Restauración|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389400
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Entrega la misión Los elementos nos llaman...
    .target Thrall
step
    #completewith ThirdClueA
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 726,33.80,79.21,-1
    .goto 725,31.97,74.72,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erunak Hablapiedra|r.
    .accept 43644 >>Acepta la misión Hacia las profundidades
    .target Erunak Stonespeaker
step
    .goto 726,33.69,78.65,-1
    .goto 725,33.81,75.85,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Burbuja de Vashj'ir|r.
    .complete 43644,1 --1/1 Travel to Vashj'ir with Erunak
    .target Bubble of Vashj'ir
step
    .goto 205,43.62,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erunak Hablapiedra|r.
    .turnin 43644 >>Entrega la misión Hacia las profundidades
    .target Erunak Stonespeaker
    .accept 43645 >>Acepta la misión Rastro de Hablaolas
step
    .goto 205,40.50,74.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Adelee's Bastón|r.
    .complete 43645,1 --1/1 First Clue Found
step
    #completewith next
    #label ThirdClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Adelee's Diario|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #title |cFFFCDC00Enter the room|r
    #completewith ThirdClueA
    .goto 205,33.10,68.76,10 >>|cRXP_WARN_Entra a la sala.|r
step
    #requires ThirdClueA
    .goto 205,33.08,67.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Diario de Adelee|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #completewith next
    #label SecondClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    #title |cFFFCDC00Abandona la sala|r
    #completewith SecondClueA
    .goto 205,33.11,69.01,10 >>|cRXP_WARN_Abandona la sala.|r
step
    #requires SecondClueA
    .goto 205,37.31,69.81,35,0
    .goto 205,39.15,56.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    .goto 205,43.60,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erunak Hablapiedra|r.
    .turnin 43645 >>Entrega la misión Rastro de Hablaolas
    .target Erunak Stonespeaker
    .accept 40341 >>Acepta la misión Trono de las Mareas: Poder de Azshara
    .goto 204,70.71,29.33,35,0
step
    .goto 204,70.91,29.74
    >>|cRXP_WARN_Puedes usar una montura submarina como |T133936:0|t[Tortuga marina].
    .complete 40341,1 --1/1 Travel to the Abyssal Maw
step
    .goto 204,69.18,25.52
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 40341,2 --1/1 Enter the Throne of Tides
step
    .isOnQuest 40341
    .goto 204,69.18,25.52
    .enterScenario 1066 >>Entra en el escenario |cRXP_PICK_The Oscuro Reina and the Sea|r.
step
    .isInScenario 1066
    .goto 742,50.09,82.31
    >>Usa |T136044:0|t[Oleada de sanación] en el |cRXP_FRIENDLY_Gigante de mar|r.
    .scenario 2282,1 --Heal the Sea Giant.
    .target Grash
    .usespell 8004
step
    .isInScenario 1066
    .goto 742,49.93,82.67
    >>Mata a los |cRXP_ENEMY_Naga Brutes|r.
    .scenario 2282,2 --Kill the Naga Brutes.
step
    .isInScenario 1066
    .goto 742,50.04,82.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grash|r.
    .scenario 2282,3 --Recruit the Sea Giant.
    .target Grash
    .skipgossipid 45587
    .skipgossipid 45621
step
    .isInScenario 1066
    .goto 742,49.91,55.50
    >>Mata a los |cRXP_ENEMY_Frenzied Deep Sea Makrura|r, |cRXP_ENEMY_Clamamareas zithreenai|r, y los |cRXP_ENEMY_
    .scenario 2283,1 --Defeat Adelee's Guards.
step
    .isInScenario 1066
    .goto 742,50.05,51.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Hablaolas Adelee|r.
    .scenario 2283,2 --Rescue Adelee.
    .target Wavespeaker Adelee
step
    .isInScenario 1066
    .goto 742,49.88,54.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grash|r.
    .scenario 2284,1 --Ask Grash to Smash the Ice Wall
    .target Grash
    .skipgossipid 45543
step
    .isInScenario 1066
    .goto 742,49.94,42.15
    >>Mata a |cRXP_ENEMY_Kra'liss|r.
    .scenario 2284,2 --Defeat Kra'liss
    .mob Kra'liss
step
    .isInScenario 1066
    .goto 742,49.92,30.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Burbuja Arriba|r.
    .scenario 2286,1 --Use Erunak's spell to ascend the riptide.
step
    #title |cFFFCDC00Esquiva las olas|r
    .isInScenario 1066
    .goto 743,50.48,56.05
    >>|cRXP_WARN_Esquiva las olas y sigue la flecha.|r
    .scenario 2286,2 --Run through the wave gauntlet.
step
    .isInScenario 1066
    .goto 743,50.64,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grash|r.
    .scenario 2287,1 --Ask Grash to destroy the ice wall.
    .target Grash
    .skipgossipid 45472
step
    .goto 743,50.53,42.91
    .isInScenario 1066
    >>Mata a |cRXP_ENEMY_Lady Zithreen|r.
    .scenario 2287,2 --Slay Lady Zithreen.
    .mob Lady Zithreen
step
    .isInScenario 1066
    .goto 743,50.56,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Sharas'dal|r.
    .scenario 2288,1 --Pick up Sharas'dal.
    .complete 40341,3 --1/1 Acquire Sharas'dal
    .timer 35,Duración del Roleplay
step
    .goto 743,50.57,42.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Burbuja a la Vorágine|r.
    .complete 40341,4 --1/1 Return to the Maelstrom
step
    .goto 726,34.53,76.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Clamatormentas Mylra|r.
    .turnin 40341 >>Entrega la misión Trono de las Mareas: Poder de Azshara
    .target Clamatormentas Mylra
]])
--Elemental 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Elemental
#displayname Arma de artefacto: Elemental
#next ac) Cámara de Orden del Chamán Parte 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Arma artefacta: Elemental
]])
--Enhancement 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Mejora
#displayname Arma de artefacto: Mejora
#next ac) Salón de la Orden Chamán Parte 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Mejora
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Chamán de restauración
#displayname Artefacto Arma: Restauración
#next ac) Salón de la Orden Chamán Parte 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Chamán de restauración
]])

--Shaman Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sala de orden Chamán Parte 1
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next ac) Sala de orden Chamán
#chapter
#internal

<< Shaman

step
    #completewith Azeroth Needs You2
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Acepta la misión Los elementos nos llaman...
    .target Thrall
step
    .isQuestAvailable 41335
    .isQuestAvailable account,91955
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_IMPORTANTE: Selecciona el que ya tienes para obtener un 10% adicional de xp (solo una vez)|r
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Elemental >> Elemental(DPS) cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Enhancement >> Mejora(DPS) cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman >> Restauración(Sanador) cadena de misiones
step
    #include ac) Order Hall Shaman Part 2@A Ring Reforged-Azeroth Needs You
step
    .zoneskip 726,1
    .goto 726,29.81,52.02
    .zone 627 >>Haz clic en el |cRXP_PICK_Portal a Dalaran|r.
]])

-- --------- Warlock ---------

--Affliction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Aflicción
#displayname Arma artefacta: Aflicción
#next a) Sagrario de Clase Brujo Parte 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_en la sede de tu clase|r.
    .accept 44089 >>Acepta la misión Un arsenal más grande
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Aflicción|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389401
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Entrega la misión Tu máximo potencial
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_en la sede de tu clase|r.
    .accept 43984 >>Acepta la misión El escrito vuelve a abrirse
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto Aflicción|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389401
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Entrega la misión El escrito vuelve a abrirse
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acepta la misión El tomo de implementos infestados
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Affliction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389401
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Entrega la misión El tomo de implementos infestados
    .target Calydus
step
    #completewith Following the Curse
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Acepta la misión Ulthalesh, la Cosechadora Vientomuerto
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Acepta la misión Ulthalesh, la Cosechadora Vientomuerto
    .target Calydus
step
    .isOnQuest 40495
    .zone 47 >>Usa el |T254294:0|t[Pergamino de Bosque del Ocaso]
    .use 173527
step
    .goto 47,77.45,35.87
    >>|cRXP_WARN_Sigue la flecha.|r
    .complete 40495,1 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r y derrótalo
    .complete 40495,2 --1/1 Convince Revil to help.
    .timer 6,Revil Roleplay
    .target Revil Kost
    .skipgossipid 44918
step
    #label Following the Curse
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40495 >>Entrega la misión Ulthalesh, la Cosechadora Vientomuerto
    .accept 40588 >>Acepta la misión Siguiendo a la maldición
    .target Revil Kost
step
    .isOnQuest 40588
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Mata a los |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .isOnQuest 40588
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escolta a |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40588
    .goto 47,85.55,40.69
    .countdown 20 >>Mata a los |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Quédate cerca de Ariden|r
    .isOnQuest 40588
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escolta a |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40588
    .goto 42,44.33,34.54
    .countdown 20 >>Mata a los |cRXP_ENEMY_Dark Riders|r
step
    #title Permanece cerca de Ariden
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escolta a |cRXP_FRIENDLY_Revil Kost|r
    .complete 40588,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40588 >>Entrega la misión Siguiendo a la maldición
    .accept 40604 >>Acepta la misión Perturbando el pasado
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Diario desgarrado|r.
    .complete 40604,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Diario maltrecho|r
    .turnin 40604 >>Entrega la misión Perturbando el pasado
    .accept 40606 >>Acepta la misión El camino señalado
    .target Battered Journal
step
    .goto 42,52.13,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Brújula|r.
    .complete 40606,1 --1/1 Ariden's Compass
step
    .goto 42,52.42,34.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40606 >>Entrega la misión El camino señalado
    .accept 40611 >>Acepta la misión El destino del Paso de la Muerte
    .target Revil Kost
step
    #completewith next
    #hidewindow
    .cast 198335 >>Sigue la Flecha
    .timer 20,Roleplay
step
    .goto 42,35.57,35.52
    >>Usa el |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Afina la brújula).
    .complete 40611,1 --1/1 Attuned at Deadman's Crossing
step
    #completewith next
    #hidewindow
    .cast 198335 >>Sigue la Flecha
    .timer 15,Roleplay
step
    .goto 42,46.99,62.32
    >>Usa el |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Afina la brújula).
    .complete 40611,3 --1/1 Attuned at the bridge
step
    #completewith next
    #label TheFateOfDeadwindA
    >>Usa la |T338784:0|t[|cRXP_WARN_Botón de acción extra|r] (Afina la brújula).
    .complete 40611,2 --1/1 Attuned at the church
step
    #title |cFFFCDC00Entra en la iglesia|r
    #completewith TheFateOfDeadwindA
    .goto 42,40.66,77.80,6 >>|cRXP_WARN_Sigue la flecha hacia la iglesia.|r
step
    #requires TheFateOfDeadwindA
    #completewith next
    #hidewindow
    .cast 198335 >>Sigue la Flecha
    .timer 13,Roleplay
step
    #requires TheFateOfDeadwindA
    .goto 42,40.82,78.50
    >>Usa el |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Afina la brújula).
    .complete 40611,2 --1/1 Attuned at the church
step
    .goto 42,49.46,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40611 >>Entrega la misión El destino del Paso de la Muerte
    .accept 41155 >>Acepta la misión Los jinetes oscuros
    .target Revil Kost
step
    .isOnQuest 41155
    .goto 42,46.28,69.07
    .enterScenario 988 >>|cRXP_WARN_Entra en el |cRXP_PICK_The Oscuro Riders|r escenario|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 988
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Salta hacia abajo
step
    #requires KarazhanCatacombsA
    .isInScenario 988
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entra en las catacumbas|r
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 988
    #title Usa |T607512:0|t[Portal demoníaco]
    .goto 46,55.90,69.19
    >>Usa |T607512:0|t[Portal demoníaco] en |cRXP_ENEMY_Ariden|r |cRXP_WARN_del registro de misiones|r.
    .scenario 2022,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 111771
step
    .isInScenario 988
    .goto 46,56.36,69.25
    >>Mata a |cRXP_ENEMY_El Conservador|r.
    .scenario 2023,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Sigue la Flecha
    .timer 25,Roleplay
step
    .isInScenario 988
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Ulthalesh|r. |cRXP_WARN_Wait for the roleplay|r.
    .scenario 2024,1 --Ulthalesh found
step
    .isInScenario 988
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Seguir la flecha escaleras arriba hacia |cRXP_ENEMY_Ariden|r.
    .scenario 2025,1 --Ariden followed
    .timer 17,Ariden Roleplay
step
    .isInScenario 988
    .goto 46,68.36,24.43
    >>Mata a |cRXP_ENEMY_Ariden|r.
    .scenario 2026,1 --Ariden defeated
    .timer 33,Ariden Roleplay
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Apocalipsis|r.
    .complete 41155,1 --1/1 Complete the Dark Riders scenario
    .complete 41155,2 --1/1 Ulthalesh claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    *|cRXP_WARN_Note:|r Si todavía está luchando, mata a los enemigos con los que está luchando.
    .turnin 41155 >>Entrega la misión Los jinetes oscuros
    .target Revil Kost
step
    .isQuestAvailable 40823
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Revil Kost|r.
    .accept 41156 >>Acepta la misión El poder poseído
    .target Revil Kost
step
    .zoneskip 46,1
    .cooldown item,250411,>0,1
    .zone 627 >>Usa la |T134419:0|t[Piedra de hogar de cronoaventurero] para ir a Dalaran.
    .use 250411
step
    .isOnQuest 41156
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 41156 >>Entrega la misión El poder poseído
    .target Calydus
]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma de artefacto: Demonología
#displayname Arma de artefacto: Demonología
#next a) Sagrario de Clase Brujo Parte 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_en la sede de tu clase|r.
    .accept 44089 >>Acepta la misión Un arsenal más grande
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto Demonología|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389402
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Entrega la misión Tu máximo potencial
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_en la sede de tu clase|r.
    .accept 43984 >>Acepta la misión El escrito vuelve a abrirse
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artifact de Demonología|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389402
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Entrega la misión El escrito vuelve a abrirse
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acepta la misión El tomo de implementos infestados
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Demonology artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389402
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Entrega la misión El tomo de implementos infestados
    .target Calydus
step
    #completewith Grave Dust
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Acepta la misión Componentes del ritual
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Acepta la misión Componentes del ritual
    .target Calydus
step
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    #optional
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Pasa a través del portal a Dalaran.|r
step
    #optional
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Sigue la salida del canal.|r
step
    .isOnQuest 42128
    .zoneskip 628,1
    .goto 628,65.60,56.81,12,0
    .goto 628,77.31,68.50,10,0
    .goto 627,59.67,47.69
    .zone 627 >>|cRXP_WARN_Sigue la salida del canal.|r
step
    #label Grave Dust
    .goto 627,33.41,39.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Freshly Dug Grave|r.
    .complete 42128,1 --1/1 Grave Dust
step
    .goto 627,38.65,24.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Can of Sobrecalentado Oil|r.
    .complete 42128,2 --1/1 Can of Overheated Oil
step
    .goto 627,48.51,38.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Aged Snowplum Brandy|r.
    .complete 42128,3 --1/1 Aged Snowplum Brandy
step
    .goto 627,60.04,38.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Venado dócil|r.
    .complete 42128,4 --1/1 Stag Blood Sample
    .skipgossipid 45158
step
    #completewith next
    #label RitualReagentsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Entrega la misión Componentes del ritual
    .accept 42168 >>Acepta la misión Mirando hacia la oscuridad
    .target Calydus
step
    #title |cFFFCDC00Enter the room|r
    #completewith RitualReagentsA
    .goto 627,56.84,46.85,8 >>|cRXP_WARN_Sigue la flecha en la sala.|r
step
    #requires RitualReagentsA
    .goto 627,54.39,46.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Entrega la misión Componentes del ritual
    .accept 42168 >>Acepta la misión Mirando hacia la oscuridad
    .target Calydus
step
    .goto 627,53.73,47.31
    >>Usa el |T1020342:0|t[|cRXP_WARN_ExtraActionButton|r] (Comunión oscura)
    .complete 42168,1 --1/1 Scrying Ritual Perfomed
step
    .goto 627,53.50,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thal'kiel|r.
    .complete 42168,2 --1/1 Skull of the Man'ari's location discovered
    .target Thal'kiel
    .skipgossipid 45512
    .skipgossipid 45513
    .skipgossipid 45546
step
    .goto 627,54.37,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 42168 >>Entrega la misión Mirando hacia la oscuridad
    .accept 42125 >>Acepta la misión Susurros oscuros
    .timer 9,El portal aparece en
    .target Calydus
step
    .goto 627,53.74,47.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Calydus's Portal demoníaco|r.
    .complete 42125,1 --1/1 Enter Calydus's Demonic Portal
step
    .isOnQuest 42125
    .goto 627,53.74,47.26
    .enterScenario 1097 >>Entra en el escenario |cRXP_PICK_Dark Susurros|r.
step
    .isInScenario 1097
    .goto 680,25.64,61.87,20,0
    .goto 680,27.53,64.61
    >>Mata a los |cRXP_ENEMY_Eredar Doomweavers|r
    .scenario 2443,1 --Locate the Skull of the Man'ari
    .mob Eredar Doomweaver
step
    .isInScenario 1097
    .goto 680,27.50,64.74
    >>Mata al |cRXP_ENEMY_Gran maligno vilnato|r.
    .scenario 2475,1 --Defeat the Felborn Overfiend
    .mob Felborn Overfiend
step
    .isInScenario 1097
    .goto 680,28.71,61.97,10,0
    .goto 680,29.16,61.32
    >>Usa el |T607512:0|t[Portal demoníaco] sobre la barrera
    .scenario 2476,1 --Mephistroth's Barrier crossed
    .usespell 111771
step
    .isInScenario 1097
    .goto 680,30.27,60.56
    >>Mata a los |cRXP_ENEMY_Demon forces|r y a |cRXP_ENEMY_Maestra de dolor Nikta|r y a |cRXP_ENEMY_Lady Tyrana|r al final.
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
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 2478,1 --Interrupted Mephistroth's ritual
step
    .isInScenario 1097
    .goto 680,31.11,65.96
    >>Mata a |cRXP_ENEMY_Mephistroth|r.
    .scenario 2478,2 --Mephistroth Defeated
    .mob Mephistroth
step
    .goto 680,31.08,65.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Skull of Man'ari|r.
    .complete 42125,2 --1/1 Obtain the Skull of the Man'ari
step
    .goto 680,31.36,65.90
    .isInScenario 1097
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r.
    .scenario 2502,1 --Portal of Thal'kiel used
step
    #optional
    .isQuestTurnedIn 40823
    .isOnQuest 42125
    .goto 627,34.87,45.45,10,0
    .goto 628,21.20,55.73,10,0
    .goto 628,29.53,51.96,10,0
    .goto 628,28.55,44.40
    .zone 717 >>Entra en la Cloaca de Dalaran y haz clic en el |cRXP_PICK_Portal a la Falla Cicatriz del Terror|r
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,55.83,49.89,20,0
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Entrega la misión Susurros oscuros
    .target Calydus
step
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Entrega la misión Susurros oscuros
    .target Calydus
]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Destrucción
#displayname Artefacto Arma: Destrucción
#next a) Sagrario de Clase Brujo Parte 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_en la sede de tu clase|r.
    .accept 44089 >>Acepta la misión Un arsenal más grande
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto de Destrucción|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389403
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Entrega la misión Tu máximo potencial
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 43984 >>Acepta la misión El escrito vuelve a abrirse
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Esto seleccionará automáticamente el artefacto Destrucción|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389403
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Entrega la misión El escrito vuelve a abrirse
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acepta la misión El tomo de implementos infestados
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Destruction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389403
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Entrega la misión El tomo de implementos infestados
    .target Calydus
step
    #completewith Caer Darrow
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Acepta la misión En busca del cetro
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Acepta la misión En busca del cetro
    .target Calydus
step
    #label Caer Darrow
    .goto 22,66.83,75.18
    >>Usa el |T254294:0|t[Pergamino de Castel Darrow]
    .complete 43100,2 --1/1 Go to Caer Darrow
    .use 173526
step
    #title Encontrar información (1/3)
    .goto 22,69.03,77.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Logbook of Ur'dan|r.
    *|cRXP_WARN_NOTE:|r Esta misión está codificada, lo que significa que tienes que hacerla en este orden exacto, de lo contrario la flecha será incorrecta.
    .complete 43100,3,1 --1/3 Find information on the Shadow Council
step
    #title Encontrar información (2/3)
    .goto 22,69.40,77.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Forgotten Carta|r.
    *|cRXP_WARN_NOTA:|r Esta misión está «hardcodeada», lo que significa que debes completarla en este orden exacto o la flecha será incorrecta.
    .complete 43100,3,2 --2/3 Find information on the Shadow Council
step
    #title Encontrar información (3/3)
    .goto 22,69.14,79.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Council Notice|r.
    *|cRXP_WARN_NOTA:|r Esta misión está «hardcodeada», lo que significa que debes completarla en este orden exacto o la flecha será incorrecta.
    .complete 43100,3 --3/3 Find information on the Shadow Council
step
    .goto 22,69.94,74.01
    >>Mata a |cRXP_ENEMY_Jergosh el Convocador|r. Despójalo para obtener el |T133738:0|t[|cRXP_LOOT_Libro de Medivh|r].
    .complete 43100,4 --1/1 Take the Book of Medivh from Jergosh
    .mob Jergosh the Invoker
step
    #completewith next
    #hidewindow
    .gossipoption 45857 >>Sigue la Flecha
    .timer 25,Calydus Roleplay
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r
    .complete 43100,5 --1/1 Speak with Calydus
    .target Calydus
    .skipgossipid 45857
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r
    .turnin 43100 >>Entrega la misión En busca del cetro
    .accept 43153 >>Acepta la misión Ojo por cetro
    .target Calydus
step
    .goto 22,69.26,79.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal to Tol Barad|r.
    .complete 43153,1 --1/1 Take the Portal to Tol Barad
step
    .isOnQuest 43153
    .goto 22,69.26,79.21
    .enterScenario 1155 >>Entra en el |cRXP_PICK_Ojo por cetro|r escenario.
step
    .isInScenario 1155
    .goto 773,42.70,40.04
    >>|cRXP_WARN_Sigue la flecha.|r
    .scenario 2700,1 --Find the Shadow Council group.
step
    #completewith next
    #label SpeakWithAllarisAndNagazA
    .isInScenario 1155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allaris y Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    #title |cFFFCDC00Entra en la prisión|r
    #completewith SpeakWithAllarisAndNagazA
    .goto 773,42.70,38.47,8 >>|cRXP_WARN_Sigue la flecha hacia la prisión.|r
step
    #requires SpeakWithAllarisAndNagazA
    .isInScenario 1155
    .goto 773,42.64,35.61,8,0
    .goto 773,43.72,35.65,8,0
    .goto 773,43.76,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allaris y Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    .isInScenario 1155
    .goto 773,44.99,30.60,15,0
    .goto 773,48.64,31.16
    >>|cRXP_WARN_Sigue la flecha. Espera el roleplay.|r
    .scenario 2716,1 --Find Tyranis in D-Block
step
    .isInScenario 1155
    .goto 773,48.63,31.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Tyranis Malem|r.
    .scenario 2717,1 --Break Tyranis' chain or leave him
    .target Tyranis Malem
step
    .isInScenario 1155
    .goto 773,45.07,30.73
    >>|cRXP_WARN_Sigue la flecha. Espera el roleplay.|r
    .scenario 2718,1 --Continue searching the rest of the cell block.
step
    .goto 773,43.05,26.14
    .isInScenario 1155
    >>Mata a |cRXP_ENEMY_Nagaz|r.
    .scenario 2719,1 --Follow then kill Nagaz.
    .mob Nagaz
step
    .isInScenario 1155
    .goto 773,43.89,26.61,12,0
    .goto 773,42.68,30.57
    >>|cRXP_WARN_Sigue la flecha. Espera el roleplay.|r
    .scenario 2720,1 --Continue searching D-Block.
step
    .goto 773,39.53,30.76,15,0
    .goto 773,38.99,32.85
    .isInScenario 1155
    >>|cRXP_WARN_Sigue la flecha. Espera el roleplay.|r
    .scenario 2724,1 --Find the prison manifest.
step
    #completewith EnterBaradinHoldC
    #label EnterBaradinHoldA
    #hidewindow
    .isInScenario 1155
    .scenario 2725,1 --Enter Baradin Hold
step
    #title |cFFFCDC00Abandona la prisión|r
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldB
    .goto 773,40.19,30.27,10,0
    .goto 773,43.79,31.78,10,0
    .goto 773,43.64,35.79,8,0
    .goto 773,42.73,35.83,8,0
    .goto 773,42.68,39.66,10 >>|cRXP_WARN_Sigue la flecha fuera de la prisión.|r
step
    #title |cFFFCDC00Entra en Baradin Mantener|r
    #requires EnterBaradinHoldB
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldC
    .goto 773,46.29,47.92,8,0
    .goto 773,47.59,48.18,8,0
    .goto 773,47.63,50.13,8 >>|cRXP_WARN_Sigue la flecha hacia Baradin Mantener.|r
step
    #requires EnterBaradinHoldA
    .isInScenario 1155
    .goto 773,47.66,52.69
    .scenario 2725,1 --Enter Baradin Hold
step
    .isInScenario 1155
    .goto 774,48.26,14.85
    >>Mata a |cRXP_ENEMY_Occul'tharon|r. |cRXP_WARN_Espera el Roleplay.|r
    .scenario 2726,1 --Kill Occul'tharon and find the Eye of Dalaran.
    .complete 43153,2 --1/1 Find the Eye of Dalaran
    .mob Occul'tharon
step
    .goto 774,48.10,28.74,-1
    .goto 619,46.84,64.48,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal demoníaco|r.
    .complete 43153,3 --1/1 Return to Calydus in Dalaran
step
    .goto 627,74.09,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r
    .turnin 43153 >>Entrega la misión Ojo por cetro
    .target Calydus
    .accept 43254 >>Acepta la misión Ruina del ritual
step
    #completewith next
    #label RitualRuinationA
    #hidewindow
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith RitualRuinationA
    .goto 627,74.70,42.78
    .vehicle 110480 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_FRIENDLY_Murciélago vil|r.
    .target Fel Bat
step
    #requires RitualRuinationA
    .goto 619,55.32,63.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_FRIENDLY_Murciélago vil|r.
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith next
    #hidewindow
    .goto 646,60.40,25.22,10 >>Sigue la Flecha
    .timer 60,Gul'dan Roleplay
step
    .goto 646,55.79,63.01
    >>|cRXP_WARN_Espera para el Roleplay.|r
    .complete 43254,2 --1/1 Listen to Gul'dan
step
    .goto 646,55.91,62.89
    >>Mata a |cRXP_ENEMY_Allaris Narassin|r.
    .complete 43254,3 --1/1 Slay Allaris Narassin
    .mob Allaris Narassin
step
    .goto 646,60.17,25.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Cetro de Sargeras|r.
    .complete 43254,4 --1/1 Take the Scepter of Sargeras
step
    .goto 619,55.74,63.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Legion Altar|r.
    .complete 43254,5 --1/1 Ruin the ritual
step
    .goto 619,55.50,63.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal demoníaco|r.
    .complete 43254,6 --1/1 Escape to Dalaran and meet Calydus
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Entrega la misión Ruina del ritual
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Entrega la misión Ruina del ritual
    .target Calydus
]])
--Affliction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Aflicción
#displayname Arma artefacta: Aflicción
#next ac) Salón de la Orden: Brujo Parte 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Aflicción
]])
--Demonology 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Demonología
#displayname Arma artefacta: Demonología
#next ac) Salón de la Orden: Brujo Parte 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Arma de artefacto: Demonología
]])
--Destruction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arma de artefacto: Destrucción
#displayname Arma de artefacto: Destrucción
#next ac) Salón de las Órdenes: Brujo Parte 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Destrucción
]])

--Warlock Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sagrario de Clase Brujo Parte 1
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next ac) Sala de la Orden del Brujo
#chapter
#internal

<< Warlock

step
    #completewith Ritssyn Flamescowl2
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acepta la misión El tomo de implementos infestados
    .target Calydus
step
    .isQuestAvailable 40684
    .isQuestAvailable account,91955
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_IMPORTANTE: Selecciona el que ya tienes para obtener un 10% adicional de xp (solo una vez)|r
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Affliction >> Aflicción(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Demonology >> Demonología(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Destruction >> Destrucción(DPS) Cadena de misiones
step
    #include ac) Order Hall Warlock Part 2@Dreadscar-Ritssyn Flamescowl
step
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Pasa a través del portal a Dalaran.|r
step
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Sigue la salida del canal.|r
]])

-- --------- Warrior ---------

--Arms
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Artefacto Arma: Armas
#displayname Artefacto Arma: Armas
#next a) Introducción a la Campaña del Sagrario de Clase
#internal

<< Warrior

step
    #completewith Artifact Weapon: Arms
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Acepta la misión Una leyenda más
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Entrega la misión Una leyenda más
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Acepta la misión Más armas de leyenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Entrega la misión Más armas de leyenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Acepta la misión Armas legendarias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Entrega la misión Armas legendarias
    .target Odyn
step
    #completewith Tirisfal Glades
    +|cRXP_WARN_Asegúrate de tener un arma funcional equipada. Si no tienes una, equipa una hasta que obtengas tu artefacto, o cambia a una especialización que ya tenga su artefacto|r.
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 41105 >>Acepta la misión La espada de los reyes
    .target Odyn
step
    #completewith next
    #label Tirisfal Glades
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    #completewith Tirisfal Glades
    .goto 695,58.37,25
    .gossipoption 44742 >>Habla con |cRXP_FRIENDLY_Aerylia|r
    .timer 11,RP
    .target Aerylia
step
    #requires Tirisfal Glades
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    .isOnQuest 41105
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 18,13.5,56.65,100 >>Sigue la Flecha
    *|cRXP_WARN_si estás atrapado; reloguea|r
step
    .isOnQuest 41105
    #title |cFFFCDC00Sigue la Flecha|r
    .goto 18,13.5,56.65
    .scenario 2237,1 --Investigate the camp.
step
    .isInScenario 1037
    .goto 18,13.5,56.65
    .isOnQuest 41105
    >>Mata al |cRXP_ENEMY_Ritualista crepuscular|r
    .scenario 2203,1 --Slay the ritualists torturing Thoradin.
    .mob Ritualista crepuscular
    .timer 62,RP
step
    .goto 18,15.3,56.11
    .isInScenario 1037
    #title |cFFFCDC00Sigue la Flecha|r
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 2204,1 --Follow and listen to Thoradin.
step
    .goto 20,37.46,13.1,10,0
    .goto 20,37.29,13.18,15,0
    .goto 20,35.33,20.04,15,0
    .goto 20,34.6,25.07,15,0
    .goto 20,37.1,45.3
    .isInScenario 1037
    #title |cFFFCDC00Sigue la Flecha|r
    >>Entra en la Tumba
    .scenario 2210,1 --Enter the Tomb of Tyr.
step
    #loop
    .goto 20,39.88,52.69,15,0
    .goto 20,39.29,58.06,15,0
    .goto 20,34.81,57.54,15,0
    .goto 20,35.1,51.59,15,0
    .isInScenario 1037
    >>Interrumpe y aturde al |cRXP_ENEMY_Tentáculo del vacío|r y luego mátalo.
    .scenario 2211,1 --Void Tendrils killed
    .usespell 107570
    .usespell 6552
    .timer 8,RP
    .mob Void Tendril
step
    .goto 20,37.51,54.88
    .isInScenario 1037
    >>Mata a |cRXP_ENEMY_Soth'ozz el Guardián|r y a |cRXP_ENEMY_Engendro de carne|r
    .scenario 2212,1 --Kill Soth'ozz
    .mob Soth'ozz the Guardian
    .mob Flesh Spawn
step
    .goto 20,37.61,67.86,15,0
    .goto 20,41.57,82.39,15,0
    .goto 20,44.23,89.03,15,0
    .goto 20,47.55,76.18
    .isInScenario 1037
    #title |cFFFCDC00Sigue la Flecha|r
    >>Mata al |cRXP_ENEMY_Ilusionista ignoto|r
    .scenario 2213,1 --Reach the prison chamber.
    .mob Faceless Illusionist
step
    .goto 20,61.31,74.33
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Zakajz el Corruptor|r
    .scenario 2214,1 --Take the sword
    .timer 15,RP
    .mob Zakajz the Corruptor
step
    .goto 20,62.54,74.72
    .isInScenario 1037
    >>Mata a |cRXP_ENEMY_Zakajz el Corruptor|r |cRXP_ENEMY_y espera a que termine el roleplay|r.
    .scenario 2215,1 --Defeat Zakajz
    .mob Zakajz the Corruptor
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Arma|r dentro del cadáver.
    .scenario 2216,1 --Take Strom'kar, the Warbreaker.
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>Usa el |cRXP_WARN_ExtraActionButton|r
    .scenario 2216,2 --Zakajz killed permanently.
    .usespell 206455
step
    .goto 20,58.01,74.18
    .isInScenario 1037
    #label Artifact Weapon: Arms
    >>Entra en la luz y usa el |cRXP_WARN_ExtraActionButton|r
    .complete 41105,5 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.36,84.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 41105 >>Entrega la misión La espada de los reyes
    .target Odyn
]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacto: Furia
#displayname Artefacto Arma: Furia
#next a) Introducción a la Campaña de la Sede de Clase
#internal

<< Warrior

step
    #completewith Artifact Weapon: Fury
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Acepta la misión Una leyenda más
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Entrega la misión Una leyenda más
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Acepta la misión Más armas de leyenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Entrega la misión Más armas de leyenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Acepta la misión Armas legendarias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Entrega la misión Armas legendarias
    .target Odyn
step
    #completewith Aerylia
    +|cRXP_WARN_Asegúrate de tener un arma usable equipada. Si no, equipa una hasta que obtengas tu artefacto o cambia a una especialización que ya tenga su artefacto.|r
step
    .goto 695,58.35,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 40043 >>Acepta la misión El cazador de héroes
    .target Odyn
step
    #completewith next
    #label Aerylia
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .skipgossipid 44731
step
    #completewith Aerylia
    .goto 695,58.37,24.95
    .gossipoption 44731 >>Habla con |cRXP_FRIENDLY_Aerylia|r
    .timer 30,RP
    .target Aerylia
step
    #requires Aerylia
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .timer 10,RP
step
    .isOnQuest 40043
    .countdown 10 >>|cRXP_WARN_Espera al Roleplay|r.
step
    .goto 634,61.34,45.87
    .isOnQuest 40043
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Fogata|r
    .scenario 1888,1 --Light the bonfire.
step
    #loop
    .goto 634,61.67,46.62,20,0
    .goto 634,61.1,45.11,20,0
    .isInScenario 944
    >>Mata a las oleadas de enemigos.
    .scenario 1889,2,1 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
step
    .goto 634,60.86,45.42
    .isInScenario 944
    >>Mata a las oleadas de enemigos.
    .scenario 1889,2,2 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    #loop
    .goto 634,60.95,46.73,25,0
    .goto 634,60.9,45.2,25,0
    .isInScenario 944
    >>Mata a las oleadas de enemigos.
    .scenario 1889,2,3 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    .goto 634,61.4,47.17
    .isInScenario 944
    >>Mata a |cRXP_ENEMY_Helarjar Aspirante|r
    .scenario 1889,1,1 --Kill the leader of the attackers
    .mob Aspiring Helarjar
step
    .isInScenario 944
    .goto 634,61.35,48.52
    >>Mata a |cRXP_ENEMY_Místico nigromántico|r
    .scenario 1943,1,1 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,60.03,47.45
    >>Mata al |cRXP_ENEMY_Místico nigromántico|r
    .scenario 1943,1,2 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,59.37,46.7,15,0
    .goto 634,58.9,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Runa|r
    .scenario 1891,1,1 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,58.61,46.15,15,0
    .goto 634,58.63,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Runa|r
    .scenario 1891,1,2 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59,44.47,15,0
    .goto 634,58.62,43.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Runa|r
    .scenario 1891,1,3 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59.37,43.61,15,0
    .goto 634,60.03,43.23,15,0
    .goto 634,60.13,42.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Runa|r
    .scenario 1891,1,4 --Destroy the Prison Runestones
step
    .goto 634,59.54,43.82
    .isInScenario 944
    >>Derrota a |cRXP_ENEMY_Vigfus Corriente de hojas|r |cRXP_WARN_no lo ataques de un solo ataque|r.
    *|cRXP_WARN_Si los npcs se quedan atrapados, reloguea|r
    .scenario 1912,1 --Defeat Vigfus Bladewind
    .mob Vigfus Bladewind
step
    .isInScenario 944
    .goto 694/1220,1705.2569,3440.3982
    .goto 694/1511,1705.2569,3440.3982,20 >>Derrota a |cRXP_ENEMY_Vigfus Corriente de hojas|r |cRXP_WARN_de nuevo|r.
step
    .isInScenario 944
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    >>|cRXP_WARN_Espera el Roleplay|r
    >>Mata a |cRXP_ENEMY_Vigfus Corriente de hojas|r.
    .scenario 1913,1 --Chase and kill Vigfus
    .mob Vigfus Bladewinds
step
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    .isInScenario 944
    #label Artifact Weapon: Fury
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .scenario 1914,1 --Take the Warswords
    .complete 40043,2 --1/1 Deal with Vigfus Bladewind and his warband
step
    >>Abandona la Instancia (clic derecho en tu marco) o presiona la macro.
    .complete 40043,3 --1/1 Return to Skyhold
    .macro Leave Instance,236367 >> Abandona la Instancia
step
    .goto 695,58.35,84.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 40043 >>Entrega la misión El cazador de héroes
    .target Odyn
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Arma artefacta: Guerrero, Protección
#displayname Artefacto Arma: Protección
#next a) Introducción a la Campaña del Sagrario de Clase
#internal

<< Warrior

step
    #completewith Artifact Weapon: Warrior Protection
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Acepta la misión Una leyenda más
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Entrega la misión Una leyenda más
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Acepta la misión Más armas de leyenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Entrega la misión Más armas de leyenda
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Acepta la misión Armas legendarias
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Entrega la misión Armas legendarias
    .target Odyn
step
    #completewith Axe and You Shall Receive
    +|cRXP_WARN_Revisa que tengas un arma usable equipada; si no, equipa una hasta que obtengas tu artefacto o cambia a una especialización para la que ya tengas un artefacto|r
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 39191 >>Acepta la misión Legado del Rompehielo
    .target Odyn
step
    .isOnQuest 39191
    .goto 695,59.35,26.3
    .gossipoption 44315 >>Habla con |cRXP_FRIENDLY_Hruthnir|r
    .timer 20,RP
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Durnolf|r
    .accept 44255 >>Acepta la misión Pídelo y lo tendrás
    .target Intendente Durnolf
step
    #label Axe and You Shall Receive
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Durnolf|r
    .turnin 44255 >>Entrega la misión Pídelo y lo tendrás
    .target Intendente Durnolf
step
    .goto 695,59.36,25.30
    >>|cRXP_WARN_Espera el Roleplay|r
    .complete 39191,1,1 --1/1 Speak with Hruthnir
    .skipgossipid 44315
    .target Hruthnir
step
    #completewith Pillik
    .isOnQuest 39191
    +|cRXP_WARN_Puedes volar aquí|r.
step
    .goto 634,84.34,9.52
    .isOnQuest 39191
    >>Mata a |cRXP_ENEMY_Pillik|r
    .scenario 1856,1 --Defeat Pillik
    .timer 50,RP
    .mob Pillik
step
    #label Pillik
    .goto 634,83.85,9.5
    .countdown 50
step
    #completewith next
    #label Find Magnar
    .isInScenario 909
    >>Mata a las |cRXP_ENEMY_Tormentas espiraladas|r en la puerta.
    .scenario 1829,1 --Find Magnar
    .mob Swirling Storms
step
    #completewith Find Magnar
    *|cRXP_WARN_Espera a que la puerta se abra|r.
    .goto 635,64.31,55.79,10,0
    .goto 635,53.54,56.17,15 >>Mata a |cRXP_ENEMY_Creador de vientos espectral|r para deshacerte de los vientos.
    .usespell 57755
    .mob Spectral Windshaper
step
    #requires Find Magnar
    .goto 635,52.31,63.89
    .isInScenario 909
    >>Mata a las |cRXP_ENEMY_Tormentas espiraladas|r en la puerta.
    .scenario 1829,1 --Find Magnar
    .timer 30,RP
step
    #completewith next
    #label Hruthnir
    .isInScenario 909
    >>Mata a |cRXP_ENEMY_Magnar Rompehielo|r y a las oleadas de enemigos.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    #completewith Hruthnir
    .goto 635,51.4,71.07
    .gossipoption 44546 >>Habla con |cRXP_FRIENDLY_Hruthnir|r
    .timer 85,RP
    .target Hruthnir
step
    #requires Hruthnir
    .goto 635,50.59,87.12
    .isInScenario 909
    >>Derrota a |cRXP_ENEMY_Magnar Rompehielo|r y a las oleadas de enemigos.
    *Mata al |cRXP_ENEMY_Creador de vientos espectral|r para eliminar los vientos.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    .isInScenario 909
    .goto 635,50.12,82.45
    >>|cRXP_WARN_Espera al Roleplay|r.
    .scenario 1869,1
    .mob Magnar Icebreaker
    .mob Spectral Windshaper
step
    .goto 635,49.95,82.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Arma|r
    .complete 39191,2 --1/1 Deal with Magnar Icebreaker
    -- .scenario 1833,1
step
    #label Artifact Weapon: Warrior Protection
    .goto 635,49.95,82.61
    >>Usa el |cRXP_WARN_ExtraActionButton|r
    .complete 39191,3 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.35,84.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .turnin 39191 >>Entrega la misión Legado del Rompehielo
    .target Odyn
]])
--Arms 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arma artefacta: Armas
#displayname Artefacto Arma: Armas
#next ac) Sala de orden Guerrero Parte 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artefacto Arma: Armas
]])
--Fury 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arma artefacta: Furia
#displayname Arma artefacta: Furia
#next ac) Sagrario de clase: Guerrero Parte 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Arma artefacto: Furia
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arma de artefacto: Guerrero Protección
#displayname Artefacto Arma: Protección
#next ac) Sala de orden Guerrero Parte 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Arma artefacta: Guerrero, Protección
]])

--Warrior Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Sala de orden
#name a) Sagrario de la clase Guerrero: Parte 1
#displayname |cFF00CCFF1|r - Sala de orden Introducción|r
#next ac) Sala de orden Guerrero
#chapter
#internal

<< Warrior

step
    #completewith Accept The Eye of Odyn2
    #hidewindow
    +Prueba
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Odyn|r
    .accept 40579 >>Acepta la misión Armas legendarias
    .target Odyn
step
    .isQuestAvailable 40579
    +Selecciona una de las siguientes guías por ahora:
    *|cRXP_WARN_Podrás hacer las otras cadenas de misiones más adelante|r
    *|cFFFF0000No puedes progresar si no seleccionas uno|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arms >> Armas(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fury >> Furia(DPS) Cadena de misiones
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection >> Protección(Tanque) Cadena de misiones
step
    #include ac) Order Hall Warrior Part 2@OrderHallPart2Start1-Accept The Eye of Odyn
]])
