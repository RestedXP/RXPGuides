if GetLocale() ~= "frFR" then return end
-- #############################################
-- #                  MIDNIGHT                 #
-- #############################################

--GC: Stormwind Quests
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Montée en niveau rapide
#name a) Quêtes de Hurlevent
#internal

step
    .goto 84,63.79,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Renato Gallina|r
    .accept 332 >>Acceptez la quête Publicité pour la cave à vins Gallina
    .target Renato Gallina
step
    .goto 84,62.32,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Harlan Bagley|r
    .accept 333 >>Acceptez la quête Harlan a besoin d'être approvisionné
    .target Harlan Bagley
step
    .goto 84,58.10,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rema Schneider|r
    .turnin 333 >>Rendez la quête Harlan a besoin d'être approvisionné
    .target Rema Schneider
    .accept 334 >>Acceptez la quête Un paquet pour Thurman
step
    .goto 84,60.26,76.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Suzetta Gallina|r
    .turnin 332 >>Rendez la quête Publicité pour la cave à vins Gallina
    .target Suzetta Gallina
step
    .goto 84,52.58,83.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thurman Schneider|r
    .turnin 334 >>Rendez la quête Un paquet pour Thurman
    .target Thurman Schneider

]])
--Housing Alliance
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Montée en niveau rapide
#name a) Tutoriel des logements Alliance
#internal

step
    >>Appuyez sur la macro "Dans la fenêtre des objets actifs" pour démarrer le tutoriel des logements
    .accept 91863 >>Acceptez la quête Ma première maison
    .macro House Teleport, 975747 >>/run C_Housing.StartTutorial()
step
    .goto 2352,53.13,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyssabel Foliaube|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135761
    .skipgossipid 135770
    .target Lyssabel Dawnpetal
step
    >>Achetez une maison disponible
    .complete 91863,4 --1/1 Acquire a house

--teleport unlock


step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyssabel Foliaube|r |cRXP_WARN_à côté de vous|r.
    .turnin 91863 >>Rendez la quête Ma première maison
    .accept 94455 >>Acceptez la quête Enfin à la maison
    .target Lyssabel Dawnpetal
step
    >>Entrez dans votre maison
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Rendez la quête Enfin à la maison
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Suivez la flèche|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Suivez la flèche|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Suivez la flèche|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ren « Marée Haute »|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ren « Marée Haute »|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Utilisez l' |T742183:0|t[Oreiller de fidèle de Sephraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tocho Cache-nuages|r.
    .turnin 94210 >>Rendez la quête Remplumer le nid
    .target Tocho Cloudhide
    .accept 94379 >>Acceptez la quête Mon vieux foyer
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rotha|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Housing Horde
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Montée en niveau rapide
#name a) Tutoriel des logements Horde
#internal

<< Horde

step
    >>Appuyez sur la macro "Dans la fenêtre des objets actifs" pour démarrer le tutoriel des logements
    .accept 91863 >>Acceptez la quête Ma première maison
    .macro House Teleport, 975747 >>/run C_Housing.StartTutorial()
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tocho Cache-nuages|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135727
    .skipgossipid 135740
step
    >>Achetez une maison disponible
    .complete 91863,4 --1/1 Acquire a house
step
    .goto 2351,56.84,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tocho Cache-nuages|r |cRXP_WARN_près de vous|r.
    .turnin 91863 >>Rendez la quête Ma première maison
    .accept 94455 >>Acceptez la quête Enfin à la maison
    .target Tocho Cloudhide

--teleport unlock


step
    >>Entrez dans votre maison
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Rendez la quête Enfin à la maison
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Suivez la flèche|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Suivez la flèche|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Suivez la flèche|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ren « Marée Haute »|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ren « Marée Haute »|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Utilisez l' |T742183:0|t[Oreiller de fidèle de Sephraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tocho Cache-nuages|r.
    .turnin 94210 >>Rendez la quête Remplumer le nid
    .target Tocho Cloudhide
    .accept 94379 >>Acceptez la quête Mon vieux foyer
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rotha|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Darkmoon Faire
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Montée en niveau rapide
#name a) Sombrelune
#internal

step << Alliance
    #completewith next
    #label ProfessionsDmf1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Apprenez l' |T4620669:0|t[Alchimie]
    .dmf
step << Alliance
    #completewith ProfessionsDmf1
    .goto 37,41.95,67.16
    >>Appuyez sur la Macro dans la fenêtre des "Objets actifs" pour abandonner le |T4620679:0|t[Minage]
    .macro Unlearn Mining,4620679 >>Abandonnez le Minage
    .train 2575,3
    .subzoneskip 37,1
    .isOnQuest 7905
step << Alliance
    #requires ProfessionsDmf1
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Apprenez l' |T4620669:0|t[Alchimie]
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
    .train 45357 >>Apprenez |T4620676:0|t[Calligraphie].
    .dmf
step << Alliance
    #completewith ProfessionsDmf2
    .goto 37,41.95,67.16
    >>Appuyez sur la Macro dans la fenêtre "Objets actifs" pour abandonner l' |T4620675:0|t[Herboristerie].
    .macro Unlearn Herbalism,4620675 >>Abandonnez l'Herboristerie
    .subzoneskip 37,1
    .isOnQuest 7905
    .train 2366,3
step << Alliance
    #requires ProfessionsDmf2
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>Apprenez |T4620676:0|t[Calligraphie].
    .skipgossipid 38859
    .skipgossipid 38890
    .skipgossipid 39321
    .target Lien Farner
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharynn Bouden|r.
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
    .zone 407 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kae Ti|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29451 >>Rendez la quête Le maître stratège
    .isOnQuest 29451
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29456 >>Rendez la quête Une bannière capturée
    .isOnQuest 29456
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29457 >>Rendez la quête L'insigne de l’ennemi
    .isOnQuest 29457
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29458 >>Rendez la quête Le journal égaré
    .isOnQuest 29458
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29443 >>Rendez la quête Un étrange cristal
    .isOnQuest 29443
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29444 >>Rendez la quête Un œuf exotique
    .isOnQuest 29444
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29445 >>Rendez la quête Un grimoire fascinant
    .isOnQuest 29445
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Professeur Thaddeus Paleo|r.
    .turnin 29446 >>Rendez la quête Une arme extraordinaire
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gelvas Crasseporte|r.
    .turnin 7905 >>Rendez la quête La foire de Sombrelune
    .target Gelvas Crasseporte
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stamp Corne-Tonnerre|r.
    .accept 29509 >>Acceptez la quête Des grenouilles croustillantes
    .target Piaffement Corne-Tonnerre
    .train 2550,3
    .itemcount 30817,5
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Utilisez |T133642:0|t[Grenouilles dodues].
    .collect 72056,5,29509,1,-1 --Plump Frogs (5)
    .collect 30817,5,29509,1,-1 --Simple Flour (5)
    .collect 72057,5,29509,1 --Breaded Frog (5)
    .train 2550,3
    .use 72056 --Plump Frog
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Utilisez |T237579:0|t[Grenouille panée].
    .collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
    .use 72057 --Breaded Frog
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Stamp Corne-Tonnerre|r.
    .turnin 29509 >>Rendez la quête Des grenouilles croustillantes
    .target Piaffement Corne-Tonnerre
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylannia|r.
    .accept 29506 >>Acceptez la quête Un mélange gazeux
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
    .buy 29506,5
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .train 2259,3
step
    .goto 407,50.54,69.56
    >>Utilisez |T132793:0|t[Shaker].
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sylannia|r.
    .turnin 29506 >>Rendez la quête Un mélange gazeux
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_1|r].
    .turnin 29445 >>Rendez la quête Un grimoire fascinant
    .target Sayge
    .zoneskip 407,1
    .isOnQuest 29445
    .dmf
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_2|r].
    .accept 29515 >>Acceptez la quête Écrire l'avenir
    .target Sayge
    .zoneskip 407,1
    .dmf
    .train 45357,3
step
    .goto 407,53.23,75.82
    .aura 23768 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_3|r].
    .skipgossipid 31569
    .skipgossipid 31565
    .skipgossipid 30027
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
    >>Utilisez |T413571:0|t[Paquet d'herbes exotiques].
    .collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>Utilisez |T237061:0|t[Encre prophétique].
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sayge|r.
    .turnin 29515 >>Rendez la quête Écrire l'avenir
    .target Sayge
    .zoneskip 407,1
    .dmf
step
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yebb Becquabrach|r.
    .turnin 29444 >>Rendez la quête Un œuf exotique
    .target Yebb Becquabrach
    .zoneskip 407,1
    .dmf
    .isOnQuest 29444
step << Alliance
    .isOnQuest 65436
    >>Utilisez l' |T134309:0|t[Écaille de Dragon perdue] pour vous téléporter à Hurlevent.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .dmf
step << Horde
    .isOnQuest 65435
    >>Utilisez l' |T134309:0|t[Écaille de Dragon perdue] pour vous téléporter à Orgrimmar.
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
#group RestedXP Montée en niveau rapide
#name a) Tour GC du Temps de Chromie
#internal


step << Alliance
    #completewith next
    #label The Legion Returns
    .goto 84,49.19,87.25,8,0
    .goto 84,49,86.94,8,0
    .goto 84,48.66,87.49,8,0
    .goto 84,49.11,87.64,8,0
    .goto 84,49.42,86.83,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Tableau de l’appel des héros|r
    .accept 40519 >>Acceptez la quête Legion: Le retour de la Légion
    .choose 1851120
step << Alliance
    #completewith The Legion Returns
    .goto 84,56.257,17.311,812 >>Quittez la tour des Mages
step << Alliance
    #requires The Legion Returns
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Tableau de l’appel des héros|r
    .accept 40519 >>Acceptez la quête Legion : Le retour de la Légion
    .choose 1851120
step << Alliance
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Tableau de l’appel des héros|r
    .accept 62567 >>Acceptez la quête On recherche : des aventuriers pour l’Appel de Chromie
    .choose 1668214
step << Alliance
    .goto 84,56.26,17.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r.
    .turnin 62567 >>Rendez la quête On recherche : des aventuriers pour l’Appel de Chromie
    .target Chromie
step << Alliance
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Entrez dans le temps de Chromie
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Chromie
step << Alliance
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irion|r.
    .accept 65436 >>Acceptez la quête Les îles aux Dragons vous attendent
    .target Irion
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
    >>Utilisez l' |T134309:0|t[Écaille de Dragon perdue] pour vous téléporter à Hurlevent.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
]])
--GC Alliance: Chromie Time Normal
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Montée en niveau rapide
#name a) GC Temps de Chromie Normal
#internal

step
    #label ChromieTime
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Chromie|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Entrez dans le temps de Chromie
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Chromie
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Tableau de l’appel des héros|r
    .accept 40519 >>Acceptez la quête Legion : Le retour de la Légion
    .choose 1851120
step
    #label CallBoardStart3
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Irion|r.
    .accept 65436 >>Acceptez la quête Les îles aux Dragons vous attendent
    .target Irion
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
    >>Utilisez l' |T134309:0|t[Écaille de Dragon perdue] pour vous téléporter à Hurlevent.
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
#group RestedXP Contenu Endgame de War Within
#name a) Téléportation : le Brise-Aube
#internal

step
    .zoneskip 2215
    .zone 2359 >>Ouvrez l'Outil de recherche de donjons, naviguez aux Donjons avec sujets et faites la queue pour |cRXP_WARN_'Le Brise-Aube'|r.
step
    .zoneskip 2215
    .gossipoption 124142 >>Parlez à la |cRXP_FRIENDLY_Générale Heurtacier|r à l'intérieur de Brise-Aube. |cRXP_WARN_Elle devrait être visible depuis l'entrée. Utilisez la fenêtre des Cibles actives pour la marquer.|r
    .target General Steelstrik
]])
--Phase Diving
RXPGuides.RegisterGuide([[
#retail
#version 1
#group Guerre Within Maître des traditions
#name a) Débloquer la Plongée phasique
#internal


step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hashim|r
    .turnin 90938 >>Rendez la quête Un saut dans le Vide
    .target Hashim
    .isOnQuest 90938
step
    .isQuestTurnedIn account,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>Équipez les |T7110834:0|t[Bandelettes de reshii]
    .use 235499
step
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hashim|r
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>Équipez les |T7110834:0|t[Bandelettes de reshii]
    .use 235499
    .subzoneskip 15807,1
step
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Acceptez la quête Un autre monde
    .target Shad'anis
step
    .isOnQuest 89380
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89380 >>Rendez la quête Un autre monde
    .accept 89343 >>Acceptez la quête Le Vide détaché
    .target Shad'anis
step
    .goto 2371,50.41,36.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Conduit de phase|r.
    .complete 89343,2 --1/1 Untethered Space entered
step
    .goto 2371,50.41,36.40
    >>Utilisez le |T4913234:0|t[|cRXP_WARN_Bouton d’action supplémentaire]|r
    *|cRXP_WARN_Reconnectez-vous si vous ne pouvez pas rendre la quête après avoir utilisé le |cRXP_WARN_Bouton d’action supplémentaire|r|r
    .complete 89343,3 --1/1 Return to Normal Space
step
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89343 >>Rendez la quête Le Vide détaché
    .accept 89344 >>Acceptez la quête Ce qui ne vous voit pas
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
    .aura 1214374,1 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Conduit de phase|r.
step
    #requires WhatDoesntSeeYouA
    #completewith next
    >>Tuez les |cRXP_ENEMY_Observateurs détachés|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Observateur détaché
step
    #requires WhatDoesntSeeYouA
    .goto 2371,49.10,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Énergie de phase|r
    .complete 89344,2 --1/1 Phase Energy collected
step
    #loop
    .goto 2371,48.33,37.15,30,0
    .goto 2371,49.39,36.27,35,0
    .goto 2371,49.20,39.49,35,0
    .goto 2371,48.06,38.61,35,0
    >>Tuez les |cRXP_ENEMY_Observateurs détachés|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Observateur détaché
step
    #completewith next
    #label WhatDoesntSeeYouB
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Rendez la quête Ce qui ne vous voit pas
    .accept 89345 >>Acceptez la quête L’horreur détachée
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Retirez le buff|T135752:0|t[Plongée phasique] (avec un clic droit)
    .macro Remove Aura,135752 >>Retirez le buff.
step
    #requires WhatDoesntSeeYouB
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Rendez la quête Ce qui ne vous voit pas
    .accept 89345 >>Acceptez la quête L’horreur détachée
    .target Shad'anis
step
    #completewith next
    #label Netherdeath
    >>Tuez |cRXP_ENEMY_Mort-du-Néant|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Mort-du-Néant
step
    #completewith Netherdeath
    .goto 2371,50.41,36.41
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Conduit de phase|r.
step
    #requires Netherdeath
    .goto 2371,48.44,39.56,30,0
    .goto 2371,47.90,40.57
    >>Tuez |cRXP_ENEMY_Mort-du-Néant|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Mort-du-Néant
step
    #completewith next
    #label TheUntetheredHorrorA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Rendez la quête L’horreur détachée
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Retirez le buff|T135752:0|t[Plongée phasique] (avec un clic droit)
    .macro Remove Aura,135752 >>Retirez le buff.
step
    #completewith TheUntetheredHorrorA
    #hidewindow
    .goto 2371,50.36,36.31,20 >>Suivez la flèche
step
    #requires TheUntetheredHorrorA
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Rendez la quête L’horreur détachée
    .target Shad'anis
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Acceptez la quête Bien emballé
    .target Hashim
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hashim|r et sélectionnez les améliorations
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Hashim|r
    .turnin 89561 >>Rendez la quête Bien emballé
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
#name a) Vol dynamique Panda
#internal

step
    #completewith Skyriding Panda
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Acceptez la quête Vol dynamique
    .timer 5,RP
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r et choisissez l'une des montures.
    *|cRXP_WARN_Vous pourrez toujours obtenir les autres montures à un autre moment|r.
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Seigneur Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Faites un clic-droit pour apprendre votre monture.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your
    .use 194034
    .use 194521
    .use 194106
    .use 194549
    .use 194705
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r.
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Seigneur Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r.
    .turnin 90754 >>Rendez la quête Vol dynamique
    .accept 80013 >>Acceptez la quête Comment planer avec votre Dragon
    .target Seigneur Andestrasz
step
    .goto 371,65.27,37.27
    >>Utilisez votre monture
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    .goto 371,66.51,37.16,10,0
    .goto 371,67.46,36.29
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80013,2,2 --2/5 Glide through the Rings
step
    .goto 371,67.46,36.29,10,0
    .goto 371,67.80,34.64
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80013,2,3 --3/5 Glide through the Rings
step
    .goto 371,67.80,34.64,10,0
    .goto 371,67.41,33.91
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80013,2,4 --4/5 Glide through the Rings
step
    .goto 371,67.41,33.91
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.73,33.58
    >>Atterrissez sur la colline
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célormu|r.
    .turnin 80013 >>Rendez la quête Comment planer avec votre Dragon
    .timer 3,RP
    .target Célormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Seigneur Andestrasz|r
    .accept 80015 >>Acceptez la quête Comment faire un piqué avec votre Dragon
    .target Seigneur Andestrasz
step
    .goto 371,66.64,37.18,10,0
    .goto 371,67.90,37.18
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] pour garder votre vitesse.
    .complete 80015,2,2 --2/7 Glide through the Rings
step
    .goto 371,67.90,37.18,10,0
    .goto 371,68.95,37.95
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] pour garder votre vitesse.
    .complete 80015,2,3 --3/7 Glide through the Rings
step
    .goto 371,68.95,37.95,10,0
    .goto 371,69.83,39.60
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] pour garder votre vitesse.
    .complete 80015,2,4 --4/7 Glide through the Rings
step
    .goto 371,69.83,39.60,10,0
    .goto 371,70.00,43.96
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] pour garder votre vitesse.
    .complete 80015,2,5 --5/7 Glide through the Rings
step
    .goto 371,70.00,43.96,10,0
    .goto 371,68.31,46.92
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] pour garder votre vitesse.
    .complete 80015,2,6 --6/7 Glide through the Rings
step
    .goto 371,68.31,46.92
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] pour garder votre vitesse.
    .complete 80015,2 --7/7 Glide through the Rings
step
    .goto 371,66.29,49.31
    >>Suivez la flèche
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.25,49.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célormu|r.
    .turnin 80015 >>Rendez la quête Comment faire un piqué avec votre Dragon
    .timer 3,RP
    .target Célormu
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r.
    .accept 80016 >>Acceptez la quête Forcer l'allure
    .target Seigneur Andestrasz
step
    .goto 371,66.29,37.21,10,0
    .goto 371,68.27,36.26
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80016,2,2 --2/6 Glide through the Rings
step
    .goto 371,68.27,36.26,10,0
    .goto 371,68.81,32.48
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80016,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.81,32.48,10,0
    .goto 371,67.41,27.37
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80016,2,4 --4/6 Glide through the Rings
step
    .goto 371,67.41,27.37,15,0
    .goto 371,66.02,25.50
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80016,2,5 --5/6 Glide through the Rings
step
    .goto 371,66.02,25.50
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,65.01,24.46
    >>Suivez la flèche
    .complete 80016,3 --1/1 Land in the Target Area
step
    .goto 371,64.98,24.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célormu|r.
    .turnin 80016 >>Rendez la quête Forcer l'allure
    .timer 3,RP
    .target Célormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r.
    .accept 80017 >>Acceptez la quête Prendre de la hauteur
    .target Seigneur Andestrasz
step
    .goto 371,66.32,37.22,15,0
    .goto 371,67.93,35.70
    >>Laissez-vous planer
    .complete 80017,2,2 --2/6 Glide through the Rings
step
    .goto 371,67.93,35.70,15,0
    .goto 371,68.77,33.45
    >>Suivez les anneaux. Utilisez |T4640498:0|t[Ascension] après avoir passer l'anneau.
    .complete 80017,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.77,33.45,15,0
    .goto 371,68.51,29.83
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80017,2,4 --4/6 Glide through the Rings
step
    .goto 371,68.51,29.83,15,0
    .goto 371,65.39,29.58
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80017,2,5 --5/6 Glide through the Rings
step
    .goto 371,65.39,29.58
    >>Suivez les anneaux. Utilisez |T4640490:0|t[Accélération] ou |T4640498:0|t[Ascension] pour garder votre vitesse.
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.59,28.66
    >>Suivez la flèche
    .complete 80017,3 --1/1 Land in the Target Area
step
    .goto 371,62.47,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Célormu|r.
    .turnin 80017 >>Rendez la quête Prendre de la hauteur
    .timer 3,RP
    .target Célormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r.
    .accept 80018 >>Acceptez la quête Voler avec classe
    .target Seigneur Andestrasz
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Tribune de transformation|r |cRXP_WARN_et quittez-la immédiatement|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    #label Skyriding Panda
    .goto 371,65.07,36.97,10,0
    .goto 371,65.28,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Andestrasz|r.
    .turnin 80018 >>Rendez la quête Voler avec classe
    .accept 90755 >>Acceptez la quête Ô temps, reprends ton vol
    .target Seigneur Andestrasz
step
    #completewith next
    #label TimeFliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Rendez la quête Ô temps, reprends ton vol
    .target Moratari
step
    #completewith TimeFliesA
    .goto 371,65.13,37.09
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r vers Dalaran
step
    #requires TimeFliesA
    #label Skyriding
    .goto 627,72.04,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Rendez la quête Ô temps, reprends ton vol
    .target Moratari
]])

-- ================= ARTIFACT WEAPONS ================

-- --------- Death Knight ---------

--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Sang
#displayname Arme prodigieuse : Sang
#next a) Domaine de classe des Chevaliers de la mort Partie 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Utilisez |T135766:0|t[Porte de la Mort]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Utilisez le Téléporteur
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 44401 >>Acceptez la quête Une arme pour chaque occasion
    .target Duc Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Sang|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390097
    .target Duc Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 44401 >>Rendez la quête Une arme pour chaque occasion
    .target Duc Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 43962 >>Acceptez la quête Les lames du destin
    .target Duc Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Sang|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390097
    .target Duc Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 43962 >>Rendez la quête Les lames du destin
    .target Duc Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 40715 >>Acceptez la quête Nécessité fait pacte
    .target Rensar Hautsabot
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Sang|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390097
    .target Rensar Hautsabot
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 40715 >>Rendez la quête Nécessité fait pacte
    .target Rensar Hautsabot
step
    #completewith Baron Sliver
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestAvailable 43962
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .accept 40740 >>Acceptez la quête Les morts et les damnés
    .target Généralissime Darion Mograine
step
    #optional
    .goto 647,57.76,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .accept 40740 >>Acceptez la quête Les morts et les damnés
    .target Généralissime Darion Mograine
step
    .goto 646,31.97,31.91
    >>|cRXP_WARN_Suivez la flèche et entrez dans le portail.|r
    .complete 40740,2 --1/1 Enter into the Legion Portal
step
    .isOnQuest 40740
    .isQuestNotComplete 40740
    .goto 646,31.97,31.91
    .enterScenario 940 >>Entrez le scénario de la quête |cRXP_PICK_Les morts et les damnés|r
step
    .isInScenario 940
    .goto 714,17.60,47.83
    >>Tuez le |cRXP_ENEMY_Geôlier de Niskara|r.
    .scenario 1884,1 --Search for Baron Sliver.
    .mob Niskaran Jailer
step
    .isInScenario 940
    .goto 714,22.14,50.77
    >>|cRXP_WARN_Suivez la flèche|r.
    .scenario 2154,1 --Follow Baron Sliver
step
    #label Baron Sliver
    .isInScenario 940
    .goto 714,23.74,50.28
    >>Tuez le |cRXP_ENEMY_Porte-destin de Niskara|r et le |cRXP_ENEMY_Gangregarde factionnaire|r.
    .scenario 2135,1 --Protect Baron Sliver while he disables the Fel Barrier
    .mob Niskaran Doombringer
    .mob Gangregarde sentinelle
step
    #title |cFFFCDC00Escortez le Baron Lesquille|r
    .isInScenario 940
    .goto 714,37.70,47.45
    >>Tuez les |cRXP_ENEMY_Gangregardes factionnaires|r sur la route, sinon le |cRXP_FRIENDLY_Baron Lesquille|r sera coincé.
    .scenario 2136,1 --Search the Legion camp.
    .mob Gangregarde sentinelle
step
    .goto 714,43.82,38.27
    .isInScenario 940
    >>Tuez l' |cRXP_PICK_Inquisiteur Zalinor|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Clé de la Légion|r
    .scenario 2137,1 --Hunt down Inquisitior Zalinor and obtain his key.
    .mob Inquisitior Zalinor
step
    #completewith next
    #hidewindow
    .cast 202595 >>Suivez la flèche
    .timer 55,RP
step
    .isInScenario 940
    .goto 714,37.12,48.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Minerva Corvepeine|r. << Horde
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Dagnar Stonebrow|r. << Alliance
    .scenario 2138,1 --Release your ally
    .target Minerva Corvepeine << Horde
    .target Dagnar Stonebrow << Alliance
step
    .isInScenario 940
    .goto 714,47.96,58.44
    >>Utilisez |T136120:0|t[Carapace anti-magie] pour éviter les dégâts des zones gangrenées.
    >>|cRXP_WARN_Défendez le |r |cRXP_FRIENDLY_Baron Lesquille|r de nouveau.
    .scenario 2139,1 --Citadel Barrier Disabled
    .usespell 48707
    .mob Niskaran Doombringer
    .mob Gangregarde sentinelle
    .mob Voracious Felmaw
    .mob Niskaran Houndmaster
step
    .isInScenario 940
    .goto 714,61.34,59.78
    >>Utilisez |T136120:0|t[Carapace anti-magie] pour éviter les dégâts des zones gangrenées.
    >>Utilisez |T237532:0|t[Poigne de la mort] pour rapprocher la |cRXP_ENEMY_Tumeur répulsive|r.
    .scenario 2141,1 --Search within the citadel for Margrave
    .usespell 48707
    .usespell 49576
step
    .goto 714,65.10,59.87
    .isInScenario 940
    >>Tuez |cRXP_ENEMY_Tripelix le Déchire-chair|r.
    .scenario 2142,1 --Slay Gorelix
    .mob Gorelix
step
    .isInScenario 940
    .goto 714,64.15,60.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Gueule-du-Damné|r
    .scenario 2143,1 --Take the Maw of the Damned
    .complete 40740,3 --1/1 Obtain the Maw of the Damned
step
    .goto 714,63.06,60.82
step
    .isInScenario 940
    .goto 714,63.06,60.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte de la mort|r.
    .scenario 2180,1 --Use Baron Sliver's Death Gate
step
    .isOnQuest 40740
    .goto 701,47.57,90.74
    .zone 648 >>Cliquez sur le |cRXP_PICK_Portail d’accès d’Achérus|r après le RP.
step
    .isQuestAvailable 39832
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .turnin 40740 >>Rendez la quête Les morts et les damnés
    .timer 63,RP de Mograine
    .target Généralissime Darion Mograine
step
    #optional
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .turnin 40740 >>Rendez la quête Les morts et les damnés
    .target Généralissime Darion Mograine
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Chevalier de la mort Givre
#displayname Arme prodigieuse : Givre
#next a) Domaine de classe des Chevaliers de la mort Partie 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Utilisez |T135766:0|t[Porte de la Mort]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Utilisez le téléporteur
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 44401 >>Acceptez la quête Une arme pour chaque occasion
    .target Duc Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Givre|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390098
    .target Duc Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 44401 >>Rendez la quête Une arme pour chaque occasion
    .target Duc Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 43962 >>Acceptez la quête Les lames du destin
    .target Duc Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Givre|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390098
    .target Duc Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 43962 >>Rendez la quête Les lames du destin
    .target Duc Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 40715 >>Acceptez la quête Nécessité fait pacte
    .target Rensar Hautsabot
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Givre|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390098
    .target Rensar Hautsabot
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 40715 >>Rendez la quête Nécessité fait pacte
    .target Rensar Hautsabot
step
    #completewith Fragments of Frostmourne
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 627,73.09,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .accept 38990 >>Acceptez la quête L’appel de la Couronne de glace
    .target Highlord Darion Mograine
step
    .goto 627,73.60,46.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte de la mort|r.
    .complete 38990,1 --1/1 Use Death Gate
step
    .goto 698,59.7,17.3
    .isInScenario 901
    >>|cRXP_WARN_Marchez sur le bouton|r
    .scenario 1809,1 --Open the Gate to Icecrown
step
    .goto 698,59.74,0.36
    .scenario 1973,1 --1/1 Enter Icecrown Citadel
step
    #completewith next
    +|cRXP_WARN_Pour ouvrir la porte, tuez le |cRXP_ENEMY_Gardien peau de pierre|r sur au moins l'un des boutons (ou utilisez |T237532:0|t|r[Poigne de la mort] |cRXP_WARN_pour les attirer sur l'un d'entre eux) et montez sur le second.
step
    #label Fragments of Frostmourne
    .goto 700,52.16,66.08
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Fragments de Deuillegivre|r
    .scenario 1810,1,1 --1/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,59.89,53.69
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Fragments de Deuillegivre|r
    .scenario 1810,1,2 --2/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.27,41.31
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Fragments de Deuillegivre|r
    .scenario 1810,1,3 --3/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.33,49.96
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Fragments de Deuillegivre|r
    .scenario 1810,1 --4/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.82,53.41
    .isInScenario 901
    >>|cRXP_WARN_Marchez sur le téléporteur|r
    .scenario 1811,1 --Use the Scourge Teleporter within the Spire
step
    #completewith next
    #hidewindow
    .cast 186253 >>Suivez la flèche
    .timer 24,RP
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Garde de Deuillegivre|r
    .scenario 1812,1 --Reforge the fragments and form your weapon
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Lames du prince déchu|r
    >>Tuez l' |cRXP_ENEMY_Echo d’Arthas Menethil|r
    *Tuez la |cRXP_ENEMY_Source|r avant qu'elle ne l'atteigne.
    .scenario 1814,1 --Purge the blades of the malevolent souls within
    .timer 8,Téléportation
    .mob Echo of Arthas Menethil
    .mob Mindless Ghoul
    .mob Icefallen Geist
    .mob Enraged Zombie
step
    .isInScenario 901
    .goto 701,49.85,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Lames du prince déchu|r
    .complete 38990,2 --1/1 Obtain the Blades of the Fallen Prince
step
    .goto 701,49.8,51.7
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Lames du prince déchu|r
    .scenario 2224,1 --Take the Blades of the Fallen Prince.
step
    .goto 701,49.52,90.69
    .isInScenario 901
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 1827,1 --Obtain the Lich King's blessing
step
    .zoneskip 648
    .goto 701,47.64,90.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail d’accès d’Achérus|r
    .scenario 2923,1 --1/1 Acherus Waygate taken
step
    .goto 648,51.01,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .turnin 38990 >>Rendez la quête L’appel de la Couronne de glace
    .timer 60,RP
    .target Highlord Darion Mograine
]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Impie
#displayname Arme prodigieuse : Impie
#next a) Domaine de classe des Chevaliers de la mort Partie 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Utilisez |T135766:0|t[Porte de la Mort]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Utilisez le téléporteur
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 44401 >>Acceptez la quête Une arme pour chaque occasion
    .target Duc Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Impie|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390099
    .target Duc Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 44401 >>Rendez la quête Une arme pour chaque occasion
    .target Duc Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .goto 648,35.01,37.23
    .zone 647 >>Utilisez le téléporteur
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 43962 >>Acceptez la quête Les lames du destin
    .target Duc Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Impie|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390099
    .target Duc Lankral
    .skipgossipid 46633
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 43962 >>Rendez la quête Les lames du destin
    .target Duc Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .accept 40715 >>Acceptez la quête Nécessité fait pacte
    .target Rensar Hautsabot
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Impie|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390099
    .target Rensar Hautsabot
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 40715 >>Rendez la quête Nécessité fait pacte
    .target Rensar Hautsabot
step
    #completewith Apocalypse
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    >>Cette quête devrait être ajoutée automatiquement à votre journal de quêtes. Si ce n'est pas le cas, reconnectez-vous.
    .accept 40930 >>Acceptez la quête Apocalypse
step
    .goto 47,77.42,35.89
    >>Utilisez le |T254294:0|t[Parchemin du bois de la Pénombre]. |cRXP_WARN_Suivez la flèche dans la maison.|r
    .complete 40930,1 --1/1 Investigate Manor Mistmantle in Duskwood
    .use 173527
step
    .goto 47,77.42,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r et combattez-le.
    .complete 40930,2 --1/1 Convince Revil to help
    .timer 11,RP de Revil
    .target Revil Kost
    .skipgossipid 44918
step
    #label Apocalypse
    .goto 47,77.42,36.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40930 >>Rendez la quête Apocalypse
    .accept 40931 >>Acceptez la quête Sur les traces de la malédiction
    .target Revil Kost
step
    .isOnQuest 40931
    #title |cFFFCDC00Restez près d'Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .isOnQuest 40931
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escortez |cRXP_FRIENDLY_Revil Koût|r
step
    .isOnQuest 40931
    .goto 47,85.55,40.69
    .countdown 20 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .isOnQuest 40931
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escortez |cRXP_FRIENDLY_Revil Koût|r
step
    .isOnQuest 40931
    .goto 42,44.33,34.54
    .countdown 20 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escortez |cRXP_FRIENDLY_Revil Koût|r
    .complete 40931,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40931 >>Rendez la quête Sur les traces de la malédiction
    .accept 40932 >>Acceptez la quête Les relents du passé
    .target Revil Kost
step
    .goto 42,52.32,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Journal endommagé|r.
    .complete 40932,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.31,33.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Journal endommagé|r.
    .turnin 40932 >>Rendez la quête Les relents du passé
    .target Battered Journal
step
    .goto 42,52.42,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .accept 40933 >>Acceptez la quête Une tâche bien macabre
    .target Revil Kost
step
    .goto 42,53.39,73.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur différentes |cRXP_PICK_Tombes peu profondes|r jusqu'à ce que vous trouviez |cRXP_ENEMY_Laith Sha’ol|r. Tuez |cRXP_ENEMY_Laith Sha’ol|r.
    .complete 40933,1 --1/1 Learn the location of the Dark Riders
    .mob Laith Sha'ol
step
    .goto 42,49.46,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40933 >>Rendez la quête Une tâche bien macabre
    .accept 40986 >>Acceptez la quête Les Cavaliers noirs
    .target Revil Kost
step
    .isOnQuest 40986
    .goto 42,46.28,69.07
    .enterScenario 1026 >>|cRXP_WARN_Entrez dans le scénario |cRXP_PICK_Les Cavaliers noirs|r|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1026
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Sautez en bas
step
    #requires KarazhanCatacombsA
    .isInScenario 1026
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entrez dans les catacombes|r
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1026
    #title Utilisez |T237532:0|t[Poigne de la mort]
    .goto 46,55.90,69.19
    >>Utilisez |T237532:0|t[Poigne de la mort] sur |cRXP_ENEMY_Ariden|r |cRXP_WARN_depuis le journal de quêtes|r.
    .scenario 2159,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1026
    .goto 46,56.36,69.25
    >>Tuez |cRXP_ENEMY_Le Conservateur|r.
    .scenario 2160,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Suivez la flèche
    .timer 25,RP
step
    .isInScenario 1026
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Apocalypse|r. |cRXP_WARN_Attendez le RP|r.
    .scenario 2161,1 --Apocalypse found
step
    .isInScenario 1026
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Suivez la flèche en haut des escaliers vers |cRXP_ENEMY_Ariden|r.
    .scenario 2162,1 --Ariden followed
    .timer 15,RP d'Ariden
step
    .isInScenario 1026
    .goto 46,68.36,24.43
    >>Tuez |cRXP_ENEMY_Ariden|r.
    .scenario 2163,1 --Ariden defeated
    .complete 40986,1 --1/1 Defeat the Dark Riders
    .timer 33,RP d'Ariden
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Apocalypse|r.
    .complete 40986,2 --1/1 Apocalypse claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    *|cRXP_WARN_Note:|r S'il est toujours en combat, tuez les mobs qu'il combat.
    .turnin 40986 >>Rendez la quête Les Cavaliers noirs
    .accept 40987 >>Acceptez la quête L’appel de la vengeance
    .target Revil Kost
step
    .goto 46,69.62,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte de la mort vers le Trône de glace|r.
    .complete 40987,1 --1/1 Take the Death Gate to the Frozen Throne
step
    .isOnQuest 40987
    .goto 701,47.57,90.74
    .zone 648 >>Cliquez sur le |cRXP_PICK_Portail d’accès d’Achérus|r après le RP.
step
    .goto 648,50.99,50.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Généralissime Darion Mograine|r.
    .turnin 40987 >>Rendez la quête L’appel de la vengeance
    .target Highlord Darion Mograine

]])
--Blood 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Sang
#displayname Arme prodigieuse : Sang
#next ac) Domaine de classe des Chevaliers de la mort Partie 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Sang
]])
--Frost 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Chevalier de la mort Givre
#displayname Arme prodigieuse : Givre
#next ac) Domaine de classe des Chevaliers de la mort Partie 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Chevalier de la mort Givre
]])
--Unholy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Impie
#displayname Arme prodigieuse : Impie
#next ac) Domaine de classe des Chevaliers de la mort Partie 2
#internal


<< DeathKnight

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Impie
]])

--Death Knight Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe des Chevaliers de la mort Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Chevalier de la mort
#chapter
#internal

<< DeathKnight

step
    #completewith Enlist Nazgrim2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kaberk|r.
    *|cRXP_WARN_Note:|r Cette quête devrait être ajoutée automatiquement à votre journal de quêtes alors que vous êtes à Dalaran. Si ce n'est pas le cas, reconnectez-vous.
    .accept 40714 >>Acceptez la quête L’appel à la guerre
    .target Kaberk
step
    .goto 627,73.11,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Duc Lankral|r.
    .turnin 40714 >>Rendez la quête L’appel à la guerre
    .accept 40715 >>Acceptez la quête Nécessité fait pacte
    .target Duc Lankral
step
    .isQuestAvailable account,91955
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_IMPORTANT: Sélectionnez celui que vous avez déjà pour obtenir 10% d'expérience supplémentaire (ne fonctionne qu'une seule fois)|r
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost DK >> Givre(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Unholy >> Impie(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Blood >> Sang(Tank) Suite de quêtes
step
    #include ac) Order Hall Demon Hunter Part 2@Plans and Preparations-Enlist Nazgrim
step
    .zoneskip 648,1
    .goto 648,24.76,33.70
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
]])

-- --------- Demon Hunter ---------

--Havoc
RXPGuides.RegisterGuide([[}
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Dévastation
#displayname Arme prodigieuse : Dévastation
#next a) Domaine de classe des Chasseurs de démons Partie 1
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
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .accept 44383 >>Acceptez la quête En quête de pouvoir
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390100
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 44383 >>Rendez la quête En quête de pouvoir
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .target Kayn Solfurie
    .target Altruis le Souffrant
    .accept 40814 >>Acceptez la quête Le pouvoir de survivre
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 40814 >>Rendez la quête Le pouvoir de survivre
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    #completewith By Any Means
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestAvailable 40249
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .target Kayn Solfurie
    .target Altruis le Souffrant
    .accept 40819 >>Acceptez la quête Petits accords
step
    .isQuestTurnedIn 40249
    .goto 720,58.61,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .target Kayn Solfurie
    .target Altruis le Souffrant
    .accept 40819 >>Acceptez la quête Petits accords
step
    .isQuestTurnedIn 40249
    #completewith next
    #label Making Arrangements
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 40819 >>Rendez la quête Petits accords
    .accept 39051 >>Acceptez la quête Par tous les moyens
step
    .isQuestTurnedIn 40249
    #completewith Making Arrangements
    .goto 720,59.31,91.85
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step
    .isQuestTurnedIn 40249
    #requires Making Arrangements
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 40819 >>Rendez la quête Petits accords
    .accept 39051 >>Acceptez la quête Par tous les moyens
step
    #label By Any Means
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 40819 >>Rendez la quête Petits accords
    .accept 39051 >>Acceptez la quête Par tous les moyens
step
    .goto 627,66.09,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien Alturas|r
    .complete 39051,1 --1/1 Convince Warden Alturas
    .skipgossipid 45518
    .skipgossipid 45519
    .target Warden Alturas
step
    .goto 627,66.63,68.84
    #title |cFFFCDC00Suivez la flèche|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Attendez la fin du RP|r.
    >>Tuez |cRXP_ENEMY_Taldath le Destructeur|r
    .complete 39051,3 --1/1 Taldath interrogated
    .mob Taldath the Destroyer
step
    .goto 723,50.32,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 39051 >>Rendez la quête Par tous les moyens
    .target Kayn Solfurie
    .target Altruis le Souffrant
    .accept 39247 >>Acceptez la quête La chasse
step
    #completewith next
    #label Illidari Fel Bat
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Gangroptère illidari|r
    .complete 39247,1
    .target Illidari Fel Bat
step
    #completewith Illidari Fel Bat
    .zone 627 >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .macro Leave Instance,236367 >> Quittez l'instance
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Gangroptère illidari|r
    .complete 39247,1
    .timer 53,RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .enterScenario 900 >>|cRXP_WARN_Attendez la fin du RP|r.
    .timer 8
step
    .isInScenario 900
    .goto 680,25.63,58.94
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isInScenario 900
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03
    >>Tuez TOUS les |cRXP_ENEMY_Démons|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
    .mob Felsoul Berserker
step
    .isInScenario 900
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    .scenario 1822,1,1
step
    .isInScenario 900
    .goto 680,29.16,61.02,10,0
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    .scenario 1822,1,2
step
    .isInScenario 900
    #loop
    .goto 680,30.09,60.65,20,0
    .goto 680,29.97,63.95,30,0
    .goto 680,30.57,63.9,30,0
    .goto 680,30.3,65.99,30,0
    .goto 680,31.07,66,30,0
    >>Tuez les |cRXP_ENEMY_Démons|r |cRXP_WARN_mais ignorez l'infernal |cRXP_ENEMY_Ecraseur gangrâme|r même si vous avez l'aggro|r.
    .scenario 1822,2,100
    .mob Fist of the Deceiver
    .mob Living Flame
    .mob Felsoul Ritualist
step
    .isInScenario 900
    .goto 680,31.25,66.26,10,0
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    .scenario 1822,1,3
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>Tuez |cRXP_ENEMY_Varedis Gangrâme|r
    .scenario 1825,1
    .mob Varedis Gangrâme
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Lames jumelles du Trompeur|r
    .complete 39247,2 --1/1 Twinblades of the Deceiver
    .scenario 2712,1
step
    .isInScenario 900
    .zone 627 >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .macro Leave Instance,236367 >> Quittez l'instance
step
    .isQuestAvailable 40249
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'vas Roncesang|r.
    .turnin 39247 >>Rendez la quête La chasse
    .target Kor'vas Roncesang
step
    #completewith next
    #label Turn in The Hunt
    .isQuestTurnedIn 40249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'vas Roncesang|r.
    .turnin 39247 >>Rendez la quête La chasse
    .target Kor'vas Roncesang
step
    #completewith Turn in The Hunt
    #label ArtifactWeaponHavocY
    .isQuestTurnedIn 40249
    .goto 627,98.13,69.47
    .zone 720 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step
    #requires Turn in The Hunt
    .isQuestTurnedIn 40249
    #label ArtifactWeaponHavocZ
    .goto 720,59.31,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'vas Roncesang|r.
    .turnin 39247 >>Rendez la quête La chasse
    .target Kor'vas Roncesang
]])
--Vengeance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Vengeance
#displayname Arme prodigieuse : Vengeance
#next a) Domaine de classe des Chasseurs de démons Partie 1
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
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .accept 44383>>Acceptez la quête En quête de pouvoir
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390101
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 44383 >>Rendez la quête En quête de pouvoir
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .target Kayn Solfurie
    .target Altruis le Souffrant
    .accept 40814>>Acceptez la quête Le pouvoir de survivre
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .turnin 40814 >>Rendez la quête Le pouvoir de survivre
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    #completewith Crystallized Soul
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 627,74.98,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .accept 40247 >>Acceptez la quête Un service à demander
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    .isQuestAvailable 39247
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    .turnin 40247 >>Rendez la quête Un service à demander
    .accept 41804 >>Acceptez la quête Il n’y a qu’à demander
    .timer 57.5,RP
    .target Archimage Khadgar
step
    .isQuestTurnedIn 39247
    #completewith next
    #label Turn in Asking a Favor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    .turnin 40247 >>Rendez la quête Un service à demander
    .accept 41804 >>Acceptez la quête Il n’y a qu’à demander
    .disablecheckbox
    .target Archimage Khadgar
step
    .isQuestTurnedIn 39247
    #completewith Turn in Asking a Favor
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step
    .isQuestTurnedIn 39247
    #requires Turn in Asking a Favor
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    .turnin 40247 >>Rendez la quête Un service à demander
    .accept 41804 >>Acceptez la quête Il n’y a qu’à demander
    .timer 58.5,RP
    .target Archimage Khadgar
step
    .goto 627,25.35,47.24,15,0
    .goto 627,26.78,44.84
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 41804,1 --1/1 Follow Archmage Khadgar
step
    #label Crystallized Soul
    .goto 627,26.78,44.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Caisse|r
    .complete 41804,2 --1/1 Crystallized Soul
    .timer 12.5,RP
step
    .goto 627,28.49,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    .turnin 41804 >>Rendez la quête Il n’y a qu’à demander
    .target Archimage Khadgar
    .accept 41806 >>Acceptez la quête Retour auprès de Jace
step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jace Sombretisse|r
    .turnin 41806 >>Rendez la quête Retour auprès de Jace
    .accept 41807 >>Acceptez la quête Établir une connexion
    .target Jace Sombretisse
step
    .goto 627,74.35,52.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Communicateur de la Légion|r
    .complete 41807,1 --1/1 Legion Communicator activated
    .timer 19,RP
step
    .goto 627,74.43,51.31
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 41807,2 --1/1 Scout's report received
step
    .goto 627,74.54,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jace Sombretisse|r
    .turnin 41807 >>Rendez la quête Établir une connexion
    .target Jace Sombretisse
step
    .goto 627,75.05,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kayn Solfurie|r.
    .accept 40249 >>Acceptez la quête Vengeance sera nôtre
    .target Kayn Solfurie
    .target Altruis le Souffrant
step
    #completewith next
    #label Fly to the Broken Shore
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    #completewith Fly to the Broken Shore
    .goto 627,75.28,47.58
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Gangroptère illidari|r
    .timer 24,RP
    .target Illidari Fel Bat
step
    #requires Fly to the Broken Shore
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .isOnQuest 40249
    .enterScenario 961 >>|cRXP_WARN_Attendez la fin du RP|r.
step
    .goto 676,15.09,51.77
    .isOnQuest 40249
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Allari la Dévoreuse d'âmes|r
    .scenario 1939,1 --Free Allari the Souleater.
    .target Allari la Dévoreuse d'âmes
step
    .goto 676,16.02,54.95,15,0
    .goto 676,16.04,56.14,20,0
    .goto 676,17.61,57.44
    .isInScenario 961
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Portails|r
    .scenario 1940,1, --Destroy the Legion portals.
step
    .goto 676,20.19,61.38
    .isInScenario 961
    >>Tuez la |cRXP_ENEMY_Héraut du destin Saera|r et le |cRXP_ENEMY_Héraut du destin Taraar|r
    .scenario 2299,2 --Eliminate Doomherald Taraar.
    .scenario 2299,1 --Eliminate Doomherald Saera.
    .mob Doomherald Saera
    .mob Doomherald Taraar
step
    .goto 676,20.69,62.76
    .isInScenario 961
    >>Tuez |cRXP_ENEMY_Gorgonnash|r
    .scenario 1948,1 --Destroy Gorgonnash.
    .mob Gorgonnash
step
    .isInScenario 961
    .goto 676,21.92,61.12
    >>Utilisez |T1247266:0|t[Vision spectrale] devant la grotte.
    .scenario 1941,1 --Find Caria's trail.
    .usespell 188501
step
    .isInScenario 961
    .goto 676,21.92,61.12
    .cast 207965 >>Cliquez sur les |cRXP_PICK_Débris|r
step
    #completewith next
    #label Caria Felsoul
    .isInScenario 961
    >>Tuez |cRXP_ENEMY_Caria Gangrâme|r
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Gangrâme
step
    .isInScenario 961
    #completewith Caria Felsoul
    .goto 676,23.26,62.14,15,0
    .goto 676,23.73,63.82,15,0
    .goto 676,24.3,64.04,15,0
    .goto 676,25.11,63.11,30 >>Suivez la flèche
    .timer 9,RP
step
    #requires Caria Felsoul
    .goto 676,26.82,61.37
    >>Tuez |cRXP_ENEMY_Caria Gangrâme|r
    .isInScenario 961
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Gangrâme
step
    .goto 676,26.77,61.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .complete 40249,2 --1/1 Aldrachi Warblades
    .scenario 2302,1
step
    .zone 627 >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .macro Leave Instance,236367 >> Quittez l'instance
    .complete 40249,3 --1/1 Return to Dalaran
step
    .isQuestAvailable 39247
    #completewith next
    #label Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'vas Roncesang|r.
    .turnin 40249 >>Rendez la quête Vengeance sera nôtre
    .target Kor'vas Roncesang
step
    .isQuestAvailable 39247
    #completewith Vengeance Will Be Ours
    #label ArtifactWeaponVengeanceY
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le Portail|cRXP_PICK_.
step
    #label ArtifactWeaponVengeanceZ
    .isQuestAvailable 39247
    #requires Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Kor'vas Roncesang|r.
    .turnin 40249 >>Rendez la quête Vengeance sera nôtre
    .target Kor'vas Roncesang
]])
--Havoc 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Dévastation
#displayname Arme prodigieuse : Dévastation
#next ac) Domaine de classe des Chasseurs de démons Partie 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Dévastation
]])
--Vengeance 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Vengeance
#displayname Arme prodigieuse : Vengeance
#next ac) Domaine de classe des Chasseurs de démons Partie 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Vengeance
]])

--Demon Hunter Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe des Chasseurs de démons Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Chasseur de démons
#chapter
#internal

<< DemonHunter

step
    #completewith Champion: Asha Ravensong2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Altruis le Souffrant|r.
    .target Kayn Solfurie
    .target Altruis le Souffrant
    .accept 40814 >>Acceptez la quête Le pouvoir de survivre
step
    .isQuestAvailable 40814
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Havoc >> Dévastation(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Vengeance >> Vengeance(Tank) Suite de quêtes
step
    #include ac) Order Hall Demon Hunter Part 2@Eternal Vigil-Champion: Asha Ravensong
]])

-- --------- Druid ---------

--Balance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Druide Équilibre
#displayname Arme prodigieuse : Équilibre
#next a) Domaine de classe Druide Partie 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Suivez la flèche
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Prenez le portail
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40783
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44443 >>Acceptez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Équilibre|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390102
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44443 >>Rendez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44431 >>Acceptez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40783
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Équilibre|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390102
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44431 >>Rendez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 43980 >>Acceptez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40783
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Équilibre|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390102
    .target Rensar Hautsabot
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 43980 >>Rendez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 40646 >>Acceptez la quête Des armes de légende
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Équilibre|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390102
    .target Rensar Hautsabot
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 40646 >>Rendez la quête Des armes de légende
    .target Rensar Hautsabot
step
    #completewith Scythe of Elune
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 747,44.52,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naralex|r
    .accept 40783 >>Acceptez la quête La faux d’Élune
    .target Naralex
step
    #completewith ToDuskwoodD
    #label ToDuskwoodA
    >>Voyagez au Bois de la Pénombre
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToDuskwoodA
    #label ToDuskwoodB
    .goto 747,55.76,21.99
    .zone 715 >>Prenez le portail vers le Chemin du Rêve d’émeraude
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToDuskwoodB
    #completewith ToDuskwoodA
    #label ToDuskwoodC
    .zone 715 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToDuskwoodC
    #completewith ToDuskwoodA
    #label ToDuskwoodD
    .goto 715,31.46,26.05
    .zone 116 >>Prenez le portail vers le Bois de la Pénombre
step
    #requires ToDuskwoodA
    .goto 715,39.93,69.76
    >>Voyagez au Bois de la Pénombre
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    #completewith next
    #hidewindow
    .goto 47,48.90,34.31,15 >>Suivez la flèche
    .timer 15,RP de Valorn
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Suivez la flèche. Attendez la fin du RP|r.
    .complete 40783,2 --1/1 Meet with Valorn
step
    #label Scythe of Elune
    .goto 47,48.90,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valorn Calmebranche|r
    .turnin 40783 >>Rendez la quête La faux d’Élune
    .accept 40784 >>Acceptez la quête Sa place légitime
    .timer 4,RP
    .target Valorn Stillbough
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40784,1 --1/1 Scythe of Elune taken
step
    .goto 47,48.84,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belysra Soufflétoile|r.
    .turnin 40784 >>Rendez la quête Sa place légitime
    .target Belysra Starbreeze
    .accept 40785 >>Acceptez la quête Un ennemi dans les ténèbres
step
    #title|cFFFCDC00Entrez dans la maison|r
    .goto 47,77.42,36.13
    >>|cRXP_WARN_Suivez la flèche|r.
    .complete 40785,2 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.42,36.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40785 >>Rendez la quête Un ennemi dans les ténèbres
    .accept 40834 >>Acceptez la quête Sur les traces de la malédiction
    .target Revil Kost
step
    .isOnQuest 40834
    #title |cFFFCDC00Restez près d'Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .isOnQuest 40834
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escortez |cRXP_FRIENDLY_Revil Koût|r
step
    .isOnQuest 40834
    .goto 47,85.55,40.69
    .countdown 20 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .isOnQuest 40834
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escortez |cRXP_FRIENDLY_Revil Koût|r
step
    .isOnQuest 40834
    .goto 42,44.33,34.54
    .countdown 20 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escortez |cRXP_FRIENDLY_Revil Koût|r
    .complete 40834,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40834 >>Rendez la quête Sur les traces de la malédiction
    .accept 40835 >>Acceptez la quête Les relents du passé
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Journal endommagé|r.
    .complete 40835,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Journal endommagé|r.
    .turnin 40835 >>Rendez la quête Les relents du passé
    .target Battered Journal
step
    .goto 42,52.42,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .accept 40837 >>Acceptez la quête La chasse de Deuillevent
    .target Revil Kost
step
    .goto 42,51.57,43.62
    >>|cRXP_WARN_Suivez la flèche|r.
    .complete 40837,1 --1/1 Follow the worgen tracks
step
    .goto 42,47.22,51.69
    >>|cRXP_WARN_Suivez la flèche|r.
    .complete 40837,2 --1/1 Continue following the worgen
step
    .goto 42,49.17,57.66
    >>|cRXP_WARN_Suivez la flèche|r.
    .complete 40837,3 --1/1 Continue following the worgen
step
    .goto 42,45.93,63.33
    >>|cRXP_WARN_Suivez la flèche|r.
    .complete 40837,4 --1/1 Continue following the worgen
step
    .goto 42,46.90,69.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40837 >>Rendez la quête La chasse de Deuillevent
    .accept 40838 >>Acceptez la quête Les Cavaliers noirs
    .target Revil Kost
step
    .isOnQuest 40838
    .goto 42,46.28,69.07
    .enterScenario 1014 >>|cRXP_WARN_Suivez la flèche|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1014
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Sautez en bas
step
    #requires KarazhanCatacombsA
    .isInScenario 1014
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entrez dans les catacombes|r
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1014
    #title Utilisez |T252188:0|t[Rayon solaire]
    .goto 46,55.90,69.19
    >>Utilisez |T252188:0|t[Rayon solaire] sur |cRXP_ENEMY_Ariden|r |cRXP_WARN_depuis le journal de quêtes|r.
    .scenario 2109,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1014
    .goto 46,56.36,69.25
    >>Tuez |cRXP_ENEMY_Le Conservateur|r.
    .scenario 2110,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Suivez la flèche
    .timer 25,RP
step
    .isInScenario 1014
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_La faux d’Élune|r. |cRXP_WARN_Attendez le RP|r.
    .scenario 2111,1 --Scythe of Elune found
step
    .isInScenario 1014
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Suivez la flèche en haut des escaliers vers |cRXP_ENEMY_Ariden|r.
    .scenario 2112,1 --Ariden followed
    .timer 15,RP d'Ariden
step
    .isInScenario 1014
    .goto 46,68.36,24.43
    >>Tuez |cRXP_ENEMY_Ariden|r.
    .scenario 2113,1 --Ariden defeated
    .complete 40838,1 --1/1 Defeat the Dark Riders
    .timer 33,RP d'Ariden
    .mob Ariden
step
    .goto 46,68.28,24.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_La faux d’Élune|r.
    .complete 40838,2 --1/1 The Scythe of Elune claimed
    .timer 25,RP
step
    .goto 46,68.27,27.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40838 >>Rendez la quête Les Cavaliers noirs
    .accept 40900 >>Acceptez la quête Un fardeau assumé
    .target Revil Kost
step
    #completewith TheBurdenBorneC
    #label TheBurdenBorneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 40900 >>Rendez la quête Un fardeau assumé
    .target Rensar Hautsabot
step
    #completewith TheBurdenBorneA
    #label TheBurdenBorneB
    .zone 715 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    #completewith TheBurdenBorneA
    #requires TheBurdenBorneB
    #label TheBurdenBorneC
    .goto 715,45.60,23.46
    .zone 747 >>Prenez le portail vers le Chemin du Rêve d’émeraude
step
    #requires TheBurdenBorneA
    .goto 747,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 40900 >>Rendez la quête Un fardeau assumé
    .target Rensar Hautsabot
]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Druide Farouche
#displayname Arme prodigieuse : Farouche
#next a) Domaine de classe Druide Partie 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Suivez la flèche
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Prenez le portail
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 42428
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44443 >>Acceptez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Farouche|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390103
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44443 >>Rendez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44431 >>Acceptez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Farouche|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390103
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44431 >>Rendez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 43980 >>Acceptez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Farouche|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390103
    .target Rensar Hautsabot
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 43980 >>Rendez la quête Une autre arme du temps jadis
    .accept 42428 >>Acceptez la quête Le sanctuaire d’Ashamane
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 40646 >>Acceptez la quête Des armes de légende
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Farouche|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390103
    .target Rensar Hautsabot
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 40646 >>Rendez la quête Des armes de légende
    .target Rensar Hautsabot
step
    #completewith Aid for the Ashen
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 42428 >>Acceptez la quête Le sanctuaire d’Ashamane
    .target Rensar Hautsabot
step
    .goto 747,61.73,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Danise Mirétoile|r.
    .complete 42428,1 --1/1 Hippogryph taken to Ashamane's Fall
    .timer 57,Durée du Vol
    .target Danise Stargazer
    .skipgossipid 45654
step
    .goto 641,70.39,46.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delandros Lunemoirée|r.
    .turnin 42428 >>Rendez la quête Le sanctuaire d’Ashamane
    .target Delandros Shimmermoon
    .accept 42439 >>Acceptez la quête L’aide aux Cendrés
    .accept 42438 >>Acceptez la quête Les graines du renouveau
step
    #completewith SeedsOfRenewalA
    >>Tuez les |cRXP_ENEMY_Flagelles-âmes érédars|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #title Graines (1/3)
    .goto 641,71.69,43.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_cadavre|r de |cRXP_FRIENDLY_Emtheas Bonœil|r.
    .complete 42438,1,1 --1/3 Tel'andu Seed
    .target Emtheas Trueeye
step
    #title Graines (2/3)
    .goto 641,70.04,42.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_cadavre|r de |cRXP_FRIENDLY_Asthalor Brunelune|r.
    .complete 42438,1,2 --2/3 Tel'andu Seed
    .target Asthalor Duskmoon
step
    #label SeedsOfRenewalA
    #title Graines (3/3)
    .goto 641,71.00,38.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_cadavre|r de |cRXP_FRIENDLY_Iyseelar Chanterosée|r.
    .complete 42438,1 --3/3 Tel'andu Seed
    .target Iyseelar Dewsong
step
    #loop
    .goto 641,71.70,38.40,35,0
    .goto 641,71.55,42.50,35,0
    .goto 641,70.24,41.08,35,0
    >>Tuez les |cRXP_ENEMY_Flagelles-âmes érédars|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #label Aid for the Ashen
    .goto 641,73.23,42.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delandros Lunemoirée|r.
    .turnin 42439 >>Rendez la quête L’aide aux Cendrés
    .turnin 42438 >>Rendez la quête Les graines du renouveau
    .accept 42440 >>Acceptez la quête Le sanctuaire en péril
    .target Delandros Shimmermoon
step
    .goto 641,73.75,40.59
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 42440,1 --1/1 Investigate Ashamane's Fall
step
    .goto 641,73.82,39.02
    >>Tuez |cRXP_ENEMY_Algromon|r
    .complete 42440,2 --1/1 Algromon slain
    .mob Algromon
step
    .goto 641,73.83,38.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delandros Lunemoirée|r.
    .turnin 42440 >>Rendez la quête Le sanctuaire en péril
    .accept 42430 >>Acceptez la quête Les Crocs d’Ashamane
    .target Delandros Shimmermoon
step
    .goto 641,73.75,38.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Croc-d’Ebène|r
    .complete 42430,1 --1/1 Ebonfang Mounted
    .target Ebonfang
step
    .isOnQuest 42430
    .goto 641,73.75,38.40
    .enterScenario 1108 >>Entrez le scénario |cRXP_PICK_Les Crocs d’Ashamane|r.
step
    .isInScenario 1108
    .goto 680,21.70,39.36
    >>|cRXP_WARN_Suivez la flèche|r
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
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Interrupteur de la porte|r
step
    #requires DoorSwitchA
    #completewith DoorwayOpenedA
    #label DoorSwitchB
    .goto 680,23.14,37.77
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Interrupteur de la porte|r
    .timer 15,La porte s'ouvrira dans
step
    #requires DoorwayOpenedA
    .isInScenario 1108
    .goto 680,22.80,35.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les deux |cRXP_PICK_Interrupteurs de la porte|r
    >>|cRXP_WARN_Attendez que la porte s'ouvre après avoir cliqué sur les deux interrupteurs|r
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    #completewith next
    #label FollowVerstoksTrailA
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    #completewith FollowVerstoksTrailA
    .goto 692,54.48,40.91
    .cast 214240 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Plateforme|r
    *- |cRXP_WARN_Assurez-vous d'être en Forme de félin|r
step
    #requires FollowVerstoksTrailA
    .isInScenario 1108
    .goto 692,45.45,29.90
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    .isInScenario 1108
    .goto 692,43.10,21.57
    >>Tuez |cRXP_ENEMY_Verstok|r
    .scenario 2534,1 --Defeat Verstok
    .mob Verstok
step
    .isInScenario 1108
    .goto 692,41.89,33.91,15,0
    .goto 692,31.11,72.27,15,0
    .goto 692,33.74,72.68
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2545,1 --Chase after Verstok
step
    .isInScenario 1108
    .goto 693,53.19,18.21
    >>Tuez la |cRXP_ENEMY_Maîtresse des toiles Shinaris|r.
    .scenario 2546,1 --Webmistress Shinaris Slain
    .timer 18,RP de Verstok
    .mob Webmistress Shinaris
step
    .isInScenario 1108
    .goto 693,54.72,20.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Crocs d'Ashamane|r
    .scenario 2547,1 --Retrieve the Fangs of Ashamane
step
    .isOnQuest 42430
    .isQuestNotComplete 42430
    .isInScenario 1108
    .goto 693,54.76,19.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Croc-d’Ebène|r
    .scenario 2552,1 --Ride upon Ebonfang
    .target Ebonfang
step
    .goto 747,44.52,51.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 42430 >>Rendez la quête Les Crocs d’Ashamane
    .target Rensar Hautsabot
]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Druide Gardien
#displayname Arme prodigieuse : Gardien
#next a) Domaine de classe Druide Partie 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Suivez la flèche
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Prenez le portail
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 41468
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44443 >>Acceptez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Gardien|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390104
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44443 >>Rendez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44431 >>Acceptez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Gardien|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390104
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44431 >>Rendez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 43980 >>Acceptez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Gardien|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390104
    .target Rensar Hautsabot
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 43980 >>Rendez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 40646 >>Acceptez la quête Des armes de légende
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Gardien|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390104
    .target Rensar Hautsabot
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 40646 >>Rendez la quête Des armes de légende
    .target Rensar Hautsabot
step
    #completewith ToTheHillsA
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 41468 >>Acceptez la quête La maîtresse de la Griffe
    .target Rensar Hautsabot
step
    #completewith next
    #label MistressOfTheClawA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Léa Rochepatte|r
    .turnin 41468 >>Rendez la quête La maîtresse de la Griffe
    .accept 41782 >>Acceptez la quête En route pour les collines
    .target Lea Stonepaw
step
    #title |cFFFCDC00Entrez dans la grotte|r
    #completewith MistressOfTheClawA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Suivez la flèche pour entrer dans la grotte.|r
step
    #requires MistressOfTheClawA
    .goto 641,39.27,18.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Léa Rochepatte|r
    .turnin 41468 >>Rendez la quête La maîtresse de la Griffe
    .accept 41782 >>Acceptez la quête En route pour les collines
    .target Lea Stonepaw
step
    #completewith next
    #label ToTheHillsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Flacon d'eau de puits de lune|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #title |cFFFCDC00Sortez de la grotte|r
    #completewith ToTheHillsA
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Suivez la flèche pour quitter la grotte|r
step
    #requires ToTheHillsA
    .goto 747,35.66,25.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Flacon d'eau de puits de lune|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #completewith ToTheHillsE
    #label ToTheHillsB
    >>Allez aux Grisonnes
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToTheHillsB
    #label ToTheHillsC
    .goto 747,55.76,21.99
    .zone 715 >>Prenez le portail vers le Chemin du Rêve d’émeraude
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToTheHillsC
    #completewith ToTheHillsB
    #label ToTheHillsD
    .zone 715 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToTheHillsD
    #completewith ToTheHillsB
    #label ToTheHillsE
    .goto 715,31.46,26.05
    .zone 116 >>Prenez le portail vers les Grisonnes
step
    #requires ToTheHillsB
    >>Allez aux Grisonnes
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .goto 116,50.46,29.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_FRIENDLY_Hippogriffe de Rochepatte|r
    .complete 41782,3 --1/1 Take Stonepaw's Hippogryph to Lea Stonepaw (Optional)
    .target Stonepaw's Hippogryph
step
    .goto 116,50.29,37.96,25,0
    .goto 116,50.98,37.10
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 41782,4 --1/1 Locate Lea Stonepaw
step
    .goto 116,51.28,36.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Léa Rochepatte|r
    .turnin 41782 >>Rendez la quête En route pour les collines
    .target Lea Stonepaw
step
    #title |cFFFCDC00Regardez la note|r
    .goto 116,50.50,37.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursol|r
    *|cRXP_WARN_Note: Si vous ne pouvez pas voir le RP ou |cRXP_FRIENDLY_Ursol|r alors reconnectez-vous à côté de |cRXP_FRIENDLY_Léa Rochepatte|r.|r
    .accept 41790 >>Acceptez la quête La première épreuve d’Ursol
    .target Ursol
step
    .goto 116,50.68,37.44
    >>Tuez le |cRXP_ENEMY_Champion ancestral|r
    .complete 41790,1 --1/1 Overcome Ursol's first trial
    .mob Ancestral Champion
step
    .goto 116,50.52,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursol|r
    .turnin 41790 >>Rendez la quête La première épreuve d’Ursol
    .accept 41791 >>Acceptez la quête La deuxième épreuve d’Ursol
    .target Ursol
step
    .goto 116,50.70,37.37
    >>Tuez les |cRXP_WARN_trois vagues|r de |cRXP_ENEMY_Guerriers ancestraux|r et de |cRXP_ENEMY_Chamans|r
    .complete 41791,1 --1/1 Overcome the second of Ursol's trials
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursol|r
    .turnin 41791 >>Rendez la quête La deuxième épreuve d’Ursol
    .accept 41792 >>Acceptez la quête La troisième épreuve d’Ursol
    .target Ursol
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursol pour commencer la troisième épreuve|r
    .complete 41792,1 --1/1 Speak with Ursol to begin the third trial
    .timer 50,RP
    .target Ursol to begin the third trial
    .skipgossipid 45309
step
    .goto 116,51.15,36.99
    >>Tuez les |cRXP_ENEMY_Guerriers ancestraux|r qui apparaissent et les |cRXP_ENEMY_Chamans|r
    *|cRXP_WARN_Vous pouvez aussi la soigner|r
    .complete 41792,2 --1/1 Protect Lea Stonepaw
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.51,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ursol|r
    .turnin 41792 >>Rendez la quête La troisième épreuve d’Ursol
    .target Ursol
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Léa Rochepatte|r
    .accept 40647 >>Acceptez la quête Quand les rêves deviennent cauchemars
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>Utilisez le |T236878:0|t[Flacon d'eau de puits de lune]
    .complete 40647,1 --1/1 Enter the Emerald Dream
    .use 136414
step
    .isOnQuest 40647
    .goto 116,51.25,36.85
    .enterScenario 990 >>Entrez dans le scénario de la |cRXP_PICK_Tanière d’Ursoc|r
step
    .isInScenario 990
    .goto 757,47.23,81.67,25,0
    .goto 757,48.72,51.65
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2029,1 --Locate the Claws of Ursoc
step
    .goto 757,46.86,30.53
    .isInScenario 990
    >>Tuez les |cRXP_ENEMY_Profanateurs sabots-putrides|r et les |cRXP_ENEMY_Traqueurs des ombres|r
    .scenario 2327,1 --Defend the Spirit of Ursoc
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,50.13,32.38
    >>Tuez les |cRXP_ENEMY_Vases chancre-nées|r et les |cRXP_ENEMY_Traqueurs des ombres sabots-putrides|r.
    .scenario 2030,1 --Survive the first assault
    .mob Rothoof Shadowstalker
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,49.40,33.06
    >>Tuez les |cRXP_ENEMY_Profanateurs sabots-putrides|r et les |cRXP_ENEMY_Traqueurs des ombres|r
    .scenario 2033,1 --Survive the second assault
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,46.32,30.25
    >>Tuez les |cRXP_ENEMY_Vases chancre-nées|r et les |cRXP_ENEMY_Défenseurs corrompus|r.
    .scenario 2034,1 --Survive the third assault
    .mob Corrupted Defender
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,50.30,31.30
    >>Tuez les deux |cRXP_ENEMY_Défenseurs corrompus|r. Attendez 70 secondes de RP après avoir été étourdi.
    .scenario 2035,1 --Survive the final assault
    .mob Corrupted Defender
step
    .isInScenario 990
    .goto 757,49.96,28.35
    >>Tuez |cRXP_ENEMY_Malithar|r.
    .scenario 2040,1 --Defeat Malithar
    .complete 40647,2 --1/1 Defeat the Forces of the Nightmare
    .mob Malithar
step
    .isInScenario 990
    .goto 757,50.08,26.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Griffes d'Ursoc|r
    .scenario 2041,1 --Obtain the Claws of Ursoc
    .complete 40647,3 --1/1 Obtain the Claws of Ursoc
step
    .isOnQuest 40647
    .zoneskip 757,1
    .zone 116 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Léa Rochepatte|r
    .skipgossipid 45251
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Léa Rochepatte|r
    .turnin 40647 >>Rendez la quête Quand les rêves deviennent cauchemars
    .accept 41918 >>Acceptez la quête De retour du Rêve
    .target Lea Stonepaw
step
    .zoneskip 715
    .isOnQuest 41918
    .zone 715 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    .zoneskip 715,1
    .isOnQuest 41918
    .goto 715,45.60,23.46
    .zone 747 >>|cRXP_WARN_Suivez la flèche et traversez le portail|r
step
    .goto 747,44.66,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 41918 >>Rendez la quête De retour du Rêve
    .target Rensar Hautsabot
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Druide Restauration
#displayname Arme prodigieuse : Restauration
#next a) Domaine de classe Druide Partie 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Utilisez |T135763:0|t[Marche du rêve]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Suivez la flèche
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Prenez le portail
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40649
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44443 >>Acceptez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390105
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44443 >>Rendez la quête Les armes des anciens
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 44431 >>Acceptez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390105
    .target Rensar Hautsabot
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 44431 >>Rendez la quête D’autres armes du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 43980 >>Acceptez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390105
    .target Rensar Hautsabot
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 43980 >>Rendez la quête Une autre arme du temps jadis
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 40646 >>Acceptez la quête Des armes de légende
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390105
    .target Rensar Hautsabot
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .turnin 40646 >>Rendez la quête Des armes de légende
    .target Rensar Hautsabot
step
    #completewith Leafbeard the Storied
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 747,44.61,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Gardien Remulos|r
    .accept 40649 >>Acceptez la quête Rencontre avec Mylune
    .target Gardien Remulos
step
    .goto 747,52.30,52.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r.
    .turnin 40649 >>Rendez la quête Rencontre avec Mylune
    .accept 41422 >>Acceptez la quête Des préparatifs indispensables
    .target Mylune
step
    .goto 747,35.66,25.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Coupe vide|r.
    .complete 41422,1 --1/1 Cup of Moonwater
step
    #label Leafbeard the Storied
    .goto 747,32.79,29.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Barbe-Feuillue le Légendaire|r.
    .complete 41422,2 --1/1 Leafbeard's Blessing obtained
    .target Leafbeard the Storied
    .skipgossipid 46113
    .skipgossipid 45260
step
    .goto 747,52.30,52.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mylune|r.
    .turnin 41422 >>Rendez la quête Des préparatifs indispensables
    .accept 41449 >>Acceptez la quête Aventures oniriques
    .target Mylune
step
    #completewith next
    #label JoinTheDreamerA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naralex|r
    .turnin 41449 >>Rendez la quête Aventures oniriques
    .accept 41436 >>Acceptez la quête Une profonde léthargie
    .target Naralex
step
    #title |cFFFCDC00Entrez dans la grotte|r
    #completewith JoinTheDreamerA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Suivez la flèche pour entrer dans la grotte.|r
step
    #requires JoinTheDreamerA
    .goto 747,40.62,1.53,10,0
    .goto 641,39.56,18.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naralex|r
    .turnin 41449 >>Rendez la quête Aventures oniriques
    .accept 41436 >>Acceptez la quête Une profonde léthargie
    .target Naralex
step
    .goto 641,39.63,18.09
    >>Utilisez la |T608949:0|t[Coupe d'eau de lune]
    .complete 41436,1 --1/1 Enter the Emerald Dream
    .use 135506
step
    #completewith InDeepSlumberC
    #label InDeepSlumberA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_G'Hanir|r |cRXP_WARN_à l'extérieur de la grotte|r.
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
step
    #title |cFFFCDC00Libérez Bashana|r
    #completewith InDeepSlumberA
    #label InDeepSlumberB
    .goto 747,40.83,2.02,8,0
    .goto 747,43.96,6.16,8,0
    .goto 747,47.97,4.09,8,0
    .goto 747,47.21,7.17
    .cast 311698 >>Cliquez sur les |cRXP_PICK_Racines|r
step
    #title |cFFFCDC00Sortez de la grotte, soignez-vous|r
    #requires InDeepSlumberB
    #completewith InDeepSlumberA
    #label InDeepSlumberC
    .goto 747,45.81,11.47,10,0
    .goto 747,48.95,15.49,8,0
    .goto 747,41.96,9.58,8,0
    .goto 747,42.55,16.10,8,0
    .goto 747,41.20,18.49,8,0
    .goto 747,46.76,29.02,8 >>|cRXP_WARN_Suivez la flèche pour sortir de la grotte.|r
    *|cRXP_WARN_Si les dégâts de la corruption sont trop importants, abandonnez la quête et reconnectez-vous|r.
step
    #requires InDeepSlumberA
    .goto 747,45.12,50.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_G'Hanir|r
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
    .timer 10,Réveil dans
step
    .goto 641,39.62,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Naralex|r
    .turnin 41436 >>Rendez la quête Une profonde léthargie
    .accept 41690 >>Acceptez la quête Regroupement
    .target Naralex
step
    #completewith next
    #label ReconveneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyessa Gardefleur|r.
    .turnin 41690 >>Rendez la quête Regroupement
    .accept 41689 >>Acceptez la quête Purification de l’Arbre-mère
    .target Lyessa Bloomwatcher
step
    #title |cFFFCDC00Sortez de la grotte|r
    #completewith ReconveneA
    .goto 747,41.02,2.21,8,0
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Suivez la flèche pour quitter la grotte|r
step
    #requires ReconveneA
    .goto 747,45.20,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyessa Gardefleur|r.
    .turnin 41690 >>Rendez la quête Regroupement
    .accept 41689 >>Acceptez la quête Purification de l’Arbre-mère
    .target Lyessa Bloomwatcher
step
    .goto 747,55.74,21.91
    >>Prenez le portail pour le Chemin du Rêve d’émeraude
    .complete 41689,1 --1/1 Enter the Dreamway
step
    .goto 715,53.69,53.00
    >>Prenez le portail vers le Mont Hyjal
    .complete 41689,2 --1/1 Travel to Mount Hyjal
step
    #hidewindow
    #completewith next
    #label CleansingTheMotherTreeA
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    #completewith CleansingTheMotherTreeA
    #label CleansingTheMotherTreeB
    .enterScenario 1061 >>Entrez dans le scénario |cRXP_PICK_Purification de l’Arbre-mère|r
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #requires CleansingTheMotherTreeB
    #completewith next
    #hidewindow
    .gossipoption 45306 >>Suivez la flèche
    .timer 21,RP d'Omnuron
step
    #requires CleansingTheMotherTreeB
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,59.51,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur du ciel Omnuron|r.
    .scenario 2259,1 --Find out what happened from Skylord Omnuron.
    .target Seigneur du ciel Omnuron
    .skipgossipid 45306
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    --.goto 198/1,-349880.01465,493840.00000
    .goto 198,60.52,44.54
    >>Soignez |cRXP_FRIENDLY_Célestine de la Moisson|r.
    .scenario 2269,2 --Heal Celestine to full health.
    .target Célestine de la Moisson
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,61.68,43.60
    >>Soignez l' |cRXP_FRIENDLY_Archidruide Hamuul Totem-Runique|r.
    .scenario 2269,1 --Heal Hamuul to full health.
    .target Archidruide Hamuul Totem-Runique
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.70,41.85
    >>Utilisez |T236288:0|t[Soins naturels] sur |cRXP_FRIENDLY_Zen’tabra|r.
    .scenario 2269,3 --Cleanse Zen'tabra.
    .target Zen’tabra
    .macro Nature's Cure,236288 >>Soins naturels
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #hidewindow
    #completewith next
    .gossipoption 45261 >>Suivez la flèche
    .timer 6,RP rapide.
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .goto 198,60.24,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyessa Gardefleur|r.
    .scenario 2270,1 --Speak to Lyessa.
    .timer 180,Durée du combat
    .target Lyessa Bloomwatcher
    .skipgossipid 45261
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.31,42.76
    >>|cRXP_WARN_Soignez vos alliés pendant environ 3 minutes|r.
    .scenario 2272,1 --1
    .scenario 2272,2 --Lyessa Must Survive
    .skipgossipid 45138
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,25.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Lyessa Gardefleur|r.
    .scenario 2325,1 --Give Corrupted G'Hanir to Lyessa.
    .target Lyessa Bloomwatcher
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2325,2 --Witness G'Hanir's rebirth.
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_G'Hanir|r.
    .scenario 2372,1 --Wield G'Hanir, the Mother Tree.
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>Utilisez l' |T1115592:0|t[Appel de l’Arbre-Mère] |cRXP_WARN_dans le journal de quêtes sous votre minicarte|r.
    .scenario 2274,1 --Call upon the souls of the forest.
    .timer 15,RP de Destromath
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2274,2 --Eliminate Destromath.
step
    #completewith CleansingTheMotherTreeE
    #label CleansingTheMotherTreeC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyessa Gardefleur|r.
    .turnin 41689 >>Rendez la quête Purification de l’Arbre-mère
    .target Lyessa Bloomwatcher
step
    .zoneskip 198,1
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeD
    .goto 198,59.05,43.52
    .zone 715 >>Entrez dans le portail vers le Chemin du Rêve d’émeraude
step
    #requires CleansingTheMotherTreeD
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeF
    .zone 715 >>Utilisez |T135763:0|t[Marche du rêve]
step
    .zoneskip 715,1
    #requires CleansingTheMotherTreeF
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeE
    .goto 715,45.60,23.46
    .zone 747 >>Entrez par le portail vers La Sylverêve
step
    #requires CleansingTheMotherTreeC
    .goto 747,45.20,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyessa Gardefleur|r.
    .turnin 41689 >>Rendez la quête Purification de l’Arbre-mère
    .target Lyessa Bloomwatcher
]])
--Balance 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Druide Équilibre
#displayname Arme prodigieuse : Équilibre
#next ac) Domaine de classe Druide Partie 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Druide Équilibre
]])
--Feral 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Druide Farouche
#displayname Arme prodigieuse : Farouche
#next ac) Domaine de classe Druide Partie 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Druide Farouche
]])
--Guardian 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Druide Gardien
#displayname Arme prodigieuse : Gardien
#next ac) Domaine de classe Druide Partie 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Druide Gardien
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Druide Restauration
#displayname Arme prodigieuse : Restauration
#next ac) Domaine de classe Druide Partie 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Druide Restauration
]])

--Druid Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Druide Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Druide
#chapter
#internal

<< Druid

step
    #completewith Making Trails2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rensar Hautsabot|r.
    .accept 40646 >>Acceptez la quête Des armes de légende
    .target Rensar Hautsabot
step
    .isQuestAvailable 40646
    .isQuestAvailable account,91955
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_IMPORTANT: Sélectionnez celui que vous avez déjà pour obtenir 10% d'expérience supplémentaire (ne fonctionne qu'une seule fois)|r
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Balance Druid >> Équilibre(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Feral Druid >> Farouche(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Guardian Druid >> Gardien(Tank) Suite de quêtes
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Restoration Druid >> Restauration(Healer) Suite de quêtes
step
    #include ac) Order Hall Druid Part 2@Sowing The Seed-Making Trails
step
    .zoneskip 747,1
    .goto 747,56.51,43.15
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
]])

-- --------- Hunter ---------

--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Maîtrise des bêtes
#displayname Arme prodigieuse : Maîtrise des bêtes
#next a) Domaine de classe Chasseur Partie 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 44366 >>Acceptez la quête Une dernière aventure
    .target Emmarel Ombregarde
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Maîtrise des bêtes|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390106
    .target Emmarel Ombregarde
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 44366 >>Rendez la quête Une dernière aventure
    .target Emmarel Ombregarde
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 44043 >>Acceptez la quête Perpétuer la légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Maîtrise des bêtes|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390106
    .target Emmarel Ombregarde
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 44043 >>Rendez la quête Perpétuer la légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 40618 >>Acceptez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Maîtrise des bêtes|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390106
    .target Emmarel Ombregarde
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40618 >>Rendez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    #completewith Beastly Expedition
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 41541 >>Acceptez la quête Une expédition brutale
    .target Emmarel Ombregarde
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 41541 >>Acceptez la quête Une expédition brutale
    .target Emmarel Ombregarde
step
    .isQuestTurnedIn 40959
    .isOnQuest 41541
    .goto 739,48.66,43.46
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
step
    #label Beastly Expedition
    .goto 627,71.39,50.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Cœur-sauvage|r.
    .turnin 41541 >>Rendez la quête Une expédition brutale
    .accept 41574 >>Acceptez la quête Le tonnerre volé
    .target Grif Cœur-sauvage
step
    #completewith next
    #hidewindow
    .vehicle 106236 >>Suivez la flèche
    .timer 65,Durée du Vol
step
    .goto 627,71.22,51.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Huey|r.
    .complete 41574,1 --1/1 Fly with Grif to Shield's Rest
    .target Huey
step
    #completewith next
    #hidewindow
    .goto 634,85.40,9.66
    .gossipoption 45594 >>Suivez la flèche
    .timer 71,RP de Grif
step
    .goto 634,84.90,9.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Cœur-sauvage|r.
    .scenario 2291,1 --1/1 Meet Prustaga with Grif.
    .target Grif Cœur-sauvage
    .skipgossipid 45594
step
    #title |cFFFCDC00Evitez les petites tornades|r
    .isInScenario 1068
    .goto 635,75.26,58.95,10,0
    .goto 635,52.67,52.30
    >>|cRXP_WARN_Suivez la flèche et entrez dans la tombe.|r
    >>Tuez la |cRXP_ENEMY_Tisse-tempête Ingrida|r et le |cRXP_ENEMY_Sculpte-vent spectral|r.
    .scenario 2300,1 --Find Warlord Volund's tomb.
    .mob Stormweaver Ingrida
    .mob Spectral Windshaper
step
    .isInScenario 1068
    .goto 635,55.02,43.84
    >>Tuez les vagues de |cRXP_ENEMY_Gardes funéraires sans repos|r et de |cRXP_ENEMY_Pisteurs perturbés|r.
    .scenario 2301,1 --Protect Prustaga as she opens Volund's tomb.
    .timer 131,Durée du RP
    .mob Restless Tombguard
    .mob Disturbed Tracker
    .mob Disturbed Worg
step
    .isInScenario 1068
    .goto 635,58.06,19.20
    >>Tuez le |cRXP_ENEMY_Broyeur automatique|r. |cRXP_WARN_Attendez le temps du RP.|r
    .scenario 2298,1 --Search for Titanstrike.
    .mob Automated Crusher
step
    .isInScenario 1068
    .goto 635,58.27,17.73
    >>Tuez le |cRXP_ENEMY_Seigneur de guerre Volund|r. |cRXP_WARN_Attendez le temps du RP.|r
    .scenario 2423,1 --Defeat Warlord Volund.
    .mob Warlord Volund
step
    .isInScenario 1068
    .goto 635,58.25,17.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Plateforme de téléportation|r.
    .scenario 2424,1 --Join Keeper Mimiron in Ulduar.
    .complete 41574,2 --Track down Titanstrike: 1/1
step
    #title |cFFFCDC00Évitez les bombes|r
    .goto 745,44.93,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mimiron|r.
    .turnin 41574 >>Rendez la quête Le tonnerre volé
    .accept 42158 >>Acceptez la quête L’atelier du créateur
    .target Mimiron
step
    #completewith TheCreatorsWorkshopI
    #label TheCreatorsWorkshopA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopB
    .goto 745,44.93,37.33
    .gossipoption 45357 >>Parlez à |cRXP_FRIENDLY_Mimiron|r.
    .timer 50,Première urgence
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Panneau de contrôle (1/2)
    #requires TheCreatorsWorkshopB
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopC
    #title Sautez par-dessus les vagues
    .goto 745,40.46,41.42
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Panneau de contrôle|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Panneau de contrôle (2/2)
    #requires TheCreatorsWorkshopC
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopD
    #title Sautez par-dessus les vagues
    #loop
    .goto 745,40.46,41.42,8,0
    .goto 745,41.44,44.14,8,0
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Panneau de contrôle|r.
    .timer 14,Deuxième urgence
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nœud de matrice de stabilisation (1/4)
    #requires TheCreatorsWorkshopD
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopE
    .goto 745,45.50,43.96
    .cast 6477 >>Cliquez sur les |cRXP_PICK_Nœuds de matrice de stabilisation|r.
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
    #title Nœud de matrice de stabilisation (2/4)
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopF
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Nœud de matrice de stabilisation|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nœud de matrice de stabilisation (3/4)
    #requires TheCreatorsWorkshopF
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopG
    .cast 6477 >>Cliquez sur les |cRXP_PICK_Nœuds de matrice de stabilisation|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Nœud de matrice de stabilisation (4/4)
    #requires TheCreatorsWorkshopG
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopH
    .cast 6477 >>Cliquez sur les |cRXP_PICK_Nœuds de matrice de stabilisation|r.
    .timer 25,Dernière urgence
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #requires TheCreatorsWorkshopH
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopI
    .goto 745,43.65,36.37
    .cast 6477 >>Cliquez sur |cRXP_PICK_N'APPUYEZ PAS SUR CE BOUTON !|r.
    .timer 27,Complétion de la quête dans
step
    #requires TheCreatorsWorkshopA
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
    .skipgossipid 45357
step
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Mimiron|r.
    .turnin 42158 >>Rendez la quête L’atelier du créateur
    .accept 42185 >>Acceptez la quête On ne chasse jamais seul
    .target Mimiron
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .zoneskip 745,1
    .goto 745,43.73,37.94
    .zone 120 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Plateforme de téléportation|r.
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .goto 120,25.73,47.51
    .enterScenario 1099 >>Volez vers le scénario |cRXP_PICK_On ne chasse jamais seul|r.
    .timer 33,RP
step
    .isInScenario 1099
    #title Avancez une seule fois pour commencer le RP.
    .goto 120,25.78,47.70
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2452,1 --Converse with Thorim.
step
    .isInScenario 1099
    .goto 120,25.90,48.55
    >>Tuez les |cRXP_ENEMY_Proto-drakes tempétueux|r et les |cRXP_ENEMY_Mande-foudres fervents|r.
    .scenario 2474,1 --Fend off the vrykul horde.
    .mob Thunderous Proto-Drake
    .mob Fervant Stormcaller
step
    .goto 120,25.74,47.38
    .isInScenario 1099
    >>Tuez |cRXP_ENEMY_Prustaga|r.
    .scenario 2480,1 --Defeat Prustaga.
    .timer 73,RP
    .mob Prustaga
step
    .isInScenario 1099
    .goto 120,25.74,47.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Hati|r.
    .scenario 2481,1 --Bind Hati's spirit to your own.
    .target Hati
step
    .isInScenario 1099
    .goto 120,25.74,47.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Choc des Titans|r.
    .scenario 2482,1 --Wield Titanstrike.
    .complete 42185,2 --1/1 Titanstrike recovered
    .timer 65,Attendez Huey
step
    .isInScenario 1099
    .goto 120,26.05,47.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Huey|r après le RP.
    .scenario 2483,1 --Ride Huey to return to Dalaran.
    .timer 36,Durée du Vol
step
    .isQuestTurnedIn 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Cœur-sauvage|r.
    .turnin 42185 >>Rendez la quête On ne chasse jamais seul
    .target Grif Cœur-sauvage
step
    .isQuestAvailable 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grif Cœur-sauvage|r.
    .turnin 42185 >>Rendez la quête On ne chasse jamais seul
    .accept 41009 >>Acceptez la quête D’un chasseur à l’autre
    .target Grif Cœur-sauvage
step
    .isQuestAvailable 40959
    #completewith next
    #label HunterToHunterBMA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 41009 >>Rendez la quête D’un chasseur à l’autre
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40959
    #title |cRXP_WARN_Entrez dans la maison|r
    #completewith HunterToHunterBMA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Suivez la flèche jusqu'à la maison.|r
step
    .isQuestAvailable 40959
    #requires HunterToHunterBMA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 41009 >>Rendez la quête D’un chasseur à l’autre
    .target Emmarel Ombregarde
]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Précision
#displayname Arme prodigieuse : Précision
#next a) Domaine de classe Chasseur Partie 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 44366 >>Acceptez la quête Une dernière aventure
    .target Emmarel Ombregarde
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Précision|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390107
    .target Emmarel Ombregarde
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 44366 >>Rendez la quête Une dernière aventure
    .target Emmarel Ombregarde
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 44043 >>Acceptez la quête Perpétuer la légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Précision|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390107
    .target Emmarel Ombregarde
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 44043 >>Rendez la quête Perpétuer la légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 40618 >>Acceptez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Précision|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390107
    .target Emmarel Ombregarde
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40618 >>Rendez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    #completewith RendezvousWithTheCourierA
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 41540 >>Acceptez la quête Un rendez-vous avec le messager
    .target Emmarel Ombregarde
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 41540 >>Acceptez la quête Un rendez-vous avec le messager
    .target Emmarel Ombregarde
step
    .isQuestTurnedIn 40959
    .isOnQuest 41540
    .goto 739,48.66,43.46
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
step
    #completewith next
    #label RendezvousWithTheCourierA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Ailéperon|r.
    .turnin 41540 >>Rendez la quête Un rendez-vous avec le messager
    .accept 40392 >>Acceptez la quête L’appel du tireur d’élite
    .target Messager Ailéperon
step
    .isQuestAvailable 40959
    .zoneskip 627,1
    #title |cFFFCDC00Sortez de la maison|r
    #completewith RendezvousWithTheCourierA
    .goto 627,58.58,51.30,8 >>|cRXP_WARN_Suivez la flèche pour sortir de la maison.|r
step
    #requires RendezvousWithTheCourierA
    .goto 627,71.43,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Messager Ailéperon|r.
    .turnin 41540 >>Rendez la quête Un rendez-vous avec le messager
    .target Messager Ailéperon
    .accept 40392 >>Acceptez la quête L’appel du tireur d’élite
step
    .goto 646,32.28,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .complete 40392,2 --1/1 Speak to Vereesa Windrunner
    .target Vereesa Coursevent
step
    .convertquest 40402,40400 << Alliance
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .turnin 40392 >>Rendez la quête L’appel du tireur d’élite
    .accept 40402 >>Acceptez la quête Une opération clandestine
    .target Vereesa Coursevent
step
    #completewith next
    #hidewindow
    .gossipoption 47259 >>Suivez la flèche
    .timer 56,RP de Vereesa
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .complete 40402,1 --1/1 Listen to Vereesa Windrunner
    .target Vereesa Coursevent
    .skipgossipid 47259
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .turnin 40402 >>Rendez la quête Une opération clandestine
    .accept 40419 >>Acceptez la quête Une mission de sauvetage
    .target Vereesa Coursevent
step
    #completewith next
    #hidewindow
    .gossipoption 47260 >>Suivez la flèche
    .timer 14,RP de Vereesa
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .complete 40419,1 --1/1 Speak to Vereesa and begin the mission
    .target Vereesa Coursevent
    .skipgossipid 47260
step
    .isOnQuest 40419
    .goto 646,32.06,31.98
    .enterScenario 972 >>Traversez le portail pour entrer dans le scénario |cRXP_PICK_Héritage des Coursevent|r.
step
    .goto 714,16.33,52.95
    >>|cRXP_WARN_Suivez la flèche|r
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
    >>Tuez les |cRXP_ENEMY_Seigneurs du portail érédars|r.
    .scenario 2000,1 --Eliminate the demon summoners to close the portal.
    .timer 12,RP du mur
    .mob Eredar Portal Lord
step
    .isInScenario 972
    .goto 714,38.84,45.41
    >>Tuez les |cRXP_ENEMY_démons|r sur votre route et libérez le chemin pour |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .scenario 2001,1 --Advance into Legion territory and look for Alleria and Orestes.
step
    .isInScenario 972
    .goto 714,40.57,45.66
    >>Tuez la |cRXP_ENEMY_Maîtresse Torvis|r et |cRXP_WARN_attendez le temps du RP|r.
    .scenario 2002,1 --Eliminate Mistress Torvis and save Orestes.
step
    .isInScenario 972
    .goto 714,41.13,54.04,25,0
    .goto 714,50.07,57.89
    >>Tuez le |cRXP_ENEMY_Héraut Xarbizuld|r.
    .scenario 2017,1 --Enter the cathedral and defeat Herald Xarbizuld.
    .mob Herald Xarbizuld
step
    .isInScenario 972
    .goto 714,64.28,60.03
    >>Tuez le |cRXP_ENEMY_Grand inquisiteur Qormaladon|r et les |cRXP_ENEMY_Regards de Qormaladon|r.
    .scenario 2063,1 --Defeat High Inquisitor Qormaladon and his eyes
    .mob Fiery Gaze of Qormaladon
    .mob Icy Gaze of Qormaladon
    .mob High Inquisitor Qormaladon
step
    #completewith next
    #hidewindow
    .goto 714,69.98,59.65,20,0
    .goto 714,71.47,73.66,20 >>Suivez la flèche
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2255,1 --Help Vereesa search the Inquisitor's overlook for Alleria.
    .complete 40419,3 --1/1 Rescue Alleria Windrunner
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Thas'dorah, héritage des Coursevent|r.
    .scenario 2061,1 --Pick up Thas'dorah, Legacy of the Windrunners.
    .complete 40419,4 --1/1 Take Thas'dorah (Optional)
    .timer 8,RP
step
    .goto 714,70.91,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa et quittez Niskara|r.
    .complete 40419,5 --1/1 Talk to Vereesa and leave Niskara
    .target Vereesa and leave Niskara
    .skipgossipid 45238
step
    .goto 627,66.03,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vereesa Coursevent|r.
    .turnin 40419 >>Rendez la quête Une mission de sauvetage
    .accept 40952 >>Acceptez la quête D’un chasseur à l’autre
    .target Vereesa Coursevent
step
    #completewith next
    #label HunterToHunterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40952 >>Rendez la quête D’un chasseur à l’autre
    .target Emmarel Ombregarde
step
    #title |cRXP_WARN_Entrez dans la maison|r
    #completewith HunterToHunterA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Suivez la flèche jusqu'à la maison.|r
step
    #requires HunterToHunterA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40952 >>Rendez la quête D’un chasseur à l’autre
    .target Emmarel Ombregarde
]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Survie
#displayname Arme prodigieuse : Survie
#next a) Domaine de classe Chasseur Partie 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 44366 >>Acceptez la quête Une dernière aventure
    .target Emmarel Ombregarde
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Survie|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390108
    .target Emmarel Ombregarde
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 44366 >>Rendez la quête Une dernière aventure
    .target Emmarel Ombregarde
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 44043 >>Acceptez la quête Perpétuer la légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Survie|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390108
    .target Emmarel Ombregarde
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 44043 >>Rendez la quête Perpétuer la légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 40618 >>Acceptez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Survie|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390108
    .target Emmarel Ombregarde
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40618 >>Rendez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    #completewith Preparation for the Hunt
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 41542 >>Acceptez la quête Préparatifs pour la chasse
    .target Emmarel Ombregarde
step
    .goto 627,60.04,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 41542 >>Acceptez la quête Préparatifs pour la chasse
    .target Emmarel Ombregarde
step
    .isQuestTurnedIn 40959
    .isOnQuest 41542
    .goto 739,48.66,43.46
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
step
    #label Preparation for the Hunt
    .goto 627,71.11,50.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apata Haut-Roc|r.
    .turnin 41542 >>Rendez la quête Préparatifs pour la chasse
    .accept 39427 >>Acceptez la quête La bénédiction de l’esprit de l’aigle
    .target Apata Haut-Roc
step
    .goto 627,71.74,50.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_FRIENDLY_Hippogriffe de Haut-Roc|r.
    .complete 39427,1 --1/1 Fly to Spiritwatch Point
    .target Highmountain Hippogryph
    --.timer 107,Flight Duration
step
    .goto 650,59.53,81.22
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 39427,2 --1/1 Get back to Spiritwatch Point
step
    .goto 650,58.91,81.14
    >>Tuez |cRXP_ENEMY_Degar Totem-de-Sang|r.
    .complete 39427,3 --1/1 Kill Degar Bloodtotem
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Ohn’ahra|r.
    .complete 39427,4 --1/1 Receive the Eagle Spirit's blessing
    .target Ohn'ahra
step
    .goto 650,60.79,80.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apata Haut-Roc|r.
    .turnin 39427 >>Rendez la quête La bénédiction de l’esprit de l’aigle
    .accept 40385 >>Acceptez la quête La lance dans l’ombre
    .target Apata Haut-Roc
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Ohn’ahra|r.
    .complete 40385,1 --1/1 Take the Eagle Spirit flight to the harbor
    .target Ohn'ahra
step
    .isOnQuest 40385
    .goto 650,60.82,80.83
    .enterScenario 973 >>Entrez dans |cRXP_PICK_La lance dans l’ombre|r.
step
    #completewith next
    #hidewindow
    .gossipoption 45080 >>Suivez la flèche
    .timer 27,RP de Apata
step
    .isInScenario 973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apata|r au site d'atterrissage.
    .scenario 1965,1 --Speak with Apata at the landing site.
    .target Apata at the landing site.
    .skipgossipid 45080
step
    .isInScenario 973
    .goto 694,56.83,46.24
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 1967,1 --Investigate Tideskorn Harbor
step
    .isInScenario 973
    .goto 634,57.51,46.48
    >>Tuez le |cRXP_ENEMY_Gardien de la brume|r ou utilisez votre |T135834:0|t[Piège givrant] sur le |cRXP_ENEMY_Gardien de la brume|r.
    .scenario 1968,1 --Defeat the Mist Warder using your Freezing Trap.
    .mob Mist Warder
    .usespell 187650
step
    .isInScenario 973
    .goto 634,57.61,46.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre gardienne runique|r.
    .scenario 2055,1 --Obtain the Activated Wardstone
step
    .isInScenario 973
    #title Pierre runique (1/3)
    .goto 634,58.96,46.69,24,0
    .goto 634,58.80,44.93
    >>Tuez le |cRXP_ENEMY_Gardien de la brume|r ou utilisez votre |T135834:0|t[Piège givrant] sur le |cRXP_ENEMY_Gardien de la brume|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre gardienne runique|r.
    *|cRXP_WARN_NOTE :|r L'ordre est prédéfini. Si vous effectuez la quête dans un ordre différent, le point de repère sera incorrect.
    .scenario 1969,1,1 --1/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Pierre runique (2/3)
    .goto 634,58.62,43.48
    >>Tuez le |cRXP_ENEMY_Gardien de la brume|r ou utilisez votre |T135834:0|t[Piège givrant] sur le |cRXP_ENEMY_Gardien de la brume|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre gardienne runique|r.
    *|cRXP_WARN_NOTE :|r L'ordre est prédéfini. Si vous effectuez la quête dans un ordre différent, le point de repère sera incorrect.
    .scenario 1969,1,2 --2/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Pierre runique (3/3)
    .goto 634,60.01,43.75
    >>Tuez le |cRXP_ENEMY_Gardien de la brume|r ou utilisez votre |T135834:0|t[Piège givrant] sur le |cRXP_ENEMY_Gardien de la brume|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre gardienne runique|r.
    *|cRXP_WARN_NOTE :|r L'ordre est prédéfini. Si vous effectuez la quête dans un ordre différent, le point de repère sera incorrect.
    .scenario 1969,1 --3/3 Obtain more Activated Wardstones
step
    #completewith next
    #hidewindow
    .gossipoption 44907 >>Suivez la flèche
    .timer 13,RP de Apata
step
    .isInScenario 973
    .goto 634,55.32,42.45,-1
    .goto 694,55.32,42.45,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Apata Haut-Roc|r.
    .scenario 1970,1 --Speak with Apata
    .target Apata Haut-Roc
    .skipgossipid 44906
    .skipgossipid 44907
step
    .isInScenario 973
    .goto 694,55.44,42.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Harpon magique|r.
    .scenario 1971,1 --Use the harpoon to cross the fog.
    .timer 20,RP
step
    .isInScenario 973
    .goto 694,55.95,40.44
    >>Utilisez |T135815:0|t[Fusée éclairante] et tuez les |cRXP_ENEMY_Traqueurs illusoires|r.
    .scenario 1976,1 --Use Flare to reveal and defeat the illusions.
    .mob Illusory Stalker
    .usespell 1543
step
    .isInScenario 973
    .goto 694,54.91,39.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Piège de brume|r.
    >>Tuez les |cRXP_ENEMY_Traqueurs illusoires|r et |cRXP_ENEMY_Dakarr|r.
    .scenario 1977,1 --Place a trap in the mists to catch Dakarr.
    .mob Dakarr
    .mob Illusory Stalker
step
    .isInScenario 973
    .goto 694,57.40,37.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Piège de brume|r.
    >>Tuez les |cRXP_ENEMY_Traqueurs illusoires|r et |cRXP_ENEMY_Dakarr|r.
    .scenario 1985,1 --Trap Dakarr in the mist lair.
    .mob Dakarr
    .mob Illusory Stalker
step
    #completewith next
    #label SlayDakarrA
    .isInScenario 973
    >>Tuez |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    #title |cFFFCDC00Entrez dans la grotte|r
    #completewith SlayDakarrA
    .goto 694,57.88,34.53,8 >>|cRXP_WARN_Suivez la flèche dans la grotte.|r
step
    #requires SlayDakarrA
    .isInScenario 973
    .goto 694,58.52,33.73
    >>Tuez |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    .isInScenario 973
    .goto 694,58.49,33.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Griffe-Serre|r.
    .scenario 1987,1 --Take Talonclaw.
    .complete 40385,2 --1/1 Slay the Highmountain's Bane and reclaim Talonclaw
step
    .goto 694,58.58,33.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r vers Dalaran.
    .complete 40385,3 --1/1 Return to Dalaran
step
    #completewith next
    #label TheSpearInTheShadowA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40385 >>Rendez la quête La lance dans l’ombre
    .target Emmarel Ombregarde
step
    #title |cRXP_WARN_Entrez dans la maison|r
    #completewith TheSpearInTheShadowA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Suivez la flèche jusqu'à la maison.|r
step
    #requires TheSpearInTheShadowA
    .goto 627,60.05,53.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .turnin 40385 >>Rendez la quête La lance dans l’ombre
    .target Emmarel Ombregarde
]])
--Beast Mastery 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Maîtrise des bêtes
#displayname Arme prodigieuse : Maîtrise des bêtes
#next ac) Domaine de classe Chasseur Partie 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Maîtrise des bêtes
]])
--Marksmanship 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Précision
#displayname Arme prodigieuse : Précision
#next ac) Domaine de classe Chasseur Partie 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Précision
]])
--Survival 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Survie
#displayname Arme prodigieuse : Survie
#next ac) Domaine de classe Chasseur Partie 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Survie
]])

--Hunter Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Chasseur Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Chasseur
#chapter
#internal

<< Hunter

step
    #completewith The Campaign Begins2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Emmarel Ombregarde|r.
    .accept 40618 >>Acceptez la quête Des armes de légende
    .target Emmarel Ombregarde
step
    .isQuestAvailable 40618
    .isQuestAvailable account,91955
    .goto 627,60.03,53.41
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_IMPORTANT: Sélectionnez celui que vous avez déjà pour obtenir 10% d'expérience supplémentaire (ne fonctionne qu'une seule fois)|r
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery >> Maîtrise des bêtes(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Marksmanship >> Précision Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Survival >> Survie(DPS) Suite de quêtes
step
    #include ac) Order Hall Hunter Part 2@Eagle's Wings-The Campaign Begins
step
    .zoneskip 739,1
    .goto 739,48.63,43.48
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
]])

-- --------- Mage ---------

--Arcane
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Arcanes
#displayname Arme prodigieuse : Arcanes
#next a) Domaine de classe Mage Partie 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Arcane
    #hidewindow
    +test
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
    .zone 734 >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
    .usespell 193759
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 44310 >>Acceptez la quête Trois fois plus de puissance
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .turnin 44310 >>Rendez la quête Trois fois plus de puissance
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .accept 43441 >>Acceptez la quête Une deuxième arme
    .target Meryl Gangrorage
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 43441 >>Rendez la quête Une deuxième arme
    .target Meryl Gangrorage
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 41085 >>Acceptez la quête Une arme de mage
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Livre|r.
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .turnin 41085 >>Rendez la quête Une arme de mage
step
    #completewith Wyrmrest Temple
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 42001 >>Acceptez la quête Aluneth, grand bâton de la magna
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 42001 >>Acceptez la quête Aluneth, grand bâton de la magna
step
    .isQuestAvailable 41113
    .goto 735,62.48,51.16
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .usespell 224869
step
    .isQuestTurnedIn 41113
    .goto 734,57.36,90.36
    .zone 627 >>Utilisez |T1535374:0|t[Téléportation : Dalaran - Les îles Brisées] ou |TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r
    .usespell 224869
step
    #requires Greatstaff of the Magna
    .goto 627,28.54,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Kalec|r
    .turnin 42001 >>Rendez la quête Aluneth, grand bâton de la magna
    .target Archimage Kalec
    .accept 42006 >>Acceptez la quête Une nouvelle menace
step
    #completewith next
    #label Wyrmrest Temple
    .goto 627,46.37,53.12,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #completewith Wyrmrest Temple
    .goto 627,49.47,47.22,10 >>Dirigez-vous vers le centre de Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.71,84.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    .goto 115,56.01,65.92
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42006,2 --1/1 Travel to the Azure Dragonshrine
step
    .goto 115,56.4,65.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Indice|r.
    .complete 42006,3,1 --3/3 Clues Found
step
    .goto 115,56.29,66.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Indice|r.
    .complete 42006,3,2 --3/3 Clues Found
step
    .goto 115,56.04,67.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Indice|r.
    .complete 42006,3,3 --3/3 Clues Found
step
    .goto 115,56.69,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Dispositif|r
    .turnin 42006 >>Rendez la quête Une nouvelle menace
    .accept 42007 >>Acceptez la quête Un ennemi oublié
step
    #completewith next
    #label Communication Device
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    #completewith Communication Device
    .goto 115,56.66,69.11
    .cast 3365 >>Cliquez sur le |cRXP_PICK_Système de communication|r
    .timer 26,RP
step
    #requires Communication Device
    .goto 115,56.66,69.11
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42007 >>Rendez la quête Un ennemi oublié
    .accept 42008 >>Acceptez la quête Les yeux du dragon
step
    #completewith next
    #label Nexus spire
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42008,1 --1/1 Nexus spire scouted
step
    #completewith Nexus spire
    .cast 311678 >>Utilisez le |T254294:0|t[Parchemin de téléportation vers le Nexus]
    .use 173430
step
    #requires Nexus spire
    .goto 114,29.02,28.45
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42008,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.29,28.47
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42008,2 --1/1 Surge Needle scouted
step
    .goto 114,29.02,27.16
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42008,3 --1/1 Nexus foundation scouted
step
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42008 >>Rendez la quête Les yeux du dragon
    .accept 42009 >>Acceptez la quête Le pouvoir des Arcanes
step
    #loop
    .goto 114,29.2,25.94,35,0
    .goto 114,28.08,24.32,35,0
    .goto 114,26.5,24.85,35,0
    .goto 114,26.02,27.6,35,0
    .goto 114,27.11,29.21,35,0
    >>Tuez des |cRXP_ENEMY_Aberrations arcaniques|r pour remplir la barre.
    .complete 42009,1 --1/1 Empowered with Unstable Arcane Energy
    .mob Arcane Aberrant
    .mob Arcane Aberrant
step
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42009 >>Rendez la quête Le pouvoir des Arcanes
    .accept 42010 >>Acceptez la quête Les Arcanes libérés
step
    .goto 114,27.32,20.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Vide focalisé|r
    .complete 42010,3 --1/1 North Surge Needle destroyed
step
    .goto 114,32.71,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Vide focalisé|r
    .complete 42010,1 --1/1 East Surge Needle destroyed
step
    .goto 114,24.14,29.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Vide focalisé|r
    .complete 42010,2 --1/1 West Surge Needle destroyed
step
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42010 >>Rendez la quête Les Arcanes libérés
    .accept 42011 >>Acceptez la quête Caveau du Nexus
step
    .isOnQuest 42011
    .goto 114,27.52,26.16
    .enterScenario 1101 >>Entrez dans le Nexus
step
    #loop
    .goto 736,36.1,69.38,15,0
    .goto 736,35.24,66.21,15,0
    .goto 736,37.45,66.22,15,0
    .isInScenario 1101
    >>Tuez les |cRXP_ENEMY_Scions|r
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
    #title |cFFFCDC00Suivez la flèche|r
    >>Utilisez |T135739:0|t[Chatoiement] ou |T135736:0|t[Transfert] à travers les barrières ou sautez en arrière vers elles pour les traverser.
    .usespell 1953
    .scenario 2467,1 --Reach the Librarium
    .timer 44,RP
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2467,2 --Find a way into the vault
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>Tuez l' |cRXP_ENEMY_Echo d'Aluneth|r
    .scenario 2468,1 --Echo of Aluneth defeated
    .mob Echo of Aluneth
step
    #completewith next
    #label Reach the Rift
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith Reach the Rift
    .isInScenario 1101
    .goto 736,26.92,25.76,15,0
    .goto 736,31.06,22.83,15 >>Suivez la flèche puis attendez que |cRXP_FRIENDLY_Azuregos|r apparaisse.
    .timer 38,RP
    .target Azuregos
step
    #requires Reach the Rift
    .goto 736,31.06,22.83
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith next
    #label Nexus-Prince Bilaal
    .isInScenario 1101
    >>Tuez le |cRXP_ENEMY_Prince-nexus Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith Nexus-Prince Bilaal
    .isInScenario 1101
    .goto 736,31.32,22.37
    *|cRXP_WARN_Attendez que|r |cRXP_FRIENDLY_Azuregos|r |cRXP_WARN_apparaisse|r.
    .vehicle >>Cliquez sur |cRXP_PICK_Azuregos|r
    .timer 35,RP
    .target Azuregos
step
    #requires Nexus-Prince Bilaal
    .goto 736,59.19,20.4
    .isInScenario 1101
    >>Tuez le |cRXP_ENEMY_Prince-nexus Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .timer 28,RP
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    *Utilisez le |cRXP_WARN_|T237448:0|t[Bouton d’action supplémentaire]|r à l'intérieur des Champs de magie violets.
    *|cRXP_WARN_Faites attention aux bulles flottantes, comme elles vous repoussent|r.
    .scenario 2471,1 --Place the First Scroll of Meitre
    .scenario 2471,2 --Place the Second Scroll of Meitre
    .scenario 2471,3 --Place the Third Scroll of Meitre
    .usespell 225025
step
    .isInScenario 1101
    #label Artifact Weapon: Arcane
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r au milieu.
    .complete 42011,2 --1/1 Aluneth
step
    #completewith next
    #label Nexus Vault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Kalec|r
    .turnin 42011 >>Rendez la quête Caveau du Nexus
    .target Archimage Kalec
    .accept 41114 >>Acceptez la quête Le retour du champion
    .disablecheckbox
step
    #completewith Nexus Vault
    .zoneskip 627
    .zone 627 >>Entrez dans Dalaran (Vérifiez vos Téléportations)
    .usespell 224869
    .usespell 193759
step
    #requires Nexus Vault
    .goto 627,28.62,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Kalec|r à l'intérieur de La citadelle Pourpre.
    .turnin 42011 >>Rendez la quête Caveau du Nexus
    .timer 10,RP
    .target Archimage Kalec
]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Feu
#displayname Arme prodigieuse : Feu
#next a) Domaine de classe Mage Partie 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Fire
    #hidewindow
    +test
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
    .zone 734 >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 44310 >>Acceptez la quête Trois fois plus de puissance
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .turnin 44310 >>Rendez la quête Trois fois plus de puissance
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .accept 43441 >>Acceptez la quête Une deuxième arme
    .target Meryl Gangrorage
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 43441 >>Rendez la quête Une deuxième arme
    .target Meryl Gangrorage
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 41085 >>Acceptez la quête Une arme de mage
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Livre|r.
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .turnin 41085 >>Rendez la quête Une arme de mage
step
    #completewith Crystal's Message
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 40267 >>Acceptez la quête Un message inattendu
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 40267 >>Acceptez la quête Un message inattendu
step
    #completewith next
    #hidewindow
    #label Crystal's Message
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #completewith Crystal's Message
    .cast 195264 >>Utilisez le |T132776:0|t[Cristal de résonance luminescent]
    .timer 40,RP
    .use 130131
step
    #requires Crystal's Message
    #completewith next
    #label Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,54.59,55.34,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Acceptez la quête Orange et des espoirs
    .turnin 44240 >>Rendez la quête Orange et des espoirs
    .target Jackson Watkins
step
    #requires Crystal's Message
    #completewith Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.66,57.89,40 >>Suivez la flèche
step
    #requires Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.54,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Acceptez la quête Orange et des espoirs
    .turnin 44240 >>Rendez la quête Orange et des espoirs
    .target Jackson Watkins
step
    #requires Crystal's Message
    .isQuestTurnedIn 41113
    #title |cFFFCDC00Suivez la flèche|r
    .goto 735,55.6,56.06,15,0
    .goto 734,59.95,56.3
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #requires Crystal's Message
    .isQuestAvailable 41113
    #title |cFFFCDC00Suivez la flèche|r
    .goto 735,62.63,51.41
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    .isQuestAvailable 41113
    .goto 735,62.63,51.41
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step
    .isQuestTurnedIn 41113
    .goto 734,57.31,90.48
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
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
    >>Dirigez-vous vers le centre de Dalaran et |TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    #completewith Dalaran Crater
    .goto 734,57.28,90.47
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail|r.
step
    #requires Dalaran Crater
    .goto 627,53.13,52.24,10,0
    .goto 627,49.01,47.36,10,0
    .goto 629,36.82,72.57,10,0
    .goto 629,28.76,77.32
    >>Dirigez-vous vers le centre de Dalaran et |TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    .goto 25,28.74,37.33
    #title |cFFFCDC00Suivez la flèche|r
    .complete 40267,2 --1/1 Meet Archmage Modera in Hillsbrad
step
    .goto 25,28.74,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Modera|r
    .turnin 40267 >>Rendez la quête Un message inattendu
    .target Archimage Modera
    .accept 40270 >>Acceptez la quête La voie de la rédemption
    .timer 99,RP
step
    .goto 25,28.74,37.33
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40270,1 --1/1 Discover the location of Felo'melorn
step
    .goto 25,28.73,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aethas Saccage-Soleil|r
    .turnin 40270 >>Rendez la quête La voie de la rédemption
    .target Aethas Saccage-Soleil
    .accept 11997 >>Acceptez la quête La flamme gelée
    .timer 12,RP
step
    .goto 25,28.76,37.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 11997,1 --1/1 Mage Portal Taken
step
    .goto 700,76.67,63.89
    .isOnQuest 11997
    >>Tuez l' |cRXP_ENEMY_Adjuratrice née-de-glace|r en esquivant le vent
    .scenario 1926,1 --Defeat the Iceborn Conjurer and enter into Icecrown Citadel
    .mob Iceborn Conjurer
step
    .goto 700,76.73,62.14
    .isInScenario 957
    >>Détruisez le |cRXP_ENEMY_Mur de pergélisol|r
    .scenario 1927,1,1 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,76.08,55.91,10,0
    .goto 700,73.6,54.72
    .isInScenario 957
    >>Détruisez le |cRXP_ENEMY_Mur de pergélisol|r
    .scenario 1927,1,2 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,62.12,53.59
    .isInScenario 957
    >>Détruisez le |cRXP_ENEMY_Mur de pergélisol|r
    .scenario 1927,1,3 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,52.47,38.37
    .isInScenario 957
    >>Détruisez le |cRXP_ENEMY_Mur de pergélisol|r
    .scenario 1927,1,4 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,51.9,29.32
    .isInScenario 957
    >>Tuez les |cRXP_ENEMY_vagues|r d'ennemis qui arrivent
    .scenario 1928,1 --Defeat waves of enemies
    .mob Exploding Ghoul
    .mob Burning Skeleton
    .mob Charbone
step
    .goto 700,51.84,17.39
    .isInScenario 957
    >>Tuez |cRXP_ENEMY_Lyandra Haut-Soleil|r
    .scenario 1929,1 --Slay Lyandra Sunstrider
    .mob Lyandra Sunstrider
step
    #label Artifact Weapon: Fire
    .goto 700,51.8,16.4
    .isInScenario 957
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Felo'melorn|r
    .scenario 1930,1 --Take Felo'melorn
    .complete 11997,2 --1/1 Obtain Felo'melorn
step
    #completewith next
    #label Frozen Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Modera|r
    .turnin 11997 >>Rendez la quête La flamme gelée
    .target Archimage Modera
step
    #completewith Frozen Flame
    .goto 700,51.85,18.65
    .zoneskip 627
    .zone 627 >>Entrez dans Dalaran (Vérifiez vos Téléportations)
    .usespell 224869
    .usespell 193759
step
    #requires Frozen Flame
    .goto 627,28.40,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Modera|r
    .turnin 11997 >>Rendez la quête La flamme gelée
    .target Archimage Modera
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Mage Givre
#displayname Arme prodigieuse : Givre
#next a) Domaine de classe Mage Partie 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Frost Mage
    #hidewindow
    +test
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
    .zone 734 >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 44310 >>Acceptez la quête Trois fois plus de puissance
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .turnin 44310 >>Rendez la quête Trois fois plus de puissance
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .accept 43441 >>Acceptez la quête Une deuxième arme
    .target Meryl Gangrorage
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 43441 >>Rendez la quête Une deuxième arme
    .target Meryl Gangrorage
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 41085 >>Acceptez la quête Une arme de mage
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Livre|r.
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .turnin 41085 >>Rendez la quête Une arme de mage
step
    #completewith Speak with Meryl
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 42452 >>Acceptez la quête À la recherche de Frissébène
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 42452 >>Acceptez la quête À la recherche de Frissébène
step
    #loop
    .goto 735,55.14,34.77,5,0
    .goto 735,52.65,41.84,10,0
    .goto 735,66.62,40.84,10,0
    .goto 735,53.89,49.19,10,0
    .goto 735,65.02,49.44,10,0
    .goto 735,66.53,40.82,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Indices|r
    .complete 42452,1 --3/3 Find information on Arrexis
step
    #completewith next
    #label Speak with Meryl
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42452,2 --1/1 Speak with Meryl
    -- .skipgossipid 46445
step
    #completewith Speak with Meryl
    .isQuestAvailable 41113
    .goto 735,59.12,43.03
    .gossipoption 45566 >>Parlez à |cRXP_FRIENDLY_Meryl|r
    .timer 54,RP
    .target Meryl
step
    #completewith Speak with Meryl
    .isQuestTurnedIn 41113
    .goto 735,55.36,38.2
    .gossipoption 46445 >>Parlez à |cRXP_FRIENDLY_Meryl|r
    -- .timer 55,RP
    .target Meryl
step
    #requires Speak with Meryl
    .goto 735,59.15,42.94
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42452,2 --1/1 Speak with Meryl
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 42452 >>Rendez la quête À la recherche de Frissébène
    .target Meryl Gangrorage
    .accept 42477 >>Acceptez la quête Daio le Décrépit
    .accept 42476 >>Acceptez la quête L’info de Deuillevent
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 42452 >>Rendez la quête À la recherche de Frissébène
    .target Meryl Gangrorage
    .accept 42477 >>Acceptez la quête Daio le Décrépit
    .accept 42476 >>Acceptez la quête L’info de Deuillevent
step
    .goto 735,60.64,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodi|r
    .accept 42455 >>Acceptez la quête Les gemmes d’Alodi
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
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail|r ou utilisez |T1535374:0|t[Téléportation : Dalaran - Les îles Brisées]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestAvailable 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00Suivez la flèche|r
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
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail|r ou utilisez |T1535374:0|t[Téléportation : Dalaran - Les îles Brisées]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestTurnedIn 41113
    #requires Bank of Dalaran2
    #title |cFFFCDC00Suivez la flèche|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    #completewith next
    #label manager
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    #completewith manager
    #loop
    .goto 627,52.42,18.04,10,0
    .goto 627,52.25,14.72,10,0
    .goto 627,50.32,16.94,10,0
    .gossipoption 45770 >>Parlez à |cRXP_FRIENDLY_Gloutonia|r
    .timer 26,RP
    .target Gloutonia
step
    #requires manager
    .goto 627,55.08,16.45
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    .goto 627,55.08,16.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 42455,3 --1/1 Enter Alodi's personal vault
step
    #loop
    .goto 627,50.78,15.72,10,0
    .goto 627,54.31,14.99,10,0
    .goto 627,53.92,18.72,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Gemmes|r
    .complete 42455,4 --3/3 Find the Mana Gems
step
    #completewith next
    #hidewindow
    #label Blasted Lands Scroll
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    #completewith Blasted Lands Scroll
    .goto 627,54.22,19.39
    .cast 311800 >>Utilisez le |T254294:0|t[Parchemin des terres Foudroyées]
    .use 173699
step
    #requires Blasted Lands Scroll
    .goto 17,32.51,45.14
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    .goto 17,32.51,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Daio|r
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
    >>Tuez les vagues d'ennemis qui vous attaquent.
    .complete 42477,4 --1/1 Survive Daio's Challenge
    .timer 30,RP
    .mob Entourloupeur diabolique
    .mob Empowered Wrathguard
    .mob Eredar Mage
step
    #completewith next
    >>Utilisez le |T254294:0|t[Parchemin de Karazhan] à |cRXP_WARN_10 SECONDES RESTANTES|r
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42477,5 --1/1 Get the Demon Stone
step
    >>Utilisez le |T254294:0|t[Parchemin de Karazhan]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    .goto 42,35.83,64.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Canne|r
    .complete 42476,3 --1/1 Find remaining ritual items
step
    .goto 42,35.04,62.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Note|r dans la tente.
    .complete 42476,4 --1/1 Find any text on the ritual
    .timer 30,RP
step
    .goto 42,34.16,59.67
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42476,5 --1/1 Listen to Merina
step
    .goto 42,34.14,59.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    .complete 42476,6 --1/1 Take the Ritual Focusing Crystal
step
    #completewith next
    #label Turn in Alodi's Gems
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Rendez la quête Les gemmes d’Alodi
    .target Alodi
step
    #completewith Turn in Alodi's Gems
    .zoneskip 734
    .cast 193759 >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
    .usespell 193759
step
    #requires Turn in Alodi's Gems
    .goto 734,53.54,70.05,20,0
    .goto 735,56.68,70.92,20,0
    .goto 735,60.77,43.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Rendez la quête Les gemmes d’Alodi
    .target Alodi
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 42476 >>Rendez la quête L’info de Deuillevent
    .target Meryl Gangrorage
    .turnin 42477 >>Rendez la quête Daio le Décrépit
    .accept 42479 >>Acceptez la quête Le chasseur de mages
    .target Meryl Gangrorage
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 42476 >>Rendez la quête L’info de Deuillevent
    .target Meryl Gangrorage
    .turnin 42477 >>Rendez la quête Daio le Décrépit
    .accept 42479 >>Acceptez la quête Le chasseur de mages
    .target Meryl Gangrorage
step
    #completewith next
    #label Dalaran to Faronaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aludane Nuageblanc|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
-- step
--     #completewith Dalaran to Faronaar
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
step
    .isQuestAvailable 41113
    #completewith Dalaran to Faronaar
    .goto 735,62.44,51.32
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail|r.
step
    .isQuestTurnedIn 41113
    #completewith Dalaran to Faronaar
    .goto 734,57.39,90.1
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail|r.
step
    #requires Dalaran to Faronaar
    .goto 627,69.82,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aludane Nuageblanc|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
    .timer 200,RP
    .skipgossipid 44179
    .target Aludane Nuage-Blanc
step
    .isOnQuest 42479
    .goto 630,26.79,49.02
    #title |cFFFCDC00Suivez la flèche|r
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2526,1 --Speak with Meryl and Alodi
    .target Meryl and Alodi
step
    .isOnQuest 42479
    .goto 630,26.8,49.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Protection atténuant la gangrène|r
    *|cRXP_WARN_N'hésitez pas à essayer d'utiliser votre monture volante, certaines parties de ce scénario le permet|r.
    .scenario 2528,1,1 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,29.96,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Protection atténuant la gangrène|r
    *|cRXP_WARN_N'hésitez pas à essayer d'utiliser votre monture volante, certaines parties de ce scénario le permet|r.
    .scenario 2528,1,2 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,30.11,48.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Protection atténuant la gangrène|r
    *|cRXP_WARN_N'hésitez pas à essayer d'utiliser votre monture volante, certaines parties de ce scénario le permet|r.
    .scenario 2528,1,3 --Wards set up
    .target Fel Dampening Ward
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2529,1 --Go to the center of the Altar of End Times.
    .timer 50,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    .scenario 2529,2 --Activate the Ritual Focus
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r, terminez la canalisation puis tuez les ennemis qui arrivent.
    .scenario 2530,1,15 --Activate the Ritual Focus
    .mob Garde-courroux
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r, terminez la canalisation puis tuez les ennemis qui arrivent.
    .scenario 2530,1,45 --Activate the Ritual Focus
    .mob Garde-courroux
    .mob Netherflame Infernal
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r, terminez la canalisation puis tuez les ennemis qui arrivent.
    .scenario 2530,1,75 --Activate the Ritual Focus
    .mob Netherflame Infernal
    .mob Legion Jailer
    .mob Entourloupeur diabolique
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r, terminez la canalisation puis tuez les ennemis qui arrivent.
    .scenario 2530,1,87 --Activate the Ritual Focus
    .timer 15,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2530,1 --Activate the Ritual Focus
step
    .goto 619,67.0,92.9
    .isInScenario 1122
    >>Tuez |cRXP_ENEMY_Balaadar|r
    .scenario 2531,1 --Slay Balaadur
    .mob Balaadar
step
    .goto 619,67.05,92.74
    #label Artifact Weapon: Frost Mage
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .scenario 2532,1 --Claim Ebonchill.
    .complete 42479,2 --1/1 Claim Ebonchill
step
    #completewith next
    #label Mage Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 42479 >>Rendez la quête Le chasseur de mages
    .target Meryl Gangrorage
step
    #completewith Mage Hunter
    .zoneskip 734
    .cast 193759 >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
    .usespell 193759
step
    #requires Mage Hunter
    .goto 734,53.3,72.2,20,0
    .goto 734,59.04,56.7,20,0
    .goto 735,56.68,33.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .turnin 42479 >>Rendez la quête Le chasseur de mages
    .target Meryl Gangrorage
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
#name z) Arme prodigieuse : Arcanes
#displayname Arme prodigieuse : Arcanes
#next ac) Domaine de classe Mage Partie 2
#internal

<< Mage

step
    #include a) Arme prodigieuse : Arcanes
]])
--Fire 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Feu
#displayname Arme prodigieuse : Feu
#next ac) Domaine de classe Mage Partie 2
#internal

<< Mage

step
    #include a) Arme prodigieuse : Feu
]])
--Frost 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Mage Givre
#displayname Arme prodigieuse : Givre
#next ac) Domaine de classe Mage Partie 2
#internal

<< Mage

step
    #include a) Arme prodigieuse : Mage Givre
]])

--Mage Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Mage Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Mage
#chapter
#internal

<< Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Meryl Gangrorage|r
    .target Meryl Gangrorage
    .accept 41085 >>Acceptez la quête Une arme de mage
step
    .isQuestAvailable 41085
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fire >> Feu(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arcane >> Arcanes(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost Mage >> Givre(DPS) Suite de quêtes
step
    >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
    .accept 41114 >>Acceptez la quête Le retour du champion
    .usespell 193759
step
    >>Utilisez |T1536440:0|t[Téléportation : hall du Gardien].
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
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Maître brasseur
#displayname Arme prodigieuse : Maître brasseur
#next a) Domaine de classe Moine Partie 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Brewmaster
    #hidewindow
    +test
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
    .cast 126892 >>Utilisez le |T775462:0|t[Pèlerinage zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 44424 >>Acceptez la quête Trois chemins, trois armes
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 44424 >>Rendez la quête Trois chemins, trois armes
    .target Li Li Brune d'Orage
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 43973 >>Acceptez la quête Deux voies, deux armes
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 43973 >>Rendez la quête Deux voies, deux armes
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .accept 40636 >>Acceptez la quête Se préparer à attaquer
    .target Ponshu, le Corps de Fer
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu, le Corps de Fer
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 40636 >>Rendez la quête Se préparer à attaquer
step
    #completewith The Wanderer's Companion
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .accept 42762 >>Acceptez la quête Le compagnon de l’explorateur
    .target Ponshu, le Corps de Fer
step
    #completewith next
    #label Tak-Tak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith Tak-Tak
    #title |cFFFCDC00Sortez de la maison|r
    .goto 709,49.71,47.37,10 >>Quittez la maison
step
    #requires Tak-Tak
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .timer 23,RP
    .skipgossipid 45493
    .target Tak-Tak
step
    #label The Wanderer's Companion
    .goto 371,41.67,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-singe|r
    .turnin 42762 >>Rendez la quête Le compagnon de l’explorateur
    .target Le roi-singe
    .accept 42768 >>Acceptez la quête L’énigme de la pureté
    .accept 42766 >>Acceptez la quête L’énigme du tonneau
    .accept 42767 >>Acceptez la quête L’énigme de la terre
step
    #completewith next
    #label Pure Water Core
    >>Tuez la |cRXP_ENEMY_Profanatrice Ma’veth|r et l' |cRXP_ENEMY_Esprit de l’eau désacralisé|r. Dépouillez-les pour le |T132844:0|t[|cRXP_LOOT_Noyau d'eau pure|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith Pure Water Core
    .cast 311850 >>Utilisez la |T615341:0|t[Cruche de pureté]
    .use 173703
step
    #requires Pure Water Core
    .goto 376,63.22,26.04
    >>Tuez la |cRXP_ENEMY_Profanatrice Ma’veth|r et l' |cRXP_ENEMY_Esprit de l’eau désacralisé|r. Dépouillez-les pour le |T132844:0|t[|cRXP_LOOT_Noyau d'eau pure|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith next
    #label Roasted Grain
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Céréales|r
    .complete 42767,1,1 --5/5 Sack of Roasted Grain
step
    #completewith Roasted Grain
    .cast 311857 >>Utilisez la |T615341:0|t[Cruche de pureté]
    .use 173704
step
    #requires Roasted Grain
    #loop
    .goto 376,52.94,60.67,20,0
    .goto 376,51.13,60.79,20,0
    .goto 376,51.08,62.49,20,0
    .goto 376,52.6,63.37,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Céréales|r
    .complete 42767,1, --5/5 Sack of Roasted Grain
step
    #completewith next
    #label Vadis
    >>Tuez |cRXP_ENEMY_Vadis|r et |TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Tonneau|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    #completewith Vadis
    #title|cFFFCDC00Entrez dans la maison|r
    .goto 376,51.6,64.28,10,0
    .goto 376,51.43,65.17,10,0
    .goto 376,51.11,64.98,10 >>Entrez dans la maison et allez à l'étage.
step
    #requires Vadis
    .goto 376,51.50,64.43
    >>Tuez |cRXP_ENEMY_Vadis|r et |TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Tonneau|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-singe|r |cRXP_WARN_à côté de vous|r.
    .turnin 42766 >>Rendez la quête L’énigme du tonneau
    .target Le roi-singe
    .turnin 42768 >>Rendez la quête L’énigme de la pureté
    .turnin 42767 >>Rendez la quête L’énigme de la terre
    .accept 42957 >>Acceptez la quête Voyage vers l’est
step
    #completewith next
    #label Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-singe|r
    .turnin 42957 >>Rendez la quête Voyage vers l’est
    .accept 42868 >>Acceptez la quête Le défi du roi-singe
    .disablecheckbox
step
    #completewith Journey to the East
    .zoneskip 376,1
    .cast 311861 >>Utilisez la |T615341:0|t[Cruche de pureté]
    .use 173706
step
    #requires Journey to the East
    #completewith next
    #label Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-singe|r
    .turnin 42957 >>Rendez la quête Voyage vers l’est
    .accept 42868 >>Acceptez la quête Le défi du roi-singe
step
    #completewith Journey to the East2
    #hidewindow
    #requires Journey to the East
    .goto 371,55.03,60.75,30 >>Suivez la flèche
step
    #requires Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-singe|r
    .goto 371,55.42,58.14
    .turnin 42957 >>Rendez la quête Voyage vers l’est
    .accept 42868 >>Acceptez la quête Le défi du roi-singe
step
    .goto 371,55.31,58.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Cuve de brassage|r
    .complete 42868,1 --1/1 Brewpot Set
    .timer 7.5,RP
step
    .goto 371,55.37,58.54
    .isOnQuest 42868
    .cast 217213 >>Cliquez sur l' |cRXP_PICK_Orbe bleu|r
    .timer 12,RP
step
    .goto 371,55.24,58.52
    .isOnQuest 42868
    .cast 217216 >>Cliquez sur la |cRXP_PICK_Farine|r
    .timer 10.5,RP
step
    .goto 371,55.21,58.43
    .isOnQuest 42868
    .cast 217219 >>Cliquez sur le |cRXP_PICK_Tonneau|r
    .timer 11,RP
step
    .goto 371,55.39,58.46
    .isOnQuest 42868
    .cast 217224 >>Cliquez sur la |cRXP_PICK_Banane|r
    .timer 10,RP
step
    .goto 371,55.28,58.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Objets|r.
    .complete 42868,2 --1/1 Brew Completed
step
    .goto 371,55.43,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi-singe|r
    .turnin 42868 >>Rendez la quête Le défi du roi-singe
    .target Le roi-singe
    .accept 42765 >>Acceptez la quête L’épreuve du temple
step
    #completewith next
    #label Jade Serpent
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    #completewith Jade Serpent
    .goto 791,34.58,43.45,10 >>Entrez dans le Temple du Serpent de jade
    .timer 40,RP
step
    #requires Jade Serpent
    .goto 371,56.19,57.98
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_Attendez la fin du RP|r.
    *|cRXP_WARN_Vous ne pouvez pas utiliser votre monture dans ce scénario|r.
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,30.45,59.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte|r et avancez.
    .scenario 2649,1
step
    .goto 791,30.41,59.54,15,0
    .goto 792,40.41,20.97,15,0
    .goto 792,34.88,44.12
    >>Tuez l' |cRXP_ENEMY_Ecorcheur d’âmes de l’inquisition|r
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>Tuez l' |cRXP_ENEMY_Ecorcheur d’âmes de l’inquisition|r et ses |cRXP_ENEMY_serviteurs|r.
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
    .mob Inquisitor's Eye
step
    .goto 792,32.6,63.36,15,0
    .goto 792,51.17,71.47
    >>Tuez le |cRXP_ENEMY_Tortionnaire de l’inquisition|r et ses |cRXP_ENEMY_serviteurs|r.
    .scenario 2649,2,2
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Impling Pillager
step
    .goto 792,61.76,73.56,15,0
    .goto 792,66.55,46.16,15,0
    .goto 792,56.64,42.48
    >>Tuez l' |cRXP_ENEMY_Ecorcheur d’âmes de l’inquisition|r et ses |cRXP_ENEMY_serviteurs|r.
    .scenario 2649,2,3
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,25.15,66.37,15,0
    .goto 791,27.33,71.8
    >>Tuez |cRXP_ENEMY_Belphiar|r
    .scenario 2650,1
    .timer 20,RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00Suivez la flèche|r
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2684,1
    .isInScenario 1137
step
    .goto 791,45.39,80.88,15,0
    .goto 791,54.79,84.16,15,0
    .goto 791,53.68,75.04,15,0
    .goto 791,48.47,65.14,15,0
    .goto 791,51.32,52.08
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2661,1
    .timer 22,RP
    .isInScenario 1137
step
    .goto 791,51.32,52.08
    >>Tuez les vagues de |cRXP_ENEMY_Démons|r
    .scenario 2663,2,15
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,46.5,48.86
    >>Tuez les vagues de |cRXP_ENEMY_Démons|r
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
    >>Tuez le |cRXP_ENEMY_Seigneur Korithis|r
    *|cRXP_WARN_La flèche ne peut pas être précise|r.
    .scenario 2665,1
    .isInScenario 1137
    .mob Lord Korithis
step
    .isInScenario 1137
    #label Artifact Weapon: Brewmaster
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    *|cRXP_WARN_La flèche ne peut pas être précise|r.
    .scenario 2666,1
    .complete 42765,2 --1/1 Obtain Fu Zan
step
    #completewith next
    #label Yu'lon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_La flèche ne peut pas être précise|r.
    .scenario 2701,1
    .skipgossipid 46181
    .isInScenario 1137
step
    #completewith Yu'lon
    .goto 791,69.73,60.48
    .vehicle >>Cliquez sur |cRXP_PICK_Yu'lon|r
    .timer 30,RP
    .target Yu'lon
step
    #requires Yu'lon
    .goto 791,69.73,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_La flèche ne peut pas être précise|r.
    .scenario 2701,1
    .timer 30,RP
    .skipgossipid 46181
    .isInScenario 1137
    .target Yu'lon
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .turnin 42765 >>Rendez la quête L’épreuve du temple
    .target Ponshu, le Corps de Fer
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Tisse-brume
#displayname Arme prodigieuse : Tisse-brume
#next a) Domaine de classe Moine Partie 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Mistweaver
    #hidewindow
    +test
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
    .cast 126892 >>Utilisez le |T775462:0|t[Pèlerinage zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 44424 >>Acceptez la quête Trois chemins, trois armes
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 44424 >>Rendez la quête Trois chemins, trois armes
    .target Li Li Brune d'Orage
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 43973 >>Acceptez la quête Deux voies, deux armes
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 43973 >>Rendez la quête Deux voies, deux armes
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .accept 40636 >>Acceptez la quête Se préparer à attaquer
    .target Ponshu, le Corps de Fer
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu, le Corps de Fer
step
    .subzoneskip 7902,1
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 40636 >>Rendez la quête Se préparer à attaquer
step
    #completewith Taran Zhu
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .accept 41003 >>Acceptez la quête Le cadeau de l’empereur
    .target Ponshu, le Corps de Fer
step
    #completewith next
    #label MistweaverScenario
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith MistweaverScenario
    #hidewindow
    .goto 709,50.49,47.67,15,0
    .goto 709,49.36,47.43,15 >>Suivez la flèche
step
    #requires MistweaverScenario
    .goto 709,47.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 84.5,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    .countdown 29 >>|cRXP_WARN_Attendez la fin du RP|r.
step
    #label Taran Zhu
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>Utilisez |T1360980:0|t[Vivifier] sur |cRXP_FRIENDLY_Taran Zhu|r.
    .scenario 2091,1
    .timer 26.5,RP
    .target Taran Zhu
    .usespell 116670
step
    .isOnQuest 41003
    #completewith Aspersius
    +Utilisez |T1360980:0|t[Vivifier] sur |cRXP_FRIENDLY_Taran Zhu|r et votre équipe pour les maintenir en vie ou les ressusciter.
    *|cRXP_WARN_Ceci est important car il est impossible de progresser s'il meurt|r.
    .target Taran Zhu
step
    .isInScenario 1007
    .goto 728,78.47,48.82
    >>Tuez le |cRXP_ENEMY_Gardien infernal Xaphan|r
    .scenario 2098,4
    .timer 30,RP
    .mob Hellwarden Xaphan
step
    .isInScenario 1007
    .goto 728,59.2,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Fei Li|r
    .scenario 2100,1
    .skipgossipid 44884
    .target Fei Li
step
    .isInScenario 1007
    .goto 728,58.86,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taoshi|r.
    .scenario 2100,3
    .skipgossipid 44888
    .target Taoshi
step
    .isInScenario 1007
    .goto 728,58.97,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître des faucons Nurong|r
    .scenario 2100,2
    .skipgossipid 44887
    .target Maître des faucons Nurong
step
    .isInScenario 1007
    .goto 728,61.89,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Taran Zhu|r
    .scenario 2131,1
    .skipgossipid 45376
    .target Taran Zhu
step
    #label Aspersius
    .isInScenario 1007
    .goto 728,40.25,48.82
    >>Tuez |cRXP_ENEMY_Aspersius|r
    .scenario 2131,2
    .mob Aspersius
step
    #label Artifact Weapon: Mistweaver
    .goto 728,39.21,48.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .complete 41003,2 --1/1 Acquire Sheilun
    .scenario 2157,1
step
    .goto 728,44.12,53.64
    >>|cRXP_WARN_Dans la section "Objets Actifs"|r Il y a une macro, utilisez-la en boucle après avoir parlé à |cRXP_FRIENDLY_Taran Zhu|r.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Instance,236367 >> Quittez l'instance
    .skipgossipid 45497
    .target Tak-Tak
step
    #completewith next
    #label The Emperor's Gift
    #title |cFFFCDC00Appuyez sur la Macro en boucle|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .turnin 41003 >>Rendez la quête Le cadeau de l’empereur
    .macro Leave Instance,236367 >> Quittez l'instance
    .target Ponshu, le Corps de Fer
step
    #completewith The Emperor's Gift
    .goto 709,49.76,47.48,15 >>Entrez dans le Temple
step
    #requires The Emperor's Gift
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .turnin 41003 >>Rendez la quête Le cadeau de l’empereur
    .target Ponshu, le Corps de Fer
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Arme prodigieuse : Marche-vent
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#displayname Arme prodigieuse : Marche-vent
#next a) Domaine de classe Moine Partie 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Windwalker
    #hidewindow
    +test
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
    .cast 126892 >>Utilisez le |T775462:0|t[Pèlerinage zen]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 44424 >>Acceptez la quête Trois chemins, trois armes
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 44424 >>Rendez la quête Trois chemins, trois armes
    .target Li Li Brune d'Orage
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 43973 >>Acceptez la quête Deux voies, deux armes
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 43973 >>Rendez la quête Deux voies, deux armes
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .accept 40636 >>Acceptez la quête Se préparer à attaquer
    .target Ponshu, le Corps de Fer
step
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
    .target Ponshu, le Corps de Fer
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .turnin 40636 >>Rendez la quête Se préparer à attaquer
step
    #completewith Legend of the Sands
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .target Ponshu, le Corps de Fer
    .accept 40569 >>Acceptez la quête La légende des sables
step
    #completewith next
    #label Prepare To Strike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Li Li Brune d’Orage|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .target Li Li Brune d'Orage
step
    #completewith Prepare To Strike
    #title|cFFFCDC00Entrez dans la maison|r
    .goto 709,51.28,53.77,10,0
    .goto 709,49.91,58.68,10 >>Entrez dans la Maison
step
    #requires Prepare To Strike
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Li Li Brune d’Orage|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .skipgossipid 44948
    .skipgossipid 45131
    .skipgossipid 45128
    .target Li Li Brune d'Orage
step
    #label Legend of the Sands
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .turnin 40569 >>Rendez la quête La légende des sables
    .accept 40633 >>Acceptez la quête En route pour l’aventure !
    .timer 48,RP
    .target Ponshu, le Corps de Fer
--rp shenagans possible
step
    .goto 709,50.49,58.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cerf-volant|r |cRXP_WARN_après le RP|r.
    .complete 40633,1 --1/1 Ride Li Li's kite to Ramkahen (Optional)
    .timer 15,RP
step
    .goto 249,54.85,32.90
    #title |cFFFCDC00Suivez la flèche|r
    .complete 40633,2 --1/1 Meet With Li Li in Ramkahen
    .target Li Li Brune d'Orage
step
    .goto 249,54.85,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Li Li Brune d’Orage|r
    .turnin 40633 >>Rendez la quête En route pour l’aventure !
    .target Li Li Brune d'Orage
step
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Phaoris|r
    .accept 40634 >>Acceptez la quête Tempête du désert
    .target King Phaoris
step
    #completewith next
    #label Clue Discovered
    >>Tuez |cRXP_ENEMY_Nader|r. Dépouillez-le pour l' |T348535:0|t[|cRXP_LOOT_Essence du tourbillon].
    .complete 40634,1 --1/1 Clue Discovered
    .mob Nader
step
    #completewith Clue Discovered
    #title |cFFFCDC00Sortez de la maison|r
    .goto 249,54.92,33.66,15 >>Quittez la maison
step
    #requires Clue Discovered
    #title |cFFFCDC00Volez manuellement|r
    .goto 249,45.65,14.35
    >>Tuez |cRXP_ENEMY_Nader|r. Dépouillez-le pour l' |T348535:0|t[|cRXP_LOOT_Essence du tourbillon].
    .complete 40634,1 --1/1 Clue Discovered
step
    #completewith next
    #label Thunder on the Sands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Phaoris|r
    .turnin 40634 >>Rendez la quête Tempête du désert
    .target King Phaoris
    .accept 40570 >>Acceptez la quête Vers les cieux
    .disablecheckbox
step
    #completewith Thunder on the Sands
    .goto 249,54.92,33.81,15 >>Entrez dans le bâtiment
    #title |cFFFCDC00Entrez dans le bâtiment|r
step
    #requires Thunder on the Sands
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Roi Phaoris|r
    .turnin 40634 >>Rendez la quête Tempête du désert
    .target King Phaoris
    .accept 40570 >>Acceptez la quête Vers les cieux
step
    #completewith next
    #label Essence of the Whirlwind
    >>Utilisez l' |T348535:0|t[Essence du tourbillon]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
step
    #completewith Essence of the Whirlwind
    #title |cFFFCDC00Sortez du bâtiment|r
    .goto 249,54.93,33.94,13 >>Quittez le bâtiment
step
    #requires Essence of the Whirlwind
    .goto 249,54.93,33.94
    >>Utilisez l' |T348535:0|t[Essence du tourbillon]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,RP
    .use 132745
step
    .isOnQuest 40570
    .goto 716,30.9,45.18
    .enterScenario 983 >>Entrez dans le scénario du |cRXP_PICK_Marche-vent|r
step
    .isInScenario 983
    .goto 716,30.9,45.18
    >>Tuez les |cRXP_ENEMY_Vents hurlants|r et le |cRXP_ENEMY_Sablon inférieur|r.
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    #completewith next
    #label Tornadoes
    .isInScenario 983
    #title |cFFFCDC00Suivez la flèche|r
    >>Évitez les tornades et entrez dans les tourbillons verts pour aller plus vite.
    .scenario 2013,1
step
    #completewith Tornadoes
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 21 >>Attendez devant les tornades
    .timer 21
step
    #requires Tornadoes
    .isInScenario 983
    .goto 716,29.61,50.7,15,0
    .goto 716,31.34,51.67,15,0
    .goto 716,33.17,50.27,15,0
    .goto 716,30.74,49.37,15,0
    .goto 716,31.03,49.94
    #title |cFFFCDC00Suivez la flèche|r
    >>Évitez les tornades et entrez dans les tourbillons verts pour aller plus vite.
    .scenario 2013,1
step
    .isInScenario 983
    .goto 716,32.58,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Orbe touché par la tempête|r
    .scenario 2007,1,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Orbe touché par la tempête|r
    .scenario 2007,1,2
    .mob Storm Cloud
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Orbe touché par la tempête|r
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
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2007,2
    .timer 8,RP
step
    #completewith Scion of Typhinius
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 34 >>Attendez l'apparition du |cRXP_ENEMY_Scion de Typhinius|r.
    .mob Scion of Typhinius
step
    #requires Scion of Typhinius
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00Suivez la flèche|r
    >>Tuez le |cRXP_ENEMY_Scion de Typhinius|r
    .scenario 2007,2
    .timer 9,RP
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,31.6,66.01
    >>Tuez ses |cRXP_ENEMY_serviteurs|r
    .scenario 2008,1,1
    .timer 5,RP
    .mob Kaeled
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>Tuez ses |cRXP_ENEMY_serviteurs|r
    .scenario 2008,1,2
    .timer 7,RP
    .mob Storm Cloud
    .mob Na'ser
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.88,67.53
    >>Tuez ses |cRXP_ENEMY_serviteurs|r
    .scenario 2008,1,3
    .timer 15,RP
    .mob Melezan
    .mob Storm Cloud
step
    .isInScenario 983
    .goto 716,32.16,66.89
    >>Tuez |cRXP_ENEMY_Zaurac|r.
    .scenario 2008,1,4
    .timer 3,RP
    .mob Zaurac
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Zaurac|r
    .scenario 2009,1
    .timer 25,RP
    .target Zaurac
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>Tuez |cRXP_ENEMY_Typhinius|r.
    .scenario 2010,1
    .mob Typhinius
step
    .isInScenario 983
    .goto 716,35.76,82.93
    #label Artifact Weapon: Windwalker
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Poings|r
    .complete 40570,2 --1/1 Obtain the Fists of the Heavens
    .scenario 2011,1
    .mob Typhinius
step
    #completewith next
    #label Into The Heavens1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Li Li Brune d’Orage|r
    .turnin 40570 >>Rendez la quête Vers les cieux
    .target Li Li Brune d'Orage
step
    #completewith Into The Heavens1
    .goto 716,35.65,84.21
    .vehicle >>Cliquez sur le Cerf-volant
    .timer 28,RP
step
    #requires Into The Heavens1
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Li Li Brune d’Orage|r
    .turnin 40570 >>Rendez la quête Vers les cieux
    .target Li Li Brune d'Orage
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
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name z) Arme prodigieuse : Maître brasseur
#displayname Arme prodigieuse : Maître brasseur
#next ac) Domaine de classe Moine Partie 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Maître brasseur
]])
--Mistweaver 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Tisse-brume
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#displayname Arme prodigieuse : Tisse-brume
#next ac) Domaine de classe Moine Partie 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Tisse-brume
]])
--Windwalker 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Marche-vent
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#displayname Arme prodigieuse : Marche-vent
#next ac) Domaine de classe Moine Partie 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Marche-vent
]])

--Monk Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Moine Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Moine
#chapter
#internal

<< Monk

step
    #completewith The Fight Begins2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ponshu, le Corps de Fer|r
    .accept 40636 >>Acceptez la quête Se préparer à attaquer
    .target Ponshu, le Corps de Fer
step
    .isQuestAvailable 40636
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Windwalker >> Marche-vent(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Brewmaster >> Maître brasseur(Tank) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Mistweaver >> Tisse-brume(Healer) Suite de quêtes
step
    #include ac) Order Hall Monk Part 2@Matter of Planning-The Fight Begins
step << Alliance
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step << Horde
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Initié Da-Nel|r |cRXP_WARN_à côté de vous|r
    .accept 42186 >>Acceptez la quête Puissance grandissante
    .target Initiate Da-Nel
]])

-- --------- Paladin ---------

--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Paladin Sacré
#displayname Arme prodigieuse : Sacré
#next a) Domaine de classe Paladin Partie 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Holy Paladin
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 44370 >>Acceptez la quête Enrichir l’arsenal
    .skipgossipid 45133
    .choose 1271766
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271766
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 44370 >>Rendez la quête Enrichir l’arsenal
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 44063 >>Acceptez la quête Étoffer votre arsenal
    .choose 1271766
    .skipgossipid 45133
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271766
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 44063 >>Rendez la quête Étoffer votre arsenal
    .target Seigneur Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 40408,1 >>Acceptez la quête Des armes de légende
    .skipgossipid 45133
    .choose 1271766
    .target Seigneur Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271766
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 40408,1 >>Rendez la quête Des armes de légende
    .target Seigneur Maxwell Tyrosus
step
    #completewith Lanigosa
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 627,74.99,48.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .accept 42231 >>Acceptez la quête Le mystérieux paladin
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Dame Liadrin|r
    .accept 42881 >>Acceptez la quête Championne : dame Liadrin
    .turnin 42881 >>Rendez la quête Championne : dame Liadrin
    .target Dame Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 42231,1 --1/1 Travel to Dalaran
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 39864,1 --1/1 Travel to Dalaran
step << Alliance
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Rendez la quête Le mystérieux paladin
    .target Travard
    .accept 42377 >>Acceptez la quête Sur les traces du frère
step << Horde
    #completewith next
    #label Mysterious Paladin
    .goto 627,59,21.04,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Rendez la quête Le mystérieux paladin
    .target Travard
    .accept 42377 >>Acceptez la quête Sur les traces du frère
    .disablecheckbox
step << Horde
    #completewith Mysterious Paladin
    #hidewindow
    .goto 627,72.01,49.34,40 >>Suivez la flèche
step << Horde
    #requires Mysterious Paladin
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Rendez la quête Le mystérieux paladin
    .target Travard
    .accept 42377 >>Acceptez la quête Sur les traces du frère
step
    #completewith next
    #label Wyrmrest Temple
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith Wyrmrest Temple
    .goto 627,52.75,51.91,20,0
    .goto 627,49,47.36,5 >>Allez dans le centre de Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.72,84.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
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
    .gossipoption 45405 >>Parlez à |cRXP_FRIENDLY_Lanigosa|r
    .target Lanigosa
step
    #requires Lanigosa
    .goto 115,56.48,26.96
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
    .target Lanigosa
step
    #completewith next
    #label Galford's location
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Note|r
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    #completewith Galford's location
    .goto 115,56.57,28.64,10 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Statue brisée|r |cRXP_WARN_il se peut que vous ayez besoin de le faire deux fois|r.
    .timer 51,RP
step
    #requires Galford's location
    .goto 115,60.04,36.19
    #title |cFFFCDC00Suivez la flèche|r
    >>|cRXP_WARN_Assurez-vous d'avoir cliqué sur la |r |cRXP_PICK_Statue brisée|r avant de continuer.
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    .goto 115,61.05,38.05
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42377,4 --1/1 Go to the chasm on the Path of Giants
    .timer 25,RP
step
    .goto 115,61.05,38.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lanigosa|r
    .complete 42377,5 --1/1 Speak with Lanigosa
    .timer 17,RP
    .skipgossipid 45651
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>Tuez |cRXP_ENEMY_Jotun|r
    *|cRXP_WARN_Soignez |cRXP_FRIENDLY_Lanigosa|r si cela est nécessaire|r.
    .complete 42377,6 --1/1 Defeat Jotun
    .mob Jotun
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Etincelle|r
    .complete 42377,7 --1/1 Take the Spark of Tyr
step
    .goto 115,60.95,38.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Lanigosa|r
    .complete 42377,8 --1/1 Take Lanigosa's ride to Dalaran. (Optional)
    .timer 25
    .target Lanigosa
step
    .goto 627,79.17,46.08
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42377,9 --1/1 Return to Dalaran.
step
    .goto 627,72.03,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Travard|r
    .turnin 42377 >>Rendez la quête Sur les traces du frère
    .target Travard
    .accept 42120 >>Acceptez la quête Main-d’Argent
step
    #completewith next
    #label in Tirisfal Glades
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
step
    #completewith in Tirisfal Glades
    .cast 311681 >>Utilisez le |T254294:0|t[Parchemin du camp de Tirisfal]
    .use 173523
step
    #requires in Tirisfal Glades
    .isOnQuest 42120
    .goto 18,13.45,56.68
    #title |cFFFCDC00Suivez la flèche|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
    .target Travard
step
    .isOnQuest 42120
    .goto 18,13.45,56.68,10 >>|cRXP_WARN_Suivez la flèche|r.
    .timer 30,RP
step
    .isInScenario 1092
    .goto 18,14.09,56.5
    .gossipoption 45511 >>Parlez à |cRXP_FRIENDLY_Travard|r.
    .target Travard
step
    .goto 20,37.35,12.43,15,0
    .goto 20,35.12,20.33,15,0
    .goto 20,34.78,26.48,15,0
    .goto 20,37.19,43.18
    .isInScenario 1092
    #title |cFFFCDC00Suivez la flèche|r
    >>Entrez dans le Tombeau, tuez le |cRXP_ENEMY_Sans-visage errant|r et le |cRXP_ENEMY_Rejeton de chair|r
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
    >>Tuez le |cRXP_ENEMY_Sans-visage errant|r, le |cRXP_ENEMY_Rejeton de chair|r et |cRXP_ENEMY_G'norz le Cinglé|r
    *|cRXP_WARN_Soignez votre équipe lorsqu'elle est blessée, sinon vous ne pourrez pas continuer|r.
    .scenario 2447,1 --Tyr's Crypt cleared.
    .timer 65,RP
    .mob Masterless Faceless Corrupter
    .mob Flesh Spawn
    .mob G'norz the Crazed
step
    .isInScenario 1092
    .goto 20,37.64,65.74
    >>|cRXP_WARN_Attendez la fin du RP|r — |cRXP_WARN_Soignez votre équipe lorsqu'elle est blessée, sinon vous ne pourrez pas continuer|r.
    .scenario 2448,1 --Listen to Travard.
step
    .goto 20,38.77,77.48,15,0
    .goto 20,42.9,85.49,20,0
    .goto 20,47.49,75.46,15,0
    .goto 20,52.02,74.87,15,0
    .goto 20,62.67,74.52
    .isInScenario 1092
    >>Escortez |cRXP_FRIENDLY_Travard|r — |cRXP_WARN_Soignez votre équipe lorsqu'elle est blessée, sinon vous ne pourrez pas continuer|r.
    .scenario 2449,1 --Find the final piece to the ritual.
    .mob Masterless Faceless Corrupter
step
    .isInScenario 1092
    .goto 20,62.67,74.52
    >>Tuez les |cRXP_ENEMY_Aberrations cauchemardesques|r — |cRXP_WARN_Soignez votre équipe lorsqu'elle est blessée, sinon vous ne pourrez pas continuer|r.
    .scenario 2453,1,1
    .timer 30,RP
    .mob Horrific Aberration
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2453,1,2
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    .goto 20,41.81,82.42
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2454,1
step
    .isInScenario 1092
    .goto 20,42.94,84.92
    >>Utilisez Epuration sur les |cRXP_FRIENDLY_Croisés vertueux|r et soignez les |cRXP_FRIENDLY_Portelaubes d'argent|r
    *|cRXP_WARN_Vous avez accès à une capacité de purification supplémentaire dans l'objectif du scénario|r.
    .scenario 2455,1
    .scenario 2455,2
    .usespell 19750
    .usespell 4987
    .target Righteous Crusader
    .target Portelaube d'argent
step
    .isInScenario 1092
    .goto 20,38.63,76.01,20,0
    .goto 20,37.68,63.55
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2456,1
    .timer 180,RP
step
    .isInScenario 1092
    .goto 20,37.61,65.32
    >>Tuez les vagues d'ennemis |cRXP_WARN_et soignez votre équipe|r.
    .scenario 2457,1,100
    .mob Flesh Spawn
    .mob Masterless Faceless Corrupter
    .mob Mordoth the Hunter
step
    .goto 20,37.43,55.14
    .isInScenario 1092
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .scenario 2458,1 --Claim the Silver Hand.
    .complete 42120,3 --1/1 Claim the Silver Hand
step
    .isInScenario 1092
    .zone 627 >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .macro Leave Instance,236367 >> Quittez l'instance
step
    .isQuestAvailable 44370,44063
    #label Artifact Weapon: Holy Paladin
    .goto 627,71.83,45.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42120 >>Rendez la quête Main-d’Argent
    .target Seigneur Maxwell Tyrosus
    .accept 38576 >>Acceptez la quête Rencontre à l’Espoir de Lumière
step << Horde
    .isQuestTurnedIn 40408
    .goto 627,58.5,20.55,10,0
    .goto 627,61.89,13.63
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step << Alliance
    .isQuestTurnedIn 40408
    .goto 627,36.64,65.28,15,0
    .goto 627,32.64,69.87
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step
    .isQuestTurnedIn 44370,44063
    .goto 24,49.86,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42120 >>Rendez la quête Main-d’Argent
    .target Seigneur Maxwell Tyrosus
step << Alliance
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Suivez la flèche
step << Alliance
    #requires Light's Hope Sanctum
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38576 >>Rendez la quête Rencontre à l’Espoir de Lumière
    .target Seigneur Maxwell Tyrosus
step << Alliance
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>Suivez la flèche
step << Alliance
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38576 >>Rendez la quête Rencontre à l’Espoir de Lumière
    .target Seigneur Maxwell Tyrosus
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Paladin Protection
#displayname Arme prodigieuse : Protection
#next a) Domaine de classe Paladin Partie 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Paladin Protection
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 44370 >>Acceptez la quête Enrichir l’arsenal
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 44370 >>Rendez la quête Enrichir l’arsenal
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 44063 >>Acceptez la quête Étoffer votre arsenal
    .choose 1271767
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 44063 >>Rendez la quête Étoffer votre arsenal
    .target Seigneur Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 40408,1 >>Acceptez la quête Des armes de légende
    .choose 1271767
    .target Seigneur Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 40408,1 >>Rendez la quête Des armes de légende
    .target Seigneur Maxwell Tyrosus
step
    #completewith Orik and Tahu
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Dame Liadrin|r
    .accept 42881 >>Acceptez la quête Championne : dame Liadrin
    .turnin 42881 >>Rendez la quête Championne : dame Liadrin
    .target Dame Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,49.83,72.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 42000 >>Acceptez la quête À la recherche de la vérité
    .target Seigneur Maxwell Tyrosus
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 42000,1,1 --1/1 Travel to Dalaran
step
    .zoneskip 627,1
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 42000 >>Acceptez la quête À la recherche de la vérité
    .target Seigneur Maxwell Tyrosus
step
    #completewith next
    #label Orik and Tahu
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    #completewith Orik and Tahu
    .goto 627,72.69,50.01
    .gossipoption 45806 >>Parlez à |cRXP_FRIENDLY_Orik et Tahu|r
    .timer 39,RP
step
    #requires Orik and Tahu
    .goto 627,72.69,50.01
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    .goto 627,72.67,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orik Cœur-Vrai|r
    .turnin 42000 >>Rendez la quête À la recherche de la vérité
    .target Orik Trueheart
    .accept 42002 >>Acceptez la quête En route pour le Norfendre
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    #completewith Argent Hippogryph
    .goto 627,72.96,50.08
    .vehicle >>Cliquez sur l' |cRXP_PICK_Hippogriffe d'Argent|r
    .timer 12,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    .goto 117,56.88,78.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orik Cœur-Vrai|r
    .turnin 42002 >>Rendez la quête En route pour le Norfendre
    .target Orik Trueheart
    .accept 42005 >>Acceptez la quête La fin de la saga
step
    .goto 117,56.88,78.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tahu Vent-de-Sagesse|r
    .complete 42005,1 --1/1 Speak with Tahu Sagewind
    .skipgossipid 45439
    .skipgossipid 45440
    .target Tahu Vent-de-Sagesse
step
    .goto 117,62.27,82.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Tombe|r
    .complete 42005,2 --1/1 Find the hero's grave
    .timer 68.5,RP
step
    .goto 117,62.27,82.13
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42005,3 --1/1 Complete the ritual
step
    .cast 441154 >>Utilisez le |T134491:0|t[Bon de Nostwin]
    .itemcount 238727,1
    .use 238727
step
    .goto 627,72.52,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Orik Cœur-Vrai|r dans Dalaran.
    .turnin 42005 >>Rendez la quête La fin de la saga
    .target Orik Trueheart
    .accept 42017 >>Acceptez la quête Sanctuaire de Garde-Vérité
step
    .isOnQuest 42017
    .goto 627,72.18,50.45
    .vehicle >>Cliquez sur l' |cRXP_PICK_Hippogriffe d'Argent|r
    .timer 29,RP
step
    .isOnQuest 42017
    .goto 634,85.5,10.65,40 >>|cRXP_WARN_Attendez la fin du RP|r.
    .timer 16,RP
step
    #title |cFFFCDC00Suivez la flèche|r
    .goto 634,83.93,9.52
    .isOnQuest 42017
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2390,1 --Speak with Orik.
    .target Orik
step
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker
    .isInScenario 1082
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2391,1 --Get to the shrine.
step
    #completewith Inna the Cryptstalker
    .isInScenario 1082
    .goto 635,74.6,58.74,25 >>Tuez les |cRXP_ENEMY_Gardiens de la porte|r
    *Si cela est nécessaire, ramassez une lance et utilisez le Bouton d'action supplémentaire pour infliger beaucoup de dégâts.
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
    #title |cFFFCDC00Suivez la flèche|r
    .goto 635,62.96,53.11,20,0
    .goto 635,57.63,50.72,20,0
    .goto 635,51.99,49.86,20,0
    .goto 635,52.28,53.36,10  >>Esquivez les tornades en restant sur le côté droit, près du mur.
    .timer 35,RP
    *Tuez les |cRXP_ENEMY_Porte-boucliers drekirjars|r et les |cRXP_ENEMY_Sculpte-vents spectraux|r
    .mob Drekirjar Shieldbearer
    .mob Spectral Windshaper
step
    #requires Inna the Cryptstalker2
    .isInScenario 1082
    .goto 635,51.52,52.04
    >>|cRXP_WARN_Attendez le RP près de la porte|r.
    .scenario 2391,1 --Get to the shrine.
step
    #completewith next
    #label magic and survive
    .isInScenario 1082
    >>Utilisez |T524354:0|t[Bouclier divin] ou un autre défensif puissant, et soignez-vous si nécessaire.
    *|cRXP_WARN_Des dégâts importants surviennent peu après avoir cliqué sur la porte.|r
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
    .aura 210223 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte|r
    .timer 10,Survivez
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #requires magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    #title |cFFFCDC00Défensif majeur|r
    >>Utilisez |T524354:0|t[Bouclier divin] ou un autre défensif puissant, et soignez-vous si nécessaire.
    *|cRXP_WARN_Des dégâts importants surviennent peu après avoir cliqué sur la porte.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    .goto 635,27.89,45.25
    .isInScenario 1082
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2392,1 --Investigate the shrine.
step
    #completewith next
    #label Yrgrim the Truthseeker
    .isInScenario 1082
    >>Vainquez |cRXP_ENEMY_Yrgrim Cherche-Vérité|r |cRXP_WARN_s'il est gelé, tuez la |cRXP_ENEMY_Formerune Griselda|r|r, puis attendez le RP.
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
step
    #completewith Yrgrim the Truthseeker
    .isInScenario 1082
    .goto 635,25.93,44.53
    .gossipoption 45218 >>Parlez à |cRXP_FRIENDLY_Yrgrim Cherche-Vérité|r
    .timer 4.5,RP
    .target Yrgrim the Truthseeker
step
    #requires Yrgrim the Truthseeker
    .goto 635,25.93,44.53,10,0
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>Vainquez |cRXP_ENEMY_Yrgrim Cherche-Vérité|r |cRXP_WARN_s'il est gelé, tuez la |cRXP_ENEMY_Formerune Griselda|r|r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
    .mob Runeshaper Griselda
step
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .scenario 2395,1 --Take up Truthguard.
    .complete 42017,2 --1/1 Claim the Truthguard
step
    .isOnQuest 42017
    .goto 634,83.95,9.55,10,0
    .goto 634,85.47,10.83
    .vehicle >>Cliquez sur l' |cRXP_PICK_Hippogriffe d'Argent|r
    .target Argent Hippogryph
    .timer 20,RP
step
    .isQuestAvailable 38576
    .isOnQuest 42017
    #label Artifact Weapon: Paladin Protection
    .goto 627,71.74,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r |cRXP_WARN_dans Dalaran|r.
    .turnin 42017 >>Rendez la quête Sanctuaire de Garde-Vérité
    .target Seigneur Maxwell Tyrosus
    .accept 38576 >>Acceptez la quête Rencontre à l’Espoir de Lumière
step
    .isQuestTurnedIn 38576
    .isOnQuest 42017
    #completewith next
    #label Shrine of the Truthguard3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42017 >>Rendez la quête Sanctuaire de Garde-Vérité
    .target Seigneur Maxwell Tyrosus
step << Alliance
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,34.98,66.58,20,0
    .goto 627,32.65,69.91
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step << Horde
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,58.71,20.66,20,0
    .goto 627,61.93,13.5
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
step
    #requires Shrine of the Truthguard3
    .isQuestTurnedIn 38576
    .goto 24,49.88,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42017 >>Rendez la quête Sanctuaire de Garde-Vérité
    .target Seigneur Maxwell Tyrosus
step << Alliance
    .isQuestAvailable 38576
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    .isQuestAvailable 38576
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Suivez la flèche
step << Alliance
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith next
    #label Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,58.71,20.66,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith Light's Hope Sanctum
    .isQuestAvailable 38576
    #hidewindow
    .goto 627,61.93,13.5,30 >>Suivez la flèche
step << Horde
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,61.93,13.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label A United Force
    .isQuestAvailable 38576
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38576 >>Rendez la quête Rencontre à l’Espoir de Lumière
    .target Seigneur Maxwell Tyrosus
step
    #completewith A United Force
    #hidewindow
    .isQuestAvailable 38576
    .goto 24,63.15,37.22,40 >>Suivez la flèche
step
    #requires A United Force
    .isQuestAvailable 38576
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38576 >>Rendez la quête Rencontre à l’Espoir de Lumière
    .target Seigneur Maxwell Tyrosus
]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Vindicte
#displayname Arme prodigieuse : Vindicte
#next a) Domaine de classe Paladin Partie 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Retribution
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 44370 >>Acceptez la quête Enrichir l’arsenal
    .skipgossipid 45133
    .choose 1271768
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271768
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 44370 >>Rendez la quête Enrichir l’arsenal
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 44063 >>Acceptez la quête Étoffer votre arsenal
    .choose 1271768
    .skipgossipid 45133
    .target Seigneur Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271768
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 44063 >>Rendez la quête Étoffer votre arsenal
    .target Seigneur Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 40408,1 >>Acceptez la quête Des armes de légende
    .skipgossipid 45133
    .choose 1271768
    .target Seigneur Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271768
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 40408,1 >>Rendez la quête Des armes de légende
    .target Seigneur Maxwell Tyrosus
step
    #completewith Spirits exorcised
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .accept 42770 >>Acceptez la quête À la recherche d’un guide
step
    >>Utilisez la |T413582:0|t[Pierre de foyer luminescente]
    .complete 42770,1 --1/1 Hearth to Uther's Tomb
    .use 173537
step
    .goto 22,51.55,79.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42770 >>Rendez la quête À la recherche d’un guide
    .target Seigneur Maxwell Tyrosus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand prêtre Thel'danis|r et à |cRXP_FRIENDLY_Mehlar Aubelame|r
    .accept 42772 >>Acceptez la quête Terre sacrée
    .goto 22,51.45,79.02
    .target +High Priest Thel'danis
    .accept 42771 >>Acceptez la quête Maintien de la paix
    .goto 22,51.36,79
    .target +Mehlar Dawnblade
step
    #completewith Spirits exorcised
    >>Tuez les |cRXP_ENEMY_Spectres angoissés|r et les |cRXP_ENEMY_Résidents perturbés|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    .goto 22,50.34,80.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre tombale|r
    .complete 42772,1,1 --3/3 Graveyards purified
step
    .goto 22,49.84,77.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre tombale|r
    .complete 42772,1,2 --3/3 Graveyards purified
step
    #label Spirits exorcised
    .goto 22,51.04,76.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre tombale|r
    .complete 42772,1,3 --3/3 Graveyards purified
step
    #loop
    .goto 22,53.96,79.94,40,0
    .goto 22,47.73,81.17,40,0
    .goto 22,50.3,75.3,40,0
    >>Tuez les |cRXP_ENEMY_Spectres angoissés|r et les |cRXP_ENEMY_Résidents perturbés|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    >>Tuez le |cRXP_ENEMY_Canonnier Dargal|r |cRXP_WARN_près de vous|r
    .complete 42771,2 --1/1 Cannoneer Dargal slain
    .mob Cannoneer Dargal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Grand prêtre Thel'danis|r et à |cRXP_FRIENDLY_Mehlar Aubelame|r
    .turnin 42772 >>Rendez la quête Terre sacrée
    .goto 22,51.44,79.02
    .target +High Priest Thel'danis
    .turnin 42771 >>Rendez la quête Maintien de la paix
    .goto 22,51.35,78.99
    .target +Mehlar Dawnblade
step
    .goto 22,51.62,81.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .accept 42773 >>Acceptez la quête Lumière révélatrice
    .timer 27,RP
    .target Seigneur Maxwell Tyrosus
step
    .goto 22,52.08,83.26
    #title |cFFFCDC00Suivez la flèche|r
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42773,1 --1/1 Join Maxwell Tyrosus in the tomb
step
    #completewith next
    #label Commune with Uther
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    #completewith Commune with Uther
    .goto 22,52.08,83.26
    .cast 216268 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Plaque du souvenir|r.
    .timer 27,RP
step
    #requires Commune with Uther
    .goto 22,52.08,83.26
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    .goto 22,52.11,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42773 >>Rendez la quête Lumière révélatrice
    .target Seigneur Maxwell Tyrosus
    .accept 42774 >>Acceptez la quête Lueur d’espoir
step
    .isOnQuest 42774
    .goto 22,52.1,83.03
    .cast 311750 >>Utilisez le |T132161:0|t[Sifflet à hippogriffe] à l'extérieur.
    .timer 20,Compte à rebours avant la déconnexion
    .use 311750
step
    .isOnQuest 42774
    .logout >>Déconnectez-vous et reconnectez-vous pour une téléportation.
    .timer 20,RP
    .macro Logout,638661 >>Déconnexion
-- step
--     .isOnQuest 42774
--     .countdown 20 >>
step
    .goto 23,74.28,53.25
    *|cRXP_WARN_Attendez que le compte à rebours de votre déconnexion se termine, puis reconnectez-vous.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42774 >>Rendez la quête Lueur d’espoir
    .accept 38376 >>Acceptez la quête À la recherche du généralissime
    .target Seigneur Maxwell Tyrosus
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    #completewith Argent Hippogryph
    .goto 23,74.17,53.07
    .cast 183677 >>Cliquez sur l' |cRXP_PICK_Hippogriffe d'Argent|r
    .timer 20,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    .goto 23,70.19,55.87
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    .goto 676,15.69,51.36
    .isOnQuest 38376
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 1488,1 --Lead the paladins of the Argent Crusade into battle
step
    #loop
    .goto 676,15.21,51.51,20,0
    .goto 676,16.52,51.94,20,0
    .isInScenario 775
    >>Tuez les |cRXP_ENEMY_Démons|r
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
    >>Tuez le |cRXP_ENEMY_Geôlier Zerus|r
    .scenario 1486,1 --Destroy Jailer Zerus
    .mob Jailer Zerus
step
    #title |cFFFCDC00Entrez dans la grotte|r
    .isInScenario 775
    .goto 676,22.26,61.13,15 >>Entrez dans la Grotte
step
    #requires Ashbringer
    .isInScenario 775
    .goto 676,23.42,62.88,15,0
    .goto 676,23.83,63.9,15,0
    .goto 676,24.23,63.98,15,0
    .goto 676,26.84,61.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Porte-Cendres|r
    .scenario 1487,1
    .timer 55,RP
    .complete 38376,2 --1/1 Obtain the Ashbringer
step
    .goto 676,26.87,61.25
    .isInScenario 775
    .countdown 55 >>|cRXP_WARN_Attendez la fin du RP|r.
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Utilisez le |cRXP_WARN_Bouton d’action supplémentaire|r
    .scenario 2632,1 --Break free from Balnazzar's control.
    .mob Balnazzar
    .usespell 216693
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Tuez |cRXP_ENEMY_Balnazzar|r
    .complete 38376,3 --1/1 Balnazzar slain
    .mob Balnazzar
step
    .isInScenario 775
    .zone 23 >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .macro Leave Instance,236367 >> Quittez l'instance
step
    .zoneskip 23,1
    .goto 23,74.28,53.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38376 >>Rendez la quête À la recherche du généralissime
    .target Seigneur Maxwell Tyrosus
    .accept 42811 >>Acceptez la quête Rencontre à l’Espoir de Lumière
step
    #completewith next
    #label Search for the Highlord
    .goto 23,75.43,52.65,10,0
    .goto 24,41.98,89.52,5,0
    .goto 24,45.4,83.87,5,0
    .goto 24,41.73,72.95,5,0
    .goto 24,44.64,70.09,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38376 >>Rendez la quête À la recherche du généralissime
    .target Seigneur Maxwell Tyrosus
    .accept 42811 >>Acceptez la quête Rencontre à l’Espoir de Lumière
step
    #completewith Search for the Highlord
    .goto 24,49.9,72.38,20 >>Entrez dans la chapelle de l’Espoir de Lumière et traversez le tunnel
step
    #requires Search for the Highlord
    .goto 24,49.9,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 38376 >>Rendez la quête À la recherche du généralissime
    .target Seigneur Maxwell Tyrosus
    .accept 42811 >>Acceptez la quête Rencontre à l’Espoir de Lumière
step
    #completewith next
    #hidewindow
    #label Chapel
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith Chapel
    .goto 24,40.06,92.46,10 >>Entrez dans la chapelle
step
    #requires Chapel
    #label Artifact Weapon: Retribution
    .goto 24,41.52,90.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte secrète|r
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label Light's Hope
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42811 >>Rendez la quête Rencontre à l’Espoir de Lumière
    .target Seigneur Maxwell Tyrosus
    .disablecheckbox
step
    #completewith Light's Hope
    .goto 24,46.48,82.49,15,0
    .goto 24,41.21,73.21,15,0
    .goto 24,63.20,37.34,40 >>Suivez la flèche
step
    #requires Light's Hope
    .goto 24,63.20,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .turnin 42811 >>Rendez la quête Rencontre à l’Espoir de Lumière
    .target Seigneur Maxwell Tyrosus
]])
--Holy 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arme prodigieuse : Paladin Sacré
#displayname Arme prodigieuse : Sacré
#next ac) Domaine de classe Paladin Partie 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Paladin Sacré
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arme prodigieuse : Paladin Protection
#displayname Arme prodigieuse : Paladin Protection
#next ac) Domaine de classe Paladin Partie 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Paladin Protection
]])
--Retribution 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arme prodigieuse : Vindicte
#displayname Arme prodigieuse : Vindicte
#next ac) Domaine de classe Paladin Partie 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Vindicte
]])

--Paladin Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Paladin Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe La Confrérie défias
#chapter
#internal

<< Paladin

step
    #completewith Order Hall Paladin Part 2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Maxwell Tyrosus|r
    .target Seigneur Maxwell Tyrosus
    .accept 40408 >>Acceptez la quête Des armes de légende
    .isQuestAvailable 40408
step
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Retribution >> Vindicte(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection >> Protection(Tank) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin >> Sacré(Healer) Suite de quêtes
step
    #include ac) Order Hall Paladin Part 2@A United Force-Order Hall Paladin Part 2
]])

-- --------- Priest ---------

--Discipline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Discipline
#displayname Arme prodigieuse : Discipline
#next a) Domaine de classe Prêtre Partie 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Acceptez la quête La troisième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Discipline|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Rendez la quête La troisième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Acceptez la quête Une deuxième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Discipline|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Rendez la quête Une deuxième légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acceptez la quête Posséder une légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Discipline|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Rendez la quête Posséder une légende
    .target Alonsus Faol
step
    #completewith the Azure Dragonshrine
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41625 >>Acceptez la quête Courroux-de-Lumière
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41625 >>Acceptez la quête Courroux-de-Lumière
    .target Alonsus Faol
step
    .isOnQuest 41625
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    .isOnQuest 41625
    .zoneskip 702,1
    .goto 702,49.79,80.78
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
step
    .goto 627,28.64,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Kalec|r
    .turnin 41625 >>Rendez la quête Courroux-de-Lumière
    .accept 41626 >>Acceptez la quête Une nouvelle menace
    .target Archimage Kalec
step
    .zoneskip 627,1
    .isOnQuest 41626
    .goto 627,49.25,47.64
    .zone 629 >>Prenez le téléporteur au centre de Dalaran.
step
    .goto 629,30.85,84.43
    >>|cRXP_WARN_Suivez la flèche|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail vers le Temple du Repos du ver|r.
    *|cRXP_WARN_NOTE:|r Vous pouvez trouver le portail après avoir utilisé le téléporteur au milieu de Dalaran si la flèche est incorrecte pour une raison quelconque.
    .complete 41626,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #label the Azure Dragonshrine
    .goto 115,55.96,65.01
    >>|cRXP_WARN_Suivez la flèche|r.
    .complete 41626,2 --1/1 Travel to the Azure Dragonshrine
step
    #loop
    .goto 115,55.90,64.90,30,0
    .goto 115,56.26,68.12,30,0
    .goto 115,54.10,66.46,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Siphons du Vide|r, les |cRXP_PICK_Étranges portails|r, et les |cRXP_PICK_Lames corrompues par le Vide|r.
    .complete 41626,3 --3/3 Clues Found
step
    .goto 115,56.69,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Appareil de communication éthérien|r.
    .turnin 41626 >>Rendez la quête Une nouvelle menace
    .target Ethereal Communication Device
    .accept 41627 >>Acceptez la quête Un ennemi oublié
step
    #completewith next
    #hidewindow
    .cast 3365 >>Suivez la flèche
    .timer 37,RP du Prince-nexus
step
    .goto 115,56.65,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Interrupteur du système de communication|r.
    .complete 41627,1 --1/1 Activate the communication device
step
    .goto 115,56.69,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Image de Kalec|r
    .turnin 41627 >>Rendez la quête Un ennemi oublié
    .accept 41628 >>Acceptez la quête Les yeux du dragon
    .target Image of Kalec
step
    #title Utilisez le |T254294:0|t[Parchemin de téléportation vers le Nexus]
    .goto 114,29.25,28.57
    >>Utilisez le |T254294:0|t[Parchemin de téléportation vers le Nexus]
    .complete 41628,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.19,27.85
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 41628,2 --1/1 Surge Needle scouted
step
    .goto 114,29.66,27.50
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 41628,3 --1/1 Nexus foundation scouted
step
    >>Celle-ci devrait être automatiquement rendu et ajouté à votre journal de quêtes. Reconnectez-vous si cela ne fonctionne pas.
    .turnin 41628 >>Rendez la quête Les yeux du dragon
    .accept 41629 >>Acceptez la quête La maîtrise des flammes sacrées
step
    #loop
    .goto 114,27.40,23.82,35,0
    .goto 114,25.85,26.44,35,0
    .goto 114,27.17,29.80,35,0
    .goto 114,29.52,27.00,35,0
    >>Tuez les |cRXP_ENEMY_Braises de colère|r.
    .complete 41629,1 --1/1 Empowered with Unstable Holy Energy
    .mob Wrath Ember
step
    .goto 114,26.60,23.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Image de Kalec|r
    .turnin 41629 >>Rendez la quête La maîtrise des flammes sacrées
    .accept 41630 >>Acceptez la quête Un jugement sans appel
    .target Image of Kalec
step
    .goto 114,27.32,20.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Vide focalisé|r.
    .complete 41630,3 --1/1 North Surge Needle destroyed
step
    .goto 114,24.13,29.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Vide focalisé|r.
    .complete 41630,2 --1/1 West Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Vide focalisé|r.
    .complete 41630,1 --1/1 East Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Image de Kalec|r
    .turnin 41630 >>Rendez la quête Un jugement sans appel
    .accept 41631 >>Acceptez la quête Caveau du Nexus
    .target Image of Kalec
step
    .isOnQuest 41631
    .goto 114,27.84,28.37,30,0
    .goto 114,27.51,26.05
    .enterScenario 1065 >>Entrez dans le scénario |cRXP_PICK_X|r.
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Tuez le |cRXP_ENEMY_Scion de feu|r, le |cRXP_ENEMY_Scion de glace|r et le |cRXP_ENEMY_Scion de magie|r.
    .scenario 2275,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Mage
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Utilisez |T135907:0|t[Soins rapides] sur |cRXP_FRIENDLY_Azuregos|r.
    .scenario 2275,2 --Azuregos healed to full
    .macro Flash Heal,135907 >>Soins rapides
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
    >>Utilisez |T135928:0|t[Lévitation]. |cRXP_WARN_Esquivez les flammes des geysers|r.
    .scenario 2277,1 --Reach the Librarium
    .usespell 1706
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2277,2 --Find a way into the vault
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>Tuez la |cRXP_ENEMY_Flamme du jugement|r.
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
    .vehicle 104546 >>Cliquez sur |cRXP_FRIENDLY_Azuregos|r
step
    #requires NexusPrinceBilaalA
    .isInScenario 1065
    .goto 736,59.24,20.32
    >>Tuez le |cRXP_ENEMY_Prince-nexus Bilaal|r
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
    .complete 41631,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith next
    #label SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Courroux de Lumière|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    #completewith SubdueLightsWrathA
    .goto 736,60.64,20.51
    .subzone 8119 >>Cliquez sur le |cRXP_PICK_Portail|r.
    --.subzone 13695
step
    #requires SubdueLightsWrathA
    #completewith next
    #hidewindow
    .cast 207949 >>Suivez la flèche
    .timer 30,Durée de la soumission
step
    #requires SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Courroux de Lumière|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Courroux de Lumière|r.
    .scenario 2281,1 --Claim Light's Wrath
    .complete 41631,2 --1/1 Light's Wrath
step
    #completewith next
    #label LeaveTheNexusVaultA
    .isInScenario 1065
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith LeaveTheNexusVaultA
    .subzone 13695 >>Cliquez sur le |cRXP_PICK_Portail vers le Nexus|r
    .timer 50,RP de Azuregos
    *|cRXP_WARN_NOTE:|r Les coordonnées ne fonctionnent pas ici
step
    #requires LeaveTheNexusVaultA
    .isInScenario 1065
    .goto 736,59.28,20.40
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith next
    #label TheNexusVaultA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Kalec|r
    .turnin 41631 >>Rendez la quête Caveau du Nexus
    .accept 41632 >>Acceptez la quête Le don du temps
    .target Archimage Kalec
step
    .zoneskip 736,1
    #completewith TheNexusVaultA
    .goto 736,59.28,20.40
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
step
    #requires TheNexusVaultA
    .goto 627,28.64,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Kalec|r
    .turnin 41631 >>Rendez la quête Caveau du Nexus
    .accept 41632 >>Acceptez la quête Le don du temps
    .target Archimage Kalec
step
    .isQuestTurnedIn 40938
    #completewith next
    #label AGiftOfTimeA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 41632 >>Rendez la quête Le don du temps
    .target Alonsus Faol
step
    .isQuestTurnedIn 40938
    #completewith AGiftOfTimeA
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail vers le Temple Halo-du-Néant|r
step
    .isQuestTurnedIn 40938
    #requires AGiftOfTimeA
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 41632 >>Rendez la quête Le don du temps
    .target Alonsus Faol
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prophète Velen|r
    .turnin 41632 >>Rendez la quête Le don du temps
    .target Prophète Velen
]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Prêtre Sacré
#displayname Arme prodigieuse : Sacré
#next a) Domaine de classe Prêtre Partie 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Acceptez la quête La troisième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Sacré|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45117
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Rendez la quête La troisième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Acceptez la quête Une deuxième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Sacré|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Rendez la quête Une deuxième légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acceptez la quête Posséder une légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Sacré|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Rendez la quête Posséder une légende
    .target Alonsus Faol
step
    #completewith House Call
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41957 >>Acceptez la quête La supplique du redresseur de torts
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41957 >>Acceptez la quête La supplique du redresseur de torts
    .target Alonsus Faol
step
    .isOnQuest 41957
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    #label House Call
    .goto 627,37.81,36.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Redresseur de torts Boros|r
    .turnin 41957 >>Rendez la quête La supplique du redresseur de torts
    .accept 41966 >>Acceptez la quête Visite à domicile
    .target Redresseur de torts Boros
step
    .goto 627,36.02,36.61
    >>Utilisez |T135894:0|t[Purifier] sur le |cRXP_ENEMY_Défenseur Barrem|r et soignez-le. Tuez la |cRXP_ENEMY_Corruption sanguine gangrenée|r.
    .complete 41966,1 --1/1 Defender Barrem cured
    .usespell 527
    .target Defender Barrem
    .mob Fel Tainted Blood
step
    .goto 627,37.41,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Défenseur Barrem|r.
    .turnin 41966 >>Rendez la quête Visite à domicile
    .target Defender Barrem
    .accept 41967 >>Acceptez la quête Hors des ténèbres
step
    .goto 627,70.80,43.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Aile-Agile |r.
    .complete 41967,1 --1/1 Flight to Darkstone Isle secured
    .target Lightfeather
step
    .goto 646,34.08,33.57
    >>Tuez le |cRXP_ENEMY_Bourreau de Niskara|r.
    .complete 41967,2 --1/1 Demon Camp cleared
    .mob Niskaran Executioner
step
    #completewith next
    #hidewindow
    .cast 213109 >>Suivez la flèche
    .timer 5,RP de Alora
step
    .goto 646,33.99,33.93
    >>Utilisez |T135955:0|t[Résurrection] sur |cRXP_FRIENDLY_Alora|r.
    .complete 41967,3 --1/1 Alora resurrected
    .macro Resurrection,135955 >>Résurrection
step
    .goto 646,33.99,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alora|r.
    .turnin 41967 >>Rendez la quête Hors des ténèbres
    .accept 41993 >>Acceptez la quête Le salut venu des cieux
    .target Alora
step
    .goto 646,33.42,33.18
    >>Tuez le |cRXP_ENEMY_Subjugateur Valith|r.
    .complete 41993,1 --1/1 Assist Jace Darkweaver
    .mob Subjugator Valith
step
    .goto 646,33.58,33.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jace Sombretisse|r
    .turnin 41993 >>Rendez la quête Le salut venu des cieux
    .target Jace Sombretisse
    .accept 42074 >>Acceptez la quête Le retour de la Lumière
step
    #title Traversez le portail
    .goto 646,32.04,31.92
    >>|cRXP_WARN_Suivez la flèche et prenez le portail.|r
    .complete 42074,1 --1/1 Travel through the Portal on Darkstone Isle
step
    .isOnQuest 42074
    .goto 646,32.04,31.92
    .enterScenario 1085 >>Entrez dans le scénario |cRXP_PICK_Le retour de la Lumière|r.
step
    .isInScenario 1085
    .goto 714,74.57,82.82
    >>Utilisez |T135907:0|t[Soins rapides] sur le |cRXP_FRIENDLY_Redresseur de torts Boros|r.
    .scenario 2406,1 --Heal Vindicator Boros to full health.
    .macro Flash Heal,135907 >>Soins rapides
    .target Redresseur de torts Boros
step
    .isInScenario 1085
    .goto 714,71.02,72.40
    >>Tuez le |cRXP_ENEMY_Commandant Xovoth|r.
    .scenario 2421,1 --Assist Jace Darkweaver.
    .mob Commander Xovoth
step
    .isInScenario 1085
    .goto 714,70.66,71.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal d’ancrage|r.
    .scenario 2441,1 --Destroy the Anchoring Crystal
step
    .isInScenario 1085
    .goto 714,71.35,80.38,15,0
    .goto 714,69.37,81.00,10,0
    .goto 714,69.34,78.01
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2441,2 --Exit the lower levels of the Legion Ship.
step
    .isInScenario 1085
    .goto 714,71.45,73.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Cage de la Légion|r.
    *|cRXP_WARN_NOTE:|r Si vous êtes encore en bas, remontez d'abord les escaliers.
    .scenario 2417,1 --Rescue Bo'ja
step
    .isInScenario 1085
    .goto 714,73.07,78.86
    >>Tuez le |cRXP_ENEMY_Capitaine Naranoth|r.
    .scenario 2446,1 --Defeat Captain Naranoth
    .mob Captain Naranoth
step
    .isInScenario 1085
    .goto 714,70.20,70.53,15,0
    .goto 714,62.43,59.71
    >>Tuez la |cRXP_ENEMY_Dame Calindris|r.
    .scenario 2425,1 --Defeat Lady Calindris
step
    .isInScenario 1085
    .goto 714,65.35,59.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_T'uure|r.
    .scenario 2426,1 --T'uure obtained.
    .complete 42074,2 --1/1 Obtain T'uure
step
    .isInScenario 1085
    .goto 714,65.51,60.06
    >>|cRXP_WARN_Attendez que |cRXP_FRIENDLY_Bo'ja|r descende et invoque un portail|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail de mage de Bo'ja|r.
    .scenario 2426,2 --Leave Niskara
step
    .isQuestTurnedIn 40938
    .goto 702,47.75,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prophète Velen|r
    .turnin 42074 >>Rendez la quête Le retour de la Lumière
    .target Prophète Velen
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Prophète Velen|r
    .turnin 42074 >>Rendez la quête Le retour de la Lumière
    .target Prophète Velen
]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Ombre
#displayname Arme prodigieuse : Ombre
#next a) Domaine de classe Prêtre Partie 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Acceptez la quête La troisième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Ombre|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Rendez la quête La troisième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Acceptez la quête Une deuxième légende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Ombre|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Rendez la quête Une deuxième légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acceptez la quête Posséder une légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Ombre|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Rendez la quête Posséder une légende
    .target Alonsus Faol
step
    #completewith Amassing Darkness
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40710 >>Acceptez la quête Lame crépusculaire
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40710 >>Acceptez la quête Lame crépusculaire
    .target Alonsus Faol
step
    .goto 18,13.03,62.46
    >>Utilisez le |T254294:0|t[Parchemin du camp de Tirisfal].
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 40710,1 --1/1 Go to the marked location in Tirisfal Glades
    .use 173523
step
    .isOnQuest 40710
    .goto 18,13.03,62.46
    .enterScenario 991 >>Entrez dans le scénario |cRXP_PICK_Lame crépusculaire|r.
step
    .isInScenario 991
    .goto 18,13.47,57.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Notes de Martel-Scories|r.
    .scenario 2221,1 --Find the first clue
step
    .isInScenario 991
    .goto 18,13.21,55.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Notes de Martel-Scories|r.
    .scenario 2221,2 --Find the second clue
step
    .isInScenario 991
    .goto 18,13.90,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Notes de Martel-Scories|r.
    .scenario 2221,3 --Find the third clue
step
    #title |cFFFCDC00Nagez vers le bas|r
    .isInScenario 991
    .goto 20,37.87,12.57,8,0
    .goto 20,34.13,23.36
    >>|cRXP_WARN_Nagez vers le bas et entrez dans le passage.|r
    .scenario 2031,1 --Enter the tomb at the bottom of the lake
step
    .isInScenario 991
    .goto 20,37.16,41.44
    >>Tuez le |cRXP_ENEMY_Tournelame du Crépuscule|r et l' |cRXP_ENEMY_Exhalombre du Crépuscule|r.
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2032,1 --Defeat the guards at the door to gain access
step
    .isInScenario 991
    .goto 20,37.24,44.71
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2048,1 --Enter the Tomb of Tyr
step
    .isInScenario 991
    #loop
    .goto 20,40.97,50.29,12,0
    .goto 20,41.22,58.63,12,0
    .goto 20,34.05,59.87,12,0
    .goto 20,33.64,50.57,12,0
    >>Tuez les |cRXP_ENEMY_Ritualistes du Crépuscule|r.
    .scenario 2086,1 --Stop the dampening rituals
    .mob Ritualiste du Crépuscule
step
    #label Amassing Darkness
    .isInScenario 991
    .goto 20,37.52,55.05
    >>Tuez les |cRXP_ENEMY_Ténèbres grandissantes|r
    .scenario 2171,1 --Defeat the Amassing Darkness
    .mob Amassing Darkness
step
    .isInScenario 991
    .goto 20,39.37,79.78,15,0
    .goto 20,41.94,84.31,15,0
    .goto 20,47.78,75.83
    >>|cRXP_WARN_Suivez la flèche.|r Utilisez |T135739:0|t[Dissipation de masse] pour tuer les |cRXP_ENEMY_Tentacules du Vide|r
    .scenario 2089,1 --Fight to the prison chamber
    .mob Void Tendril
    .usespell 311663
step
    .isInScenario 991
    .goto 20,58.77,75.20
    >>Tuez le |cRXP_ENEMY_Diacre du Crépuscule Farthing|r.
    .scenario 2099,1 --Kill the Twilight Deacon
    .mob Twilight Deacon Farthing
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Lame de l’Empire noir|r.
    .scenario 2115,1 --Take the Blade of the Black Empire
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>Utilisez le |T136201:0|t[|cRXP_WARN_Bouton d’action supplémentaire|r] (Drain sombre)
    .scenario 2116,1 --Use "Dark Drain" to kill Zakajz forever
    .complete 40710,2 --1/1 Stop the Ritual and acquire the Blade
    .timer 15,RP
step
    #completewith next
    #label BladeInTwilightA
    #hidewindow
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    #completewith BladeInTwilightA
    .goto 20,57.38,73.35
    .zone 627 >>Cliquez sur le portail vers Dalaran
step
    #requires BladeInTwilightA
    .goto 627,47.32,22.90
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    .isQuestTurnedIn 40938
    #completewith next
    #label BladeInTwilightB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Rendez la quête Lame crépusculaire
    .target Moira Thaurissan
step
    .isQuestTurnedIn 40938
    #completewith BladeInTwilightB
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail vers le Temple Halo-du-Néant|r
step
    .isQuestTurnedIn 40938
    #requires BladeInTwilightB
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Rendez la quête Lame crépusculaire
    .target Moira Thaurissan
step
    #optional
    .goto 627,46.14,21.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Rendez la quête Lame crépusculaire
    .target Moira Thaurissan
]])
--Discipline 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Discipline
#displayname Arme prodigieuse : Discipline
#next ac) Domaine de classe Prêtre Partie 1
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Discipline
]])
--Holy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Prêtre Sacré
#displayname Arme prodigieuse : Sacré
#next ac) Domaine de classe Prêtre Partie 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Prêtre Sacré
]])
--Shadow 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Ombre
#displayname Arme prodigieuse : Ombre
#next ac) Domaine de classe Prêtre Partie 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Ombre
]])

--Priest Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Prêtre Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Prêtre
#chapter
#internal

<< Priest

step
    #completewith Recruit Ishanah2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Acceptez la quête Posséder une légende
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isQuestAvailable account,91955
    .goto 18,78.96,40.99
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_IMPORTANT: Sélectionnez celui que vous avez déjà pour obtenir 10% d'expérience supplémentaire (ne fonctionne qu'une seule fois)|r
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Shadow >> Ombre(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Priest >> Sacré(Healer) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Discipline >> Discipline(Healer) Suite de quêtes
step
    #include ac) Order Hall Priest Part 2@The Light and the Void-Recruit Ishanah
step
    .zoneskip 702,1
    .goto 702,49.79,80.59
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
]])

-- --------- Rogue ---------

--Assassination
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Assassinat
#displayname Arme prodigieuse : Assassinat
#next a) Domaine de classe Voleur Partie 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Assassination
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 44375 >>Acceptez la quête La dernière lame
    .skipgossipid 45233
    .choose 1389395
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 44375 >>Rendez la quête La dernière lame
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 44034 >>Acceptez la quête Une autre lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 44034 >>Rendez la quête Une autre lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 40840 >>Acceptez la quête Une lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .choose 1389395
    .skipgossipid 45230
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 40840 >>Rendez la quête Une lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    #completewith Felcaller Whitley
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 626,42.37,76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Princesse Tess Grisetête|r
    .target Princesse Tess Grisetête
    .accept 42501 >>Acceptez la quête Finir le boulot
    .accept 42502 >>Acceptez la quête Aucune échappatoire
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    *|cRXP_WARN_Reconnectez-vous si le PNJ n'est pas présent|r
    .accept 43262 >>Acceptez la quête Championne : Garona Miorque
    .turnin 43262 >>Rendez la quête Championne : Garona Miorque
    .target Garona Miorque
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Acceptez la quête Championne : Vanessa VanCleef
    .turnin 43261 >>Rendez la quête Championne : Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 42502
    .cast 311709 >>Utilisez le |T254294:0|t[Parchemin du bois de la Pénombre]
    .use 173530
step
    #completewith next
    #label Felcaller Whitley
    .goto 47,19.14,56.43,10,0
    .goto 47,19.62,54.83,10,0
    .goto 47,19.55,54.47,5,0
    .goto 47,19.36,54.99,5,0
    >>Tuez le |cRXP_ENEMY_Gangrogène Whitley|r. Dépouillez-le pour la |T134937:0|t[|cRXP_LOOT_Formule gangrenée|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    #completewith Felcaller Whitley
    .goto 47,19.06,53.88,20 >>Entrez dans la maison et montez les escaliers
step
    #requires Felcaller Whitley
    .goto 47,19.06,53.88
    >>Tuez le |cRXP_ENEMY_Gangrogène Whitley|r. Dépouillez-le pour la |T134937:0|t[|cRXP_LOOT_Formule gangrenée|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    .goto 47,19.06,53.88
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42502 >>Rendez la quête Aucune échappatoire
step
    >>Utilisez le |T254294:0|t[Parchemin des terres Foudroyées]
    .complete 42501,1 --1/1 Travel to Blasted Lands
    .use 173531
step
    .goto 17,37.03,29.04
    >>Tuez |cRXP_ENEMY_Caden Mirombre|r. Dépouillez-le pour le |T666475:0|t[|cRXP_LOOT_Message codé|r].
    .complete 42501,2 --1/1 Caden Shadowgaze slain
    .mob Caden Shadowgaze
step
    .goto 17,37.01,30.04
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42501 >>Rendez la quête Finir le boulot
    .accept 42503 >>Acceptez la quête Déchiffrage
step
    #completewith next
    #label Coded Message
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42503,3 --1/1 Information found
step
    #completewith Coded Message
    .goto 17,37.04,30.41
    .cast 214079 >>Utilisez le |T666475:0|t[Message codé]
    .timer 25,RP
    .use 138102
step
    #requires Coded Message
    .goto 17,37.04,30.41
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42503,3 --1/1 Information found
    .use 138102
step
    .goto 17,36.98,29.09
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42503,1 --1/1 Read the Coded Message
-- step
--     .goto 17,39.52,36.49
--     .zone 617 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 17,37.21,29.05
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42503 >>Rendez la quête Déchiffrage
    .accept 42539 >>Acceptez la quête Poignards volants
    .target Malton
step
    #completewith next
    #hidewindow
    #label Blood of the Innocent
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith Blood of the Innocent
    .cast 311704 >>Utilisez le |T254294:0|t[Parchemin du bois de la Pénombre]
    .use 173527
step
    #requires Blood of the Innocent
    #completewith next
    #label Blood of the Innocent2
    .goto 47,73.83,46.01,5,0
    .goto 47,73.87,45.53,5,0
    .goto 47,74.27,44.22,5,0
    .goto 47,74.01,44.76,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Bol|r
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #requires Blood of the Innocent
    #completewith Blood of the Innocent2
    #title|cFFFCDC00Entrez dans la maison|r
    .goto 47,73.67,44.08,5 >>Entrez dans la maison et montez les escaliers
step
    #requires Blood of the Innocent2
    .goto 47,73.64,43.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Bol|r à l'étage.
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith next
    #hidewindow
    #label Althea Ebonlocke
    >>Vainquez la |cRXP_ENEMY_Commandant Althea Bouclenoire|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith Althea Ebonlocke
    .goto 47,73.71,44.23,5,0
    .goto 47,74.07,44.69,5,0
    .goto 47,74.29,44.28,5,0
    .goto 47,73.88,45.62,5,0
    .goto 47,73.72,46.12,5 >>Quittez la maison
    #title |cFFFCDC00Sortez de la maison|r
step
    #requires Althea Ebonlocke
    #completewith next
    #label Althea Ebonlocke2
    >>Vainquez la |cRXP_ENEMY_Commandant Althea Bouclenoire|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #requires Althea Ebonlocke
    #completewith Althea Ebonlocke2
    .goto 47,72.83,46.9,5,0
    .goto 47,72.5,47.26,5,0
    .goto 47,72.34,47.7,5,0
    .goto 47,71.88,46.78,15 >>Entrez dans la Maison
    #title|cFFFCDC00Entrez dans la maison|r
step
    #requires Althea Ebonlocke2
    .goto 47,71.94,46.43
    >>Vainquez la |cRXP_ENEMY_Commandant Althea Bouclenoire|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith next
    #label Skull of the Innocent
    .goto 47,72.38,47.75,5,0
    .goto 47,72.55,47.18,5,0
    .goto 47,73.01,46.9,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Crâne|r.
    .complete 42539,1 --1/1 Skull of the Innocent
step
    #completewith Skull of the Innocent
    .goto 47,73.99,48.27,10 >>Entrez dans la forge
step
    #requires Skull of the Innocent
    .goto 47,73.85,48.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Crâne|r.
    .complete 42539,1 --1/1 Skull of the Innocent
step
    .goto 47,71.91,47.69
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 42539 >>Rendez la quête Poignards volants
    .accept 42568 >>Acceptez la quête Préparation
    .target Malton
step
    #completewith next
    #label Preparation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    .turnin 42568 >>Rendez la quête Préparation
    .target Garona Miorque
    .accept 42504 >>Acceptez la quête La lame invisible
    .disablecheckbox
step
    #completewith Preparation
    .cast 311712 >>Utilisez le |T254294:0|t[Parchemin de la forêt d’Elwynn]
    .use 173532
step
    #requires Preparation
    .goto 37,36.79,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r dans la Forêt d'Elwynn
    .turnin 42568 >>Rendez la quête Préparation
    .target Garona Miorque
    .accept 42504 >>Acceptez la quête La lame invisible
step
    .isOnQuest 42504
    .isQuestNotComplete 42504
    .goto 37,32.05,49.23
    .enterScenario 1123 >>Entrez dans le Scénario
    *|cRXP_WARN_Vous ne pouvez utiliser que des montures terrestres dans ce scénario|r.
--HERE
step
    #completewith next
    #label Confront Mathias Shaw.
    .zoneskip 37,1
    .isInScenario 1123
    >>|cRXP_WARN_Attendez la fin du RP|r.
    *|cRXP_WARN_Vous ne pouvez pas utiliser votre monture dans ce scénario|r
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isInScenario 1123
    .zoneskip 37,1
    #completewith Confront Mathias Shaw.
    .goto 37,32.05,49.23,40 >>Suivez la flèche
    .timer 45,RP
step
    #requires Confront Mathias Shaw.
    .goto 37,31.92,48.99
    .isOnQuest 42504
    .isInScenario 1123
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2548,1 --Confront Mathias Shaw.
step
    #completewith Obtain the Kingslayers
    +Passez en |cRXP_WARN_Camouflage|r et évitez les gardes, surtout ceux avec un œil au-dessus de leur tête qui détectent le camouflage.
step
    .isInScenario 1123
    .goto 84,72.35,88.62,15 >>Suivez la flèche
step
    #completewith next
    #label smoke bomb
    .isInScenario 1123
    .goto 84,70.05,83.16,15,0
    .goto 84,69.96,79.58,15,0
    .goto 84,68.03,79.8,15,0
    .goto 84,66.49,76.54,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Caisse|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    .isInScenario 1123
    #completewith smoke bomb
    #title |cFFFCDC00Suivez la flèche|r
    .goto 84,66.07,74.13,10 >>Entrez dans Hurlevent et la maison.
step
    #requires smoke bomb
    .isInScenario 1123
    .goto 84,66.81,73.89,8,0
    .goto 84,66.12,74.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Caisse|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    #completewith next
    #label Trader's Hall
    .goto 84,66.38,73.66,5,0
    .isInScenario 1123
    >>Utilisez la |T458733:0|t[Bombe fumigène] à l'intérieur de l'Hôtel des ventes. |cRXP_WARN_Il y a un bouton sous l'objectif de quête|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
step
    .isInScenario 1123
    #completewith Trader's Hall
    #title |cFFFCDC00Sortez de la maison|r
    .goto 84,65.6,74.23,5 >>Quittez la maison
step
    #requires Trader's Hall
    .goto 84,63.27,73.7,15,0
    .goto 84,61.65,72.46,10,0
    .goto 84,61.65,72.38
    .isInScenario 1123
    >>Utilisez la |T458733:0|t[Bombe fumigène] à l'intérieur de l'Hôtel des ventes. |cRXP_WARN_Il y a un bouton sous l'objectif de quête|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
    .usespell 214645
step
    .goto 84,61.76,72.68,5,0
    .goto 84,62.5,72.22,5,0
    .goto 84,62.7,68.93
    .isInScenario 1123
    >>Utilisez |T133644:0|t[Vol à la tire] sur les |cRXP_ENEMY_Gardes de la cité suspicieux|r
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
    >>Utilisez le |T666475:0|t[Message codé]. |cRXP_WARN_Il y a un bouton sous l'objectif de quête|r.
    .scenario 2711,2 --Read the Coded Message
step
    #label Garona
    .isInScenario 1123
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2558,1 --Meet Garona at the Pig and Whistle Tavern in Old Town.
step
    .goto 84,75.18,55.28
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte|r
    .scenario 2560,1 --Open the tavern door.
step
    .goto 84,75.96,53.37
    .isInScenario 1123
    >>Tuez les vagues d'ennemis.
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
    #title |cFFFCDC00Suivez la flèche|r
    >>Utilisez |T132307:0|t[Sprint] pour éviter le vent ou tuer le |cRXP_ENEMY_Ritualiste fatigué|r
    .scenario 2561,1 --Find the Herald in Stormwind Keep.
    .mob Fatigued Ritualist
step
    .goto 84,82.6,28.2
    .isInScenario 1123
    >>Tuez |cRXP_ENEMY_Melris Malagan|r
    .scenario 2562,1 --Assassinate Melris Malagan
    .timer 29.5,RP
    .mob Melris Malagan
step
    #label Obtain the Kingslayers
    .goto 84,82.83,27.93
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .complete 42504,1 --1/1 Obtain the Kingslayers
    .scenario 2563,1 --Wield the Kingslayers.
step
    .goto 84,86.9,37.2
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .scenario 2564,1 --Take the portal to Dalaran.
step
    .achievementComplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    .accept 45727 >>Acceptez la quête L’union des îles
    .turnin 45727 >>Rendez la quête L’union des îles
    .target Archimage Khadgar
step
    .achievementIncomplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    *|cRXP_WARN_Nécessite le niveau 30|r.
    .accept 45727 >>Acceptez la quête L’union des îles
    .turnin 45727 >>Rendez la quête L’union des îles
    .target Archimage Khadgar
step
    #completewith next
    #label Hall of Shadows
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    .turnin 42504 >>Rendez la quête La lame invisible
    .target Garona Miorque
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
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Heurtoir|r
    .gossipoption 45402 >>Parlez à |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires Hall of Shadows
    #completewith next
    #label Hall of Shadows2
    .goto 626,48.79,33.36,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    .turnin 42504 >>Rendez la quête La lame invisible
    .target Garona Miorque
step
    #requires Hall of Shadows
    #completewith Hall of Shadows2
    #title |cFFFCDC00Suivez la flèche|r
    .goto 626,43.32,63.3,10 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Torche|r pour sortir de la salle secrète.
step
    #requires Hall of Shadows2
    .goto 626,42.43,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    .turnin 42504 >>Rendez la quête La lame invisible
    .target Garona Miorque
]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Hors-la-loi
#displayname Arme prodigieuse : Hors-la-loi
#next a) Domaine de classe Voleur Partie 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Outlaw
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 44375 >>Acceptez la quête La dernière lame
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 44375 >>Rendez la quête La dernière lame
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 44034 >>Acceptez la quête Une autre lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 44034 >>Rendez la quête Une autre lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 40840 >>Acceptez la quête Une lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .skipgossipid 45230 --1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 40840 >>Rendez la quête Une lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    #completewith Board the Crimson Veil
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 626,41.28,74.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r
    .accept 40847 >>Acceptez la quête Un accord amiable
    .target Amiral de la flotte Téthys
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    *|cRXP_WARN_Reconnectez-vous si le PNJ n'est pas présent|r
    .accept 43262 >>Acceptez la quête Championne : Garona Miorque
    .turnin 43262 >>Rendez la quête Championne : Garona Miorque
    .target Garona Miorque
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Acceptez la quête Championne : Vanessa VanCleef
    .turnin 43261 >>Rendez la quête Championne : Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 40847
    .cast 311705 >>Utilisez la |T413582:0|t[Pierre de foyer dorée]
    .use 173528
step
    #completewith next
    #label Board the Crimson Veil
    #title |cFFFCDC00Suivez la flèche|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    #completewith Board the Crimson Veil
    .goto 210,40.95,74.28,10 >>Quittez la maison
    #title |cFFFCDC00Sortez de la maison|r
step
    #requires Board the Crimson Veil
    .goto 210,40.77,69.12
    #title |cFFFCDC00Suivez la flèche|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r
    .turnin 40847 >>Rendez la quête Un accord amiable
    .target Amiral de la flotte Téthys
    .accept 40849 >>Acceptez la quête Les lames d’effroi
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r
    .complete 40849,1 --1/1 Set sail (Optional)
    .skipgossipid 44882 -- Set sail for Azsuna!
    .target Amiral de la flotte Téthys
step
    #completewith Fly to Dalaran
    +Vous ne pouvez utiliser que des montures terrestres dans ce scénario.
step
    #completewith next
    #label the Horizon's Edge
    .isOnQuest 40849
    >>Tuez le |cRXP_ENEMY_Second DeGauza|r
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .isOnQuest 40849
    #completewith the Horizon's Edge
    .goto 630,60.73,68.3,20 >>Embarquez le navire
step
    #requires the Horizon's Edge
    .goto 630,61.13,68.67,10,0
    .goto 630,58.56,67.81
    .isOnQuest 40849
    >>Tuez le |cRXP_ENEMY_Second DeGauza|r et suivez la flèche.
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
    #title |cFFFCDC00Suivez la flèche|r
    .scenario 2117,1 --Find the Dread Admiral Eliza
    .timer 28,RP
step
    .goto 630,56.41,67.29
    .isInScenario 1012
    >>Tuez le |cRXP_ENEMY_Seigneur Barbe-Salée|r
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
    #title |cFFFCDC00Suivez la flèche|r
    >>Tuez TOUS les |cRXP_ENEMY_Forme-grains de l’effroi|r et évitez le |cRXP_WARN_Jet d'eau|r.
    .scenario 2133,1 --Pursue the Dread Admiral Eliza into the temple depths
    .mob Dread Squallshaper
step
    .goto 630,53.25,72.06
    .isInScenario 1012
    >>Tuez l' |cRXP_ENEMY_Amiral de l’effroi Eliza|r
    .scenario 2150,1 --Defeat Eliza
    .mob Dread Admiral Eliza
step
    .goto 630,53.5,71.89
    .isInScenario 1012
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .complete 40849,2 --1/1 Dreadblades obtained
    .scenario 2150,2 --Claim the Dreadblades
step
    #completewith next
    #label Fly to Dalaran
    .goto 630,54.17,71.4,10,0
    .goto 630,55.19,71.34,10,0
    .goto 630,56.04,68.68,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Griffon de la Voile sanglante|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .target Bloodsail Gryphon
step
    #completewith Fly to Dalaran
    .goto 630,56.25,67.9,35 >>Quittez le temple
step
    #requires Fly to Dalaran
    .goto 630,56.25,67.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Griffon de la Voile sanglante|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .timer 12,RP
    .target Bloodsail Gryphon
step
    .achievementComplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    .accept 45727 >>Acceptez la quête L’union des îles
    .turnin 45727 >>Rendez la quête L’union des îles
    .target Archimage Khadgar
step
    .achievementIncomplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Archimage Khadgar|r.
    *|cRXP_WARN_Nécessite le niveau 30|r.
    .accept 45727 >>Acceptez la quête L’union des îles
    .turnin 45727 >>Rendez la quête L’union des îles
    .target Archimage Khadgar
step
    #completewith next
    #hidewindow
    #label The Dreadblades
    .goto 627,52.61,34.02,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r
    .turnin 40849 >>Rendez la quête Les lames d’effroi
    .target Amiral de la flotte Téthys
step
    #completewith The Dreadblades
    #label Artifact Weapon: Outlaw
    .goto 627,54.51,31.42,5,0
    .goto 627,54.32,32.84,5,0
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Heurtoir|r
    .gossipoption 45402 >>Parlez à |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires The Dreadblades
    #completewith next
    #label The Dreadblades2
    .goto 626,48.76,33.81,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r
    .turnin 40849 >>Rendez la quête Les lames d’effroi
    .target Amiral de la flotte Téthys
step
    #requires The Dreadblades
    #completewith The Dreadblades2
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Torche|r pour ouvrir la porte de la salle secrète.
step
    #requires The Dreadblades2
    .goto 626,41.14,74.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r
    .turnin 40849 >>Rendez la quête Les lames d’effroi
    .target Amiral de la flotte Téthys
]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Finesse
#displayname Arme prodigieuse : Finesse
#next a) Domaine de classe Voleur Partie 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Subtlety
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 44375 >>Acceptez la quête La dernière lame
    .skipgossipid 45233
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 44375 >>Rendez la quête La dernière lame
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 44034 >>Acceptez la quête Une autre lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 44034 >>Rendez la quête Une autre lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .accept 40840 >>Acceptez la quête Une lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .turnin 40840 >>Rendez la quête Une lame digne de ce nom
    .target Seigneur Jorach Ravenholdt
step
    #completewith Lucian Trias'
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 626,41.04,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .accept 41919 >>Acceptez la quête Les ombres révélatrices
    .target Valeera Sanguinar
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garona Miorque|r
    *|cRXP_WARN_Reconnectez-vous si le PNJ n'est pas présent|r
    .accept 43262 >>Acceptez la quête Championne : Garona Miorque
    .turnin 43262 >>Rendez la quête Championne : Garona Miorque
    .target Garona Miorque
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Acceptez la quête Championne : Vanessa VanCleef
    .turnin 43261 >>Rendez la quête Championne : Vanessa VanCleef
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    #completewith next
    #label Lucian Trias'
    #hidewindow
    .goto 626,45.01,57.61,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #completewith Lucian Trias'
    .goto 626,29.48,22.39
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Heurtoir|r
step
    #requires Lucian Trias'
    #completewith next
    #label Lucian Trias'2
    .goto 627,45.6,28.53,10,0
    .goto 627,46.84,28.87,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #requires Lucian Trias'
    #completewith Lucian Trias'2
    .goto 627,53.16,33.12,10 >>Suivez la flèche
step
    #requires Lucian Trias'2
    .goto 627,54.39,31.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lucian Trias|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Val’zuun|r
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith Val'zuun's intel
    .goto 628,67.4,63.13,15 >>Entrez dans les Égouts
step
    #requires Val'zuun's intel
    .isOnQuest 41919
    .goto 628,67.4,63.13
    .gossipoption 45397 >>Parlez à |cRXP_FRIENDLY_Val’zuun|r
    .timer 26,RP
    .target Val'zuun
step
    #completewith next
    #label The Shadows Reveal
    .goto 628,73.57,65.69,5,0
    .goto 628,76.45,67.51,5,0
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith The Shadows Reveal
    .goto 628,75.2,65.08,5 >>Restez près de la sortie des égouts, |cRXP_WARN_ne vous éloignez pas trop|r
step
    #requires The Shadows Reveal
    .goto 628,74.05,63.8
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    .goto 627,27.36,64.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Desmond Tombe-Chagrin|r
    .target Desmond Gravesorrow
    .complete 41919,1 --1/1 Desmond Gravesorrow's intel
    .skipgossipid 45396 -- <Search the body for clues.
step
    #completewith next
    #label The Shadows Reveal2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Rendez la quête Les ombres révélatrices
    .target Valeera Sanguinar
    .accept 41920 >>Acceptez la quête Une question de subtilité
step
    #completewith The Shadows Reveal2
    #title|cFFFCDC00Entrez dans la maison|r
    .goto 627,51.62,68.76,5 >>Entrez dans la Maison
step
    #requires The Shadows Reveal2
    .goto 627,51.67,70.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Rendez la quête Les ombres révélatrices
    .target Valeera Sanguinar
    .accept 41920 >>Acceptez la quête Une question de subtilité
step
    #completewith next
    #label Rune of Portals
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Esquivez les Sentinelles des Arcanes et les tourbillons de feu|r.
    .complete 41920,1 --1/1 Rune of Portals
step
    #completewith Rune of Portals
    #title |cFFFCDC00Suivez la flèche|r
    .goto 627,56.97,46.87
    .cast 1784 >>Utilisez |T132320:0|t[Camouflage] avant de rentrer dans la maison.
    .usespell 1784
step
    #requires Rune of Portals
    .goto 627,53.60,47.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Esquivez les Sentinelles des Arcanes et les tourbillons de feu|r.
    .complete 41920,1 --1/1 Rune of Portals
    .target Arcane Sentry
step
    #completewith next
    #label Portals delivered
    .goto 628,74.43,64.05,5,0
    .goto 628,73.03,65.41,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Val’zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
step
    #completewith Portals delivered
    .goto 628,67.2,63.23,5 >>Entrez dans les Égouts
step
    #requires Portals delivered
    .goto 628,67.2,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Val’zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
    .skipgossipid 45398 -- <Hand the Rune of Portals to Val'zuun.>
step
    .goto 628,67.82,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41920 >>Rendez la quête Une question de subtilité
    .target Valeera Sanguinar
    .accept 41921 >>Acceptez la quête Le piège se referme
step
    #completewith next
    #label Akaari confronted
    .goto 628,73.34,65.55,5,0
    .goto 628,76.49,67.38,5,0
    >>Tuez |cRXP_ENEMY_Akaari Sombre-Sang|r
    .complete 41921,1 --1/1 Akaari confronted
step
    #completewith Akaari confronted
    .goto 627,59.7,48.09,5 >>Sortez des égouts
step
    #requires Akaari confronted
    .goto 627,49.89,37.93,5,0
    .goto 627,50.69,40.98,5,0
    .goto 627,49.48,41.21,5,0
    .goto 627,47.78,40.7
    >>Entrez dans la maison et montez à l'étage pour tuer |cRXP_ENEMY_Akaari Sombre-Sang|r
    #title|cFFFCDC00Entrez dans la maison|r
    .complete 41921,1 --1/1 Akaari confronted
    .mob Akaari Shadowgore
step
    .goto 627,49.48,41.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41921 >>Rendez la quête Le piège se referme
    .target Valeera Sanguinar
    .accept 41922 >>Acceptez la quête Traîtrise !
step
    #completewith next
    #label Traitor!
    .goto 627,48.3,40.41,5,0
    .goto 627,48.17,38.22,5,0
    .goto 628,74.48,63.87,5,0
    .goto 628,72.98,65.34,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Rendez la quête Traîtrise !
    .target Valeera Sanguinar
step
    #completewith Traitor!
    .goto 628,67.53,62.39,5 >>Entrez dans les Égouts
step
    #requires Traitor!
    .goto 628,67.53,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Rendez la quête Traîtrise !
    .target Valeera Sanguinar
step
    .goto 628,67.22,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Val’zuun|r
    .accept 41924 >>Acceptez la quête Crocs du Dévoreur
    .timer 15,RP
    .target Val'zuun
step
    .goto 628,66.73,61.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .complete 41924,1 --1/1 Use the Twisted Gateway
step
    #completewith next
    #label Akaari Shadowgore
    .isOnQuest 41924
    >>Dirigez-vous vers |cRXP_ENEMY_Akaari Sombre-Sang|r, esquivez les yeux comme ils vous sortiront de l'invisibilité.
    *Vainquez |cRXP_ENEMY_Akaari Sombre-Sang|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    #completewith Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    .cast 1784 >>Utilisez le |T132320:0|t[Camouflage] pour vous faufiler vers |cRXP_ENEMY_Akaari Sombre-Sang|r
    .usespell 1784
step
    #requires Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    >>Dirigez-vous vers |cRXP_ENEMY_Akaari Sombre-Sang|r, esquivez les yeux comme ils vous sortiront de l'invisibilité.
    *Vainquez |cRXP_ENEMY_Akaari Sombre-Sang|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .timer 5,RP
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    .cast 1784 >>Utilisez le |T132320:0|t[Camouflage] et |T133644:0|t[Vol à la tire] sur le |cRXP_ENEMY_Gardien d’âme|r.
    *|cRXP_WARN_Il y a un bouton sous l'objectif de quête|r.
    .scenario 2364,1 --Use Pick Pocket on the Soulkeeper.
    .usespell 1784
    .usespell 921
    .mob Soulkeeper
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Cage|r
    .scenario 2473,1 --Escape the Jailer's Prison.
step
    .goto 741,64.5,47.39
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Caisse|r
    .scenario 2473,2 --Reclaim your weapons.
step
    .goto 741,59.76,51.71
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte|r
    .scenario 2473,3 --Open the Holding Cell door.
    .timer 10,RP
step
    .goto 741,51.3,52.8
    .isInScenario 1078
    >>Tuez |cRXP_ENEMY_Xirus|r
    .scenario 2366,1 --Slay Inquisitor Xirus.
    .mob Xirus
step
    .goto 740,52.3,70.38,10,0
    .goto 740,58.4,66.7
    .isInScenario 1078
    #title |cFFFCDC00Suivez la flèche|r
    .goto 740,58.7,66.87
    .scenario 2367,2 --Find Akaari Shadowgore.
step
    .goto 740,63.61,53.24
    .isInScenario 1078
    >>Tuez |cRXP_ENEMY_Akaari Sombre-Sang|r |cRXP_WARN_lorsqu'elle invoque des clones d'elle-même, tuez-les en premier|r.
    .scenario 2368,1 --Kill Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    .goto 740,63.21,53.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .complete 41924,2 --1/1 Fangs of the Devourer
    .scenario 2369,1 --Wield the Fangs of the Devourer.
step
    #completewith next
    #hidewindow
    #label Fangs of the Devourer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Rendez la quête Crocs du Dévoreur
    .target Valeera Sanguinar
step
    #completewith Fangs of the Devourer
    .zoneskip 740,1
    .zone 628 >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .macro Leave Instance,236367 >> Quittez l'instance
step
    #requires Fangs of the Devourer
    #hidewindow
    #completewith next
    #label Fangs of the Devourer2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Rendez la quête Crocs du Dévoreur
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer
    #completewith Fangs of the Devourer2
    .zoneskip 626
    .goto 628,73.27,65.13,5,0
    .goto 628,76.51,67.51,5,0
    .goto 627,59.65,47.69,5 >>Sortez des égouts
step
    #requires Fangs of the Devourer2
    #hidewindow
    #completewith next
    #label Fangs of the Devourer3
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Rendez la quête Crocs du Dévoreur
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer2
    #completewith Fangs of the Devourer3
    #label Artifact Weapon: Subtlety
    .zoneskip 626
    .goto 627,54.5,31.45,5,0
    .goto 627,54.32,32.81
    .cast 6477 >>Cliquez sur le |cRXP_PICK_Heurtoir|r
    .gossipoption 45402 >>Parlez à |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
 step
    #requires Fangs of the Devourer3
    #hidewindow
    #completewith next
    #label Fangs of the Devourer4
    .goto 626,49.45,32.64,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Rendez la quête Crocs du Dévoreur
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer3
    #completewith Fangs of the Devourer4
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Torche|r pour ouvrir la porte de la salle secrète.
step
    #requires Fangs of the Devourer4
    .goto 626,40.88,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Rendez la quête Crocs du Dévoreur
    .target Valeera Sanguinar
]])
--Assassination 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Assassinat
#displayname Arme prodigieuse : Assassinat
#next ac) Domaine de classe Voleur Partie 2
#internal

<< Rogue

step
    #include a) Arme prodigieuse : Assassinat
]])
--Outlaw 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Hors-la-loi
#displayname Arme prodigieuse : Hors-la-loi
#next ac) Domaine de classe Voleur Partie 2
#internal

<< Rogue

step
    #include a) Arme prodigieuse : Hors-la-loi
]])
--Subtlety 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Finesse
#displayname Arme prodigieuse : Finesse
#next ac) Domaine de classe Voleur Partie 2
#internal

<< Rogue

step
    #include a) Arme prodigieuse : Finesse
]])

--Rogue Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Voleur Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Voleur
#chapter
#internal

<< Rogue

step
    #completewith Lethal Efficiency22
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Seigneur Jorach Ravenholdt|r
    .target Seigneur Jorach Ravenholdt
    .accept 40840 >>Acceptez la quête Une lame digne de ce nom
step
    .isOnQuest 40840
    .goto 626,41.7,75.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Amiral de la flotte Téthys|r, à |cRXP_FRIENDLY_Valeera Sanguinar|r, et à la |cRXP_FRIENDLY_Princesse Tess Grisetête|r.
    .complete 40840,2 --1/1 Valeera's plan considered
    .complete 40840,1 --1/1 Tethys' plan considered
    .complete 40840,3 --1/1 Tess' plan considered
    .skipgossipid 45256
    .skipgossipid 45235
    .skipgossipid 45103
    .target Amiral de la flotte Téthys
    .target Valeera Sanguinar
    .target Princesse Tess Grisetête
step
    .isQuestAvailable 40840
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Assassination >> Assassinat(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Outlaw >> Hors-la-loi(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Subtlety >> Finesse(DPS) Suite de quêtes
step
    #include ac) Order Hall Rogue Part 2@Honoring Success-Lethal Efficiency2
]])

-- --------- Shaman ---------

--Elemental
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Élémentaire
#displayname Arme prodigieuse : Élémentaire
#next a) Domaine de classe Chaman Partie 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Acceptez la quête Votre plein potentiel
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Élémentaire|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Rendez la quête Votre plein potentiel
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Acceptez la quête Élargir vos horizons
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Élémentaire|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Rendez la quête Élargir vos horizons
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Acceptez la quête L’appel des éléments
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Élémentaire|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389398
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 41335 >>Rendez la quête L’appel des éléments
    .target Thrall
step
    #completewith The Coming Storm
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .zoneskip 726,1
    .goto 726,34.18,77.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rehgar Rageterre|r
    .accept 43334 >>Acceptez la quête Tempête imminente
    .target Rehgar Rageterre
step
    .goto 725,34.07,74.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rehgar Rageterre|r
    .accept 43334 >>Acceptez la quête Tempête imminente
    .target Rehgar Rageterre
step
    .isOnQuest 43334
    .goto 726,34.18,77.80,-1
    .goto 725,34.07,74.37,-1
    .zone 379 >>Cliquez sur |cRXP_FRIENDLY_Graddoc|r
    .target Graddoc
step
    #label The Coming Storm
    .goto 379,66.90,56.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xuen|r
    .turnin 43334 >>Rendez la quête Tempête imminente
    .accept 43338 >>Acceptez la quête Le codex de Ra
    .target Xuen
step
    .goto 390,22.39,26.70
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 43338,1 --1/1 Travel to the Guo-Lai Halls
step
    .zoneskip 395
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,55.19,91.12,12 >>Entrez dans les Salles de Guo-Lai
step
    #completewith TheEdictsOfXA
    >>Tuez les |cRXP_ENEMY_Esprits Mogus|r dans les Salles de Guo-Lai
    *|cRXP_WARN_Évitez les |cRXP_ENEMY_Statues mogus|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    #completewith next
    #label TheEdictOfFireA
    >>Tuez |cRXP_ENEMY_Xioliang|r. Dépouillez-le pour |T1017867:0|t[|cRXP_LOOT_L'Edit de feu|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,47.43,81.40,15,0
    .goto 395,52.13,63.98,25,0
    .goto 395,67.44,68.62,25 >>Entrez dans la Chambre rituelle de Guo-Lai
step
    #hidewindow
    #completewith TheEdictOfFireA
    .goto 395,74.25,53.19,50 >>Suivez la flèche
step
    #requires TheEdictOfFireA
    .goto 395,74.83,51.02
    >>Tuez |cRXP_ENEMY_Xioliang|r. Dépouillez-le pour |T1017867:0|t[|cRXP_LOOT_L'Edit de feu|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    #label TheEdictOfStoneA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_La statue de Zhu de la pierre éternelle|r.
    >>Tuez |cRXP_ENEMY_Zhu de la pierre éternelle|r. Dépouillez-le pour |T442737:0|t[|cRXP_LOOT_L'Edit de pierre|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,64.19,66.71,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,33.16,20.93,15,0
    .goto 395,48.87,30.24,15 >>Entrez dans la Cache antique de Guo-Lai
step
    #hidewindow
    #completewith TheEdictOfStoneA
    .goto 395,48.87,30.24,50 >>Suivez la flèche
step
    #requires TheEdictOfStoneA
    .goto 395,48.87,30.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_La statue de Zhu de la pierre éternelle|r.
    >>Tuez |cRXP_ENEMY_Zhu de la pierre éternelle|r. Dépouillez-le pour |T442737:0|t[|cRXP_LOOT_L'Edit de pierre|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Zhu of the Eternal Stone
step
    #completewith next
    #label TheEdictOfStormA
    >>Tuez le |cRXP_ENEMY_Serpent-tonnerre Nalak’Ra|r. Dépouillez-le pour |T839911:0|t[|cRXP_LOOT_L'Edit de tempête|r].
    .complete 43338,4 --1/1 The Edict of Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    #title |cFFFCDC00Regardez la note|r
    .goto 395,32.94,21.14,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,51.81,57.95,33,0
    .goto 395,56.24,48.40,15,0
    .goto 395,64.67,23.05,15,0
    .goto 395,68.78,23.98,15,0
    .goto 395,69.57,15.71,15,0
    .goto 396,66.28,19.96
    .zone 396 >>Entrez dans la Salle du Serpent
    *|cRXP_WARN_NOTE:|r La première rune au centre est sûre, ne marchez que sur celles-ci.
step
    #requires TheEdictOfStormA
    .goto 396,57.75,50.75
    >>Tuez le |cRXP_ENEMY_Serpent-tonnerre Nalak’Ra|r. Dépouillez-le pour |T839911:0|t[|cRXP_LOOT_L'Edit de tempête|r].
    .complete 43338,4 --1/1 The Edict of the Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    #label TheCodexofRaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rehgar Rageterre|r
    .turnin 43338 >>Rendez la quête Le codex de Ra
    .accept 39771 >>Acceptez la quête La voix du tonnerre
    .target Rehgar Rageterre
step
    #completewith TheCodexofRaA
    #title |cFFFCDC00Regardez la note|r
    .goto 395,67.13,14.55,15,0
    .goto 395,70.22,18.57,15,0
    .goto 395,68.17,24.88,15,0
    .goto 395,63.00,25.50,15 >>Remontez de nouveau les escaliers
    *|cRXP_WARN_NOTE:|r La première rune au centre est sûre, ne marchez que sur celles-ci.
step
    #requires TheCodexofRaA
    .goto 395,53.19,61.45
    >>Tuez les |cRXP_ENEMY_Esprits Mogus|r dans les Salles de Guo-Lai
    *|cRXP_WARN_Évitez les |cRXP_ENEMY_Statues mogus|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    .goto 395,47.11,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rehgar Rageterre|r
    .turnin 43338 >>Rendez la quête Le codex de Ra
    .accept 39771 >>Acceptez la quête La voix du tonnerre
    .target Rehgar Rageterre
step
    #completewith next
    #label TheVoiceOfThunderA
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    #completewith TheVoiceOfThunderA
    #title Leave the Guo-Lai Halls
    .goto 390,22.55,27.08,15 >>|cRXP_WARN_Sortez des Salles de Guo-Lai|r
step
    #requires TheVoiceOfThunderA
    .goto 379,68.63,57.01
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    .isOnQuest 39771
    .goto 379,68.6,57.0
    .enterScenario 976 >>Entrez dans le scénario |cRXP_PICK_Maître des tempêtes|r
step
    .isInScenario 976
    .goto 379,68.6,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xuen|r
    .scenario 1992,1 --Speak with the White Tiger.
    .skipgossipid 45121
    .target Xuen
step
    .isInScenario 976
    #completewith next
    #label DefeatTheGiantslayerA
    >>Vainquez |cRXP_ENEMY_Sigurd le Tueur de géants|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    #completewith DefeatTheGiantslayerA
    .goto 379,69.32,52.72
    .gossipoption 45122 >>Parlez à |cRXP_FRIENDLY_Xuen|r
    .target Xuen
step
    #requires DefeatTheGiantslayerA
    .isInScenario 976
    .goto 379,69.7,53.0
    >>Vainquez |cRXP_ENEMY_Sigurd le Tueur de géants|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .timer 53,RP de Xuen
    .mob Sigurd the Giantslayer
step
    .isInScenario 976
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Xuen|r
    .goto 379,66.7,51.2
    .scenario 1999,1 --Speak with Xuen to Begin
    .target Xuen
    .skipgossipid 45039
step
    .isInScenario 976
    .goto 379,66.7,51.2
    >>Vainquez |cRXP_ENEMY_Chen Brune d’Orage|r et |cRXP_ENEMY_Li Li Brune d’Orage|r
    .scenario 1999,2 --Chen Stormstout Defeated
    .scenario 1999,3 --Li Li Stormstout Defeated
    .mob Chen Brune d'Orage
    .mob Li Li Brune d'Orage
step
    #completewith next
    #label WeaponsOfStormA
    .isInScenario 976
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Poing de Ra Den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    #completewith WeaponsOfStormA
    #title Entrez dans le temple
    .goto 379,68.60,45.89,15 >>Entrez dans le Temple du Tigre blanc
step
    #requires WeaponsOfStormA
    .isInScenario 976
    .goto 379,68.79,43.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Poing de Ra Den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
    .timer 25,Durée du RP
step
    .isInScenario 976
    .goto 379,68.8,43.7
    >>Tuez le |cRXP_ENEMY_Seigneur Kra'vos|r.
    .scenario 2079,1 --Defeat Lord Kra'vos
    .timer 27,Durée du RP
    .mob Low Inquisitor
    .mob Lord Kra'vos
step
    .goto 379,68.79,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Porte astrale menant au Maelström|r
    .complete 39771,3 --1/1 Return to the Maelstrom
step
    #optional
    .isQuestTurnedIn 41510
    .goto 726,34.15,77.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rehgar Rageterre|r
    .turnin 39771 >>Rendez la quête La voix du tonnerre
    .target Rehgar Rageterre
step
    .goto 726,33.48,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rehgar Rageterre|r
    .turnin 39771 >>Rendez la quête La voix du tonnerre
    .target Rehgar Rageterre
]])
--Enhancement
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Amélioration
#displayname Arme prodigieuse : Amélioration
#next a) Domaine de classe Chaman Partie 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Acceptez la quête Votre plein potentiel
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Amélioration|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Rendez la quête Votre plein potentiel
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Acceptez la quête Élargir vos horizons
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Amélioration|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Rendez la quête Élargir vos horizons
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Acceptez la quête L’appel des éléments
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Amélioration|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389399
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 41335 >>Rendez la quête L’appel des éléments
    .target Thrall
step
    #completewith Where the Hammer Falls
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .zoneskip 726,1
    .goto 726,34.51,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Mande-foudre Mylra|r.
    .accept 42931 >>Acceptez la quête Là où tombe le marteau
    .target Mande-foudre Mylra
step
    .goto 725,35.76,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Mande-foudre Mylra|r.
    .accept 42931 >>Acceptez la quête Là où tombe le marteau
    .target Mande-foudre Mylra
step
    #optional
    .zoneskip 726,1
    .goto 726,60.13,66.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Foudrebec|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Foudrebec
step
    .goto 725,35.48,77.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Foudrebec|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Foudrebec
step
    #label Where the Hammer Falls
    .goto 207,47.10,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 42931 >>Rendez la quête Là où tombe le marteau
    .target Thrall
    .accept 42932 >>Acceptez la quête Ce que sait la Pierre-Mère
step
    .goto 207,56.35,12.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therazane|r.
    .turnin 42932 >>Rendez la quête Ce que sait la Pierre-Mère
    .target Therazane
    .accept 42933 >>Acceptez la quête Délit de sales Troggs
    .accept 42935 >>Acceptez la quête Sauvetage des drakes de pierre
    .accept 42936 >>Acceptez la quête Histoire d’œufs
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
    >>Tuez les |cRXP_ENEMY_Troggs gangreroches|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #completewith StoneDrakesRescuedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Gardiens opalescents désassemblés|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label StoneDrakesRescuedA
    >>Tuez les |cRXP_ENEMY_Troggs gangreroches|r autour des |cRXP_FRIENDLY_Drakes de pierre|r.
    .complete 42935,1 --6/6 Stone Drakes Rescued
    .target Stone Drake
step
    #completewith OpalescentGuardiansRebuiltA
    >>Tuez les |cRXP_ENEMY_Troggs gangreroches|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #label OpalescentGuardiansRebuiltA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les |cRXP_PICK_Gardiens opalescents désassemblés|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label FelrockTroggsSlainA
    >>Tuez les |cRXP_ENEMY_Troggs gangreroches|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    .goto 207,31.22,20.94
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 42936,2 --5/5 Guardians Escorted to Aeosera
step
    .goto 207,56.35,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therazane|r.
    .turnin 42933 >>Rendez la quête Délit de sales Troggs
    .turnin 42935 >>Rendez la quête Sauvetage des drakes de pierre
    .turnin 42936 >>Rendez la quête Histoire d'œufs
    .accept 42937 >>Acceptez la quête Interrogatoire musclé à Rochepointe
    .target Therazane
step
    .goto 207,56.73,12.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Aeosera|r
    .complete 42937,1 --1/1 Fly Aeosera to Needlerock
    .timer 60,Durée du Vol
step
    .goto 207,31.71,31.29
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 42937,2 --1/1 Assault Needlerock with Aeosera
step
    .goto 207,25.24,30.33
    >>Attendez 60 secondes
step
    .goto 207,24.21,29.70
    >>Tuez |cRXP_ENEMY_Borlock des profondeurs|r.
    .complete 42937,3 --1/1 Borlock of the Deeps slain
    .mob Borlock of the Deeps
step
    .goto 207,56.36,12.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Therazane|r.
    .turnin 42937 >>Rendez la quête Interrogatoire musclé à Rochepointe
    .target Therazane
step
    .goto 207,56.54,12.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 40224 >>Acceptez la quête Le marteau des profondeurs
    .target Thrall
step
    .goto 207,56.39,12.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r vers les profondeurs Désagrégées
    .complete 40224,1 --1/1 Enter the Crumbling Depths
step
    .isOnQuest 40224
    .goto 207,56.39,12.78
    .enterScenario 950 >>Entrez dans le scénario |cRXP_PICK_La purge des Sondefiels|r.
step
    .isInScenario 950
    .goto 729,33.08,72.98,35,0
    .goto 729,37.17,72.79
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 1902,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    #loop
    .goto 729,42.73,72.45,30,0
    .goto 729,39.10,83.23,30,0
    >>Tuez les |cRXP_ENEMY_Diablotins dévorants|r.
    .scenario 1905,1 --Defeat all the Devouring Imps.
    .mob Devouring Imp
step
    .isInScenario 950
    .goto 729,48.80,78.32,35,0
    .goto 729,54.62,79.55,35,0
    .goto 729,59.60,82.33
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 1906,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    .goto 729,62.77,79.31
    >>>Tuez les |cRXP_ENEMY_Girevers corrompus|r.
    .scenario 1907,1 --Slay the Corrupted Gyreworm.
    .mob COrrupted Gyreworm
step
    .isInScenario 950
    .goto 729,62.71,67.05,35,0
    .goto 729,59.56,65.26
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 1908,1 --Follow the trail to find Geth'xun.
step
    .goto 729,54.30,54.58
    .isInScenario 950
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur les rochers entourant le |cRXP_PICK_Marteau-du-Destin|r.
    .scenario 1909,1 --Acquire the Doomhammer.
    .complete 40224,2 --Acquire the Doomhammer
step
    .isInScenario 950
    .goto 729,52.96,53.11
    >>Tuez |cRXP_ENEMY_Geth’xun|r.
    .scenario 1910,1 --Slay Geth'xun.
    .mob Geth'xun
step
    .isInScenario 950
    .goto 729,52.72,53.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_FRIENDLY_Mande-foudre Mylra|r.
    .scenario 1911,1 --Help Stormcaller Mylra.
    .target Mande-foudre Mylra
step
    .zoneskip 729,1
    #completewith next
    #label ReturnToTheMaelstromA
    #hidewindow
    .complete 40224,3 --1/1 Return to the Maelstrom
step
    #completewith ReturnToTheMaelstromA
    .goto 729,53.13,55.80
    .zone 207 >>Cliquez sur |cRXP_FRIENDLY_Foudrebec|r.
step
    #requires ReturnToTheMaelstromA
    .goto 207,56.39,12.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_FRIENDLY_Foudrebec|r
    .complete 40224,3 --1/1 Return to the Maelstrom
    .target Foudrebec
step
    .goto 726,34.52,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Mande-foudre Mylra|r.
    .turnin 40224 >>Rendez la quête Le marteau des profondeurs
    .target Mande-foudre Mylra
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Chaman Restauration
#displayname Arme prodigieuse : Restauration
#next a) Domaine de classe Chaman Partie 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Acceptez la quête Votre plein potentiel
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Rendez la quête Votre plein potentiel
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Acceptez la quête Élargir vos horizons
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Rendez la quête Élargir vos horizons
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Acceptez la quête L’appel des éléments
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Restauration|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389400
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .turnin 41335 >>Rendez la quête L’appel des éléments
    .target Thrall
step
    #completewith ThirdClueA
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 726,33.80,79.21,-1
    .goto 725,31.97,74.72,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Erunak Parlepierre|r.
    .accept 43644 >>Acceptez la quête Au plus profond
    .target Erunak Stonespeaker
step
    .goto 726,33.69,78.65,-1
    .goto 725,33.81,75.85,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Bulle de Vashj'ir|r.
    .complete 43644,1 --1/1 Travel to Vashj'ir with Erunak
    .target Bubble of Vashj'ir
step
    .goto 205,43.62,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Erunak Parlepierre|r.
    .turnin 43644 >>Rendez la quête Au plus profond
    .target Erunak Stonespeaker
    .accept 43645 >>Acceptez la quête Sur les traces de la parle-vague
step
    .goto 205,40.50,74.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Bâton d’Adelee|r.
    .complete 43645,1 --1/1 First Clue Found
step
    #completewith next
    #label ThirdClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Journal d’Adelee|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #title |cFFFCDC00Entrez dans la salle|r
    #completewith ThirdClueA
    .goto 205,33.10,68.76,10 >>|cRXP_WARN_Entrez dans la salle.|r
step
    #requires ThirdClueA
    .goto 205,33.08,67.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Journal d’Adelee|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #completewith next
    #label SecondClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre des vagues ancienne|r
    .complete 43645,2 --1/1 Second Clue Found
step
    #title |cFFFCDC00Sortez de la salle|r
    #completewith SecondClueA
    .goto 205,33.11,69.01,10 >>|cRXP_WARN_Sortez de la salle.|r
step
    #requires SecondClueA
    .goto 205,37.31,69.81,35,0
    .goto 205,39.15,56.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Pierre des vagues ancienne|r
    .complete 43645,2 --1/1 Second Clue Found
step
    .goto 205,43.60,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Erunak Parlepierre|r.
    .turnin 43645 >>Rendez la quête Sur les traces de la parle-vague
    .target Erunak Stonespeaker
    .accept 40341 >>Acceptez la quête Trône des marées : la puissance d’Azshara
    .goto 204,70.71,29.33,35,0
step
    .goto 204,70.91,29.74
    >>|cRXP_WARN_Vous pouvez utiliser une monture aquatique comme la |T133936:0|t[Tortue de mer].
    .complete 40341,1 --1/1 Travel to the Abyssal Maw
step
    .goto 204,69.18,25.52
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 40341,2 --1/1 Enter the Throne of Tides
step
    .isOnQuest 40341
    .goto 204,69.18,25.52
    .enterScenario 1066 >>Entrez dans le scénario |cRXP_PICK_La Reine sombre et la mer|r.
step
    .isInScenario 1066
    .goto 742,50.09,82.31
    >>Utilisez |T136044:0|t[Afflux de soins] pour soigner le |cRXP_FRIENDLY_Géant des mers|r.
    .scenario 2282,1 --Heal the Sea Giant.
    .target Grash
    .usespell 8004
step
    .isInScenario 1066
    .goto 742,49.93,82.67
    >>Tuez les |cRXP_ENEMY_Brutes nagas|r.
    .scenario 2282,2 --Kill the Naga Brutes.
step
    .isInScenario 1066
    .goto 742,50.04,82.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grash|r.
    .scenario 2282,3 --Recruit the Sea Giant.
    .target Grash
    .skipgossipid 45587
    .skipgossipid 45621
step
    .isInScenario 1066
    .goto 742,49.91,55.50
    >>Tuez les |cRXP_ENEMY_Makruras abyssaux frénétiques|r, les |cRXP_ENEMY_Imploratrices des marées zithreenai|r, et les |cRXP_ENEMY_
    .scenario 2283,1 --Defeat Adelee's Guards.
step
    .isInScenario 1066
    .goto 742,50.05,51.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_FRIENDLY_Parle-vague Adelee|r.
    .scenario 2283,2 --Rescue Adelee.
    .target Wavespeaker Adelee
step
    .isInScenario 1066
    .goto 742,49.88,54.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grash|r.
    .scenario 2284,1 --Ask Grash to Smash the Ice Wall
    .target Grash
    .skipgossipid 45543
step
    .isInScenario 1066
    .goto 742,49.94,42.15
    >>Tuez |cRXP_ENEMY_Kra'liss|r.
    .scenario 2284,2 --Defeat Kra'liss
    .mob Kra'liss
step
    .isInScenario 1066
    .goto 742,49.92,30.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Monter la bulle|r.
    .scenario 2286,1 --Use Erunak's spell to ascend the riptide.
step
    #title |cFFFCDC00Évitez les vagues|r
    .isInScenario 1066
    .goto 743,50.48,56.05
    >>|cRXP_WARN_Évitez les vagues et suivez la flèche.|r
    .scenario 2286,2 --Run through the wave gauntlet.
step
    .isInScenario 1066
    .goto 743,50.64,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Grash|r.
    .scenario 2287,1 --Ask Grash to destroy the ice wall.
    .target Grash
    .skipgossipid 45472
step
    .goto 743,50.53,42.91
    .isInScenario 1066
    >>Tuez la |cRXP_ENEMY_Dame Zithreen|r.
    .scenario 2287,2 --Slay Lady Zithreen.
    .mob Lady Zithreen
step
    .isInScenario 1066
    .goto 743,50.56,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Sharas'dal|r.
    .scenario 2288,1 --Pick up Sharas'dal.
    .complete 40341,3 --1/1 Acquire Sharas'dal
    .timer 35,Durée du RP
step
    .goto 743,50.57,42.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Bulle pour le Maelström|r.
    .complete 40341,4 --1/1 Return to the Maelstrom
step
    .goto 726,34.53,76.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à la |cRXP_FRIENDLY_Mande-foudre Mylra|r.
    .turnin 40341 >>Rendez la quête Trône des marées : la puissance d’Azshara
    .target Mande-foudre Mylra
]])
--Elemental 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Élémentaire
#displayname Arme prodigieuse : Élémentaire
#next ac) Domaine de classe Chaman Partie 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Élémentaire
]])
--Enhancement 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Amélioration
#displayname Arme prodigieuse : Amélioration
#next ac) Domaine de classe Chaman Partie 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Amélioration
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Chaman Restauration
#displayname Arme prodigieuse : Restauration
#next ac) Domaine de classe Chaman Partie 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Chaman Restauration
]])

--Shaman Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Chaman Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Chaman
#chapter
#internal

<< Shaman

step
    #completewith Azeroth Needs You2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Acceptez la quête L’appel des éléments
    .target Thrall
step
    .isQuestAvailable 41335
    .isQuestAvailable account,91955
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_IMPORTANT: Sélectionnez celui que vous avez déjà pour obtenir 10% d'expérience supplémentaire (ne fonctionne qu'une seule fois)|r
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Elemental >> Élémentaire(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Enhancement >> Amélioration(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman >> Restauration(Healer) Suite de quêtes
step
    #include ac) Order Hall Shaman Part 2@A Ring Reforged-Azeroth Needs You
step
    .zoneskip 726,1
    .goto 726,29.81,52.02
    .zone 627 >>Cliquez sur le |cRXP_PICK_Portail pour Dalaran|r
]])

-- --------- Warlock ---------

--Affliction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Affliction
#displayname Arme prodigieuse : Affliction
#next a) Domaine de classe Démoniste Partie 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_dans votre Domaine de classe|r.
    .accept 44089 >>Acceptez la quête Un arsenal amélioré
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Affliction|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389401
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Rendez la quête Votre plein potentiel
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_dans votre Domaine de classe|r.
    .accept 43984 >>Acceptez la quête Le tome s’ouvre à nouveau
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Affliction|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389401
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Rendez la quête Le tome s’ouvre à nouveau
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acceptez la quête Le grimoire des reliques interdites
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Affliction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389401
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Rendez la quête Le grimoire des reliques interdites
    .target Calydus
step
    #completewith Following the Curse
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Acceptez la quête Ulthalesh, la faux de Deuillevent
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Acceptez la quête Ulthalesh, la faux de Deuillevent
    .target Calydus
step
    .isOnQuest 40495
    .zone 47 >>Utilisez le |T254294:0|t[Parchemin du bois de la Pénombre]
    .use 173527
step
    .goto 47,77.45,35.87
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 40495,1 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r et combattez-le.
    .complete 40495,2 --1/1 Convince Revil to help.
    .timer 6,RP de Revil
    .target Revil Kost
    .skipgossipid 44918
step
    #label Following the Curse
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40495 >>Rendez la quête Ulthalesh, la faux de Deuillevent
    .accept 40588 >>Acceptez la quête Sur les traces de la malédiction
    .target Revil Kost
step
    .isOnQuest 40588
    #title |cFFFCDC00Restez près d'Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .isOnQuest 40588
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Escortez |cRXP_FRIENDLY_Revil Koût|r
step
    .isOnQuest 40588
    .goto 47,85.55,40.69
    .countdown 20 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title |cFFFCDC00Restez près d'Ariden|r
    .isOnQuest 40588
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Escortez |cRXP_FRIENDLY_Revil Koût|r
step
    .isOnQuest 40588
    .goto 42,44.33,34.54
    .countdown 20 >>Tuez les |cRXP_ENEMY_Cavaliers noirs|r
step
    #title Restez près d'Ariden
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Escortez |cRXP_FRIENDLY_Revil Koût|r
    .complete 40588,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40588 >>Rendez la quête Sur les traces de la malédiction
    .accept 40604 >>Acceptez la quête Les relents du passé
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Journal endommagé|r.
    .complete 40604,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Journal endommagé|r.
    .turnin 40604 >>Rendez la quête Les relents du passé
    .accept 40606 >>Acceptez la quête Complètement déboussolée
    .target Battered Journal
step
    .goto 42,52.13,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Boussole|r.
    .complete 40606,1 --1/1 Ariden's Compass
step
    .goto 42,52.42,34.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40606 >>Rendez la quête Complètement déboussolée
    .accept 40611 >>Acceptez la quête Le destin de Deuillevent
    .target Revil Kost
step
    #completewith next
    #hidewindow
    .cast 198335 >>Suivez la flèche
    .timer 20,RP
step
    .goto 42,35.57,35.52
    >>Utilisez le |T338784:0|t[|cRXP_WARN_Bouton d’action supplémentaire|r] (Réglage de la boussole).
    .complete 40611,1 --1/1 Attuned at Deadman's Crossing
step
    #completewith next
    #hidewindow
    .cast 198335 >>Suivez la flèche
    .timer 15,RP
step
    .goto 42,46.99,62.32
    >>Utilisez le |T338784:0|t[|cRXP_WARN_Bouton d’action supplémentaire|r] (Réglage de la boussole).
    .complete 40611,3 --1/1 Attuned at the bridge
step
    #completewith next
    #label TheFateOfDeadwindA
    >>Utilisez le |T338784:0|t[|cRXP_WARN_Bouton d’action supplémentaire|r] (Réglage de la boussole).
    .complete 40611,2 --1/1 Attuned at the church
step
    #title |cFFFCDC00Entrez dans l'église|r
    #completewith TheFateOfDeadwindA
    .goto 42,40.66,77.80,6 >>|cRXP_WARN_Suivez la flèche pour entrer dans l'église.|r
step
    #requires TheFateOfDeadwindA
    #completewith next
    #hidewindow
    .cast 198335 >>Suivez la flèche
    .timer 13,RP
step
    #requires TheFateOfDeadwindA
    .goto 42,40.82,78.50
    >>Utilisez le |T338784:0|t[|cRXP_WARN_Bouton d’action supplémentaire|r] (Réglage de la boussole).
    .complete 40611,2 --1/1 Attuned at the church
step
    .goto 42,49.46,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .turnin 40611 >>Rendez la quête Le destin de Deuillevent
    .accept 41155 >>Acceptez la quête Les Cavaliers noirs
    .target Revil Kost
step
    .isOnQuest 41155
    .goto 42,46.28,69.07
    .enterScenario 988 >>|cRXP_WARN_Entrez dans le scénario |cRXP_PICK_Les Cavaliers noirs|r|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 988
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Sautez en bas
step
    #requires KarazhanCatacombsA
    .isInScenario 988
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Entrez dans les catacombes|r
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 988
    #title Utilisez |T607512:0|t[Porte des démons]
    .goto 46,55.90,69.19
    >>Utilisez |T607512:0|t[Porte des démons] sur |cRXP_ENEMY_Ariden|r |cRXP_WARN_depuis le journal de quêtes|r.
    .scenario 2022,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 111771
step
    .isInScenario 988
    .goto 46,56.36,69.25
    >>Tuez |cRXP_ENEMY_Le Conservateur|r.
    .scenario 2023,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Suivez la flèche
    .timer 25,RP
step
    .isInScenario 988
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Ulthalesh|r. |cRXP_WARN_Attendez le temps du RP|r.
    .scenario 2024,1 --Ulthalesh found
step
    .isInScenario 988
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Suivez la flèche en haut des escaliers vers |cRXP_ENEMY_Ariden|r.
    .scenario 2025,1 --Ariden followed
    .timer 17,RP d'Ariden
step
    .isInScenario 988
    .goto 46,68.36,24.43
    >>Tuez |cRXP_ENEMY_Ariden|r.
    .scenario 2026,1 --Ariden defeated
    .timer 33,RP d'Ariden
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Apocalypse|r.
    .complete 41155,1 --1/1 Complete the Dark Riders scenario
    .complete 41155,2 --1/1 Ulthalesh claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    *|cRXP_WARN_Note:|r S'il est toujours en combat, tuez les mobs qu'il combat.
    .turnin 41155 >>Rendez la quête Les Cavaliers noirs
    .target Revil Kost
step
    .isQuestAvailable 40823
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Revil Koût|r.
    .accept 41156 >>Acceptez la quête La puissance possédée
    .target Revil Kost
step
    .zoneskip 46,1
    .cooldown item,250411,>0,1
    .zone 627 >>Utilisez la |T134419:0|t[Pierre de foyer du Cours du temps] pour vous rendre à Dalaran.
    .use 250411
step
    .isOnQuest 41156
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 41156 >>Rendez la quête La puissance possédée
    .target Calydus
]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Démonologie
#displayname Arme prodigieuse : Démonologie
#next a) Domaine de classe Démoniste Partie 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_dans votre Domaine de classe|r.
    .accept 44089 >>Acceptez la quête Un arsenal amélioré
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Démonologie|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389402
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Rendez la quête Votre plein potentiel
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_dans votre Domaine de classe|r.
    .accept 43984 >>Acceptez la quête Le tome s’ouvre à nouveau
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Démonologie|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389402
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Rendez la quête Le tome s’ouvre à nouveau
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acceptez la quête Le grimoire des reliques interdites
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Demonology artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389402
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Rendez la quête Le grimoire des reliques interdites
    .target Calydus
step
    #completewith Grave Dust
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Acceptez la quête Les composants du rituel
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Acceptez la quête Les composants du rituel
    .target Calydus
step
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    #optional
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Prenez le portail vers Dalaran.|r
step
    #optional
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Suivez le chemin pour sortir du canal.|r
step
    .isOnQuest 42128
    .zoneskip 628,1
    .goto 628,65.60,56.81,12,0
    .goto 628,77.31,68.50,10,0
    .goto 627,59.67,47.69
    .zone 627 >>|cRXP_WARN_Suivez le chemin pour sortir du canal.|r
step
    #label Grave Dust
    .goto 627,33.41,39.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Tombe récemment creusée|r.
    .complete 42128,1 --1/1 Grave Dust
step
    .goto 627,38.65,24.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Bidon d’huile surchauffée|r.
    .complete 42128,2 --1/1 Can of Overheated Oil
step
    .goto 627,48.51,38.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Eau-de-vie de prune des neiges vieillie|r.
    .complete 42128,3 --1/1 Aged Snowplum Brandy
step
    .goto 627,60.04,38.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Cerf docile|r.
    .complete 42128,4 --1/1 Stag Blood Sample
    .skipgossipid 45158
step
    #completewith next
    #label RitualReagentsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Rendez la quête Les composants du rituel
    .accept 42168 >>Acceptez la quête Contempler les ténèbres
    .target Calydus
step
    #title |cFFFCDC00Entrez dans la salle|r
    #completewith RitualReagentsA
    .goto 627,56.84,46.85,8 >>|cRXP_WARN_Suivez la flèche pour entrer dans la salle.|r
step
    #requires RitualReagentsA
    .goto 627,54.39,46.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Rendez la quête Les composants du rituel
    .accept 42168 >>Acceptez la quête Contempler les ténèbres
    .target Calydus
step
    .goto 627,53.73,47.31
    >>Utilisez le |T1020342:0|t[|cRXP_WARN_Bouton d’action supplémentaire|r] (Sombre communion)
    .complete 42168,1 --1/1 Scrying Ritual Perfomed
step
    .goto 627,53.50,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Thal'kiel|r.
    .complete 42168,2 --1/1 Skull of the Man'ari's location discovered
    .target Thal'kiel
    .skipgossipid 45512
    .skipgossipid 45513
    .skipgossipid 45546
step
    .goto 627,54.37,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 42168 >>Rendez la quête Contempler les ténèbres
    .accept 42125 >>Acceptez la quête Murmures sombres
    .timer 9,Le portail apparaît dans
    .target Calydus
step
    .goto 627,53.74,47.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail démoniaque de Calydus|r.
    .complete 42125,1 --1/1 Enter Calydus's Demonic Portal
step
    .isOnQuest 42125
    .goto 627,53.74,47.26
    .enterScenario 1097 >>Entrez le scénario |cRXP_PICK_Sombre Murmures|r.
step
    .isInScenario 1097
    .goto 680,25.64,61.87,20,0
    .goto 680,27.53,64.61
    >>Tuez les |cRXP_ENEMY_Tisse-destins érédars|r
    .scenario 2443,1 --Locate the Skull of the Man'ari
    .mob Eredar Doomweaver
step
    .isInScenario 1097
    .goto 680,27.50,64.74
    >>Tuez le |cRXP_ENEMY_Démon supérieur gangrelien|r.
    .scenario 2475,1 --Defeat the Felborn Overfiend
    .mob Felborn Overfiend
step
    .isInScenario 1097
    .goto 680,28.71,61.97,10,0
    .goto 680,29.16,61.32
    >>Utilisez la |T607512:0|t[Porte des démons] au-dessus de la barrière
    .scenario 2476,1 --Mephistroth's Barrier crossed
    .usespell 111771
step
    .isInScenario 1097
    .goto 680,30.27,60.56
    >>Tuez les forces des |cRXP_ENEMY_Démons|r et la |cRXP_ENEMY_Maîtresse de la souffrance Nikta|r et la |cRXP_ENEMY_Dame Tyrana|r à la fin.
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
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2478,1 --Interrupted Mephistroth's ritual
step
    .isInScenario 1097
    .goto 680,31.11,65.96
    >>Tuez |cRXP_ENEMY_Méphistroth|r.
    .scenario 2478,2 --Mephistroth Defeated
    .mob Méphistroth
step
    .goto 680,31.08,65.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Crâne du Man'ari|r.
    .complete 42125,2 --1/1 Obtain the Skull of the Man'ari
step
    .goto 680,31.36,65.90
    .isInScenario 1097
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail|r.
    .scenario 2502,1 --Portal of Thal'kiel used
step
    #optional
    .isQuestTurnedIn 40823
    .isOnQuest 42125
    .goto 627,34.87,45.45,10,0
    .goto 628,21.20,55.73,10,0
    .goto 628,29.53,51.96,10,0
    .goto 628,28.55,44.40
    .zone 717 >>Entrez dans les Égouts de Dalaran et cliquez sur le |cRXP_PICK_Portail vers la faille de Scareffroi|r
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,55.83,49.89,20,0
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Rendez la quête Murmures sombres
    .target Calydus
step
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Rendez la quête Murmures sombres
    .target Calydus
]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Destruction
#displayname Arme prodigieuse : Destruction
#next a) Domaine de classe Démoniste Partie 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_dans votre Domaine de classe|r.
    .accept 44089 >>Acceptez la quête Un arsenal amélioré
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Destruction|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389403
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Rendez la quête Votre plein potentiel
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 43984 >>Acceptez la quête Le tome s’ouvre à nouveau
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Ceci sélectionnera automatiquement l'arme prodigieuse de la spécialisation Destruction|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389403
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Rendez la quête Le tome s’ouvre à nouveau
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acceptez la quête Le grimoire des reliques interdites
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Destruction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389403
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Rendez la quête Le grimoire des reliques interdites
    .target Calydus
step
    #completewith Caer Darrow
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Acceptez la quête Trouver le sceptre
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Acceptez la quête Trouver le sceptre
    .target Calydus
step
    #label Caer Darrow
    .goto 22,66.83,75.18
    >>Utilisez le |T254294:0|t[Parchemin de Caer Darrow]
    .complete 43100,2 --1/1 Go to Caer Darrow
    .use 173526
step
    #title Trouver des informations sur le Conseil des ombres (1/3)
    .goto 22,69.03,77.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Registre d’Ur’dan|r.
    *|cRXP_WARN_NOTE:|r L'ordre de cette quête est fixe, ce qui signifie que vous devez la suivre dans cet ordre exact ou sinon les directions de la flèche seront incorrectes.
    .complete 43100,3,1 --1/3 Find information on the Shadow Council
step
    #title Trouver des informations sur le Conseil des ombres (2/3)
    .goto 22,69.40,77.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Lettre oubliée|r.
    *|cRXP_WARN_NOTE:|r L'ordre de cette quête est fixe, ce qui signifie que vous devez la suivre dans cet ordre exact ou sinon les directions de la flèche seront incorrectes.
    .complete 43100,3,2 --2/3 Find information on the Shadow Council
step
    #title Trouver des informations sur le Conseil des ombres (3/3)
    .goto 22,69.14,79.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Avis du conseil|r.
    *|cRXP_WARN_NOTE:|r L'ordre de cette quête est fixe, ce qui signifie que vous devez la suivre dans cet ordre exact ou sinon les directions de la flèche seront incorrectes.
    .complete 43100,3 --3/3 Find information on the Shadow Council
step
    .goto 22,69.94,74.01
    >>Tuez |cRXP_ENEMY_Jergosh l’Invocateur|r. Dépouillez-le pour le |T133738:0|t[|cRXP_LOOT_Livre de Medivh|r].
    .complete 43100,4 --1/1 Take the Book of Medivh from Jergosh
    .mob Jergosh the Invoker
step
    #completewith next
    #hidewindow
    .gossipoption 45857 >>Suivez la flèche
    .timer 25,RP de Calydus
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .complete 43100,5 --1/1 Speak with Calydus
    .target Calydus
    .skipgossipid 45857
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43100 >>Rendez la quête Trouver le sceptre
    .accept 43153 >>Acceptez la quête Un œil pour un sceptre
    .target Calydus
step
    .goto 22,69.26,79.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail vers Tol Barad|r.
    .complete 43153,1 --1/1 Take the Portal to Tol Barad
step
    .isOnQuest 43153
    .goto 22,69.26,79.21
    .enterScenario 1155 >>Entrez dans le scénario |cRXP_PICK_Un œil pour un sceptre|r.
step
    .isInScenario 1155
    .goto 773,42.70,40.04
    >>|cRXP_WARN_Suivez la flèche|r
    .scenario 2700,1 --Find the Shadow Council group.
step
    #completewith next
    #label SpeakWithAllarisAndNagazA
    .isInScenario 1155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Allaris et à Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    #title |cFFFCDC00Entrez dans la prison|r
    #completewith SpeakWithAllarisAndNagazA
    .goto 773,42.70,38.47,8 >>|cRXP_WARN_Suivez la flèche pour entrer dans la prison.|r
step
    #requires SpeakWithAllarisAndNagazA
    .isInScenario 1155
    .goto 773,42.64,35.61,8,0
    .goto 773,43.72,35.65,8,0
    .goto 773,43.76,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Allaris et à Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    .isInScenario 1155
    .goto 773,44.99,30.60,15,0
    .goto 773,48.64,31.16
    >>|cRXP_WARN_Suivez la flèche. Attendez la fin du RP|r.
    .scenario 2716,1 --Find Tyranis in D-Block
step
    .isInScenario 1155
    .goto 773,48.63,31.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Tyranis Malem|r.
    .scenario 2717,1 --Break Tyranis' chain or leave him
    .target Tyranis Malem
step
    .isInScenario 1155
    .goto 773,45.07,30.73
    >>|cRXP_WARN_Suivez la flèche. Attendez la fin du RP|r.
    .scenario 2718,1 --Continue searching the rest of the cell block.
step
    .goto 773,43.05,26.14
    .isInScenario 1155
    >>Tuez |cRXP_ENEMY_Nagaz|r.
    .scenario 2719,1 --Follow then kill Nagaz.
    .mob Nagaz
step
    .isInScenario 1155
    .goto 773,43.89,26.61,12,0
    .goto 773,42.68,30.57
    >>|cRXP_WARN_Suivez la flèche. Attendez la fin du RP|r.
    .scenario 2720,1 --Continue searching D-Block.
step
    .goto 773,39.53,30.76,15,0
    .goto 773,38.99,32.85
    .isInScenario 1155
    >>|cRXP_WARN_Suivez la flèche. Attendez la fin du RP|r.
    .scenario 2724,1 --Find the prison manifest.
step
    #completewith EnterBaradinHoldC
    #label EnterBaradinHoldA
    #hidewindow
    .isInScenario 1155
    .scenario 2725,1 --Enter Baradin Hold
step
    #title |cFFFCDC00Sortez de la prison|r
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldB
    .goto 773,40.19,30.27,10,0
    .goto 773,43.79,31.78,10,0
    .goto 773,43.64,35.79,8,0
    .goto 773,42.73,35.83,8,0
    .goto 773,42.68,39.66,10 >>|cRXP_WARN_Suivez la flèche pour sortir de la prison.|r
step
    #title |cFFFCDC00Entrez dans le Bastion de Baradin|r
    #requires EnterBaradinHoldB
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldC
    .goto 773,46.29,47.92,8,0
    .goto 773,47.59,48.18,8,0
    .goto 773,47.63,50.13,8 >>|cRXP_WARN_Suivez la flèche pour entrer dans le Bastion de Baradin.|r
step
    #requires EnterBaradinHoldA
    .isInScenario 1155
    .goto 773,47.66,52.69
    .scenario 2725,1 --Enter Baradin Hold
step
    .isInScenario 1155
    .goto 774,48.26,14.85
    >>Tuez |cRXP_ENEMY_Occul'tharon|r. |cRXP_WARN_Attendre la fin du RP.|r
    .scenario 2726,1 --Kill Occul'tharon and find the Eye of Dalaran.
    .complete 43153,2 --1/1 Find the Eye of Dalaran
    .mob Occul'tharon
step
    .goto 774,48.10,28.74,-1
    .goto 619,46.84,64.48,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail démoniaque|r.
    .complete 43153,3 --1/1 Return to Calydus in Dalaran
step
    .goto 627,74.09,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43153 >>Rendez la quête Un œil pour un sceptre
    .target Calydus
    .accept 43254 >>Acceptez la quête Rituel raté
step
    #completewith next
    #label RitualRuinationA
    #hidewindow
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith RitualRuinationA
    .goto 627,74.70,42.78
    .vehicle 110480 >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_FRIENDLY_Gangroptère|r.
    .target Fel Bat
step
    #requires RitualRuinationA
    .goto 619,55.32,63.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_FRIENDLY_Gangroptère|r.
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith next
    #hidewindow
    .goto 646,60.40,25.22,10 >>Suivez la flèche
    .timer 60,RP de Gul’dan
step
    .goto 646,55.79,63.01
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 43254,2 --1/1 Listen to Gul'dan
step
    .goto 646,55.91,62.89
    >>Tuez |cRXP_ENEMY_Allaris Narassin|r.
    .complete 43254,3 --1/1 Slay Allaris Narassin
    .mob Allaris Narassin
step
    .goto 646,60.17,25.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Sceptre de Sargeras|r.
    .complete 43254,4 --1/1 Take the Scepter of Sargeras
step
    .goto 619,55.74,63.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Autel de la Légion|r.
    .complete 43254,5 --1/1 Ruin the ritual
step
    .goto 619,55.50,63.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Portail démoniaque|r.
    .complete 43254,6 --1/1 Escape to Dalaran and meet Calydus
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Rendez la quête Rituel raté
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Rendez la quête Rituel raté
    .target Calydus
]])
--Affliction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Affliction
#displayname Arme prodigieuse : Affliction
#next ac) Domaine de classe Démoniste Partie 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Affliction
]])
--Demonology 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Démonologie
#displayname Arme prodigieuse : Démonologie
#next ac) Domaine de classe Démoniste Partie 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Démonologie
]])
--Destruction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Destruction
#displayname Arme prodigieuse : Destruction
#next ac) Domaine de classe Démoniste Partie 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Destruction
]])

--Warlock Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Démoniste Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Démoniste
#chapter
#internal

<< Warlock

step
    #completewith Ritssyn Flamescowl2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Acceptez la quête Le grimoire des reliques interdites
    .target Calydus
step
    .isQuestAvailable 40684
    .isQuestAvailable account,91955
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_IMPORTANT: Sélectionnez celui que vous avez déjà pour obtenir 10% d'expérience supplémentaire (ne fonctionne qu'une seule fois)|r
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Affliction >> Affliction(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Demonology >> Démonologie(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Destruction >> Destruction(DPS) Suite de quêtes
step
    #include ac) Order Hall Warlock Part 2@Dreadscar-Ritssyn Flamescowl
step
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Prenez le portail vers Dalaran.|r
step
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Suivez le chemin pour sortir du canal.|r
]])

-- --------- Warrior ---------

--Arms
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Armes
#displayname Arme prodigieuse : Armes
#next a) Domaine de classe Introduction à la campagne
#internal

<< Warrior

step
    #completewith Artifact Weapon: Arms
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Acceptez la quête Une légende de plus
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Rendez la quête Une légende de plus
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Acceptez la quête D’autres armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Rendez la quête D’autres armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Acceptez la quête Des armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Rendez la quête Des armes de légende
    .target Odyn
step
    #completewith Tirisfal Glades
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 41105 >>Acceptez la quête L’épée des rois
    .target Odyn
step
    #completewith next
    #label Tirisfal Glades
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    #completewith Tirisfal Glades
    .goto 695,58.37,25
    .gossipoption 44742 >>Parlez à |cRXP_FRIENDLY_Aerylia|r
    .timer 11,RP
    .target Aerylia
step
    #requires Tirisfal Glades
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    .isOnQuest 41105
    #title |cFFFCDC00Suivez la flèche|r
    .goto 18,13.5,56.65,100 >>Suivez la flèche
    *|cRXP_WARN_Si jamais vous êtes bloqué, reconnectez-vous|r
step
    .isOnQuest 41105
    #title |cFFFCDC00Suivez la flèche|r
    .goto 18,13.5,56.65
    .scenario 2237,1 --Investigate the camp.
step
    .isInScenario 1037
    .goto 18,13.5,56.65
    .isOnQuest 41105
    >>Tuez les |cRXP_ENEMY_Ritualistes du Crépuscule|r
    .scenario 2203,1 --Slay the ritualists torturing Thoradin.
    .mob Ritualiste du Crépuscule
    .timer 62,RP
step
    .goto 18,15.3,56.11
    .isInScenario 1037
    #title |cFFFCDC00Suivez la flèche|r
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 2204,1 --Follow and listen to Thoradin.
step
    .goto 20,37.46,13.1,10,0
    .goto 20,37.29,13.18,15,0
    .goto 20,35.33,20.04,15,0
    .goto 20,34.6,25.07,15,0
    .goto 20,37.1,45.3
    .isInScenario 1037
    #title |cFFFCDC00Suivez la flèche|r
    >>Entrez dans la tombe
    .scenario 2210,1 --Enter the Tomb of Tyr.
step
    #loop
    .goto 20,39.88,52.69,15,0
    .goto 20,39.29,58.06,15,0
    .goto 20,34.81,57.54,15,0
    .goto 20,35.1,51.59,15,0
    .isInScenario 1037
    >>Interrompez et étourdissez les |cRXP_ENEMY_Tentacules du Vide|r puis tuez-les.
    .scenario 2211,1 --Void Tendrils killed
    .usespell 107570
    .usespell 6552
    .timer 8,RP
    .mob Void Tendril
step
    .goto 20,37.51,54.88
    .isInScenario 1037
    >>Tuez |cRXP_ENEMY_Soth'ozz le Gardien|r et le |cRXP_ENEMY_Rejeton de chair|r
    .scenario 2212,1 --Kill Soth'ozz
    .mob Soth'ozz the Guardian
    .mob Flesh Spawn
step
    .goto 20,37.61,67.86,15,0
    .goto 20,41.57,82.39,15,0
    .goto 20,44.23,89.03,15,0
    .goto 20,47.55,76.18
    .isInScenario 1037
    #title |cFFFCDC00Suivez la flèche|r
    >>Tuez l' |cRXP_ENEMY_Illusionniste sans-visage|r
    .scenario 2213,1 --Reach the prison chamber.
    .mob Faceless Illusionist
step
    .goto 20,61.31,74.33
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur |cRXP_PICK_Zakajz le Corrupteur|r
    .scenario 2214,1 --Take the sword
    .timer 15,RP
    .mob Zakajz the Corruptor
step
    .goto 20,62.54,74.72
    .isInScenario 1037
    >>Tuez |cRXP_ENEMY_Zakajz le Corrupteur|r |cRXP_ENEMY_et attendez le temps du RP|r.
    .scenario 2215,1 --Defeat Zakajz
    .mob Zakajz the Corruptor
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r dans le cadavre.
    .scenario 2216,1 --Take Strom'kar, the Warbreaker.
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>Utilisez le |cRXP_WARN_Bouton d’action supplémentaire|r
    .scenario 2216,2 --Zakajz killed permanently.
    .usespell 206455
step
    .goto 20,58.01,74.18
    .isInScenario 1037
    #label Artifact Weapon: Arms
    >>Entrez dans la lumière et utilisez le |cRXP_WARN_Bouton d’action supplémentaire|r.
    .complete 41105,5 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.36,84.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 41105 >>Rendez la quête L’épée des rois
    .target Odyn
]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Fureur
#displayname Arme prodigieuse : Fureur
#next a) Domaine de classe Introduction à la campagne
#internal

<< Warrior

step
    #completewith Artifact Weapon: Fury
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Acceptez la quête Une légende de plus
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Rendez la quête Une légende de plus
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Acceptez la quête D’autres armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Rendez la quête D’autres armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Acceptez la quête Des armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Rendez la quête Des armes de légende
    .target Odyn
step
    #completewith Aerylia
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 695,58.35,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 40043 >>Acceptez la quête Le chasseur de héros
    .target Odyn
step
    #completewith next
    #label Aerylia
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .skipgossipid 44731
step
    #completewith Aerylia
    .goto 695,58.37,24.95
    .gossipoption 44731 >>Parlez à |cRXP_FRIENDLY_Aerylia|r
    .timer 30,RP
    .target Aerylia
step
    #requires Aerylia
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .timer 10,RP
step
    .isOnQuest 40043
    .countdown 10 >>|cRXP_WARN_Attendez la fin du RP|r.
step
    .goto 634,61.34,45.87
    .isOnQuest 40043
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur le |cRXP_PICK_Feu de joie|r.
    .scenario 1888,1 --Light the bonfire.
step
    #loop
    .goto 634,61.67,46.62,20,0
    .goto 634,61.1,45.11,20,0
    .isInScenario 944
    >>Tuez les vagues d'ennemis.
    .scenario 1889,2,1 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
step
    .goto 634,60.86,45.42
    .isInScenario 944
    >>Tuez les vagues d'ennemis.
    .scenario 1889,2,2 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    #loop
    .goto 634,60.95,46.73,25,0
    .goto 634,60.9,45.2,25,0
    .isInScenario 944
    >>Tuez les vagues d'ennemis.
    .scenario 1889,2,3 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    .goto 634,61.4,47.17
    .isInScenario 944
    >>Tuez l' |cRXP_ENEMY_Aspirant helarjar|r
    .scenario 1889,1,1 --Kill the leader of the attackers
    .mob Aspiring Helarjar
step
    .isInScenario 944
    .goto 634,61.35,48.52
    >>Tuez le |cRXP_ENEMY_Mystique nécromantique|r
    .scenario 1943,1,1 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,60.03,47.45
    >>Tuez le |cRXP_ENEMY_Mystique nécromantique|r
    .scenario 1943,1,2 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,59.37,46.7,15,0
    .goto 634,58.9,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Rune|r
    .scenario 1891,1,1 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,58.61,46.15,15,0
    .goto 634,58.63,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Rune|r
    .scenario 1891,1,2 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59,44.47,15,0
    .goto 634,58.62,43.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Rune|r
    .scenario 1891,1,3 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59.37,43.61,15,0
    .goto 634,60.03,43.23,15,0
    .goto 634,60.13,42.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur la |cRXP_PICK_Rune|r
    .scenario 1891,1,4 --Destroy the Prison Runestones
step
    .goto 634,59.54,43.82
    .isInScenario 944
    >>Vainquez |cRXP_ENEMY_Vigfus Vent-de-Lames|r |cRXP_WARN_faites attention à ne pas le tuer d'un seul coup|r.
    *|cRXP_WARN_Si les PNJs se bloquent, reconnectez-vous|r
    .scenario 1912,1 --Defeat Vigfus Bladewind
    .mob Vigfus Bladewind
step
    .isInScenario 944
    .goto 694/1220,1705.2569,3440.3982
    .goto 694/1511,1705.2569,3440.3982,20 >>Vainquez |cRXP_ENEMY_Vigfus Vent-de-Lames|r |cRXP_WARN_de nouveau|r.
step
    .isInScenario 944
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    >>|cRXP_WARN_Attendez la fin du RP|r.
    >>Tuez |cRXP_ENEMY_Vigfus Vent-de-Lames|r.
    .scenario 1913,1 --Chase and kill Vigfus
    .mob Vigfus Bladewinds
step
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    .isInScenario 944
    #label Artifact Weapon: Fury
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .scenario 1914,1 --Take the Warswords
    .complete 40043,2 --1/1 Deal with Vigfus Bladewind and his warband
step
    >>Quittez l'Instance (Clic droit sur votre portait) ou appuyez sur la macro.
    .complete 40043,3 --1/1 Return to Skyhold
    .macro Leave Instance,236367 >> Quittez l'instance
step
    .goto 695,58.35,84.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 40043 >>Rendez la quête Le chasseur de héros
    .target Odyn
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Arme prodigieuse : Guerrier Protection
#displayname Arme prodigieuse : Protection
#next a) Domaine de classe Introduction à la campagne
#internal

<< Warrior

step
    #completewith Artifact Weapon: Warrior Protection
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Acceptez la quête Une légende de plus
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Rendez la quête Une légende de plus
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Acceptez la quête D’autres armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Rendez la quête D’autres armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Acceptez la quête Des armes de légende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Rendez la quête Des armes de légende
    .target Odyn
step
    #completewith Axe and You Shall Receive
    +|cRXP_WARN_Assurez-vous d'avoir une arme utilisable équipée. Sinon, équipez-en une jusqu'à ce que vous obteniez votre arme prodigieuse, ou basculez sur une spécialisation qui a déjà la sienne.|r
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 39191 >>Acceptez la quête Héritage du Brise-Glace
    .target Odyn
step
    .isOnQuest 39191
    .goto 695,59.35,26.3
    .gossipoption 44315 >>Parlez à |cRXP_FRIENDLY_Hruthnir|r
    .timer 20,RP
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendant Durnolf|r
    .accept 44255 >>Acceptez la quête Il n’y a qu’à cogner
    .target Intendant Durnolf
step
    #label Axe and You Shall Receive
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à l' |cRXP_FRIENDLY_Intendant Durnolf|r
    .turnin 44255 >>Rendez la quête Il n’y a qu’à cogner
    .target Intendant Durnolf
step
    .goto 695,59.36,25.30
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .complete 39191,1,1 --1/1 Speak with Hruthnir
    .skipgossipid 44315
    .target Hruthnir
step
    #completewith Pillik
    .isOnQuest 39191
    +|cRXP_WARN_Vous pouvez utiliser le Vol dynamique ici|r.
step
    .goto 634,84.34,9.52
    .isOnQuest 39191
    >>Tuez |cRXP_ENEMY_Pillik|r
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
    >>Tuez les |cRXP_ENEMY_Tempêtes tourbillonnantes|r à la porte.
    .scenario 1829,1 --Find Magnar
    .mob Swirling Storms
step
    #completewith Find Magnar
    *|cRXP_WARN_Attendez que la porte s'ouvre|r.
    .goto 635,64.31,55.79,10,0
    .goto 635,53.54,56.17,15 >>Tuez le |cRXP_ENEMY_Sculpte-vent spectral|r pour vous débarrasser du vent.
    .usespell 57755
    .mob Spectral Windshaper
step
    #requires Find Magnar
    .goto 635,52.31,63.89
    .isInScenario 909
    >>Tuez les |cRXP_ENEMY_Tempêtes tourbillonnantes|r à la porte.
    .scenario 1829,1 --Find Magnar
    .timer 30,RP
step
    #completewith next
    #label Hruthnir
    .isInScenario 909
    >>Affrontez |cRXP_ENEMY_Magnar Brise-glace|r et les vagues d'ennemis.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    #completewith Hruthnir
    .goto 635,51.4,71.07
    .gossipoption 44546 >>Parlez à |cRXP_FRIENDLY_Hruthnir|r
    .timer 85,RP
    .target Hruthnir
step
    #requires Hruthnir
    .goto 635,50.59,87.12
    .isInScenario 909
    >>Affrontez |cRXP_ENEMY_Magnar Brise-glace|r et les vagues d'ennemis.
    *Tuez le |cRXP_ENEMY_Sculpte-vent spectral|r pour vous débarrasser du vent.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    .isInScenario 909
    .goto 635,50.12,82.45
    >>|cRXP_WARN_Attendez la fin du RP|r.
    .scenario 1869,1
    .mob Magnar Icebreaker
    .mob Spectral Windshaper
step
    .goto 635,49.95,82.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tCliquez sur l' |cRXP_PICK_Arme|r.
    .complete 39191,2 --1/1 Deal with Magnar Icebreaker
    -- .scenario 1833,1
step
    #label Artifact Weapon: Warrior Protection
    .goto 635,49.95,82.61
    >>Utilisez le |cRXP_WARN_Bouton d’action supplémentaire|r
    .complete 39191,3 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.35,84.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .turnin 39191 >>Rendez la quête Héritage du Brise-Glace
    .target Odyn
]])
--Arms 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Arme prodigieuse : Armes
#displayname Arme prodigieuse : Armes
#next ac) Domaine de classe Guerrier Partie 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Armes
]])
--Fury 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arme prodigieuse : Fureur
#displayname Arme prodigieuse : Fureur
#next ac) Domaine de classe Guerrier Partie 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Fureur
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Arme prodigieuse : Guerrier Protection
#displayname Arme prodigieuse : Protection
#next ac) Domaine de classe Guerrier Partie 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Arme prodigieuse : Guerrier Protection
]])

--Warrior Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Domaine de classe
#name a) Domaine de classe Guerrier Partie 1
#displayname |cFF00CCFF1|r - Introduction au Domaine de classe|r
#next ac) Domaine de classe Guerrier
#chapter
#internal

<< Warrior

step
    #completewith Accept The Eye of Odyn2
    #hidewindow
    +test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Odyn|r
    .accept 40579 >>Acceptez la quête Des armes de légende
    .target Odyn
step
    .isQuestAvailable 40579
    +Sélectionnez l'un des guides suivants pour le moment :
    *|cRXP_WARN_Vous pourrez faire les autres suites de quêtes plus tard|r
    *|cFFFF0000Vous ne pouvez pas progresser si vous n'en sélectionnez pas un|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arms >> Armes(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fury >> Fureur(DPS) Suite de quêtes
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection >> Protection(Tank) Suite de quêtes
step
    #include ac) Order Hall Warrior Part 2@OrderHallPart2Start1-Accept The Eye of Odyn
]])
