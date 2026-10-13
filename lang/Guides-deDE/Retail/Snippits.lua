if GetLocale() ~= "deDE" then return end
-- #############################################
-- #                  MIDNIGHT                 #
-- #############################################

--GC: Stormwind Quests
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Geschwindigkeit Leveling
#name a) Sturmwind Quests
#internal

step
    .goto 84,63.79,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renato Gallina|r
    .accept 332 >>Akzeptiert die Quest Weinladen-Werbung
    .target Renato Gallina
step
    .goto 84,62.32,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harlan Bagley|r
    .accept 333 >>Akzeptiert die Quest Harlan braucht Nachschub
    .target Harlan Bagley
step
    .goto 84,58.10,67.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rema Schneider|r
    .turnin 333 >>Gebt die Quest Harlan braucht Nachschub ab
    .target Rema Schneider
    .accept 334 >>Akzeptiert die Quest Eine Lieferung für Thurman
step
    .goto 84,60.26,76.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Suzetta Gallina|r
    .turnin 332 >>Gebt die Quest Weinladen-Werbung ab
    .target Suzetta Gallina
step
    .goto 84,52.58,83.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thurman Schneider|r
    .turnin 334 >>Gebt die Quest Eine Lieferung für Thurman ab
    .target Thurman Schneider

]])
--Housing Alliance
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Geschwindigkeit Leveling
#name a) Behausung Einweisung Allianz
#internal

step
    >>Drückt das Makro "In the Aktiv Gegenstände Frame", um das Housing-Tutorial zu starten
    .accept 91863 >>Akzeptiert die Quest Mein erstes eigenes Zuhause
    .macro House Teleport, 975747 >>House Teleportieren
step
    .goto 2352,53.13,40.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyssabel Dawnpetal|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135761
    .skipgossipid 135770
    .target Lyssabel Dawnpetal
step
    >>Kauft an available House
    .complete 91863,4 --1/1 Acquire a house

--teleport unlock


step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyssabel Dawnpetal|r |cRXP_WARN_neben euch|r.
    .turnin 91863 >>Gebt die Quest Mein erstes eigenes Zuhause ab
    .accept 94455 >>Akzeptiert die Quest Endlich zu Hause
    .target Lyssabel Dawnpetal
step
    >>Betretet von Euch House.
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Gebt die Quest Endlich zu Hause ab
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Hoch Tides" Ren|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Hoch Tides" Ren|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Benutzt |T742183:0|t[Kissen des Priesters von Sethraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tocho Cloudhide|r.
    .turnin 94210 >>Gebt die Quest Das Nest polstern ab
    .target Tocho Cloudhide
    .accept 94379 >>Akzeptiert die Quest Der alte Herd
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rotha|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Housing Horde
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Geschwindigkeit Leveling
#name a) Behausung Einweisung Horde
#internal

<< Horde

step
    >>Drückt das Makro "In the Aktiv Gegenstände Frame", um das Housing-Tutorial zu starten
    .accept 91863 >>Akzeptiert die Quest Mein erstes eigenes Zuhause
    .macro House Teleport, 975747 >>House Teleportieren
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tocho Cloudhide|r.
    .complete 91863,1 --1/1 Greet the steward
    .complete 91863,2 --1/1 Ask the steward to join you
    .skipgossipid 135727
    .skipgossipid 135740
step
    >>Kauft an available House
    .complete 91863,4 --1/1 Acquire a house
step
    .goto 2351,56.84,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tocho Cloudhide|r |cRXP_WARN_neben euch|r.
    .turnin 91863 >>Gebt die Quest Mein erstes eigenes Zuhause ab
    .accept 94455 >>Akzeptiert die Quest Endlich zu Hause
    .target Tocho Cloudhide

--teleport unlock


step
    >>Betretet von Euch House.
    .complete 94455,1 --1/1 Enter your house via the front door
    .turnin 94455 >>Gebt die Quest Endlich zu Hause ab
step
    .goto 2351,54.11,59.08
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 94210,1 --1/1 Visit merchants selling local decor
step
    .goto 2351,53.52,58.50
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 94210,3 --1/1 Visit merchants selling elven decor
step
    .goto 2351,53.67,57.57
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 94210,2 --1/1 Visit merchants selling flora decor
step
    .goto 2351,53.69,57.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Altariath|r.
    .complete 94210,4 --1/1 Ask the Last Architect about other decor sources
    .skipgossipid 137162
    .target Altariath
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Hoch Tides" Ren|r.
    .complete 94210,5 --1/1 Visit the smugglers
    .target "High Tides" Ren
step
    .goto 2351,39.84,72.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Hoch Tides" Ren|r.
    .complete 94210,6 --1/1 Buy Sethraliss Priest's Pillow
    .skipgossipid 137315
    .buy 244778,1
    .target "High Tides" Ren
step
    >>Benutzt |T742183:0|t[Kissen des Priesters von Sethraliss]
    .complete 94210,7 --1/1 Add Sethraliss Priest's Pillow to House Chest
    .use 244778
step
    .goto 2351,55.30,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tocho Cloudhide|r.
    .turnin 94210 >>Gebt die Quest Das Nest polstern ab
    .target Tocho Cloudhide
    .accept 94379 >>Akzeptiert die Quest Der alte Herd
step
    .goto 2351,53.52,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rotha|r.
    .complete 94379,1 --1/1 Visit the general contractor
    .target Rotha
]])
--Darkmoon Faire
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Geschwindigkeit Leveling
#name a) DMF
#internal

step << Alliance
    #completewith next
    #label ProfessionsDmf1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Erlernen |T4620669:0|t[Alchemie]
    .dmf
step << Alliance
    #completewith ProfessionsDmf1
    .goto 37,41.95,67.16
    >>Benutzt das Makro im "Aktiv Gegenstände Frame", um |T4620679:0|t[Bergbau] zu verlernen.
    .macro Unlearn Mining,4620679 >>Verlernen Bergbau
    .train 2575,3
    .subzoneskip 37,1
    .isOnQuest 7905
step << Alliance
    #requires ProfessionsDmf1
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 2259 >>Erlernen |T4620669:0|t[Alchemie]
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
    .train 45357 >>Erlernen |T4620676:0|t[Inschriftenkunde]
    .dmf
step << Alliance
    #completewith ProfessionsDmf2
    .goto 37,41.95,67.16
    >>Benutzt das Makro im "Aktiv Gegenstände Frame", um |T4620675:0|t[Kräuterkunde] zu verlernen.
    .macro Unlearn Herbalism,4620675 >>Verlernen Kräuterkunde
    .subzoneskip 37,1
    .isOnQuest 7905
    .train 2366,3
step << Alliance
    #requires ProfessionsDmf2
    .goto 37,41.95,67.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farner|r.
    .train 45357 >>Erlernen |T4620676:0|t[Inschriftenkunde]
    .skipgossipid 38859
    .skipgossipid 38890
    .skipgossipid 39321
    .target Lien Farner
    .subzoneskip 37,1
    .isOnQuest 7905
    .dmf
step << Alliance
    .goto 37,41.89,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharynn Bouden|r.
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
    .zone 407 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kae Ti|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29451 >>Gebt die Quest Der Meisterstratege ab
    .isOnQuest 29451
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29456 >>Gebt ein erbeutetes Banner ab
    .isOnQuest 29456
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29457 >>Gebt die Quest Das Insigne des Feindes ab
    .isOnQuest 29457
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29458 >>Gebt die Quest Das erbeutete Tagebuch ab
    .isOnQuest 29458
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29443 >>Gebt die Quest Ein merkwürdiger Kristall ab
    .isOnQuest 29443
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29444 >>Gebt die Quest Ein exotisches Ei ab
    .isOnQuest 29444
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29445 >>Gebt die Quest Ein faszinierender Zauberfoliant ab
    .isOnQuest 29445
    .zoneskip 407,1
    .dmf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Professor Paleo|r.
    .turnin 29446 >>Gebt eine wundersame Waffe ab
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gelvas Grimegate|r
    .turnin 7905 >>Gebt die Quest Der Dunkelmond-Jahrmarkt ab
    .target Gelvas Rußgatter
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.89,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stamp Thunderhorn|r.
    .accept 29509 >>Akzeptiert die Quest Wie der Frosch knusprig wird
    .target Stampftritt Thunderhorn
    .train 2550,3
    .itemcount 30817,5
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Benutzt |T133642:0|t[Plump Frogs].
    .collect 72056,5,29509,1,-1 --Plump Frogs (5)
    .collect 30817,5,29509,1,-1 --Simple Flour (5)
    .collect 72057,5,29509,1 --Breaded Frog (5)
    .train 2550,3
    .use 72056 --Plump Frog
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>Benutzt |T237579:0|t[Breaded Frogs].
    .collect 72057,5,29509,1,-1 --Breaded Frog (5)
    .complete 29509,1 --5/5 Crunchy Frog
    .use 72057 --Breaded Frog
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,52.88,67.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stamp Thunderhorn|r.
    .turnin 29509 >>Gebt die Quest Wie der Frosch knusprig wird ab
    .target Stampftritt Thunderhorn
    .train 2550,3
    .zoneskip 407,1
    .dmf
step
    .goto 407,50.54,69.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sylannia|r.
    .accept 29506 >>Akzeptiert die Quest Eine prickelnde Mischung
    .collect 19299,5,29506,1 --Fizzy Faire Drinks (5)
    .buy 29506,5
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .train 2259,3
step
    .goto 407,50.54,69.56
    >>Benutzt |T132793:0|t[Cocktail Shaker].
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sylannia|r.
    .turnin 29506 >>Gebt die Quest Eine prickelnde Mischung ab
    .target Sylannia
    .zoneskip 407,1
    .dmf
    .isOnQuest 29506
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_1|r].
    .turnin 29445 >>Gebt die Quest Ein faszinierender Zauberfoliant ab
    .target Sayge
    .zoneskip 407,1
    .isOnQuest 29445
    .dmf
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_2|r].
    .accept 29515 >>Akzeptiert die Quest Ein Blick in die Zukunft
    .target Sayge
    .zoneskip 407,1
    .dmf
    .train 45357,3
step
    .goto 407,53.23,75.82
    .aura 23768 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sayge|r [|cRXP_WARN_3|r].
    .skipgossipid 31569
    .skipgossipid 31565
    .skipgossipid 30027
    .zoneskip 407,1
    .dmf
step
    .goto 407,53.23,75.82
    >>Benutzt |T413571:0|t[Bundle of Exotic Herbs].
    .collect 71972,1,29515,1
    .use 71971
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>Benutzt |T237061:0|t[Prophetic Tinte].
    .collect 39354,5,29515,1,-1 --Light Parchment
    .complete 29515,1 --5/5 Fortune
    .use 71972
    .zoneskip 407,1
    .dmf
    .isOnQuest 29515
step
    .goto 407,53.23,75.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sayge|r.
    .turnin 29515 >>Gebt die Quest Ein Blick in die Zukunft ab
    .target Sayge
    .zoneskip 407,1
    .dmf
step
    .goto 407,51.11,82.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yebb Neblegear|r.
    .turnin 29444 >>Gebt die Quest Ein exotisches Ei ab
    .target Yebb Nabetand
    .zoneskip 407,1
    .dmf
    .isOnQuest 29444
step << Alliance
    .isOnQuest 65436
    >>Benutzt |T134309:0|t[Verlorene Drachenschuppe] zum Teleportieren nach Sturmwind.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .dmf
step << Horde
    .isOnQuest 65435
    >>Benutzt |T134309:0|t[Verlorene Drachenschuppe], um euch nach Orgrimmar zu teleportieren.
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
#group RestedXP Geschwindigkeit Leveling
#name a) GC Chromiezeit Turm
#internal


step << Alliance
    #completewith next
    #label The Legion Returns
    .goto 84,49.19,87.25,8,0
    .goto 84,49,86.94,8,0
    .goto 84,48.66,87.49,8,0
    .goto 84,49.11,87.64,8,0
    .goto 84,49.42,86.83,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Hero's Call An Bord gehen|r
    .accept 40519 >>Akzeptiert die Quest Legion: Die Legion kehrt zurück
    .choose 1851120
step << Alliance
    #completewith The Legion Returns
    .goto 84,56.257,17.311,812 >>Verlasst Magierturm
step << Alliance
    #requires The Legion Returns
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Hero's Call An Bord gehen|r
    .accept 40519 >>Akzeptiert die Quest Legion: Die Legion kehrt zurück
    .choose 1851120
step << Alliance
    .goto 84,62.21,29.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Hero's Call An Bord gehen|r
    .accept 62567 >>Akzeptiert die Quest Abenteurer gesucht: Chromies Aufruf
    .choose 1668214
step << Alliance
    .goto 84,56.26,17.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r.
    .turnin 62567 >>Gebt die Quest Abenteurer gesucht: Chromies Aufruf ab
    .target Chromie
step << Alliance
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Betretet Chromiezeit
    .chromietime 16
    .skipgossipid 51901
    .skipgossipid 51902
    .target Chromie
step << Alliance
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wrathion|r.
    .accept 65436 >>Akzeptiert die Quest Die Dracheninseln warten
    .target Furorion
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
    >>Benutzt |T134309:0|t[Verlorene Drachenschuppe] zum Teleportieren nach Sturmwind.
    .complete 65436,1 --1/1 Lost Dragonscale used to teleport to near Wrathion's location (Optional)
    .nodmf
]])
--GC Alliance: Chromie Time Normal
RXPGuides.RegisterGuide([[
#retail
#version 4
#group RestedXP Geschwindigkeit Leveling
#name a) GC Chromiezeit (PvE)
#internal

step
    #label ChromieTime
    .isQuestAvailable 70122
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r.
    -- .complete 53500,1 --Talk to Chromie (1)
    -- .accept 65436 >>Accept The Dragon Isles Await
    .cast 452213 >>Betretet Chromiezeit
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Hero's Call An Bord gehen|r
    .accept 40519 >>Akzeptiert die Quest Legion: Die Legion kehrt zurück
    .choose 1851120
step
    #label CallBoardStart3
    .goto 84,79.81,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wrathion|r.
    .accept 65436 >>Akzeptiert die Quest Die Dracheninseln warten
    .target Furorion
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
    >>Benutzt |T134309:0|t[Verlorene Drachenschuppe] zum Teleportieren nach Sturmwind.
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
#group RestedXP Krieg Within Endspiel
#name a) DawnBreakerTeleport
#internal

step
    .zoneskip 2215
    .zone 2359 >>Öffnet den Dungeonbrowser, navigiert zu Anhänger Dungeons und meldet euch für |cRXP_WARN_'Die Morgenbringer'|r an.
step
    .zoneskip 2215
    .gossipoption 124142 >>Sprecht mit |cRXP_FRIENDLY_Generalin Stahlstoß|r im Morgenbringer. |cRXP_WARN_Sie sollte vom Eingang aus sichtbar sein. Benutzt den Aktiv-Targets-Rahmen, um sie zu markieren.|r
    .target General Steelstrik
]])
--Phase Diving
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Krieg Within Loremaster
#name a) Phasentauchen Freischalten Befreit
#internal


step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hashim|r
    .turnin 90938 >>Gebt die Quest Ein Sprung durch die Leere ab
    .target Hashim
    .isOnQuest 90938
step
    .isQuestTurnedIn account,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>Rüstet |T7110834:0|t[Reshiiwickel] aus
    .use 235499
step
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hashim|r
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>Rüstet |T7110834:0|t[Reshiiwickel] aus
    .use 235499
    .subzoneskip 15807,1
step
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Akzeptiert die Quest Eine andere Welt
    .target Shad'anis
step
    .isOnQuest 89380
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89380 >>Gebt die Quest Eine andere Welt ab
    .accept 89343 >>Akzeptiert die Quest Die ungebundene Leere
    .target Shad'anis
step
    .goto 2371,50.41,36.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Phase Medium|r
    .complete 89343,2 --1/1 Untethered Space entered
step
    .goto 2371,50.41,36.40
    >>Benutzt |T4913234:0|t[|cRXP_WARN_ExtraActionButton|r]
    *|cRXP_WARN_Meldet euch neu an, falls ihr die Quest nicht abgeben könnt, nachdem ihr |cRXP_WARN_den ExtraActionButton|r benutzt habt|r
    .complete 89343,3 --1/1 Return to Normal Space
step
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89343 >>Gebt die Quest Die ungebundene Leere ab
    .accept 89344 >>Akzeptiert die Quest Was Euch nicht sieht
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
    .aura 1214374,1 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Phase Medium|r
step
    #requires WhatDoesntSeeYouA
    #completewith next
    >>Tötet |cRXP_ENEMY_Untethered Observers|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Freigelassener Beobachter
step
    #requires WhatDoesntSeeYouA
    .goto 2371,49.10,37.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Phase Energie|r
    .complete 89344,2 --1/1 Phase Energy collected
step
    #loop
    .goto 2371,48.33,37.15,30,0
    .goto 2371,49.39,36.27,35,0
    .goto 2371,49.20,39.49,35,0
    .goto 2371,48.06,38.61,35,0
    >>Tötet |cRXP_ENEMY_Untethered Observers|r
    .complete 89344,1 --4/4 Untethered Observers slain
    .mob Freigelassener Beobachter
step
    #completewith next
    #label WhatDoesntSeeYouB
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Gebt die Quest Was Euch nicht sieht ab
    .accept 89345 >>Akzeptiert die Quest Der ungebundene Schrecken
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Entfernt den |T135752:0|t[Phasentauchen]-Buff (mit Rechtsklick)
    .macro Remove Aura,135752 >>Entfernen Aura
step
    #requires WhatDoesntSeeYouB
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89344 >>Gebt die Quest Was Euch nicht sieht ab
    .accept 89345 >>Akzeptiert die Quest Der ungebundene Schrecken
    .target Shad'anis
step
    #completewith next
    #label Netherdeath
    >>Tötet |cRXP_ENEMY_Netherdeath|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Nethertod
step
    #completewith Netherdeath
    .goto 2371,50.41,36.41
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt die |cRXP_PICK_Phase Medium|r.
step
    #requires Netherdeath
    .goto 2371,48.44,39.56,30,0
    .goto 2371,47.90,40.57
    >>Tötet |cRXP_ENEMY_Netherdeath|r
    .complete 89345,1 --1/1 Netherdeath slain within Untethered Space
    .mob Nethertod
step
    #completewith next
    #label TheUntetheredHorrorA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Gebt die Quest Der ungebundene Schrecken ab
    .target Shad'anis
step
    #completewith next
    .aura -1214374 >>Entfernt den |T135752:0|t[Phasentauchen]-Buff (mit Rechtsklick)
    .macro Remove Aura,135752 >>Entfernen Aura
step
    #completewith TheUntetheredHorrorA
    #hidewindow
    .goto 2371,50.36,36.31,20 >>Folgt dem Pfeil
step
    #requires TheUntetheredHorrorA
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89345 >>Gebt die Quest Der ungebundene Schrecken ab
    .target Shad'anis
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Akzeptiert die Quest Eingewickelt
    .target Hashim
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hashim|r und wählt die Verbesserungen aus.
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hashim|r
    .turnin 89561 >>Gebt die Quest Eingewickelt ab
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
#name a) Himmelsreiten Panda
#internal

step
    #completewith Skyriding Panda
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moratari|r
    .accept 90754 >>Akzeptiert die Quest Himmelsreiten
    .timer 5,RP
    .target Moratari
step
    .goto 627,72.41,41.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 90754,1 --1/1 Take Moratari's portal
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r und wählt eines der Flugmittel.
    *|cRXP_WARN_Ihr könnt die anderen Flugmittel jederzeit später erhalten.|r
    .complete 90754,2 --1/1 Acquire a skyriding mount from Lord Andestrasz
    .target Lord Andestrasz
    .skipgossipid 120917
    -- .skipgossipid 120921
    -- .skipgossipid 120920
    -- .skipgossipid 120919
    -- .skipgossipid 120918
step
    .goto 371,65.27,37.18
    >>Rechtsklick um euer Flugmittel zu erlernen.
    .complete 90754,3 --1/1 Learn your new skyriding mount from your
    .use 194034
    .use 194521
    .use 194106
    .use 194549
    .use 194705
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .complete 90754,4 --1/1 Speak to Lord Andestrasz about Skyriding
    .target Lord Andestrasz
    .skipgossipid 120916
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 90754 >>Gebt die Quest Himmelsreiten ab
    .accept 80013 >>Akzeptiert die Quest Drachenflug leicht gemacht
    .target Lord Andestrasz
step
    .goto 371,65.27,37.27
    >>Aufsitzen
    .complete 80013,1 --1/1 Mount your drake from your collection [Shift+P]
step
    .goto 371,66.51,37.16,10,0
    .goto 371,67.46,36.29
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80013,2,2 --2/5 Glide through the Rings
step
    .goto 371,67.46,36.29,10,0
    .goto 371,67.80,34.64
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80013,2,3 --3/5 Glide through the Rings
step
    .goto 371,67.80,34.64,10,0
    .goto 371,67.41,33.91
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80013,2,4 --4/5 Glide through the Rings
step
    .goto 371,67.41,33.91
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel] um eure Geschwindigkeit zu halten.
    .complete 80013,2 --5/5 Glide through the Rings
step
    .goto 371,66.73,33.58
    >>Landet auf dem Hügel
    .complete 80013,3 --1/1 Land in the target area
step
    .goto 371,66.75,33.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celormu|r
    .turnin 80013 >>Gebt die Quest Drachenflug leicht gemacht ab
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80015 >>Akzeptiert die Quest Drachensturzflug leicht gemacht
    .target Lord Andestrasz
step
    .goto 371,66.64,37.18,10,0
    .goto 371,67.90,37.18
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] um eure Geschwindigkeit zu halten.
    .complete 80015,2,2 --2/7 Glide through the Rings
step
    .goto 371,67.90,37.18,10,0
    .goto 371,68.95,37.95
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub], um eure Geschwindigkeit zu halten.
    .complete 80015,2,3 --3/7 Glide through the Rings
step
    .goto 371,68.95,37.95,10,0
    .goto 371,69.83,39.60
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub], um eure Geschwindigkeit zu halten.
    .complete 80015,2,4 --4/7 Glide through the Rings
step
    .goto 371,69.83,39.60,10,0
    .goto 371,70.00,43.96
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub], um eure Geschwindigkeit zu halten.
    .complete 80015,2,5 --5/7 Glide through the Rings
step
    .goto 371,70.00,43.96,10,0
    .goto 371,68.31,46.92
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub], um eure Geschwindigkeit zu halten.
    .complete 80015,2,6 --6/7 Glide through the Rings
step
    .goto 371,68.31,46.92
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub], um eure Geschwindigkeit zu halten.
    .complete 80015,2 --7/7 Glide through the Rings
step
    .goto 371,66.29,49.31
    >>Folgt dem Pfeil.
    .complete 80015,3 --1/1 Land in the Target Area
step
    .goto 371,66.25,49.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celormu|r
    .turnin 80015 >>Gebt die Quest Drachensturzflug leicht gemacht ab
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80016 >>Akzeptiert die Quest Geschwindigkeitsrausch
    .target Lord Andestrasz
step
    .goto 371,66.29,37.21,10,0
    .goto 371,68.27,36.26
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80016,2,2 --2/6 Glide through the Rings
step
    .goto 371,68.27,36.26,10,0
    .goto 371,68.81,32.48
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80016,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.81,32.48,10,0
    .goto 371,67.41,27.37
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80016,2,4 --4/6 Glide through the Rings
step
    .goto 371,67.41,27.37,15,0
    .goto 371,66.02,25.50
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80016,2,5 --5/6 Glide through the Rings
step
    .goto 371,66.02,25.50
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80016,2 --6/6 Glide through the Rings
step
    .goto 371,65.01,24.46
    >>Folgt dem Pfeil.
    .complete 80016,3 --1/1 Land in the Target Area
step
    .goto 371,64.98,24.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celormu|r
    .turnin 80016 >>Gebt die Quest Geschwindigkeitsrausch ab
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80017 >>Akzeptiert die Quest Höhenrausch
    .target Lord Andestrasz
step
    .goto 371,66.32,37.22,15,0
    .goto 371,67.93,35.70
    >>Lasst euch hinunter gleiten
    .complete 80017,2,2 --2/6 Glide through the Rings
step
    .goto 371,67.93,35.70,15,0
    .goto 371,68.77,33.45
    >>Folgt den Ringen. Benutzt |T4640498:0|t[Aufstieg gen Himmel] nachdem ihr den Ring erreicht habt.
    .complete 80017,2,3 --3/6 Glide through the Rings
step
    .goto 371,68.77,33.45,15,0
    .goto 371,68.51,29.83
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80017,2,4 --4/6 Glide through the Rings
step
    .goto 371,68.51,29.83,15,0
    .goto 371,65.39,29.58
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80017,2,5 --5/6 Glide through the Rings
step
    .goto 371,65.39,29.58
    >>Folgt den Ringen. Benutzt |T4640490:0|t[Vorwärtsschub] oder |T4640498:0|t[Aufstieg gen Himmel], um eure Geschwindigkeit zu halten.
    .complete 80017,2 --6/6 Glide through the Rings
step
    .goto 371,62.59,28.66
    >>Folgt dem Pfeil.
    .complete 80017,3 --1/1 Land in the Target Area
step
    .goto 371,62.47,28.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Celormu|r
    .turnin 80017 >>Gebt die Quest Höhenrausch ab
    .timer 3,RP
    .target Celormu
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .accept 80018 >>Akzeptiert die Quest Todschickes Fliegen
    .target Lord Andestrasz
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Rostrum of Verwandlung|r |cRXP_WARN_und verlasst es sofort|r
    .complete 80018,1 --1/1 Rostrum of Transformation used
step
    #label Skyriding Panda
    .goto 371,65.07,36.97,10,0
    .goto 371,65.28,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Andestrasz|r
    .turnin 80018 >>Gebt die Quest Todschickes Fliegen ab
    .accept 90755 >>Akzeptiert die Quest Wie im Fluge
    .target Lord Andestrasz
step
    #completewith next
    #label TimeFliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Gebt die Quest Wie im Fluge ab
    .target Moratari
step
    #completewith TimeFliesA
    .goto 371,65.13,37.09
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Portal to Dalaran|r
step
    #requires TimeFliesA
    #label Skyriding
    .goto 627,72.04,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moratari|r
    .turnin 90755 >>Gebt die Quest Wie im Fluge ab
    .target Moratari
]])

-- ================= ARTIFACT WEAPONS ================

-- --------- Death Knight ---------

--Blood
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Blut
#displayname Artefakt Waffe: Blut
#next a) Ordenshalle Todesritter Part 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Benutzt |T135766:0|t[Schwarzes Tor]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Benutzt den Teleporter
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 44401 >>Akzeptiert die Quest Eine Waffe für jede Gelegenheit
    .target Duke Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wird automatisch das Blutige Artefakt auswählen|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390097
    .target Duke Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 44401 >>Gebt die Quest Eine Waffe für jede Gelegenheit ab
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40740
    .isNotOnQuest 40740
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 43962 >>Akzeptiert die Quest Klingen des Schicksals
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wird automatisch das Blutige Artefakt auswählen|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390097
    .target Duke Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 43962 >>Gebt die Quest Klingen des Schicksals ab
    .target Duke Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 40715 >>Akzeptiert die Quest Ein erforderliches Bündnis
    .target Rensar Großhuf
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wird automatisch das Blutige Artefakt wählen|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390097
    .target Rensar Großhuf
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 40715 >>Gebt die Quest Ein erforderliches Bündnis ab
    .target Rensar Großhuf
step
    #completewith Baron Sliver
    +|cRXP_WARN_Stellt sicher, dass ihr eine brauchbare Waffe ausgerüstet habt. Wenn nicht, rüstet eine aus, bis ihr das Artefakt von Euch erhaltet, oder wechselt zu einer Spezialisierung, die bereits eines hat.|r
step
    .isQuestAvailable 43962
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .accept 40740 >>Akzeptiert die Quest Die Toten und die Verdammten
    .target Hochlord Darion Mograine
step
    #optional
    .goto 647,57.76,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .accept 40740 >>Akzeptiert die Quest Die Toten und die Verdammten
    .target Hochlord Darion Mograine
step
    .goto 646,31.97,31.91
    >>|cRXP_WARN_Folgt dem Pfeil und betretet das Portal.|r
    .complete 40740,2 --1/1 Enter into the Legion Portal
step
    .isOnQuest 40740
    .isQuestNotComplete 40740
    .goto 646,31.97,31.91
    .enterScenario 940 >>Betreten des Szenarios |cRXP_PICK_The Fleshripper's Ernten|r
step
    .isInScenario 940
    .goto 714,17.60,47.83
    >>Tötet die |cRXP_ENEMY_Niskaran Wärter|r.
    .scenario 1884,1 --Search for Baron Sliver.
    .mob Niskaran Jailer
step
    .isInScenario 940
    .goto 714,22.14,50.77
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .scenario 2154,1 --Follow Baron Silver
step
    #label Baron Sliver
    .isInScenario 940
    .goto 714,23.74,50.28
    >>Tötet die |cRXP_ENEMY_Niskaran Verhängnisbringer|r und |cRXP_ENEMY_Felguard Wache|r.
    .scenario 2135,1 --Protect Baron Sliver while he disables the Fel Barrier
    .mob Niskaran Doombringer
    .mob Teufelswache Wache
step
    #title |cFFFCDC00Begleitet Baron Silber|r
    .isInScenario 940
    .goto 714,37.70,47.45
    >>Tötet die |cRXP_ENEMY_Felguard Sentries|r auf dem Weg, sonst bleibt |cRXP_FRIENDLY_Baron Silber|r stecken.
    .scenario 2136,1 --Search the Legion camp.
    .mob Teufelswache Wache
step
    .goto 714,43.82,38.27
    .isInScenario 940
    >>Tötet |cRXP_PICK_Inquisitior Zalinor|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Legion Keystone|r
    .scenario 2137,1 --Hunt down Inquisitior Zalinor and obtain his key.
    .mob Inquisitior Zalinor
step
    #completewith next
    #hidewindow
    .cast 202595 >>Folgt dem Pfeil
    .timer 55,Rollenspiel
step
    .isInScenario 940
    .goto 714,37.12,48.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Minerva Ravensorrow|r. << Horde
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Dagnar Stonebrow|r. << Alliance
    .scenario 2138,1 --Release your ally
    .target Minerva Rabenkummer << Horde
    .target Dagnar Stonebrow << Alliance
step
    .isInScenario 940
    .goto 714,47.96,58.44
    >>Benutzt |T136120:0|t[Antimagische Hülle] um Schaden von dunklen Leeren zu vermeiden.
    >>|cRXP_WARN_Verteidigt|r |cRXP_FRIENDLY_Baron Silber|r erneut.
    .scenario 2139,1 --Citadel Barrier Disabled
    .usespell 48707
    .mob Niskaran Doombringer
    .mob Teufelswache Wache
    .mob Voracious Felmaw
    .mob Niskaran Houndmaster
step
    .isInScenario 940
    .goto 714,61.34,59.78
    >>Benutzt |T136120:0|t[Antimagische Hülle], um Schaden durch die Fel-Leere zu vermeiden.
    >>Benutzt |T237532:0|t[Todesgriff], um in Reichweite des |cRXP_ENEMY_Repulsion Tumor|r zu gelangen.
    .scenario 2141,1 --Search within the citadel for Margrave
    .usespell 48707
    .usespell 49576
step
    .goto 714,65.10,59.87
    .isInScenario 940
    >>Tötet |cRXP_ENEMY_Gorelix|r.
    .scenario 2142,1 --Slay Gorelix
    .mob Gorelix
step
    .isInScenario 940
    .goto 714,64.15,60.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Maw of the Verdammt|r
    .scenario 2143,1 --Take the Maw of the Damned
    .complete 40740,3 --1/1 Obtain the Maw of the Damned
step
    .goto 714,63.06,60.82
step
    .isInScenario 940
    .goto 714,63.06,60.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Death Tor|r.
    .scenario 2180,1 --Use Baron Sliver's Death Gate
step
    .isOnQuest 40740
    .goto 701,47.57,90.74
    .zone 648 >>Klickt auf |cRXP_PICK_Acherus-Tor|r nach dem Rollenspiel.
step
    .isQuestAvailable 39832
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 40740 >>Gebt die Quest Die Toten und die Verdammten ab
    .timer 63,Mograine Rollenspiel
    .target Hochlord Darion Mograine
step
    #optional
    .goto 648,50.90,50.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 40740 >>Gebt die Quest Die Toten und die Verdammten ab
    .target Hochlord Darion Mograine
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Frostschaden DK
#displayname Artefakt Waffe: Frostschaden
#next a) Ordenshalle Todesritter Part 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Benutzt |T135766:0|t[Schwarzes Tor]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Benutzt den Teleporter
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 44401 >>Akzeptiert die Quest Eine Waffe für jede Gelegenheit
    .target Duke Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wählt automatisch das Frostschaden-Artefakt|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390098
    .target Duke Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 44401 >>Gebt die Quest Eine Waffe für jede Gelegenheit ab
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 38990
    .isNotOnQuest 38990
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 43962 >>Akzeptiert die Quest Klingen des Schicksals
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wählt automatisch das Frostschaden-Artefakt|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390098
    .target Duke Lankral
    .skipgossipid 45119
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 43962 >>Gebt die Quest Klingen des Schicksals ab
    .target Duke Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 40715 >>Akzeptiert die Quest Ein erforderliches Bündnis
    .target Rensar Großhuf
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wird automatisch das Frostschaden-Artefakt wählen|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390098
    .target Rensar Großhuf
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 40715 >>Gebt die Quest Ein erforderliches Bündnis ab
    .target Rensar Großhuf
step
    #completewith Fragments of Frostmourne
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 627,73.09,46.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .accept 38990 >>Akzeptiert die Quest Der Ruf der Eiskronenzitadelle
    .target Highlord Darion Mograine
step
    .goto 627,73.60,46.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Tod Tor|r
    .complete 38990,1 --1/1 Use Death Gate
step
    .goto 698,59.7,17.3
    .isInScenario 901
    >>|cRXP_WARN_Tretet auf den Knopf|r
    .scenario 1809,1 --Open the Gate to Icecrown
step
    .goto 698,59.74,0.36
    .scenario 1973,1 --1/1 Enter Icecrown Citadel
step
    #completewith next
    +|cRXP_WARN_Um die Tür zu öffnen, tötet die |cRXP_ENEMY_Steinhaut-Torwächter|r auf mindestens einem Knopf (oder benutzt |T237532:0|t|r[Todesgriff] |cRXP_WARN_um sie auf einen Knopf zu bringen) und stellt euch auf den zweiten.
step
    #label Fragments of Frostmourne
    .goto 700,52.16,66.08
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Fragments of Frostgram|r
    .scenario 1810,1,1 --1/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,59.89,53.69
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Fragments of Frostgram|r
    .scenario 1810,1,2 --2/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.27,41.31
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Fragments of Frostgram|r
    .scenario 1810,1,3 --3/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.33,49.96
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Splitter von Frostgram|r
    .scenario 1810,1 --4/4 Collect Fragments within Icecrown Citadel
step
    .goto 700,51.82,53.41
    .isInScenario 901
    >>|cRXP_WARN_Geht auf den Teleporter|r
    .scenario 1811,1 --Use the Scourge Teleporter within the Spire
step
    #completewith next
    #hidewindow
    .cast 186253 >>Folgt dem Pfeil
    .timer 24,Rollenspiel
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Griff von Frostgram|r
    .scenario 1812,1 --Reforge the fragments and form your weapon
step
    .goto 701,49.82,51.71
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Blades of the Gefallen Prince|r
    >>Tötet die |cRXP_ENEMY_Echo von Arthas Menethil|r
    *Tötet die |cRXP_ENEMY_Source|r bevor they reach him.
    .scenario 1814,1 --Purge the blades of the malevolent souls within
    .timer 8,Hineinteleportieren
    .mob Echo of Arthas Menethil
    .mob Mindless Ghoul
    .mob Icefallen Geist
    .mob Enraged Zombie
step
    .isInScenario 901
    .goto 701,49.85,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Klingen des gefallenen Prinzen|r
    .complete 38990,2 --1/1 Obtain the Blades of the Fallen Prince
step
    .goto 701,49.8,51.7
    .isInScenario 901
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Blades of the Gefallen Prince|r
    .scenario 2224,1 --Take the Blades of the Fallen Prince.
step
    .goto 701,49.52,90.69
    .isInScenario 901
    >>|cRXP_WARN_Wait for the roleplay|r
    .scenario 1827,1 --Obtain the Lich King's blessing
step
    .zoneskip 648
    .goto 701,47.64,90.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Acherus Tor|r
    .scenario 2923,1 --1/1 Acherus Waygate taken
step
    .goto 648,51.01,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r
    .turnin 38990 >>Gebt die Quest Der Ruf der Eiskronenzitadelle ab
    .timer 60,Rollenspiel
    .target Highlord Darion Mograine
]])
--Unholy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Unheilig
#displayname Artefakt Waffe: Unheilig
#next a) Ordenshalle Todesritter Part 1
#internal

<< DeathKnight

step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .zoneskip 647
    .zone 648 >>Benutzt |T135766:0|t[Schwarzes Tor]
    .usespell 50977
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 44401,43962
    .goto 648,35.01,37.23
    .zone 647 >>Benutzt den Teleporter
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 44401 >>Akzeptiert die Quest Eine Waffe für jede Gelegenheit
    .target Duke Lankral
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Dies wird automatisch den Unheilig-Artefakt aufheben|r
    .complete 44401,1 --1/1 Choose a third artifact to pursue
    .choose 1390099
    .target Duke Lankral
    .skipgossipid 45117
step
    .isQuestTurnedIn 43962
    .isQuestAvailable 44401
    .isOnQuest 44401
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 44401 >>Gebt die Quest Eine Waffe für jede Gelegenheit ab
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .goto 648,35.01,37.23
    .zone 647 >>Benutzt den Teleporter
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isQuestAvailable 40930
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 43962 >>Akzeptiert die Quest Klingen des Schicksals
    .target Duke Lankral
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Das wählt automatisch das Unheilig-Artefakt|r
    .complete 43962,1 --1/1 Choose a second artifact to pursue
    .choose 1390099
    .target Duke Lankral
    .skipgossipid 46633
step
    .isQuestTurnedIn 40715
    .isQuestAvailable 43962
    .isOnQuest 43962
    .goto 647,57.76,60.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 43962 >>Gebt die Quest Klingen des Schicksals ab
    .target Duke Lankral
step
    .isQuestAvailable 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .accept 40715 >>Akzeptiert die Quest Ein erforderliches Bündnis
    .target Rensar Großhuf
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    *|cRXP_WARN_Das wählt automatisch das Unheilig-Artefakt|r
    .complete 40715,1 --1/1 Artifact weapon chosen
    .choose 1390099
    .target Rensar Großhuf
    .skipgossipid 45000
step
    .isQuestAvailable 40715
    .isOnQuest 40715
    .goto 627,73.10,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 40715 >>Gebt die Quest Ein erforderliches Bündnis ab
    .target Rensar Großhuf
step
    #completewith Apocalypse
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    >>Diese Quest sollte automatisch in das Questtagebuch von Euch übertragen werden. Falls nicht, meldet euch erneut an.
    .accept 40930 >>Akzeptiert die Quest Apokalypse
step
    .goto 47,77.42,35.89
    >>Benutzt |T254294:0|t[Schriftrolle des Dämmerwalds]. |cRXP_WARN_Folgt dem Pfeil ins Haus.|r
    .complete 40930,1 --1/1 Investigate Manor Mistmantle in Duskwood
    .use 173527
step
    .goto 47,77.42,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r und defeat him.
    .complete 40930,2 --1/1 Convince Revil to help
    .timer 11,Revil Rollenspiel
    .target Revil Kost
    .skipgossipid 44918
step
    #label Apocalypse
    .goto 47,77.42,36.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40930 >>Gebt die Quest Apokalypse ab
    .accept 40931 >>Akzeptiert die Quest Auf den Spuren des Fluchs
    .target Revil Kost
step
    .isOnQuest 40931
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .isOnQuest 40931
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40931
    .goto 47,85.55,40.69
    .countdown 20 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .isOnQuest 40931
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40931
    .goto 42,44.33,34.54
    .countdown 20 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
    .complete 40931,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40931 >>Gebt die Quest Auf den Spuren des Fluchs ab
    .accept 40932 >>Akzeptiert die Quest "Unberührte Zeugen"
    .target Revil Kost
step
    .goto 42,52.32,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Battered Tagebuch|r.
    .complete 40932,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.31,33.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Battered Tagebuch|r.
    .turnin 40932 >>Gebt die Quest "Unberührte Zeugen" ab
    .target Battered Journal
step
    .goto 42,52.42,34.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .accept 40933 >>Akzeptiert die Quest Eine grausame Aufgabe
    .target Revil Kost
step
    .goto 42,53.39,73.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf verschiedene |cRXP_PICK_Ein flaches Grab|r, bis ihr |cRXP_ENEMY_Laith Sha'ol|r findet. Tötet |cRXP_ENEMY_Laith Sha'ol|r.
    .complete 40933,1 --1/1 Learn the location of the Dark Riders
    .mob Laith Sha'ol
step
    .goto 42,49.46,74.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40933 >>Gebt die Quest Eine grausame Aufgabe ab
    .accept 40986 >>Akzeptiert die Quest Die Dunklen Reiter
    .target Revil Kost
step
    .isOnQuest 40986
    .goto 42,46.28,69.07
    .enterScenario 1026 >>|cRXP_WARN_Betretet das |cRXP_PICK_The Dunkel Riders|r-Szenario|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1026
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Springen down
step
    #requires KarazhanCatacombsA
    .isInScenario 1026
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Betretet die Katakomben|r
    .scenario 2158,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1026
    #title Benutzt |T237532:0|t[Todesgriff]
    .goto 46,55.90,69.19
    >>Benutzt |T237532:0|t[Todesgriff] auf |cRXP_ENEMY_Ariden|r |cRXP_WARN_aus eurem Questtagebuch|r.
    .scenario 2159,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1026
    .goto 46,56.36,69.25
    >>Tötet |cRXP_ENEMY_The Conservator|r.
    .scenario 2160,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Folgt dem Pfeil
    .timer 25,Rollenspiel
step
    .isInScenario 1026
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Apokalypse|r. |cRXP_WARN_Wartet auf das Roleplay|r.
    .scenario 2161,1 --Apocalypse found
step
    .isInScenario 1026
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Folgen dem Pfeil die Treppe hinauf zu |cRXP_ENEMY_Ariden|r.
    .scenario 2162,1 --Ariden followed
    .timer 15,Ariden Rollenspiel
step
    .isInScenario 1026
    .goto 46,68.36,24.43
    >>Tötet |cRXP_ENEMY_Ariden|r.
    .scenario 2163,1 --Ariden defeated
    .complete 40986,1 --1/1 Defeat the Dark Riders
    .timer 33,Ariden Rollenspiel
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Apocalypse|r.
    .complete 40986,2 --1/1 Apocalypse claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    *|cRXP_WARN_Hinweis:|r Falls er noch kämpft, tötet die Gegner, gegen die er im Kampf ist.
    .turnin 40986 >>Gebt die Quest Die Dunklen Reiter ab
    .accept 40987 >>Akzeptiert die Quest Der Ruf der Rache
    .target Revil Kost
step
    .goto 46,69.62,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Todestor zum Gefrorenen Thron|r.
    .complete 40987,1 --1/1 Take the Death Gate to the Frozen Throne
step
    .isOnQuest 40987
    .goto 701,47.57,90.74
    .zone 648 >>Klickt auf |cRXP_PICK_Acherus-Tor|r nach dem Rollenspiel.
step
    .goto 648,50.99,50.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Highlord Darion Mograine|r.
    .turnin 40987 >>Gebt die Quest Der Ruf der Rache ab
    .target Highlord Darion Mograine

]])
--Blood 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Blut
#displayname Artefakt Waffe: Blut
#next ac) Ordenshalle Todesritter Part 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Blut
]])
--Frost 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Frostschaden DK
#displayname Artefakt Waffe: Frostschaden
#next ac) Ordenshalle Todesritter Part 2
#internal

<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Frostschaden DK
]])
--Unholy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Unheilig
#displayname Artefakt Waffe: Unheilig
#next ac) Ordenshalle Todesritter Part 2
#internal


<< DeathKnight

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Unheilig
]])

--Death Knight Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Todesritter Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Todesritter
#chapter
#internal

<< DeathKnight

step
    #completewith Enlist Nazgrim2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaberk|r.
    *|cRXP_WARN_Hinweis:|r Dies sollte automatisch in das Questtagebuch von Euch eingetragen werden, während ihr in Dalaran seid. Falls nicht, loggt euch neu ein.
    .accept 40714 >>Akzeptiert die Quest In den Krieg
    .target Kaberk
step
    .goto 627,73.11,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duke Lankral|r.
    .turnin 40714 >>Gebt die Quest In den Krieg ab
    .accept 40715 >>Akzeptiert die Quest Ein erforderliches Bündnis
    .target Duke Lankral
step
    .isQuestAvailable account,91955
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_WICHTIG: Wählt denjenigen aus, den ihr bereits habt, um zusätzliche 10% XP zu erhalten (nur einmal)|r
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost DK >> Frostschaden(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Unholy >> Unheilig(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Blood >> Blut(Schutz) Questline
step
    #include ac) Order Hall Demon Hunter Part 2@Plans and Preparations-Enlist Nazgrim
step
    .zoneskip 648,1
    .goto 648,24.76,33.70
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
]])

-- --------- Demon Hunter ---------

--Havoc
RXPGuides.RegisterGuide([[}
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Verwüstung
#displayname Artefakt Waffe: Verwüstung
#next a) Ordenshalle Dämonenjäger Part 1
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
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .accept 44383 >>Akzeptiert die Quest Auf der Jagd nach Macht
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390100
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 44383 >>Gebt die Quest Auf der Jagd nach Macht ab
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
    .accept 40814 >>Akzeptiert die Quest Die Kraft zu überleben
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390100
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 40814 >>Gebt die Quest Die Kraft zu überleben ab
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    #completewith By Any Means
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isQuestAvailable 40249
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
    .accept 40819 >>Akzeptiert die Quest Abmachungen treffen
step
    .isQuestTurnedIn 40249
    .goto 720,58.61,57.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
    .accept 40819 >>Akzeptiert die Quest Abmachungen treffen
step
    .isQuestTurnedIn 40249
    #completewith next
    #label Making Arrangements
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 40819 >>Gebt die Quest Abmachungen treffen ab
    .accept 39051 >>Akzeptiert die Quest Um jeden Preis
step
    .isQuestTurnedIn 40249
    #completewith Making Arrangements
    .goto 720,59.31,91.85
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 40249
    #requires Making Arrangements
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 40819 >>Gebt die Quest Abmachungen treffen ab
    .accept 39051 >>Akzeptiert die Quest Um jeden Preis
step
    #label By Any Means
    .goto 627,65.63,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 40819 >>Gebt die Quest Abmachungen treffen ab
    .accept 39051 >>Akzeptiert die Quest Um jeden Preis
step
    .goto 627,66.09,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Warden Alturas|r
    .complete 39051,1 --1/1 Convince Warden Alturas
    .skipgossipid 45518
    .skipgossipid 45519
    .target Warden Alturas
step
    .goto 627,66.63,68.84
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 39051,2 --1/1 Enter the Violet Hold
    .timer 83,RP
step
    .goto 723,50.63,52.64
    #title |cFFFCDC00Wartet auf das Ende des Rollenspiels|r
    >>Tötet |cRXP_ENEMY_Taldath der Zerstörer|r
    .complete 39051,3 --1/1 Taldath interrogated
    .mob Taldath the Destroyer
step
    .goto 723,50.32,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 39051 >>Gebt die Quest Um jeden Preis ab
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
    .accept 39247 >>Akzeptiert die Quest Die Jagd
step
    #completewith next
    #label Illidari Fel Bat
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Illidari Teufelsfledermaus|r an
    .complete 39247,1
    .target Illidari Fel Bat
step
    #completewith Illidari Fel Bat
    .zone 627 >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .macro Leave Instance,236367 >> Verlasst Instanz
step
    #requires Illidari Fel Bat
    .goto 627,75.26,47.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Illidari Teufelsfledermaus|r an
    .complete 39247,1
    .timer 53,RP
    .target Illidari Fel Bat
step
    .isOnQuest 39247
    .enterScenario 900 >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .timer 8
step
    .isInScenario 900
    .goto 680,25.63,58.94
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 1808,1
    .target Illidari Fel Bat
step
    .isInScenario 900
    .goto 680,25.21,60.8,30,0
    .goto 680,25.87,61.97,30,0
    .goto 680,26.69,63.05,30,0
    .goto 680,27.38,65.03
    >>Tötet ALL |cRXP_ENEMY_Demons|r
    .scenario 1822,2,52
    .mob Felsoul Fleshcarver
    .mob Felsoul Berserker
step
    .isInScenario 900
    .goto 680,28.18,64.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    .scenario 1822,1,1
step
    .isInScenario 900
    .goto 680,29.16,61.02,10,0
    .goto 680,29.32,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    .scenario 1822,1,2
step
    .isInScenario 900
    #loop
    .goto 680,30.09,60.65,20,0
    .goto 680,29.97,63.95,30,0
    .goto 680,30.57,63.9,30,0
    .goto 680,30.3,65.99,30,0
    .goto 680,31.07,66,30,0
    >>Tötet |cRXP_ENEMY_Dämonen|r |cRXP_WARN_aber ignoriert |cRXP_ENEMY_Brecher der Teufelsseele|r, den Infernal, selbst wenn ihr Aggro habt|r.
    .scenario 1822,2,100
    .mob Fist of the Deceiver
    .mob Living Flame
    .mob Felsoul Ritualist
step
    .isInScenario 900
    .goto 680,31.25,66.26,10,0
    .goto 680,31.5,66.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    .scenario 1822,1,3
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>Tötet |cRXP_ENEMY_Varedis Felsoul|r
    .scenario 1825,1
    .mob Varedis Felsoul
step
    .isInScenario 900
    .goto 680,32.96,66.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Zwillingsklingen des Betrügers|r an
    .complete 39247,2 --1/1 Twinblades of the Deceiver
    .scenario 2712,1
step
    .isInScenario 900
    .zone 627 >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .macro Leave Instance,236367 >> Verlasst Instanz
step
    .isQuestAvailable 40249
    .goto 627,73.86,46.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Gebt die Quest Die Jagd ab
    .target Kor'vas Blutdorn
step
    #completewith next
    #label Turn in The Hunt
    .isQuestTurnedIn 40249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Gebt die Quest Die Jagd ab
    .target Kor'vas Blutdorn
step
    #completewith Turn in The Hunt
    #label ArtifactWeaponHavocY
    .isQuestTurnedIn 40249
    .goto 627,98.13,69.47
    .zone 720 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step
    #requires Turn in The Hunt
    .isQuestTurnedIn 40249
    #label ArtifactWeaponHavocZ
    .goto 720,59.31,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 39247 >>Gebt die Quest Die Jagd ab
    .target Kor'vas Blutdorn
]])
--Vengeance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Rache
#displayname Artefakt Waffe: Rache
#next a) Ordenshalle Dämonenjäger Part 1
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
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .accept 44383>>Akzeptiert die Quest Auf der Jagd nach Macht
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isOnQuest 44383,44379
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .complete 44383,1 --1/1 Choose a second artifact to pursue
    .choose 1390101
    .skipgossipid 45738
step
    .zoneskip 720,1
    .isQuestTurnedIn 40814
    .isQuestAvailable 44383
    .isQuestComplete 44383
    .goto 720,58.62,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 44383 >>Gebt die Quest Auf der Jagd nach Macht ab
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
    .accept 40814>>Akzeptiert die Quest Die Kraft zu überleben
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isOnQuest 40814,40816
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .complete 40814,1 --1/1 Artifact weapon chosen
    .choose 1390101
    .skipgossipid 45106
step
    .zoneskip 627,1
    .isQuestAvailable 40814
    .isQuestComplete 40814
    .goto 627,74.97,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .turnin 40814 >>Gebt die Quest Die Kraft zu überleben ab
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    #completewith Crystallized Soul
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 627,74.98,48.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .accept 40247 >>Akzeptiert die Quest Der Gefallen
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    .isQuestAvailable 39247
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 40247 >>Gebt die Quest Der Gefallen ab
    .accept 41804 >>Akzeptiert die Quest Bittet und Euch soll gegeben werden
    .timer 57.5,RP
    .target Erzmagier Khadgar
step
    .isQuestTurnedIn 39247
    #completewith next
    #label Turn in Asking a Favor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 40247 >>Gebt die Quest Der Gefallen ab
    .accept 41804 >>Akzeptiert die Quest Bittet und Euch soll gegeben werden
    .disablecheckbox
    .target Erzmagier Khadgar
step
    .isQuestTurnedIn 39247
    #completewith Turn in Asking a Favor
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 39247
    #requires Turn in Asking a Favor
    .goto 627,28.53,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 40247 >>Gebt die Quest Der Gefallen ab
    .accept 41804 >>Akzeptiert die Quest Bittet und Euch soll gegeben werden
    .timer 58.5,RP
    .target Erzmagier Khadgar
step
    .goto 627,25.35,47.24,15,0
    .goto 627,26.78,44.84
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 41804,1 --1/1 Follow Archmage Khadgar
step
    #label Crystallized Soul
    .goto 627,26.78,44.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kiste|r
    .complete 41804,2 --1/1 Crystallized Soul
    .timer 12.5,RP
step
    .goto 627,28.49,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    .turnin 41804 >>Gebt die Quest Bittet und Euch soll gegeben werden ab
    .target Erzmagier Khadgar
    .accept 41806 >>Akzeptiert die Quest Rückkehr zu Jace
step
    .goto 627,74.40,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 41806 >>Gebt die Quest Rückkehr zu Jace ab
    .accept 41807 >>Akzeptiert die Quest Eine Verbindung herstellen
    .target Jace Düsterweber
step
    .goto 627,74.35,52.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Legion Communicator|r
    .complete 41807,1 --1/1 Legion Communicator activated
    .timer 19,RP
step
    .goto 627,74.43,51.31
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 41807,2 --1/1 Scout's report received
step
    .goto 627,74.54,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jace Darkweaver|r
    .turnin 41807 >>Gebt die Quest Eine Verbindung herstellen ab
    .target Jace Düsterweber
step
    .goto 627,75.05,48.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .accept 40249 >>Akzeptiert die Quest Die Rache wird unser sein
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
step
    #completewith next
    #label Fly to the Broken Shore
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    #completewith Fly to the Broken Shore
    .goto 627,75.28,47.58
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Illidari Teufelsfledermaus|r
    .timer 24,RP
    .target Illidari Fel Bat
step
    #requires Fly to the Broken Shore
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40249,1 --1/1 Fly to the Broken Shore
step
    .isOnQuest 40249
    .enterScenario 961 >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
step
    .goto 676,15.09,51.77
    .isOnQuest 40249
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Allari die Seelenfresserin|r
    .scenario 1939,1 --Free Allari the Souleater.
    .target Allari die Seelenfresserin
step
    .goto 676,16.02,54.95,15,0
    .goto 676,16.04,56.14,20,0
    .goto 676,17.61,57.44
    .isInScenario 961
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portale|r
    .scenario 1940,1, --Destroy the Legion portals.
step
    .goto 676,20.19,61.38
    .isInScenario 961
    >>Tötet |cRXP_ENEMY_Doomherald Saera|r und |cRXP_ENEMY_Doomherald Taraar|r
    .scenario 2299,2 --Eliminate Doomherald Taraar.
    .scenario 2299,1 --Eliminate Doomherald Saera.
    .mob Doomherald Saera
    .mob Doomherald Taraar
step
    .goto 676,20.69,62.76
    .isInScenario 961
    >>Tötet |cRXP_ENEMY_Gorgonnash|r
    .scenario 1948,1 --Destroy Gorgonnash.
    .mob Gorgonnash
step
    .isInScenario 961
    .goto 676,21.92,61.12
    >>Benutzt |T1247266:0|t[Geistersicht] vor der Höhle.
    .scenario 1941,1 --Find Caria's trail.
    .usespell 188501
step
    .isInScenario 961
    .goto 676,21.92,61.12
    .cast 207965 >>Klickt |cRXP_PICK_Geröll|r
step
    #completewith next
    #label Caria Felsoul
    .isInScenario 961
    >>Tötet |cRXP_ENEMY_Caria Felsoul|r
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Felsoul
step
    .isInScenario 961
    #completewith Caria Felsoul
    .goto 676,23.26,62.14,15,0
    .goto 676,23.73,63.82,15,0
    .goto 676,24.3,64.04,15,0
    .goto 676,25.11,63.11,30 >>Folgt dem Pfeil
    .timer 9,RP
step
    #requires Caria Felsoul
    .goto 676,26.82,61.37
    >>Tötet |cRXP_ENEMY_Caria Felsoul|r
    .isInScenario 961
    .scenario 1942,1 --Destroy Caria Felsoul.
    .mob Caria Felsoul
step
    .goto 676,26.77,61.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .complete 40249,2 --1/1 Aldrachi Warblades
    .scenario 2302,1
step
    .zone 627 >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .macro Leave Instance,236367 >> Verlasst Instanz
    .complete 40249,3 --1/1 Return to Dalaran
step
    .isQuestAvailable 39247
    #completewith next
    #label Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 40249 >>Gebt die Quest Die Rache wird unser sein ab
    .target Kor'vas Blutdorn
step
    .isQuestAvailable 39247
    #completewith Vengeance Will Be Ours
    #label ArtifactWeaponVengeanceY
    .goto 720,59.25,91.82
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|
step
    #label ArtifactWeaponVengeanceZ
    .isQuestAvailable 39247
    #requires Vengeance Will Be Ours
    .goto 627,73.83,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'vas Bloodthorn|r
    .turnin 40249 >>Gebt die Quest Die Rache wird unser sein ab
    .target Kor'vas Blutdorn
]])
--Havoc 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Verwüstung
#displayname Artefakt Waffe: Verwüstung
#next ac) Ordenshalle Dämonenjäger Part 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Verwüstung
]])
--Vengeance 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Rache
#displayname Artefakt Waffe: Rache
#next ac) Ordenshalle Dämonenjäger Part 2
#internal

<< DemonHunter

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Rache
]])

--Demon Hunter Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Dämonenjäger Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Dämonenjäger
#chapter
#internal

<< DemonHunter

step
    #completewith Champion: Asha Ravensong2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Follower|r.
    .target Kayn Sonnenzorn
    .target Altruis der Leidende
    .accept 40814 >>Akzeptiert die Quest Die Kraft zu überleben
step
    .isQuestAvailable 40814
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Havoc >> Verwüstung(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Vengeance >> Rache(Schutz) Questline
step
    #include ac) Order Hall Demon Hunter Part 2@Eternal Vigil-Champion: Asha Ravensong
]])

-- --------- Druid ---------

--Balance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Gleichgewichtsdruide
#displayname Artefakt Waffe: Gleichgewicht
#next a) Ordenshalle Druide Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Folgt dem Pfeil
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Geht durch das Portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40783
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44443 >>Akzeptiert die Quest Waffen der Ahnen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird das Gleichgewicht-Artefakt automatisch auswählen|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390102
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44443 >>Gebt die Quest Waffen der Ahnen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44431 >>Akzeptiert die Quest Noch mehr alte Waffen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40783
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird das Gleichgewicht-Artefakt automatisch auswählen|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390102
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44431 >>Gebt die Quest Noch mehr alte Waffen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 43980 >>Akzeptiert die Quest Noch eine alte Waffe
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40783
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wählt automatisch das Gleichgewicht-Artefakt aus|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390102
    .target Rensar Großhuf
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 43980 >>Gebt die Quest Noch eine alte Waffe ab
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .accept 40646 >>Akzeptiert die Quest Legendäre Waffen
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Gleichgewicht-Artefakt auswählen|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390102
    .target Rensar Großhuf
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 40646 >>Gebt die Quest Legendäre Waffen ab
    .target Rensar Großhuf
step
    #completewith Scythe of Elune
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 747,44.52,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naralex|r
    .accept 40783 >>Die Sense von Elune annehmen
    .target Naralex
step
    #completewith ToDuskwoodD
    #label ToDuskwoodA
    >>Lauf zum Teufelswald
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToDuskwoodA
    #label ToDuskwoodB
    .goto 747,55.76,21.99
    .zone 715 >>Geht durch das Portal zum Emeral Dreamway
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToDuskwoodB
    #completewith ToDuskwoodA
    #label ToDuskwoodC
    .zone 715 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToDuskwoodC
    #completewith ToDuskwoodA
    #label ToDuskwoodD
    .goto 715,31.46,26.05
    .zone 116 >>Geht durch das Portal nach Dämmerwald
step
    #requires ToDuskwoodA
    .goto 715,39.93,69.76
    >>Lauf zum Teufelswald
    .complete 40783,1 --1/1 Travel through the Dreamway to Duskwood (Optional)
step
    #completewith next
    #hidewindow
    .goto 47,48.90,34.31,15 >>Folgt dem Pfeil
    .timer 15,Valorn Rollenspiel
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Folgt dem Pfeil. Wartet auf das Rollenspiel.|r
    .complete 40783,2 --1/1 Meet with Valorn
step
    #label Scythe of Elune
    .goto 47,48.90,34.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valorn Stillbough|r
    .turnin 40783 >>Die Sense von Elune abgeben
    .accept 40784 >>Akzeptiert die Quest Ihr rechtmäßiger Platz
    .timer 4,Rollenspiel
    .target Valorn Stillbough
step
    .goto 47,48.90,34.31
    >>|cRXP_WARN_Wait for the roleplay|r
    .complete 40784,1 --1/1 Scythe of Elune taken
step
    .goto 47,48.84,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belysra Starbreeze|r
    .turnin 40784 >>Gebt die Quest Ihr rechtmäßiger Platz ab
    .target Belysra Starbreeze
    .accept 40785 >>Akzeptiert die Quest Ein Feind im Dunkeln
step
    #title |cFFFCDC00Betretet das Haus|r
    .goto 47,77.42,36.13
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .complete 40785,2 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.42,36.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40785 >>Gebt die Quest Ein Feind im Dunkeln ab
    .accept 40834 >>Akzeptiert die Quest Auf den Spuren des Fluchs
    .target Revil Kost
step
    .isOnQuest 40834
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .isOnQuest 40834
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40834
    .goto 47,85.55,40.69
    .countdown 20 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .isOnQuest 40834
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40834
    .goto 42,44.33,34.54
    .countdown 20 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
    .complete 40834,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40834 >>Gebt die Quest Auf den Spuren des Fluchs ab
    .accept 40835 >>Akzeptiert die Quest "Unberührte Zeugen"
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Battered Tagebuch|r.
    .complete 40835,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Battered Tagebuch|r
    .turnin 40835 >>Gebt die Quest "Unberührte Zeugen" ab
    .target Battered Journal
step
    .goto 42,52.42,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r
    .accept 40837 >>Akzeptiert die Quest Die Jagd der Totenwinde
    .target Revil Kost
step
    .goto 42,51.57,43.62
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .complete 40837,1 --1/1 Follow the worgen tracks
step
    .goto 42,47.22,51.69
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .complete 40837,2 --1/1 Continue following the worgen
step
    .goto 42,49.17,57.66
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .complete 40837,3 --1/1 Continue following the worgen
step
    .goto 42,45.93,63.33
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .complete 40837,4 --1/1 Continue following the worgen
step
    .goto 42,46.90,69.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40837 >>Gebt die Quest Die Jagd der Totenwinde ab
    .accept 40838 >>Akzeptiert die Quest Die Dunklen Reiter
    .target Revil Kost
step
    .isOnQuest 40838
    .goto 42,46.28,69.07
    .enterScenario 1014 >>|cRXP_WARN_Folgt dem Pfeil|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 1014
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Springen down
step
    #requires KarazhanCatacombsA
    .isInScenario 1014
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Betretet die Katakomben|r
    .scenario 2108,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 1014
    #title Benutzt |T252188:0|t[Sonnenstrahl]
    .goto 46,55.90,69.19
    >>Benutzt |T252188:0|t[Sonnenstrahl] auf |cRXP_ENEMY_Ariden|r |cRXP_WARN_aus dem Questtagebuch|r.
    .scenario 2109,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 311930
step
    .isInScenario 1014
    .goto 46,56.36,69.25
    >>Tötet |cRXP_ENEMY_The Conservator|r.
    .scenario 2110,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Folgt dem Pfeil
    .timer 25,Rollenspiel
step
    .isInScenario 1014
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Sichel von Elune|r. |cRXP_WARN_Wartet auf das Rollenspiel|r.
    .scenario 2111,1 --Scythe of Elune found
step
    .isInScenario 1014
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Folgen dem Pfeil die Treppe hinauf zu |cRXP_ENEMY_Ariden|r.
    .scenario 2112,1 --Ariden followed
    .timer 15,Ariden Rollenspiel
step
    .isInScenario 1014
    .goto 46,68.36,24.43
    >>Tötet |cRXP_ENEMY_Ariden|r.
    .scenario 2113,1 --Ariden defeated
    .complete 40838,1 --1/1 Defeat the Dark Riders
    .timer 33,Ariden Rollenspiel
    .mob Ariden
step
    .goto 46,68.28,24.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Sichel von Elune|r.
    .complete 40838,2 --1/1 The Scythe of Elune claimed
    .timer 25,Rollenspiel
step
    .goto 46,68.27,27.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40838 >>Gebt die Quest Die Dunklen Reiter ab
    .accept 40900 >>Akzeptiert die Quest Eine schwere Bürde
    .target Revil Kost
step
    #completewith TheBurdenBorneC
    #label TheBurdenBorneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 40900 >>Gebt die Quest Eine schwere Bürde ab
    .target Rensar Großhuf
step
    #completewith TheBurdenBorneA
    #label TheBurdenBorneB
    .zone 715 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    #completewith TheBurdenBorneA
    #requires TheBurdenBorneB
    #label TheBurdenBorneC
    .goto 715,45.60,23.46
    .zone 747 >>Geht durch das Portal zum Smaragdgrünen Traumpfad
step
    #requires TheBurdenBorneA
    .goto 747,44.64,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 40900 >>Gebt die Quest Eine schwere Bürde ab
    .target Rensar Großhuf
]])
--Feral
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Wildheitsdruide
#displayname Artefakt Waffe: Wildheit
#next a) Ordenshalle Druide Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Folgt dem Pfeil
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Geht durch das Portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 42428
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44443 >>Akzeptiert die Quest Waffen der Ahnen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wählt automatisch das Wildheit-Artefakt aus|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390103
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44443 >>Gebt die Quest Waffen der Ahnen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44431 >>Akzeptiert die Quest Noch mehr alte Waffen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wildheit-Artefakt auswählen|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390103
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44431 >>Gebt die Quest Noch mehr alte Waffen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 42428
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 43980 >>Akzeptiert die Quest Noch eine alte Waffe
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wildheit-Artefakt auswählen|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390103
    .target Rensar Großhuf
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 43980 >>Gebt die Quest Noch eine alte Waffe ab
    .accept 42428 >>Akzeptiert die Quest Ashamanes Schrein
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .accept 40646 >>Akzeptiert die Quest Legendäre Waffen
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wildheit-Artefakt auswählen|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390103
    .target Rensar Großhuf
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 40646 >>Gebt die Quest Legendäre Waffen ab
    .target Rensar Großhuf
step
    #completewith Aid for the Ashen
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 42428 >>Akzeptiert die Quest Ashamanes Schrein
    .target Rensar Großhuf
step
    .goto 747,61.73,33.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danise Sterngucker|r.
    .complete 42428,1 --1/1 Hippogryph taken to Ashamane's Fall
    .timer 57,Flug Dauer
    .target Danise Stargazer
    .skipgossipid 45654
step
    .goto 641,70.39,46.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delandros Shimmermoon|r.
    .turnin 42428 >>Gebt die Quest Ashamanes Schrein ab
    .target Delandros Shimmermoon
    .accept 42439 >>Akzeptiert die Quest Hilfe für die Äschernen
    .accept 42438 >>Akzeptiert die Quest Saat der Erneuerung
step
    #completewith SeedsOfRenewalA
    >>Tötet die |cRXP_ENEMY_Eredar Seele Lashers|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #title Seed (1/3)
    .goto 641,71.69,43.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Leiche|r von |cRXP_FRIENDLY_Emtheas Wahrsicht|r.
    .complete 42438,1,1 --1/3 Tel'andu Seed
    .target Emtheas Trueeye
step
    #title Seed (2/3)
    .goto 641,70.04,42.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Leiche|r von |cRXP_FRIENDLY_Asthalor Dämmermond|r.
    .complete 42438,1,2 --2/3 Tel'andu Seed
    .target Asthalor Duskmoon
step
    #label SeedsOfRenewalA
    #title Seed (3/3)
    .goto 641,71.00,38.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Leiche|r von |cRXP_FRIENDLY_Iyseelar Taulied|r.
    .complete 42438,1 --3/3 Tel'andu Seed
    .target Iyseelar Dewsong
step
    #loop
    .goto 641,71.70,38.40,35,0
    .goto 641,71.55,42.50,35,0
    .goto 641,70.24,41.08,35,0
    >>Tötet die |cRXP_ENEMY_Eredar Seele Lashers|r.
    .complete 42439,1 --4/4 Ashen Rescued
    .mob Eredar Soul Lasher
step
    #label Aid for the Ashen
    .goto 641,73.23,42.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delandros Shimmermoon|r
    .turnin 42439 >>Gebt die Quest Hilfe für die Äschernen ab
    .turnin 42438 >>Gebt die Quest Saat der Erneuerung ab
    .accept 42440 >>Akzeptiert die Quest Schrein in Gefahr
    .target Delandros Shimmermoon
step
    .goto 641,73.75,40.59
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 42440,1 --1/1 Investigate Ashamane's Fall
step
    .goto 641,73.82,39.02
    >>Tötet |cRXP_ENEMY_Algromon|r
    .complete 42440,2 --1/1 Algromon slain
    .mob Algromon
step
    .goto 641,73.83,38.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delandros Shimmermoon|r
    .turnin 42440 >>Gebt die Quest Schrein in Gefahr ab
    .accept 42430 >>Akzeptiert die Quest Die Fänge von Ashamane
    .target Delandros Shimmermoon
step
    .goto 641,73.75,38.40
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Ebonfang|r
    .complete 42430,1 --1/1 Ebonfang Mounted
    .target Ebonfang
step
    .isOnQuest 42430
    .goto 641,73.75,38.40
    .enterScenario 1108 >>Betretet das |cRXP_PICK_Fänge von Ashamane|r-Szenario
step
    .isInScenario 1108
    .goto 680,21.70,39.36
    >>|cRXP_WARN_Folgt dem Pfeil.|r
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
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Door Schalter|r
step
    #requires DoorSwitchA
    #completewith DoorwayOpenedA
    #label DoorSwitchB
    .goto 680,23.14,37.77
    .cast 116401 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Door Schalter|r
    .timer 15,Tür öffnet sich in
step
    #requires DoorwayOpenedA
    .isInScenario 1108
    .goto 680,22.80,35.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die beiden |cRXP_PICK_Türschalter|r
    >>|cRXP_WARN_Wartet, bis sich die Tür nach dem Klicken der Schalter öffnet|r
    .scenario 2525,1 --Doorway Opened
step
    .isInScenario 1108
    #completewith next
    #label FollowVerstoksTrailA
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    #completewith FollowVerstoksTrailA
    .goto 692,54.48,40.91
    .cast 214240 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Plattform|r
    *- |cRXP_WARN_Stellt sicher, dass ihr in Katzengestalt seid|r
step
    #requires FollowVerstoksTrailA
    .isInScenario 1108
    .goto 692,45.45,29.90
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .scenario 2533,1 --Follow Verstok's trail into the temple depths
step
    .isInScenario 1108
    .goto 692,43.10,21.57
    >>Niederlage |cRXP_ENEMY_Verstok|r
    .scenario 2534,1 --Defeat Verstok
    .mob Verstok
step
    .isInScenario 1108
    .goto 692,41.89,33.91,15,0
    .goto 692,31.11,72.27,15,0
    .goto 692,33.74,72.68
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .scenario 2545,1 --Chase after Verstok
step
    .isInScenario 1108
    .goto 693,53.19,18.21
    >>Tötet |cRXP_ENEMY_Webmistress Shinaris|r.
    .scenario 2546,1 --Webmistress Shinaris Slain
    .timer 18,Verstok Rollenspiel
    .mob Webmistress Shinaris
step
    .isInScenario 1108
    .goto 693,54.72,20.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Kiefer von Ashamane|r
    .scenario 2547,1 --Retrieve the Fangs of Ashamane
step
    .isOnQuest 42430
    .isQuestNotComplete 42430
    .isInScenario 1108
    .goto 693,54.76,19.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Ebonfang|r.
    .scenario 2552,1 --Ride upon Ebonfang
    .target Ebonfang
step
    .goto 747,44.52,51.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 42430 >>Gebt die Quest Die Fänge von Ashamane ab
    .target Rensar Großhuf
]])
--Guardian
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Wächterdruide
#displayname Artefakt Waffe: Wächter
#next a) Ordenshalle Druide Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Folgt dem Pfeil
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Geht durch das Portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 41468
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44443 >>Akzeptiert die Quest Waffen der Ahnen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wächter-Artefakt auswählen|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390104
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44443 >>Gebt die Quest Waffen der Ahnen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44431 >>Akzeptiert die Quest Noch mehr alte Waffen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wächter-Artefakt auswählen|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390104
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44431 >>Gebt die Quest Noch mehr alte Waffen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 41468
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 43980 >>Akzeptiert die Quest Noch eine alte Waffe
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wächter-Artefakt auswählen|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390104
    .target Rensar Großhuf
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 43980 >>Gebt die Quest Noch eine alte Waffe ab
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .accept 40646 >>Akzeptiert die Quest Legendäre Waffen
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wächter-Artefakt auswählen|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390104
    .target Rensar Großhuf
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 40646 >>Gebt die Quest Legendäre Waffen ab
    .target Rensar Großhuf
step
    #completewith ToTheHillsA
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 41468 >>Akzeptiert die Quest Herrin der Klaue
    .target Rensar Großhuf
step
    #completewith next
    #label MistressOfTheClawA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lea Stonepaw|r
    .turnin 41468 >>Gebt die Quest Herrin der Klaue ab
    .accept 41782 >>Akzeptiert die Quest Zu den Hügeln
    .target Lea Stonepaw
step
    #title |cFFFCDC00Betretet die Höhle|r
    #completewith MistressOfTheClawA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Folgt dem Pfeil in die Höhle|r
step
    #requires MistressOfTheClawA
    .goto 641,39.27,18.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lea Stonepaw|r
    .turnin 41468 >>Gebt die Quest Herrin der Klaue ab
    .accept 41782 >>Akzeptiert die Quest Zu den Hügeln
    .target Lea Stonepaw
step
    #completewith next
    #label ToTheHillsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fläschchen mit Mondbrunnenwasser|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #title |cFFFCDC00VERLASST Höhle|r
    #completewith ToTheHillsA
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Folgt dem Pfeil, um die Höhle zu verlassen|r
step
    #requires ToTheHillsA
    .goto 747,35.66,25.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fläschchen mit Mondbrunnenwasser|r
    .complete 41782,1 --1/1 Flask of Moonwell Water
step
    #completewith ToTheHillsE
    #label ToTheHillsB
    >>Reist nach Grizzlyhügel
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .zoneskip 747,1
    .isOnQuest 41782
    #completewith ToTheHillsB
    #label ToTheHillsC
    .goto 747,55.76,21.99
    .zone 715 >>Geht durch das Portal zum Emeral Dreamway
step
    .zoneskip 715,1
    .isOnQuest 41782
    #requires ToTheHillsC
    #completewith ToTheHillsB
    #label ToTheHillsD
    .zone 715 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    .isOnQuest 41782
    #requires ToTheHillsD
    #completewith ToTheHillsB
    #label ToTheHillsE
    .goto 715,31.46,26.05
    .zone 116 >>Geht durch das Portal nach Grizzlyhügel
step
    #requires ToTheHillsB
    >>Reist nach Grizzlyhügel
    .complete 41782,2 --1/1 Travel through the Dreamway to Grizzly Hills (Optional)
step
    .goto 116,50.46,29.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Stonepaw's Hippogryph|r
    .complete 41782,3 --1/1 Take Stonepaw's Hippogryph to Lea Stonepaw (Optional)
    .target Stonepaw's Hippogryph
step
    .goto 116,50.29,37.96,25,0
    .goto 116,50.98,37.10
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .complete 41782,4 --1/1 Locate Lea Stonepaw
step
    .goto 116,51.28,36.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lea Stonepaw|r
    .turnin 41782 >>Gebt die Quest Zu den Hügeln ab
    .target Lea Stonepaw
step
    #title |cFFFCDC00HINWEIS PRÜFEN|r
    .goto 116,50.50,37.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ursol|r
    *|cRXP_WARN_Hinweis: Falls ihr das Rollenspiel oder |cRXP_FRIENDLY_Ursol|r nicht sehen könnt, loggt euch neben |cRXP_FRIENDLY_Lea Steinpfote|r neu ein.|r
    .accept 41790 >>Akzeptiert die Quest Ursols erste Prüfung
    .target Ursol
step
    .goto 116,50.68,37.44
    >>Tötet die |cRXP_ENEMY_Ancestral Feldherr|r
    .complete 41790,1 --1/1 Overcome Ursol's first trial
    .mob Ancestral Champion
step
    .goto 116,50.52,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ursol|r
    .turnin 41790 >>Gebt die Quest Ursols erste Prüfung ab
    .accept 41791 >>Akzeptiert die Quest Ursols zweite Prüfung
    .target Ursol
step
    .goto 116,50.70,37.37
    >>Tötet die |cRXP_WARN_drei Wellen|r aus |cRXP_ENEMY_Ancestral-Kriegern|r und |cRXP_ENEMY_Schamanen|r
    .complete 41791,1 --1/1 Overcome the second of Ursol's trials
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ursol|r.
    .turnin 41791 >>Gebt die Quest Ursols zweite Prüfung ab
    .accept 41792 >>Akzeptiert die Quest Ursols dritte Prüfung
    .target Ursol
step
    .goto 116,50.53,37.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ursol, um die dritte Prüfung zu beginnen|r
    .complete 41792,1 --1/1 Speak with Ursol to begin the third trial
    .timer 50,Rollenspiel
    .target Ursol to begin the third trial
    .skipgossipid 45309
step
    .goto 116,51.15,36.99
    >>Tötet die spawning |cRXP_ENEMY_Ancestral Warriors|r und |cRXP_ENEMY_Shamans|r
    *|cRXP_WARN_Ihr könnt auch heal her|r
    .complete 41792,2 --1/1 Protect Lea Stonepaw
    .mob Ancestral Warrior
    .mob Ancestral Shaman
step
    .goto 116,50.51,37.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ursol|r
    .turnin 41792 >>Gebt die Quest Ursols dritte Prüfung ab
    .target Ursol
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lea Stonepaw|r
    .accept 40647 >>Akzeptiert die Quest Wenn Träume zu Alpträumen werden
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>Benutzt |T236878:0|t[Fläschchen of Moonwell]
    .complete 40647,1 --1/1 Enter the Emerald Dream
    .use 136414
step
    .isOnQuest 40647
    .goto 116,51.25,36.85
    .enterScenario 990 >>Betretet das Szenario |cRXP_PICK_Ursocs Unterschlupf|r.
step
    .isInScenario 990
    .goto 757,47.23,81.67,25,0
    .goto 757,48.72,51.65
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .scenario 2029,1 --Locate the Claws of Ursoc
step
    .goto 757,46.86,30.53
    .isInScenario 990
    >>Tötet die |cRXP_ENEMY_Rothoof Schänder|r und |cRXP_ENEMY_Shadowstalker|r
    .scenario 2327,1 --Defend the Spirit of Ursoc
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,50.13,32.38
    >>Tötet |cRXP_ENEMY_Blightborne Sludges|r und |cRXP_ENEMY_Schattenpirscher der Faulhufe|r.
    .scenario 2030,1 --Survive the first assault
    .mob Rothoof Shadowstalker
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,49.40,33.06
    >>Tötet die |cRXP_ENEMY_Rothoof Schänder|r und |cRXP_ENEMY_Shadowstalker|r.
    .scenario 2033,1 --Survive the second assault
    .mob Rothoof Defiler
    .mob Rothoof Shadowstalker
step
    .isInScenario 990
    .goto 757,46.32,30.25
    >>Tötet |cRXP_ENEMY_Blightborne Sludges|r und |cRXP_ENEMY_Verderbter Verteidiger|r.
    .scenario 2034,1 --Survive the third assault
    .mob Corrupted Defender
    .mob Blightborne Sludge
step
    .isInScenario 990
    .goto 757,50.30,31.30
    >>Tötet die zwei |cRXP_ENEMY_Verderbter Verteidiger|r. Wartet nach der Betäubung die 70 Sek. Rollenspiel ab.
    .scenario 2035,1 --Survive the final assault
    .mob Corrupted Defender
step
    .isInScenario 990
    .goto 757,49.96,28.35
    >>Tötet |cRXP_ENEMY_Malithar|r.
    .scenario 2040,1 --Defeat Malithar
    .complete 40647,2 --1/1 Defeat the Forces of the Nightmare
    .mob Malithar
step
    .isInScenario 990
    .goto 757,50.08,26.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Ursocs Klauen|r
    .scenario 2041,1 --Obtain the Claws of Ursoc
    .complete 40647,3 --1/1 Obtain the Claws of Ursoc
step
    .isOnQuest 40647
    .zoneskip 757,1
    .zone 116 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lea Stonepaw|r
    .skipgossipid 45251
    .target Lea Stonepaw
step
    .goto 116,51.25,36.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lea Stonepaw|r.
    .turnin 40647 >>Gebt die Quest Wenn Träume zu Alpträumen werden ab
    .accept 41918 >>Akzeptiert die Quest Rückkehr des Träumers
    .target Lea Stonepaw
step
    .zoneskip 715
    .isOnQuest 41918
    .zone 715 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    .zoneskip 715,1
    .isOnQuest 41918
    .goto 715,45.60,23.46
    .zone 747 >>|cRXP_WARN_Folgen dem Pfeil durch das Portal|r
step
    .goto 747,44.66,51.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 41918 >>Gebt die Quest Rückkehr des Träumers ab
    .target Rensar Großhuf
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Wiederherstellungsdruide
#displayname Artefakt Waffe: Wiederherstellung
#next a) Ordenshalle Druide Part 1
#internal

<< Druid

step
    #completewith next
    #label UseDreamwalkA
    .zoneskip 715
    .isQuestAvailable 40646
    .cast 193753 >>Benutzt |T135763:0|t[Traumwanderung]
    .usespell 193753
step
    #hidewindow
    #completewith UseDreamwalkA
    .isQuestAvailable 40646
    .zone 747 >>Folgt dem Pfeil
step
    .zoneskip 715,1
    .isQuestAvailable 40646
    .goto 715,45.60,23.46
    .zone 747 >>Geht durch das Portal
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isQuestAvailable 40649
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44443 >>Akzeptiert die Quest Waffen der Ahnen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 44443,1 --1/1 Choose a fourth artifact to pursue
    .choose 1390105
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 44431
    .isQuestAvailable 44443
    .isOnQuest 44443
    .goto 747,44.66,51.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44443 >>Gebt die Quest Waffen der Ahnen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 44431 >>Akzeptiert die Quest Noch mehr alte Waffen
    .target Rensar Großhuf
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 44431,1 --1/1 Choose a third artifact to pursue
    .choose 1390105
    .target Rensar Großhuf
    .skipgossipid 45117
step
    .isQuestTurnedIn 43980
    .isQuestAvailable 44431
    .isOnQuest 44431
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 44431 >>Gebt die Quest Noch mehr alte Waffen ab
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isQuestAvailable 40649
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .accept 43980 >>Akzeptiert die Quest Noch eine alte Waffe
    .target Rensar Großhuf
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 43980,1 --1/1 Choose a second artifact to pursue
    .choose 1390105
    .target Rensar Großhuf
    .skipgossipid 45119
step
    .isQuestTurnedIn 40646
    .isQuestAvailable 43980
    .isOnQuest 43980
    .goto 747,44.67,51.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .turnin 43980 >>Gebt die Quest Noch eine alte Waffe ab
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .accept 40646 >>Akzeptiert die Quest Legendäre Waffen
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 40646,1 --1/1 Artifact weapon chosen
    .choose 1390105
    .target Rensar Großhuf
    .skipgossipid 45120
step
    .isQuestAvailable 40646
    .isOnQuest 40646
    .goto 747,44.50,51.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r.
    .turnin 40646 >>Gebt die Quest Legendäre Waffen ab
    .target Rensar Großhuf
step
    #completewith Leafbeard the Storied
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 747,44.61,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeper Remulos|r.
    .accept 40649 >>Akzeptiert die Quest Trefft Mylune
    .target Bewahrer Remulos
step
    .goto 747,52.30,52.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r.
    .turnin 40649 >>Gebt die Quest Trefft Mylune ab
    .accept 41422 >>Akzeptiert die Quest Notwendige Vorbereitungen
    .target Mylune
step
    .goto 747,35.66,25.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Leeren Becher|r.
    .complete 41422,1 --1/1 Cup of Moonwater
step
    #label Leafbeard the Storied
    .goto 747,32.79,29.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blattbart der Erzähler|r.
    .complete 41422,2 --1/1 Leafbeard's Blessing obtained
    .target Leafbeard the Storied
    .skipgossipid 46113
    .skipgossipid 45260
step
    .goto 747,52.30,52.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mylune|r.
    .turnin 41422 >>Gebt die Quest Notwendige Vorbereitungen ab
    .accept 41449 >>Akzeptiert die Quest Gemeinsamer Traum
    .target Mylune
step
    #completewith next
    #label JoinTheDreamerA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naralex|r.
    .turnin 41449 >>Gebt die Quest Gemeinsamer Traum ab
    .accept 41436 >>Akzeptiert die Quest In tiefem Schlummer
    .target Naralex
step
    #title |cFFFCDC00Betretet die Höhle|r
    #completewith JoinTheDreamerA
    .goto 747,46.26,28.36,8,0
    .goto 747,41.55,16.90,8,0
    .goto 747,42.95,14.59,8,0
    .goto 747,42.18,9.31,8,0
    .goto 747,44.57,12.05,6,0
    .goto 747,43.95,6.25,8 >>|cRXP_WARN_Folgt dem Pfeil in die Höhle|r
step
    #requires JoinTheDreamerA
    .goto 747,40.62,1.53,10,0
    .goto 641,39.56,18.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naralex|r.
    .turnin 41449 >>Gebt die Quest Gemeinsamer Traum ab
    .accept 41436 >>Akzeptiert die Quest In tiefem Schlummer
    .target Naralex
step
    .goto 641,39.63,18.09
    >>Benutzt |T608949:0|t[Cup of Moonwater]
    .complete 41436,1 --1/1 Enter the Emerald Dream
    .use 135506
step
    #completewith InDeepSlumberC
    #label InDeepSlumberA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_G'Hanir|r |cRXP_WARN_außerhalb der Höhle|r.
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
step
    #title |cFFFCDC00Befreit Bashana|r
    #completewith InDeepSlumberA
    #label InDeepSlumberB
    .goto 747,40.83,2.02,8,0
    .goto 747,43.96,6.16,8,0
    .goto 747,47.97,4.09,8,0
    .goto 747,47.21,7.17
    .cast 311698 >>Klickt |cRXP_PICK_Wurzeln|r
step
    #title |cFFFCDC00Verlasst die Höhle, heilt euch|r
    #requires InDeepSlumberB
    #completewith InDeepSlumberA
    #label InDeepSlumberC
    .goto 747,45.81,11.47,10,0
    .goto 747,48.95,15.49,8,0
    .goto 747,41.96,9.58,8,0
    .goto 747,42.55,16.10,8,0
    .goto 747,41.20,18.49,8,0
    .goto 747,46.76,29.02,8 >>|cRXP_WARN_Folgt dem Pfeil aus der Höhle|r.
    *|cRXP_WARN_Falls die Verderbnis zu sehr tickt, brecht die Quest ab und meldet euch ab|r.
step
    #requires InDeepSlumberA
    .goto 747,45.12,50.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_G'Hanir|r
    .complete 41436,2 --1/1 Corrupted G'Hanir, the Mother Tree
    .timer 10,Aufwachen in
step
    .goto 641,39.62,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naralex|r.
    .turnin 41436 >>Gebt die Quest In tiefem Schlummer ab
    .accept 41690 >>Akzeptiert die Quest Erneutes Zusammentreffen
    .target Naralex
step
    #completewith next
    #label ReconveneA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyessa Bloomwatcher|r.
    .turnin 41690 >>Gebt die Quest Erneutes Zusammentreffen ab
    .accept 41689 >>Akzeptiert die Quest Reinigung des Mutterbaums
    .target Lyessa Bloomwatcher
step
    #title |cFFFCDC00VERLASST Höhle|r
    #completewith ReconveneA
    .goto 747,41.02,2.21,8,0
    .goto 747,48.08,15.56,15,0
    .goto 747,41.99,9.50,8,0
    .goto 747,42.72,15.91,8,0
    .goto 747,41.27,18.72,8,0
    .goto 747,46.66,28.99,8 >>|cRXP_WARN_Folgt dem Pfeil, um die Höhle zu verlassen|r
step
    #requires ReconveneA
    .goto 747,45.20,51.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyessa Bloomwatcher|r.
    .turnin 41690 >>Gebt die Quest Erneutes Zusammentreffen ab
    .accept 41689 >>Akzeptiert die Quest Reinigung des Mutterbaums
    .target Lyessa Bloomwatcher
step
    .goto 747,55.74,21.91
    >>Geht durch das Portal zum Dreamway
    .complete 41689,1 --1/1 Enter the Dreamway
step
    .goto 715,53.69,53.00
    >>Geht durch das Portal nach Hyjal
    .complete 41689,2 --1/1 Travel to Mount Hyjal
step
    #hidewindow
    #completewith next
    #label CleansingTheMotherTreeA
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    #completewith CleansingTheMotherTreeA
    #label CleansingTheMotherTreeB
    .enterScenario 1061 >>Betretet das |cRXP_PICK_Reinigung des Mutterbaums|r-Szenario
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #requires CleansingTheMotherTreeB
    #completewith next
    #hidewindow
    .gossipoption 45306 >>Folgt dem Pfeil
    .timer 21,Omnuron Rollenspiel
step
    #requires CleansingTheMotherTreeB
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,59.51,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skylord Omnuron|r.
    .scenario 2259,1 --Find out what happened from Skylord Omnuron.
    .target Skylord Omnuron
    .skipgossipid 45306
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    --.goto 198/1,-349880.01465,493840.00000
    .goto 198,60.52,44.54
    >>Heilt |cRXP_FRIENDLY_Celestine Erntedank|r.
    .scenario 2269,2 --Heal Celestine to full health.
    .target Celestine Erntedank
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,61.68,43.60
    >>Heilung |cRXP_FRIENDLY_Archdruid Hamuul Runentotem|r.
    .scenario 2269,1 --Heal Hamuul to full health.
    .target Archdruid Hamuul Runetotem
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.70,41.85
    >>Benutzt |T236288:0|t[Heilung der Natur] on |cRXP_FRIENDLY_Zen'tabra|r.
    .scenario 2269,3 --Cleanse Zen'tabra.
    .target Zen'tabra
    .macro Nature's Cure,236288 >>Heilung der Natur
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    #hidewindow
    #completewith next
    .gossipoption 45261 >>Folgt dem Pfeil
    .timer 6,Kurz Roleplay
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .goto 198,60.24,42.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyessa Bloomwatcher|r.
    .scenario 2270,1 --Speak to Lyessa.
    .timer 180,Kampfdauer
    .target Lyessa Bloomwatcher
    .skipgossipid 45261
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.31,42.76
    >>|cRXP_WARN_Heilt eure Verbündeten für ~3 Minuten|r.
    .scenario 2272,1 --1
    .scenario 2272,2 --Lyessa Must Survive
    .skipgossipid 45138
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,25.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Lyessa Bloomwatcher|r.
    .scenario 2325,1 --Give Corrupted G'Hanir to Lyessa.
    .target Lyessa Bloomwatcher
step
    .isQuestNotComplete 41689
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Wartet auf das Rollenspiel|r.
    .scenario 2325,2 --Witness G'Hanir's rebirth.
    .complete 41689,3 --1/1 G'Hanir cleansed
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_G'Hanir|r.
    .scenario 2372,1 --Wield G'Hanir, the Mother Tree.
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>Benutzt |T1115592:0|t[Ruf des Mutterbaums] im Questtagebuch unter eurer Minikarte.
    .scenario 2274,1 --Call upon the souls of the forest.
    .timer 15,Destromath Rollenspiel
step
    .isOnQuest 41689
    .isInScenario 1061
    .goto 198,60.56,42.81
    >>|cRXP_WARN_Wartet auf das Rollenspiel|r.
    .scenario 2274,2 --Eliminate Destromath.
step
    #completewith CleansingTheMotherTreeE
    #label CleansingTheMotherTreeC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyessa Bloomwatcher|r.
    .turnin 41689 >>Gebt die Quest Reinigung des Mutterbaums ab
    .target Lyessa Bloomwatcher
step
    .zoneskip 198,1
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeD
    .goto 198,59.05,43.52
    .zone 715 >>BETRETET das Portal zum Smaragdgrünen Traumpfad
step
    #requires CleansingTheMotherTreeD
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeF
    .zone 715 >>Benutzt |T135763:0|t[Traumwanderung]
step
    .zoneskip 715,1
    #requires CleansingTheMotherTreeF
    #completewith CleansingTheMotherTreeC
    #label CleansingTheMotherTreeE
    .goto 715,45.60,23.46
    .zone 747 >>Betretet das Portal zum Hain der Träume
step
    #requires CleansingTheMotherTreeC
    .goto 747,45.20,51.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyessa Bloomwatcher|r.
    .turnin 41689 >>Gebt die Quest Reinigung des Mutterbaums ab
    .target Lyessa Bloomwatcher
]])
--Balance 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Gleichgewichtsdruide
#displayname Artefakt Waffe: Gleichgewicht
#next ac) Ordenshalle Druide Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Gleichgewichtsdruide
]])
--Feral 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Wildheitsdruide
#displayname Artefakt Waffe: Wildheit
#next ac) Ordenshalle Druide Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Wildheitsdruide
]])
--Guardian 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Wächterdruide
#displayname Artefakt Waffe: Wächter
#next ac) Ordenshalle Druide Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Wächterdruide
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Wiederherstellungsdruide
#displayname Artefakt Waffe: Wiederherstellung
#next ac) Ordenshalle Druide Part 2
#internal

<< Druid

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Wiederherstellungsdruide
]])

--Druid Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Druide Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Druide
#chapter
#internal

<< Druid

step
    #completewith Making Trails2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rensar Greathoof|r
    .accept 40646 >>Akzeptiert die Quest Legendäre Waffen
    .target Rensar Großhuf
step
    .isQuestAvailable 40646
    .isQuestAvailable account,91955
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_WICHTIG: Wählt denjenigen aus, den ihr bereits habt, um zusätzliche 10% XP zu erhalten (nur einmal)|r
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Balance Druid >> Gleichgewicht(SPS) Questline
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Feral Druid >> Wildheit(SPS) Questline
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Guardian Druid >> Wächter(Schutz) Questline
    .clicknext RestedXP Legion Remix\z) Artifact Weapon: Restoration Druid >> Wiederherstellung(Heilung) Questline
step
    #include ac) Order Hall Druid Part 2@Sowing The Seed-Making Trails
step
    .zoneskip 747,1
    .goto 747,56.51,43.15
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
]])

-- --------- Hunter ---------

--Beast Mastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Meister der Tiere
#displayname Artefakt Waffe: Meister der Tiere
#next a) Ordenshalle Jäger Part 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 44366 >>Akzeptiert die Quest Ein letztes Abenteuer
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_This will automatically pick the Meister der Tiere artifact|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390106
    .target Emmarel Shadewarden
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 44366 >>Gebt die Quest Ein letztes Abenteuer ab
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41541
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 44043 >>Akzeptiert die Quest Die Legende geht weiter
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Das wird automatisch das Meister der Tiere Artefakt auswählen.|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390106
    .target Emmarel Shadewarden
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 44043 >>Gebt die Quest Die Legende geht weiter ab
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 40618 >>Akzeptiert die Quest Legendäre Waffen
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_This will automatically pick the Meister der Tiere artifact|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390106
    .target Emmarel Shadewarden
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40618 >>Gebt die Quest Legendäre Waffen ab
    .target Emmarel Shadewarden
step
    #completewith Beastly Expedition
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 41541 >>Akzeptiert die Quest Eine tierische Expedition
    .target Emmarel Shadewarden
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 41541 >>Akzeptiert die Quest Eine tierische Expedition
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40959
    .isOnQuest 41541
    .goto 739,48.66,43.46
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
step
    #label Beastly Expedition
    .goto 627,71.39,50.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r.
    .turnin 41541 >>Gebt die Quest Eine tierische Expedition ab
    .accept 41574 >>Akzeptiert die Quest Gestohlener Donner
    .target Grif Wildheart
step
    #completewith next
    #hidewindow
    .vehicle 106236 >>Folgt dem Pfeil
    .timer 65,Flug Dauer
step
    .goto 627,71.22,51.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Huey|r.
    .complete 41574,1 --1/1 Fly with Grif to Shield's Rest
    .target Huey
step
    #completewith next
    #hidewindow
    .goto 634,85.40,9.66
    .gossipoption 45594 >>Folgt dem Pfeil
    .timer 71,Grif Rollenspiel
step
    .goto 634,84.90,9.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r.
    .scenario 2291,1 --1/1 Meet Prustaga with Grif.
    .target Grif Wildheart
    .skipgossipid 45594
step
    #title |cFFFCDC00Weicht den kleinen Tornados aus|r
    .isInScenario 1068
    .goto 635,75.26,58.95,10,0
    .goto 635,52.67,52.30
    >>|cRXP_WARN_Folgt dem Pfeil in die Gruft.|r
    >>Tötet |cRXP_ENEMY_Stormweaver Ingrida|r, und |cRXP_ENEMY_Spectral Windshaper|r.
    .scenario 2300,1 --Find Warlord Volund's tomb.
    .mob Stormweaver Ingrida
    .mob Spectral Windshaper
step
    .isInScenario 1068
    .goto 635,55.02,43.84
    >>Tötet die |cRXP_ENEMY_Rastlose Grabwächter|r und |cRXP_ENEMY_Gestörte Fährtenleser|r.
    .scenario 2301,1 --Protect Prustaga as she opens Volund's tomb.
    .timer 131,Rollenspiel-Dauer
    .mob Restless Tombguard
    .mob Disturbed Tracker
    .mob Disturbed Worg
step
    .isInScenario 1068
    .goto 635,58.06,19.20
    >>Tötet den |cRXP_ENEMY_Automatisierten Zermalmer|r. |cRXP_WARN_Wartet auf das Rollenspiel.|r
    .scenario 2298,1 --Search for Titanstrike.
    .mob Automated Crusher
step
    .isInScenario 1068
    .goto 635,58.27,17.73
    >>Tötet den |cRXP_ENEMY_Kriegsfürsten Volund|r. |cRXP_WARN_Wartet auf das Rollenspiel.|r
    .scenario 2423,1 --Defeat Warlord Volund.
    .mob Warlord Volund
step
    .isInScenario 1068
    .goto 635,58.25,17.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Teleporterplatte|r.
    .scenario 2424,1 --Join Keeper Mimiron in Ulduar.
    .complete 41574,2 --Track down Titanstrike: 1/1
step
    #title |cFFFCDC00Weicht den Bomben aus|r
    .goto 745,44.93,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mimiron|r.
    .turnin 41574 >>Gebt die Quest Gestohlener Donner ab
    .accept 42158 >>Akzeptiert die Quest Die Werkstatt des Schöpfers
    .target Mimiron
step
    #completewith TheCreatorsWorkshopI
    #label TheCreatorsWorkshopA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopB
    .goto 745,44.93,37.33
    .gossipoption 45357 >>Sprecht mit |cRXP_FRIENDLY_Mimiron|r.
    .timer 50,First Notfall
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Bedienpult (1/2)
    #requires TheCreatorsWorkshopB
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopC
    #title Springt über die Wellen
    .goto 745,40.46,41.42
    .cast 6477 >>Klickt auf das |cRXP_PICK_Bedienpult|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Bedienpult (2/2)
    #requires TheCreatorsWorkshopC
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopD
    #title Springt über die Wellen
    #loop
    .goto 745,40.46,41.42,8,0
    .goto 745,41.44,44.14,8,0
    .cast 6477 >>Klickt auf das |cRXP_PICK_Bedienpult|r.
    .timer 14,Second Notfall
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Stabilisierungs-Knotenpunkt (1/4)
    #requires TheCreatorsWorkshopD
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopE
    .goto 745,45.50,43.96
    .cast 6477 >>Klickt |cRXP_PICK_Stabilisierungsmatrixknoten|r.
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
    #title Stabilisierungsknotenpunkt (2/4)
    #requires TheCreatorsWorkshopE
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopF
    .cast 6477 >>Klickt |cRXP_PICK_Stabilisierungsmatrixknoten|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Stabilisierungsknotenpunkt (3/4)
    #requires TheCreatorsWorkshopF
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopG
    .cast 6477 >>Klickt |cRXP_PICK_Stabilisierungsmatrixknoten|r.
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #title Stabilisierungsknotenpunkt (4/4)
    #requires TheCreatorsWorkshopG
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopH
    .cast 6477 >>Klickt |cRXP_PICK_Stabilisierungsmatrixknoten|r.
    .timer 25,Lahmy Notfall
step
    .isOnQuest 42158
    .isQuestNotComplete 42158
    #requires TheCreatorsWorkshopH
    #completewith TheCreatorsWorkshopA
    #label TheCreatorsWorkshopI
    .goto 745,43.65,36.37
    .cast 6477 >>Klickt auf |cRXP_PICK_DO NOT PUSH THIS BUTTON!|r.
    .timer 27,Abschluss der Quest in
step
    #requires TheCreatorsWorkshopA
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mimiron|r.
    .complete 42158,1 --1/1 Mimiron assisted
    .target Mimiron
    .skipgossipid 45357
step
    .goto 745,43.66,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mimiron|r.
    .turnin 42158 >>Gebt die Quest Die Werkstatt des Schöpfers ab
    .accept 42185 >>Akzeptiert die Quest Jagt niemals allein
    .target Mimiron
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .zoneskip 745,1
    .goto 745,43.73,37.94
    .zone 120 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Teleporterplatte|r.
step
    .isOnQuest 42185
    .isQuestNotComplete 42185
    .goto 120,25.73,47.51
    .enterScenario 1099 >>Fliegt zum Szenario |cRXP_PICK_Never Jagd Alone|r.
    .timer 33,Rollenspiel
step
    .isInScenario 1099
    #title Bewegt euch einmal um das Rollenspiel zu starten
    .goto 120,25.78,47.70
    >>|cRXP_WARN_Wait for the roleplay.|r
    .scenario 2452,1 --Converse with Thorim.
step
    .isInScenario 1099
    .goto 120,25.90,48.55
    >>Tötet die |cRXP_ENEMY_Thunderous Proto-Drakes|r und |cRXP_ENEMY_Fervent Sturmrufer|r.
    .scenario 2474,1 --Fend off the vrykul horde.
    .mob Thunderous Proto-Drake
    .mob Fervant Stormcaller
step
    .goto 120,25.74,47.38
    .isInScenario 1099
    >>Tötet |cRXP_ENEMY_Prustaga|r.
    .scenario 2480,1 --Defeat Prustaga.
    .timer 73,Rollenspiel
    .mob Prustaga
step
    .isInScenario 1099
    .goto 120,25.74,47.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Hati|r.
    .scenario 2481,1 --Bind Hati's spirit to your own.
    .target Hati
step
    .isInScenario 1099
    .goto 120,25.74,47.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Titanstrike|r.
    .scenario 2482,1 --Wield Titanstrike.
    .complete 42185,2 --1/1 Titanstrike recovered
    .timer 65,Wartet auf Huey
step
    .isInScenario 1099
    .goto 120,26.05,47.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_FRIENDLY_Huey|r nach dem Rollenspiel.
    .scenario 2483,1 --Ride Huey to return to Dalaran.
    .timer 36,Flug Dauer
step
    .isQuestTurnedIn 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r.
    .turnin 42185 >>Gebt die Quest Jagt niemals allein ab
    .target Grif Wildheart
step
    .isQuestAvailable 40959
    .goto 627,69.68,43.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r.
    .turnin 42185 >>Gebt die Quest Jagt niemals allein ab
    .accept 41009 >>Akzeptiert die Quest Unter Jägern
    .target Grif Wildheart
step
    .isQuestAvailable 40959
    #completewith next
    #label HunterToHunterBMA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 41009 >>Gebt die Quest Unter Jägern ab
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40959
    #title |cRXP_WARN_ENTER House|r
    #completewith HunterToHunterBMA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Folgt dem Pfeil in das Haus.|r
step
    .isQuestAvailable 40959
    #requires HunterToHunterBMA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 41009 >>Gebt die Quest Unter Jägern ab
    .target Emmarel Shadewarden
]])
--Marksmanship
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Treffsicherheit
#displayname Artefakt Waffe: Treffsicherheit
#next a) Ordenshalle Jäger Part 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 44366 >>Akzeptiert die Quest Ein letztes Abenteuer
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Das wird das Treffsicherheit-Artefakt automatisch aufnehmen.|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390107
    .target Emmarel Shadewarden
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 44366 >>Gebt die Quest Ein letztes Abenteuer ab
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41540
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 44043 >>Akzeptiert die Quest Die Legende geht weiter
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Dies wird automatisch das Treffsicherheits-Artefakt auswählen|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390107
    .target Emmarel Shadewarden
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 44043 >>Gebt die Quest Die Legende geht weiter ab
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 40618 >>Akzeptiert die Quest Legendäre Waffen
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Das wird das Treffsicherheit-Artefakt automatisch aufnehmen.|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390107
    .target Emmarel Shadewarden
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40618 >>Gebt die Quest Legendäre Waffen ab
    .target Emmarel Shadewarden
step
    #completewith RendezvousWithTheCourierA
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 41540 >>Akzeptiert die Quest Treffen mit dem Kurier
    .target Emmarel Shadewarden
step
    .goto 627,60.03,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 41540 >>Akzeptiert die Quest Treffen mit dem Kurier
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40959
    .isOnQuest 41540
    .goto 739,48.66,43.46
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
step
    #completewith next
    #label RendezvousWithTheCourierA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Courier Larkspur|r.
    .turnin 41540 >>Gebt die Quest Treffen mit dem Kurier ab
    .accept 40392 >>Akzeptiert die Quest Ruf des Schützen
    .target Courier Larkspur
step
    .isQuestAvailable 40959
    .zoneskip 627,1
    #title |cFFFCDC00Verlasst das Haus|r
    #completewith RendezvousWithTheCourierA
    .goto 627,58.58,51.30,8 >>|cRXP_WARN_Folgt dem Pfeil aus dem Haus.|r
step
    #requires RendezvousWithTheCourierA
    .goto 627,71.43,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Courier Larkspur|r.
    .turnin 41540 >>Gebt die Quest Treffen mit dem Kurier ab
    .target Courier Larkspur
    .accept 40392 >>Akzeptiert die Quest Ruf des Schützen
step
    .goto 646,32.28,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa Windläufer|r.
    .complete 40392,2 --1/1 Speak to Vereesa Windrunner
    .target Vereesa Windläufer
step
    .convertquest 40402,40400 << Alliance
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa Windläufer|r.
    .turnin 40392 >>Gebt die Quest Ruf des Schützen ab
    .accept 40402 >>Akzeptiert die Quest Geheimoperation
    .target Vereesa Windläufer
step
    #completewith next
    #hidewindow
    .gossipoption 47259 >>Folgt dem Pfeil
    .timer 56,Vereesa Rollenspiel
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa Windläufer|r.
    .complete 40402,1 --1/1 Listen to Vereesa Windrunner
    .target Vereesa Windläufer
    .skipgossipid 47259
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa Windläufer|r.
    .turnin 40402 >>Gebt die Quest Geheimoperation ab
    .accept 40419 >>Akzeptiert die Quest Rettungsmission
    .target Vereesa Windläufer
step
    #completewith next
    #hidewindow
    .gossipoption 47260 >>Folgt dem Pfeil
    .timer 14,Vereesa Rollenspielgespräch
step
    .goto 646,32.29,32.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa Windläufer|r.
    .complete 40419,1 --1/1 Speak to Vereesa and begin the mission
    .target Vereesa Windläufer
    .skipgossipid 47260
step
    .isOnQuest 40419
    .goto 646,32.06,31.98
    .enterScenario 972 >>Geht durch das Portal, um das Szenario |cRXP_PICK_Erbe der Windrunners|r zu betreten.
step
    .goto 714,16.33,52.95
    >>|cRXP_WARN_Folgt dem Pfeil.|r
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
    >>Tötet die |cRXP_ENEMY_Eredar Portal Lords|r.
    .scenario 2000,1 --Eliminate the demon summoners to close the portal.
    .timer 12,Mauer Roleplay
    .mob Eredar Portal Lord
step
    .isInScenario 972
    .goto 714,38.84,45.41
    >>Tötet |cRXP_ENEMY_Dämonen|r auf dem Weg von Euch, um den Weg für |cRXP_FRIENDLY_Vereesa Windläufer|r zu löschen.
    .scenario 2001,1 --Advance into Legion territory and look for Alleria and Orestes.
step
    .isInScenario 972
    .goto 714,40.57,45.66
    >>Tötet |cRXP_ENEMY_Mistress Torvis|r und |cRXP_WARN_wartet auf das Ende des Rollenspiels|r.
    .scenario 2002,1 --Eliminate Mistress Torvis and save Orestes.
step
    .isInScenario 972
    .goto 714,41.13,54.04,25,0
    .goto 714,50.07,57.89
    >>Tötet |cRXP_ENEMY_Herald Xarbizuld|r.
    .scenario 2017,1 --Enter the cathedral and defeat Herald Xarbizuld.
    .mob Herald Xarbizuld
step
    .isInScenario 972
    .goto 714,64.28,60.03
    >>Tötet |cRXP_ENEMY_Hochinquisitor Qormaladon|r und |cRXP_ENEMY_Gazes of Qormaladon|r.
    .scenario 2063,1 --Defeat High Inquisitor Qormaladon and his eyes
    .mob Fiery Gaze of Qormaladon
    .mob Icy Gaze of Qormaladon
    .mob High Inquisitor Qormaladon
step
    #completewith next
    #hidewindow
    .goto 714,69.98,59.65,20,0
    .goto 714,71.47,73.66,20 >>Folgt dem Pfeil
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 2255,1 --Help Vereesa search the Inquisitor's overlook for Alleria.
    .complete 40419,3 --1/1 Rescue Alleria Windrunner
step
    .isInScenario 972
    .goto 714,71.47,73.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Thas'dorah, Erbstück von Haus Windläufer|r an.
    .scenario 2061,1 --Pick up Thas'dorah, Legacy of the Windrunners.
    .complete 40419,4 --1/1 Take Thas'dorah (Optional)
    .timer 8,Rollenspiel
step
    .goto 714,70.91,72.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa und leave Niskara|r.
    .complete 40419,5 --1/1 Talk to Vereesa and leave Niskara
    .target Vereesa and leave Niskara
    .skipgossipid 45238
step
    .goto 627,66.03,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vereesa Windläufer|r.
    .turnin 40419 >>Gebt die Quest Rettungsmission ab
    .accept 40952 >>Akzeptiert die Quest Unter Jägern
    .target Vereesa Windläufer
step
    #completewith next
    #label HunterToHunterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40952 >>Gebt die Quest Unter Jägern ab
    .target Emmarel Shadewarden
step
    #title |cRXP_WARN_Enter Haus|r
    #completewith HunterToHunterA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Folgt dem Pfeil in das Haus.|r
step
    #requires HunterToHunterA
    .goto 627,60.06,53.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40952 >>Gebt die Quest Unter Jägern ab
    .target Emmarel Shadewarden
]])
--Survival
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Überlebenskunst
#displayname Artefakt Waffe: Überlebenskunst
#next a) Ordenshalle Jäger Part 1
#internal

<< Hunter

step
    .isQuestTurnedIn 44043
    .isQuestAvailable 44366
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 44366 >>Akzeptiert die Quest Ein letztes Abenteuer
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Dadurch wird automatisch das Überlebenskunst-Artefakt gewählt|r
    .complete 44366,1 --1/1 Choose a third artifact to pursue
    .choose 1390108
    .target Emmarel Shadewarden
    .skipgossipid 45112
step
    .isQuestAvailable 44366
    .isOnQuest 44366
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 44366 >>Gebt die Quest Ein letztes Abenteuer ab
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40618
    .isQuestAvailable 44043
    .isQuestAvailable 41542
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 44043 >>Akzeptiert die Quest Die Legende geht weiter
    .target Emmarel Shadewarden
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Dadurch wird automatisch das Artefakt Überlebenskunst gewählt|r
    .complete 44043,1 --1/1 Choose a second artifact to pursue
    .choose 1390108
    .target Emmarel Shadewarden
    .skipgossipid 46492
step
    .isQuestAvailable 44043
    .isOnQuest 44043
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 44043 >>Gebt die Quest Die Legende geht weiter ab
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 40618 >>Akzeptiert die Quest Legendäre Waffen
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    *|cRXP_WARN_Dadurch wird automatisch das Überlebenskunst-Artefakt gewählt|r
    .complete 40618,1 --1/1 Artifact chosen
    .choose 1390108
    .target Emmarel Shadewarden
    .skipgossipid 44968
step
    .isQuestAvailable 40618
    .isOnQuest 40618
    .goto 627,60.05,53.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40618 >>Gebt die Quest Legendäre Waffen ab
    .target Emmarel Shadewarden
step
    #completewith Preparation for the Hunt
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40959
    .goto 739,43.38,26.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 41542 >>Akzeptiert die Quest Vorbereitung auf die Jagd
    .target Emmarel Shadewarden
step
    .goto 627,60.04,53.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 41542 >>Akzeptiert die Quest Vorbereitung auf die Jagd
    .target Emmarel Shadewarden
step
    .isQuestTurnedIn 40959
    .isOnQuest 41542
    .goto 739,48.66,43.46
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
step
    #label Preparation for the Hunt
    .goto 627,71.11,50.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Apata Der Hochberg|r.
    .turnin 41542 >>Gebt die Quest Vorbereitung auf die Jagd ab
    .accept 39427 >>Akzeptiert die Quest Der Segen des Adlergeists
    .target Apata Highmountain
step
    .goto 627,71.74,50.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_FRIENDLY_Der Hochberg Hochberghippogryph|r an.
    .complete 39427,1 --1/1 Fly to Spiritwatch Point
    .target Highmountain Hippogryph
    --.timer 107,Flight Duration
step
    .goto 650,59.53,81.22
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 39427,2 --1/1 Get back to Spiritwatch Point
step
    .goto 650,58.91,81.14
    >>Tötet |cRXP_ENEMY_Degar Bloodtotem|r.
    .complete 39427,3 --1/1 Kill Degar Bloodtotem
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Ohn'ahra|r.
    .complete 39427,4 --1/1 Receive the Eagle Spirit's blessing
    .target Ohn'ahra
step
    .goto 650,60.79,80.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Apata Der Hochberg|r.
    .turnin 39427 >>Gebt die Quest Der Segen des Adlergeists ab
    .accept 40385 >>Akzeptiert die Quest Der Speer im Schatten
    .target Apata Highmountain
step
    .goto 650,60.82,80.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Ohn'ahra|r.
    .complete 40385,1 --1/1 Take the Eagle Spirit flight to the harbor
    .target Ohn'ahra
step
    .isOnQuest 40385
    .goto 650,60.82,80.83
    .enterScenario 973 >>Betretet |cRXP_PICK_The Speer in the Schatten|r.
step
    #completewith next
    #hidewindow
    .gossipoption 45080 >>Folgt dem Pfeil
    .timer 27,Apata Rollenspiel
step
    .isInScenario 973
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Apata am Landeplatz|r.
    .scenario 1965,1 --Speak with Apata at the landing site.
    .target Apata at the landing site.
    .skipgossipid 45080
step
    .isInScenario 973
    .goto 694,56.83,46.24
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 1967,1 --Investigate Tideskorn Harbor
step
    .isInScenario 973
    .goto 634,57.51,46.48
    >>Tötet den |cRXP_ENEMY_Nebelwärter|r oder benutzt Eure |T135834:0|t[Eiskältefalle] auf den |cRXP_ENEMY_Nebelwärter|r.
    .scenario 1968,1 --Defeat the Mist Warder using your Freezing Trap.
    .mob Mist Warder
    .usespell 187650
step
    .isInScenario 973
    .goto 634,57.61,46.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Runischen Schutzstein|r.
    .scenario 2055,1 --Obtain the Activated Wardstone
step
    .isInScenario 973
    #title Wardstone (1/3)
    .goto 634,58.96,46.69,24,0
    .goto 634,58.80,44.93
    >>Tötet |cRXP_ENEMY_Nebelwärter|r oder benutzt |T135834:0|t[Eiskältefalle] von Euch gegen |cRXP_ENEMY_Nebelwärter|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Runischer Schutzstein|r an.
    *|cRXP_WARN_HINWEIS:|r Die Reihenfolge ist vorgegeben. Falls ihr die Quest in einer anderen Reihenfolge macht, ist der Wegpunkt fehlerhaft.
    .scenario 1969,1,1 --1/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Wardstone (2/3)
    .goto 634,58.62,43.48
    >>Tötet den |cRXP_ENEMY_Nebelwärter|r oder benutzt Eure |T135834:0|t[Eiskältefalle] auf den |cRXP_ENEMY_Nebelwärter|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Runischen Schutzstein|r.
    *|cRXP_WARN_HINWEIS:|r Die Reihenfolge ist vorgegeben. Falls ihr die Quest in einer anderen Reihenfolge macht, ist der Wegpunkt fehlerhaft.
    .scenario 1969,1,2 --2/3 Obtain more Activated Wardstones
step
    .isInScenario 973
    #title Wardstone (3/3)
    .goto 634,60.01,43.75
    >>Tötet den |cRXP_ENEMY_Nebelwärter|r oder benutzt Eure |T135834:0|t[Eiskältefalle] auf den |cRXP_ENEMY_Nebelwärter|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Runischen Schutzstein|r.
    *|cRXP_WARN_HINWEIS:|r Die Reihenfolge ist vorgegeben. Falls ihr die Quest in einer anderen Reihenfolge macht, ist der Wegpunkt fehlerhaft.
    .scenario 1969,1 --3/3 Obtain more Activated Wardstones
step
    #completewith next
    #hidewindow
    .gossipoption 44907 >>Folgt dem Pfeil
    .timer 13,Apata Rollenspiel
step
    .isInScenario 973
    .goto 634,55.32,42.45,-1
    .goto 694,55.32,42.45,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Apata Der Hochberg|r.
    .scenario 1970,1 --Speak with Apata
    .target Apata Highmountain
    .skipgossipid 44906
    .skipgossipid 44907
step
    .isInScenario 973
    .goto 694,55.44,42.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Magic Harpune|r an.
    .scenario 1971,1 --Use the harpoon to cross the fog.
    .timer 20,Rollenspiel
step
    .isInScenario 973
    .goto 694,55.95,40.44
    >>Benutzt |T135815:0|t[Leuchtfeuer] und tötet |cRXP_ENEMY_Illusory Stalkers|r.
    .scenario 1976,1 --Use Flare to reveal and defeat the illusions.
    .mob Illusory Stalker
    .usespell 1543
step
    .isInScenario 973
    .goto 694,54.91,39.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Nebelfalle|r.
    >>Tötet die |cRXP_ENEMY_Illusory Stalkers|r und |cRXP_ENEMY_Dakarr|r.
    .scenario 1977,1 --Place a trap in the mists to catch Dakarr.
    .mob Dakarr
    .mob Illusory Stalker
step
    .isInScenario 973
    .goto 694,57.40,37.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Nebelfalle|r an.
    >>Tötet die |cRXP_ENEMY_Illusory Stalkers|r und |cRXP_ENEMY_Dakarr|r.
    .scenario 1985,1 --Trap Dakarr in the mist lair.
    .mob Dakarr
    .mob Illusory Stalker
step
    #completewith next
    #label SlayDakarrA
    .isInScenario 973
    >>Tötet |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    #title |cFFFCDC00Enter the cave|r
    #completewith SlayDakarrA
    .goto 694,57.88,34.53,8 >>|cRXP_WARN_Folgt dem Pfeil in die Höhle.|r
step
    #requires SlayDakarrA
    .isInScenario 973
    .goto 694,58.52,33.73
    >>Tötet |cRXP_ENEMY_Dakarr|r.
    .scenario 1986,1 --Slay Dakarr.
    .mob Dakarr
step
    .isInScenario 973
    .goto 694,58.49,33.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Talonclaw|r.
    .scenario 1987,1 --Take Talonclaw.
    .complete 40385,2 --1/1 Slay the Highmountain's Bane and reclaim Talonclaw
step
    .goto 694,58.58,33.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Portal nach Dalaran|r.
    .complete 40385,3 --1/1 Return to Dalaran
step
    #completewith next
    #label TheSpearInTheShadowA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40385 >>Gebt die Quest Der Speer im Schatten ab
    .target Emmarel Shadewarden
step
    #title |cRXP_WARN_ENTER House|r
    #completewith TheSpearInTheShadowA
    .goto 627,58.99,51.87,6 >>|cRXP_WARN_Folgt dem Pfeil in das Haus.|r
step
    #requires TheSpearInTheShadowA
    .goto 627,60.05,53.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .turnin 40385 >>Gebt die Quest Der Speer im Schatten ab
    .target Emmarel Shadewarden
]])
--Beast Mastery 2
RXPGuides.RegisterGuide([[
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Meister der Tiere
#displayname Artefakt Waffe: Meister der Tiere
#next ac) Ordenshalle Jäger Part 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Meister der Tiere
]])
--Marksmanship 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Treffsicherheit
#displayname Artefakt Waffe: Treffsicherheit
#next ac) Ordenshalle Jäger Part 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Treffsicherheit
]])
--Survival 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Überlebenskunst
#displayname Artefakt Waffe: Überlebenskunst
#next ac) Ordenshalle Jäger Part 2
#internal

<< Hunter

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Überlebenskunst
]])

--Hunter Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Jäger Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Jäger
#chapter
#internal

<< Hunter

step
    #completewith The Campaign Begins2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Emmarel Shadewarden|r.
    .accept 40618 >>Akzeptiert die Quest Legendäre Waffen
    .target Emmarel Shadewarden
step
    .isQuestAvailable 40618
    .isQuestAvailable account,91955
    .goto 627,60.03,53.41
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_WICHTIG: Wählt denjenigen aus, den ihr bereits habt, um zusätzliche 10% XP zu erhalten (nur einmal)|r
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Beast Mastery >> Meister der Tiere(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Marksmanship >> Treffsicherheit(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Survival >> Überlebenskunst(SPS) Questline
step
    #include ac) Order Hall Hunter Part 2@Eagle's Wings-The Campaign Begins
step
    .zoneskip 739,1
    .goto 739,48.63,43.48
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
]])

-- --------- Mage ---------

--Arcane
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Arkanschaden
#displayname Artefakt Waffe: Arkanschaden
#next a) Ordenshalle Magier Part 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Arcane
    #hidewindow
    +Test
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
    .zone 734 >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
    .usespell 193759
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 44310 >>Akzeptiert die Quest Dreifache Macht
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .turnin 44310 >>Gebt die Quest Dreifache Macht ab
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .accept 43441 >>Akzeptiert die Quest Eine zweite Waffe
    .target Meryl Teufelssturm
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.21,38.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 43441 >>Gebt die Quest Eine zweite Waffe ab
    .target Meryl Teufelssturm
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 41085 >>Akzeptiert die Quest Die Waffe eines Magiers
step
    .subzoneskip 7879,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Buch|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389389
step
    .subzoneskip 7879,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .turnin 41085 >>Gebt die Quest Die Waffe eines Magiers ab
step
    #completewith Wyrmrest Temple
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 42001 >>Akzeptiert die Quest Aluneth, Großstab der Magna
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 42001 >>Akzeptiert die Quest Aluneth, Großstab der Magna
step
    .isQuestAvailable 41113
    .goto 735,62.48,51.16
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .usespell 224869
step
    .isQuestTurnedIn 41113
    .goto 734,57.36,90.36
    .zone 627 >>|T1535374:0|tBenutzt |TInterface/cursor/crosshair/interact.blp:20|t[Teleportieren: Dalaran - Verheerte Inseln] oder Klickt |cRXP_PICK_Portal|r
    .usespell 224869
step
    #requires Greatstaff of the Magna
    .goto 627,28.54,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Kalec|r
    .turnin 42001 >>Gebt die Quest Aluneth, Großstab der Magna ab
    .target Erzmagier Kalec
    .accept 42006 >>Akzeptiert die Quest Eine neue Bedrohung
step
    #completewith next
    #label Wyrmrest Temple
    .goto 627,46.37,53.12,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #completewith Wyrmrest Temple
    .goto 627,49.47,47.22,10 >>Geht zum Zentrum von Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.71,84.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 42006,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    .goto 115,56.01,65.92
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42006,2 --1/1 Travel to the Azure Dragonshrine
step
    .goto 115,56.4,65.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Clue|r
    .complete 42006,3,1 --3/3 Clues Found
step
    .goto 115,56.29,66.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Clue|r
    .complete 42006,3,2 --3/3 Clues Found
step
    .goto 115,56.04,67.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Clue|r
    .complete 42006,3,3 --3/3 Clues Found
step
    .goto 115,56.69,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Gerät|r
    .turnin 42006 >>Gebt die Quest Eine neue Bedrohung ab
    .accept 42007 >>Akzeptiert die Quest Ein vergessener Feind
step
    #completewith next
    #label Communication Device
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    #completewith Communication Device
    .goto 115,56.66,69.11
    .cast 3365 >>Klickt |cRXP_PICK_Kommunikationsgerät|r
    .timer 26,RP
step
    #requires Communication Device
    .goto 115,56.66,69.11
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42007,1 --1/1 Activate the communication device
step
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42007 >>Gebt die Quest Ein vergessener Feind ab
    .accept 42008 >>Akzeptiert die Quest Augen des Drachen
step
    #completewith next
    #label Nexus spire
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42008,1 --1/1 Nexus spire scouted
step
    #completewith Nexus spire
    .cast 311678 >>Benutzt |T254294:0|t[Teleportierenschriftrolle zum Nexus]
    .use 173430
step
    #requires Nexus spire
    .goto 114,29.02,28.45
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42008,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.29,28.47
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42008,2 --1/1 Surge Needle scouted
step
    .goto 114,29.02,27.16
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42008,3 --1/1 Nexus foundation scouted
step
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42008 >>Gebt die Quest Augen des Drachen ab
    .accept 42009 >>Akzeptiert die Quest Bändigung des Arkanen.
step
    #loop
    .goto 114,29.2,25.94,35,0
    .goto 114,28.08,24.32,35,0
    .goto 114,26.5,24.85,35,0
    .goto 114,26.02,27.6,35,0
    .goto 114,27.11,29.21,35,0
    >>Tötet |cRXP_ENEMY_Arkane Anomalie|r, um den Balken zu füllen.
    .complete 42009,1 --1/1 Empowered with Unstable Arcane Energy
    .mob Arcane Aberrant
    .mob Arcane Aberrant
step
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42009 >>Gebt die Quest Bändigung des Arkanen ab.
    .accept 42010 >>Akzeptiert die Quest Entfesselte Arkanenergie.
step
    .goto 114,27.32,20.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fokussierte Leere|r
    .complete 42010,3 --1/1 North Surge Needle destroyed
step
    .goto 114,32.71,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fokussierte Leere|r
    .complete 42010,1 --1/1 East Surge Needle destroyed
step
    .goto 114,24.14,29.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fokussiert Leere|r.
    .complete 42010,2 --1/1 West Surge Needle destroyed
step
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42010 >>Gebt die Quest Entfesselte Arkanenergie ab.
    .accept 42011 >>Akzeptiert die Quest Die Nexuskammer
step
    .isOnQuest 42011
    .goto 114,27.52,26.16
    .enterScenario 1101 >>Betretet das Nexus.
step
    #loop
    .goto 736,36.1,69.38,15,0
    .goto 736,35.24,66.21,15,0
    .goto 736,37.45,66.22,15,0
    .isInScenario 1101
    >>Tötet |cRXP_ENEMY_Scions|r
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
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Benutzt |T135739:0|t[Flimmern] oder |T135736:0|t[Blinzeln] durch die Barrieren oder springt mit von Euch Rücken zu ihnen um sie zu passieren.
    .usespell 1953
    .scenario 2467,1 --Reach the Librarium
    .timer 44,RP
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2467,2 --Find a way into the vault
step
    .goto 736,27.62,39.99
    .isInScenario 1101
    >>Tötet |cRXP_ENEMY_Echo von Aluneth|r.
    .scenario 2468,1 --Echo of Aluneth defeated
    .mob Echo of Aluneth
step
    #completewith next
    #label Reach the Rift
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith Reach the Rift
    .isInScenario 1101
    .goto 736,26.92,25.76,15,0
    .goto 736,31.06,22.83,15 >>Folgt dem Pfeil dann wartet auf |cRXP_FRIENDLY_Azuregos|r bis er erscheint.
    .timer 38,RP
    .target Azuregos
step
    #requires Reach the Rift
    .goto 736,31.06,22.83
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2469,1 --Reach the Rift
step
    #completewith next
    #label Nexus-Prince Bilaal
    .isInScenario 1101
    >>Tötet |cRXP_ENEMY_Nexus-Prince Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith Nexus-Prince Bilaal
    .isInScenario 1101
    .goto 736,31.32,22.37
    *|cRXP_WARN_Wait for|r |cRXP_FRIENDLY_Azuregos|r |cRXP_WARN_to appear|r.
    .vehicle >>Klickt auf |cRXP_PICK_Azuregos|r
    .timer 35,RP
    .target Azuregos
step
    #requires Nexus-Prince Bilaal
    .goto 736,59.19,20.4
    .isInScenario 1101
    >>Tötet |cRXP_ENEMY_Nexus-Prince Bilaal|r
    .scenario 2470,1 --Nexus-Prince Bilaal Defeated
    .timer 28,RP
    .complete 42011,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    .isInScenario 1101
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    *Benutzt |cRXP_WARN_|T237448:0|t[ExtraActionButton]|r in den violetten Magiefeldern.
    *|cRXP_WARN_Seid vorsichtig mit den schwebenden Blasen, da sie euch zurückwerfen|r.
    .scenario 2471,1 --Place the First Scroll of Meitre
    .scenario 2471,2 --Place the Second Scroll of Meitre
    .scenario 2471,3 --Place the Third Scroll of Meitre
    .usespell 225025
step
    .isInScenario 1101
    #label Artifact Weapon: Arcane
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Waffe|r in der Mitte.
    .complete 42011,2 --1/1 Aluneth
step
    #completewith next
    #label Nexus Vault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Kalec|r
    .turnin 42011 >>Gebt die Quest Die Nexuskammer ab
    .target Erzmagier Kalec
    .accept 41114 >>Akzeptiert die Quest Die Rückkehr des Champions
    .disablecheckbox
step
    #completewith Nexus Vault
    .zoneskip 627
    .zone 627 >>Betretet Dalaran(Überprüfen von Euch Teleports)
    .usespell 224869
    .usespell 193759
step
    #requires Nexus Vault
    .goto 627,28.62,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erzmagier Kalec|r in der Violetten Zitadelle.
    .turnin 42011 >>Gebt die Quest Die Nexuskammer ab
    .timer 10,RP
    .target Erzmagier Kalec
]])
--Fire
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Feuerschaden
#displayname Artefakt Waffe: Feuerschaden
#next a) Ordenshalle Magier Part 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Fire
    #hidewindow
    +Test
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
    .zone 734 >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 44310 >>Akzeptiert die Quest Dreifache Macht
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .turnin 44310 >>Gebt die Quest Dreifache Macht ab
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .accept 43441 >>Akzeptiert die Quest Eine zweite Waffe
    .target Meryl Teufelssturm
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 43441 >>Gebt die Quest Eine zweite Waffe ab
    .target Meryl Teufelssturm
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 41085 >>Akzeptiert die Quest Die Waffe eines Magiers
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Buch|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389390
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .turnin 41085 >>Gebt die Quest Die Waffe eines Magiers ab
step
    #completewith Crystal's Message
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 40267 >>Akzeptiert die Quest Eine unerwartete Nachricht.
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 40267 >>Akzeptiert die Quest Eine unerwartete Nachricht
step
    #completewith next
    #hidewindow
    #label Crystal's Message
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #completewith Crystal's Message
    .cast 195264 >>Benutzt |T132776:0|t[Glowing Resonieren Kristall]
    .timer 40,RP
    .use 130131
step
    #requires Crystal's Message
    #completewith next
    #label Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,54.59,55.34,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Akzeptiert die Quest Orange ist das neue Violett
    .turnin 44240 >>Gebt die Quest Orange ist das neue Violett ab
    .target Jackson Watkins
step
    #requires Crystal's Message
    #completewith Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.66,57.89,40 >>Folgt dem Pfeil
step
    #requires Orange is the New Purple
    .isQuestTurnedIn 41113
    .goto 735,44.54,57.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jackson Watkins|r
    .accept 44240 >>Akzeptiert die Quest Orange ist das neue Violett.
    .turnin 44240 >>Gebt die Quest Orange ist das neue Violett ab.
    .target Jackson Watkins
step
    #requires Crystal's Message
    .isQuestTurnedIn 41113
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 735,55.6,56.06,15,0
    .goto 734,59.95,56.3
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    #requires Crystal's Message
    .isQuestAvailable 41113
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 735,62.63,51.41
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40267,1 --1/1 Discover the Crystal's Message
step
    .isQuestAvailable 41113
    .goto 735,62.63,51.41
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    .goto 734,57.31,90.48
    .zone 627 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
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
    >>Geht in die Mitte von Dalaran und |TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r.
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    #completewith Dalaran Crater
    .goto 734,57.28,90.47
    .zone 627 >>Klickt auf |cRXP_PICK_Portal|r
step
    #requires Dalaran Crater
    .goto 627,53.13,52.24,10,0
    .goto 627,49.01,47.36,10,0
    .goto 629,36.82,72.57,10,0
    .goto 629,28.76,77.32
    >>Geht zum Zentrum von Dalaran und |TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 40267,3 --Optional: Take Portal to Dalaran Crater
step
    .goto 25,28.74,37.33
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 40267,2 --1/1 Meet Archmage Modera in Hillsbrad
step
    .goto 25,28.74,37.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Modera|r
    .turnin 40267 >>Gebt die Quest Eine unerwartete Nachricht ab.
    .target Erzmagierin Modera
    .accept 40270 >>Akzeptiert die Quest Der Pfad der Abbitte.
    .timer 99,RP
step
    .goto 25,28.74,37.33
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40270,1 --1/1 Discover the location of Felo'melorn
step
    .goto 25,28.73,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aethas Sunreaver|r
    .turnin 40270 >>Gebt die Quest Der Pfad der Abbitte ab.
    .target Aethas Sonnenhäscher
    .accept 11997 >>Akzeptiert die Quest Die gefrorene Flamme
    .timer 12,RP
step
    .goto 25,28.76,37.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 11997,1 --1/1 Mage Portal Taken
step
    .goto 700,76.67,63.89
    .isOnQuest 11997
    >>Tötet |cRXP_ENEMY_Eisige Beschwörerin|r und weicht den Windströmungen aus.
    .scenario 1926,1 --Defeat the Iceborn Conjurer and enter into Icecrown Citadel
    .mob Iceborn Conjurer
step
    .goto 700,76.73,62.14
    .isInScenario 957
    >>Zerstört |cRXP_ENEMY_Permafrost Mauer|r
    .scenario 1927,1,1 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,76.08,55.91,10,0
    .goto 700,73.6,54.72
    .isInScenario 957
    >>Zerstört |cRXP_ENEMY_Permafrost Mauer|r
    .scenario 1927,1,2 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,62.12,53.59
    .isInScenario 957
    >>Zerstört |cRXP_ENEMY_Permafrost Mauer|r
    .scenario 1927,1,3 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,52.47,38.37
    .isInScenario 957
    >>Zerstört |cRXP_ENEMY_Permafrost Mauer|r
    .scenario 1927,1,4 --Destroy Permafrost Walls
    .mob Permafrost Wall
step
    .goto 700,51.9,29.32
    .isInScenario 957
    >>Tötet die ankommenden |cRXP_ENEMY_Wellen|r von Feinden.
    .scenario 1928,1 --Defeat waves of enemies
    .mob Exploding Ghoul
    .mob Burning Skeleton
    .mob Charbone
step
    .goto 700,51.84,17.39
    .isInScenario 957
    >>Tötet |cRXP_ENEMY_Lyandra Sunstrider|r
    .scenario 1929,1 --Slay Lyandra Sunstrider
    .mob Lyandra Sunstrider
step
    #label Artifact Weapon: Fire
    .goto 700,51.8,16.4
    .isInScenario 957
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Felo'melorn|r.
    .scenario 1930,1 --Take Felo'melorn
    .complete 11997,2 --1/1 Obtain Felo'melorn
step
    #completewith next
    #label Frozen Flame
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Modera|r
    .turnin 11997 >>Gebt die Quest REUSE ab
    .target Erzmagierin Modera
step
    #completewith Frozen Flame
    .goto 700,51.85,18.65
    .zoneskip 627
    .zone 627 >>Betretet Dalaran(Überprüfen von Euch Teleports)
    .usespell 224869
    .usespell 193759
step
    #requires Frozen Flame
    .goto 627,28.40,48.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Modera|r
    .turnin 11997 >>Gebt die Quest Die gefrorene Flamme ab
    .target Erzmagierin Modera
]])
--Frost
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Frostschadenmagier
#displayname Artefakt Waffe: Frostschaden
#next a) Ordenshalle Magier Part 1
#internal

<< Mage

step
    #completewith Artifact Weapon: Frost Mage
    #hidewindow
    +Test
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
    .zone 734 >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
    .usespell 193759
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 44310 >>Akzeptiert die Quest Dreifache Macht
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isOnQuest 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .complete 44310,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 43441
    .isQuestAvailable 44310
    .isQuestComplete 44310
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .turnin 44310 >>Gebt die Quest Dreifache Macht ab
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .accept 43441 >>Akzeptiert die Quest Eine zweite Waffe
    .target Meryl Teufelssturm
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isOnQuest 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .complete 43441,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestTurnedIn 41085
    .isQuestAvailable 43441
    .isQuestComplete 43441
    .goto 735,55.3,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 43441 >>Gebt die Quest Eine zweite Waffe ab
    .target Meryl Teufelssturm
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 41085 >>Akzeptiert die Quest Die Waffe eines Magiers
step
    .zoneskip 735,1
    .isQuestAvailable 41085
    .isOnQuest 41085
    .goto 735,61.22,25.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Buch|r
    .complete 41085,1 --1/1 Artifact chosen
    .skipgossipid 46450
    .choose 1389391
step
    .zoneskip 735,1
    .isQuestComplete 41085
    .isQuestAvailable 41085
    .goto 735,59.15,43.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .turnin 41085 >>Gebt die Quest Die Waffe eines Magiers ab
step
    #completewith Speak with Meryl
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 42452 >>Akzeptiert die Quest Suche nach Schwarzfrost
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 42452 >>Akzeptiert die Quest Suche nach Schwarzfrost
step
    #loop
    .goto 735,55.14,34.77,5,0
    .goto 735,52.65,41.84,10,0
    .goto 735,66.62,40.84,10,0
    .goto 735,53.89,49.19,10,0
    .goto 735,65.02,49.44,10,0
    .goto 735,66.53,40.82,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Clues|r
    .complete 42452,1 --3/3 Find information on Arrexis
step
    #completewith next
    #label Speak with Meryl
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42452,2 --1/1 Speak with Meryl
    -- .skipgossipid 46445
step
    #completewith Speak with Meryl
    .isQuestAvailable 41113
    .goto 735,59.12,43.03
    .gossipoption 45566 >>Sprecht mit |cRXP_FRIENDLY_Meryl|r
    .timer 54,RP
    .target Meryl
step
    #completewith Speak with Meryl
    .isQuestTurnedIn 41113
    .goto 735,55.36,38.2
    .gossipoption 46445 >>Sprecht mit |cRXP_FRIENDLY_Meryl|r
    -- .timer 55,RP
    .target Meryl
step
    #requires Speak with Meryl
    .goto 735,59.15,42.94
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42452,2 --1/1 Speak with Meryl
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 42452 >>Gebt die Quest Suche nach Schwarzfrost ab
    .target Meryl Teufelssturm
    .accept 42477 >>Akzeptiert die Quest Daio der Klapprige
    .accept 42476 >>Akzeptiert die Quest Forschungsstandort der Totenwinde
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 42452 >>Gebt die Quest Suche nach Schwarzfrost ab
    .target Meryl Teufelssturm
    .accept 42477 >>Akzeptiert die Quest Daio der Klapprige
    .accept 42476 >>Akzeptiert die Quest Forschungsstandort der Totenwinde
step
    .goto 735,60.64,43.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alodi|r
    .accept 42455 >>Akzeptiert die Quest Alodis Edelsteine
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
    .zone 627 >>Klickt |cRXP_PICK_Portal|r oder Benutzt |T1535374:0|t[Teleportieren: Dalaran - Verheerte Inseln]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestAvailable 41113
    #requires Bank of Dalaran
    #title |cFFFCDC00Folgt dem Pfeil|r
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
    .zone 627 >>Klickt auf das |cRXP_PICK_Portal|r oder benutzt |T1535374:0|t[Teleportieren: Dalaran - Verheerte Inseln]
    -- .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles].
    -- .usespell 224869
step
    .isQuestTurnedIn 41113
    #requires Bank of Dalaran2
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 627,51.66,22.26,20,0
    .goto 627,52.88,19.12
    .complete 42455,1 --1/1 Go to the Bank of Dalaran
step
    #completewith next
    #label manager
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    #completewith manager
    #loop
    .goto 627,52.42,18.04,10,0
    .goto 627,52.25,14.72,10,0
    .goto 627,50.32,16.94,10,0
    .gossipoption 45770 >>Sprecht mit |cRXP_FRIENDLY_Glutonia|r
    .timer 26,RP
    .target Gierina
step
    #requires manager
    .goto 627,55.08,16.45
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42455,2 --1/1 Speak with the manager
step
    .goto 627,55.08,16.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 42455,3 --1/1 Enter Alodi's personal vault
step
    #loop
    .goto 627,50.78,15.72,10,0
    .goto 627,54.31,14.99,10,0
    .goto 627,53.92,18.72,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Edelsteine|r
    .complete 42455,4 --3/3 Find the Mana Gems
step
    #completewith next
    #hidewindow
    #label Blasted Lands Scroll
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    #completewith Blasted Lands Scroll
    .goto 627,54.22,19.39
    .cast 311800 >>Benutzt |T254294:0|t[Schriftrolle der Verwüsteten Lande]
    .use 173699
step
    #requires Blasted Lands Scroll
    .goto 17,32.51,45.14
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42477,2 --1/1 Fly to the Tainted Scar and find Daio
step
    .goto 17,32.51,45.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daio|r
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
    >>Tötet die ankommenden Wellen von Feinden.
    .complete 42477,4 --1/1 Survive Daio's Challenge
    .timer 30,RP
    .mob Fiendish Trickster
    .mob Empowered Wrathguard
    .mob Eredar Mage
step
    #completewith next
    >>Benutzt |T254294:0|t[Schriftrolle von Karazhan] bei |cRXP_WARN_10 SECONDS LEFT|r
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42477,5 --1/1 Get the Demon Stone
step
    >>Benutzt |T254294:0|t[Schriftrolle von Karazhan]
    .complete 42476,2 --1/1 Fly to the abandoned Kirin Tor camp near Karazhan
    .use 173698
step
    .goto 42,35.83,64.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt das |cRXP_PICK_Pole|r
    .complete 42476,3 --1/1 Find remaining ritual items
step
    .goto 42,35.04,62.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Hinweis|r im Zelt.
    .complete 42476,4 --1/1 Find any text on the ritual
    .timer 30,RP
step
    .goto 42,34.16,59.67
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42476,5 --1/1 Listen to Merina
step
    .goto 42,34.14,59.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    .complete 42476,6 --1/1 Take the Ritual Focusing Crystal
step
    #completewith next
    #label Turn in Alodi's Gems
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Gebt die Quest Alodis Edelsteine ab
    .target Alodi
step
    #completewith Turn in Alodi's Gems
    .zoneskip 734
    .cast 193759 >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
    .usespell 193759
step
    #requires Turn in Alodi's Gems
    .goto 734,53.54,70.05,20,0
    .goto 735,56.68,70.92,20,0
    .goto 735,60.77,43.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alodi|r
    .turnin 42455 >>Gebt die Quest Alodis Edelsteine ab
    .target Alodi
step
    .isQuestAvailable 41113
    .goto 735,59.15,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 42476 >>Gebt die Quest Forschungsstandort der Totenwinde ab
    .target Meryl Teufelssturm
    .turnin 42477 >>Gebt die Quest Daio der Klapprige ab
    .accept 42479 >>Akzeptiert die Quest Der Magierjäger
    .target Meryl Teufelssturm
step
    .isQuestTurnedIn 41113
    .goto 735,55.32,38.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 42476 >>Gebt die Quest Forschungsstandort der Totenwinde ab
    .target Meryl Teufelssturm
    .turnin 42477 >>Gebt die Quest Daio der Klapprige ab
    .accept 42479 >>Akzeptiert die Quest Der Magierjäger
    .target Meryl Teufelssturm
step
    #completewith next
    #label Dalaran to Faronaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aludane Whitecloud|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
-- step
--     #completewith Dalaran to Faronaar
--     .cast 224869 >>Use |T1535374:0|t[Teleport: Dalaran - Broken Isles]
--     .usespell 224869
step
    .isQuestAvailable 41113
    #completewith Dalaran to Faronaar
    .goto 735,62.44,51.32
    .zone 627 >>Klickt auf |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 41113
    #completewith Dalaran to Faronaar
    .goto 734,57.39,90.1
    .zone 627 >>Klickt auf |cRXP_PICK_Portal|r
step
    #requires Dalaran to Faronaar
    .goto 627,69.82,51.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aludane Whitecloud|r
    .complete 42479,1 --1/1 Take the hippogryph in Dalaran to Faronaar
    .timer 200,RP
    .skipgossipid 44179
    .target Aludane Wolkenweiß
step
    .isOnQuest 42479
    .goto 630,26.79,49.02
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2526,1 --Speak with Meryl and Alodi
    .target Meryl and Alodi
step
    .isOnQuest 42479
    .goto 630,26.8,49.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Fel Dämpfung Schutz|r
    *|cRXP_WARN_Versucht zu fliegen in einigen Teilen dieses Szenarios|r.
    .scenario 2528,1,1 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,29.96,51.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fel Dämpfung Schutz|r
    *|cRXP_WARN_Try flying some parts of this scenario allow it|r.
    .scenario 2528,1,2 --Wards set up
    .target Fel Dampening Ward
step
    .isInScenario 1122
    .goto 630,30.11,48.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Fel Dämpfung Schutz|r
    *|cRXP_WARN_Versucht zu fliegen in einigen Teilen dieses Szenarios|r.
    .scenario 2528,1,3 --Wards set up
    .target Fel Dampening Ward
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2529,1 --Go to the center of the Altar of End Times.
    .timer 50,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    .scenario 2529,2 --Activate the Ritual Focus
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kristall|r, beendet die Kanalisierung und tötet die ankommenden Feinde.
    .scenario 2530,1,15 --Activate the Ritual Focus
    .mob Wrathguard
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kristall|r, beendet die Kanalisierung und tötet die ankommenden Feinde.
    .scenario 2530,1,45 --Activate the Ritual Focus
    .mob Wrathguard
    .mob Netherflame Infernal
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kristall|r während die Kanalisierung läuft und tötet die ankommenden Feinde.
    .scenario 2530,1,75 --Activate the Ritual Focus
    .mob Netherflame Infernal
    .mob Legion Jailer
    .mob Fiendish Trickster
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kristall|r während die Kanalisierung läuft und tötet die ankommenden Feinde.
    .scenario 2530,1,87 --Activate the Ritual Focus
    .timer 15,RP
step
    .goto 630,27.65,50.64
    .isInScenario 1122
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2530,1 --Activate the Ritual Focus
step
    .goto 619,67.0,92.9
    .isInScenario 1122
    >>Tötet |cRXP_ENEMY_Balaadur|r
    .scenario 2531,1 --Slay Balaadur
    .mob Balaadur
step
    .goto 619,67.05,92.74
    #label Artifact Weapon: Frost Mage
    .isInScenario 1122
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .scenario 2532,1 --Claim Ebonchill.
    .complete 42479,2 --1/1 Claim Ebonchill
step
    #completewith next
    #label Mage Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 42479 >>Gebt die Quest Der Magierjäger ab
    .target Meryl Teufelssturm
step
    #completewith Mage Hunter
    .zoneskip 734
    .cast 193759 >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
    .usespell 193759
step
    #requires Mage Hunter
    .goto 734,53.3,72.2,20,0
    .goto 734,59.04,56.7,20,0
    .goto 735,56.68,33.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .turnin 42479 >>Gebt die Quest Der Magierjäger ab
    .target Meryl Teufelssturm
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
#name z) Artefakt Waffe: Arkanschaden
#displayname Artefakt Waffe: Arkanschaden
#next ac) Ordenshalle Magier Part 2
#internal

<< Mage

step
    #include a) Artefakt Waffe: Arkanschaden
]])
--Fire 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Feuerschaden
#displayname Artefakt Waffe: Feuerschaden
#next ac) Ordenshalle Magier Part 2
#internal

<< Mage

step
    #include a) Artefakt Waffe: Feuerschaden
]])
--Frost 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Frostschadenmagier
#displayname Artefakt Waffe: Frostschaden
#next ac) Ordenshalle Magier Part 2
#internal

<< Mage

step
    #include a) Artefakt Waffe: Frostschadenmagier
]])

--Mage Order Hall Campaign 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Magier Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Magier
#chapter
#internal

<< Mage

step
    #completewith Champion: Archmage Modera
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Meryl Teufelssturm|r
    .target Meryl Teufelssturm
    .accept 41085 >>Akzeptiert die Quest Die Waffe eines Magiers
step
    .isQuestAvailable 41085
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fire >> Feuerschaden(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arcane >> Arkanschaden(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Frost Mage >> Frostschaden(SPS) Questline
step
    >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
    .accept 41114 >>Akzeptiert die Quest Die Rückkehr des Champions
    .usespell 193759
step
    >>Benutzt |T1536440:0|t[Teleportieren: Halle des Wächters].
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
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Braumeister
#displayname Artefakt Waffe: Braumeister
#next a) Ordenshalle Mönch Part 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Brewmaster
    #hidewindow
    +Test
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
    .cast 126892 >>Benutzt |T775462:0|t[Zenpilgerfahrt]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 44424 >>Akzeptiert die Quest Drei Pfade, drei Waffen
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 44424 >>Gebt die Quest Drei Pfade, drei Waffen ab
    .target Li Li Stormstout
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 43973 >>Akzeptiert die Quest Zwei Pfade, zwei Waffen
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 43973 >>Gebt die Quest Zwei Pfade, zwei Waffen ab
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .accept 40636 >>Akzeptiert die Quest Vorbereiten zum Angriff
    .target Eisenkörper Ponshu
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390109
    .skipgossipid 45061
    .skipgossipid 45063
    .target Eisenkörper Ponshu
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 40636 >>Gebt die Quest Vorbereitung zum Stoß ab
step
    #completewith The Wanderer's Companion
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .accept 42762 >>Akzeptiert die Quest Der Gefährte des Wanderers
    .target Eisenkörper Ponshu
step
    #completewith next
    #label Tak-Tak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith Tak-Tak
    #title |cFFFCDC00Leave House|r
    .goto 709,49.71,47.37,10 >>Verlasst das Haus
step
    #requires Tak-Tak
    .goto 709,47.19,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak-Tak|r
    .complete 42762,1 --1/1 Speak with Tak-Tak
    .timer 23,RP
    .skipgossipid 45493
    .target Tak-Tak
step
    #label The Wanderer's Companion
    .goto 371,41.67,27.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Affe King|r
    .turnin 42762 >>Gebt die Quest Der Gefährte des Wanderers ab
    .target The Monkey King
    .accept 42768 >>Akzeptiert die Quest Das Rätsel der Reinheit
    .accept 42766 >>Akzeptiert die Quest Das Rätsel des Fasses
    .accept 42767 >>Akzeptiert die Quest Das Rätsel des Landes
step
    #completewith next
    #label Pure Water Core
    >>Tötet |cRXP_ENEMY_Desecrator Ma'veth|r und |cRXP_ENEMY_Desecrated Wassergeist|r. Plündert sie für |T132844:0|t[|cRXP_LOOT_Pure Wasser Kern|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith Pure Water Core
    .cast 311850 >>Benutzt |T615341:0|t[Reinheitskrug]
    .use 173703
step
    #requires Pure Water Core
    .goto 376,63.22,26.04
    >>Tötet |cRXP_ENEMY_Desecrator Ma'veth|r und |cRXP_ENEMY_Desecrated Wassergeist|r. Plündert sie für |T132844:0|t[|cRXP_LOOT_Pure Wasser Kern|r].
    .complete 42768,1 --1/1 Pure Water Core
    .mob Desecrator Ma'veth
    .mob Desecrated Water Spirit
step
    #completewith next
    #label Roasted Grain
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Getreide|r
    .complete 42767,1,1 --5/5 Sack of Roasted Grain
step
    #completewith Roasted Grain
    .cast 311857 >>Benutzt |T615341:0|t[Reinheitskrug]
    .use 173704
step
    #requires Roasted Grain
    #loop
    .goto 376,52.94,60.67,20,0
    .goto 376,51.13,60.79,20,0
    .goto 376,51.08,62.49,20,0
    .goto 376,52.6,63.37,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Getreide|r
    .complete 42767,1, --5/5 Sack of Roasted Grain
step
    #completewith next
    #label Vadis
    >>Tötet |cRXP_ENEMY_Vadis|r und klickt |TInterface/cursor/crosshair/interact.blp:20|t|cRXP_PICK_Keg|r.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    #completewith Vadis
    #title |cFFFCDC00Betretet das Haus|r
    .goto 376,51.6,64.28,10,0
    .goto 376,51.43,65.17,10,0
    .goto 376,51.11,64.98,10 >>Betretet das Haus und geht nach oben.
step
    #requires Vadis
    .goto 376,51.50,64.43
    >>Tötet |cRXP_ENEMY_Vadis|r und |TInterface/cursor/crosshair/interact.blp:20|tklickt |cRXP_PICK_Keg|r an.
    .complete 42766,1 --1/1 Odd Smelling Brew
    .mob Vadis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Affe King|r |cRXP_WARN_neben euch|r.
    .turnin 42766 >>Gebt die Quest Das Rätsel des Fasses ab
    .target The Monkey King
    .turnin 42768 >>Gebt die Quest Das Rätsel der Reinheit ab
    .turnin 42767 >>Gebt die Quest Das Rätsel des Landes ab
    .accept 42957 >>Akzeptiert die Quest Reise in den Osten
step
    #completewith next
    #label Journey to the East
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Affe King|r
    .turnin 42957 >>Gebt die Quest Reise in den Osten ab
    .accept 42868 >>Akzeptiert die Quest Die Herausforderung des Affenkönigs
    .disablecheckbox
step
    #completewith Journey to the East
    .zoneskip 376,1
    .cast 311861 >>Benutzt |T615341:0|t[Reinheitskrug]
    .use 173706
step
    #requires Journey to the East
    #completewith next
    #label Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Affe King|r
    .turnin 42957 >>Gebt die Quest Reise in den Osten ab
    .accept 42868 >>Akzeptiert die Quest Die Herausforderung des Affenkönigs
step
    #completewith Journey to the East2
    #hidewindow
    #requires Journey to the East
    .goto 371,55.03,60.75,30 >>Folgt dem Pfeil
step
    #requires Journey to the East2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Affe King|r
    .goto 371,55.42,58.14
    .turnin 42957 >>Gebt die Quest Reise in den Osten ab
    .accept 42868 >>Akzeptiert die Quest Die Herausforderung des Affenkönigs
step
    .goto 371,55.31,58.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Brewpot|r
    .complete 42868,1 --1/1 Brewpot Set
    .timer 7.5,RP
step
    .goto 371,55.37,58.54
    .isOnQuest 42868
    .cast 217213 >>Klickt auf den |cRXP_PICK_Blue Kugel|r
    .timer 12,RP
step
    .goto 371,55.24,58.52
    .isOnQuest 42868
    .cast 217216 >>Klickt auf das |cRXP_PICK_Flour|r
    .timer 10.5,RP
step
    .goto 371,55.21,58.43
    .isOnQuest 42868
    .cast 217219 >>Klickt |cRXP_PICK_Fass|r
    .timer 11,RP
step
    .goto 371,55.39,58.46
    .isOnQuest 42868
    .cast 217224 >>Klickt auf die |cRXP_PICK_Banana|r
    .timer 10,RP
step
    .goto 371,55.28,58.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Objects|r
    .complete 42868,2 --1/1 Brew Completed
step
    .goto 371,55.43,58.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Affe King|r
    .turnin 42868 >>Gebt die Quest Die Herausforderung des Affenkönigs ab
    .target The Monkey King
    .accept 42765 >>Akzeptiert die Quest Die Prüfung im Tempel
step
    #completewith next
    #label Jade Serpent
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    #completewith Jade Serpent
    .goto 791,34.58,43.45,10 >>Betretet den Tempel der Jadeschlange
    .timer 40,RP
step
    #requires Jade Serpent
    .goto 371,56.19,57.98
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42765,1 --1/1 Enter the Temple of the Jade Serpent
step
    .goto 791,32.38,54.04
    .isOnQuest 42765
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    *|cRXP_WARN_Ihr könnt in diesem Szenario nicht reiten|r.
    .scenario 2613,1
step
    .isInScenario 1137
    .goto 791,30.45,59.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Gate|r und geht vorwärts.
    .scenario 2649,1
step
    .goto 791,30.41,59.54,15,0
    .goto 792,40.41,20.97,15,0
    .goto 792,34.88,44.12
    >>Tötet |cRXP_ENEMY_Seelenschinder der Inquisition|r
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,30.9,60.83,15,0
    .goto 792,38.99,21.57,15,0
    .goto 792,34.22,42.55
    >>Tötet |cRXP_ENEMY_Seelenschinder der Inquisition|r und seine |cRXP_ENEMY_minions|r.
    .scenario 2649,2,1
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
    .mob Inquisitor's Eye
step
    .goto 792,32.6,63.36,15,0
    .goto 792,51.17,71.47
    >>Tötet |cRXP_ENEMY_Folterer der Inquisition|r und seine |cRXP_ENEMY_minions|r.
    .scenario 2649,2,2
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Impling Pillager
step
    .goto 792,61.76,73.56,15,0
    .goto 792,66.55,46.16,15,0
    .goto 792,56.64,42.48
    >>Tötet den |cRXP_ENEMY_Seelenschinder der Inquisition|r und seine |cRXP_ENEMY_Untergebenen|r.
    .scenario 2649,2,3
    .isInScenario 1137
    .mob Soulflayer of the Inquisiton
    .mob Impling Pillager
step
    .goto 791,25.15,66.37,15,0
    .goto 791,27.33,71.8
    >>Tötet |cRXP_ENEMY_Belphiar|r
    .scenario 2650,1
    .timer 20,RP
    .isInScenario 1137
    .mob Belphiar
step
    .goto 791,40.59,78.62
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2684,1
    .isInScenario 1137
step
    .goto 791,45.39,80.88,15,0
    .goto 791,54.79,84.16,15,0
    .goto 791,53.68,75.04,15,0
    .goto 791,48.47,65.14,15,0
    .goto 791,51.32,52.08
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2661,1
    .timer 22,RP
    .isInScenario 1137
step
    .goto 791,51.32,52.08
    >>Tötet die Wellen von |cRXP_ENEMY_Dämonen|r
    .scenario 2663,2,15
    .isInScenario 1137
    .mob Torturer of the Inquisition
    .mob Wrathguard Felstriker
    .mob Inquisitor's Eye
    .mob Impling Pillager
    .mob Arbiter of the Inquisiiton
step
    .goto 791,46.5,48.86
    >>Tötet die Wellen von |cRXP_ENEMY_Demons|r
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
    >>Tötet |cRXP_ENEMY_Lord Korithis|r
    *|cRXP_WARN_Ein genauerer Pfeil ist nicht möglich|r.
    .scenario 2665,1
    .isInScenario 1137
    .mob Lord Korithis
step
    .isInScenario 1137
    #label Artifact Weapon: Brewmaster
    .goto 791,69.73,60.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    *|cRXP_WARN_Ein genauerer Pfeil ist nicht möglich|r.
    .scenario 2666,1
    .complete 42765,2 --1/1 Obtain Fu Zan
step
    #completewith next
    #label Yu'lon
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_Ein präziserer Pfeil ist nicht möglich|r.
    .scenario 2701,1
    .skipgossipid 46181
    .isInScenario 1137
step
    #completewith Yu'lon
    .goto 791,69.73,60.48
    .vehicle >>Klickt auf |cRXP_PICK_Yu'lon|r
    .timer 30,RP
    .target Yu'lon
step
    #requires Yu'lon
    .goto 791,69.73,60.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yu'lon|r
    *|cRXP_WARN_Ein genauerer Pfeil ist nicht möglich|r.
    .scenario 2701,1
    .timer 30,RP
    .skipgossipid 46181
    .isInScenario 1137
    .target Yu'lon
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .turnin 42765 >>Gebt die Quest Die Prüfung im Tempel ab
    .target Eisenkörper Ponshu
]])
--Mistweaver
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Nebelwirker
#displayname Artefakt Waffe: Nebelwirker
#next a) Ordenshalle Mönch Part 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Mistweaver
    #hidewindow
    +Test
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
    .cast 126892 >>Benutzt |T775462:0|t[Zenpilgerfahrt]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 44424 >>Akzeptiert die Quest Drei Pfade, drei Waffen
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 44424 >>Gebt die Quest Drei Pfade, drei Waffen ab
    .target Li Li Stormstout
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 43973 >>Akzeptiert die Quest Zwei Pfade, zwei Waffen
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 43973 >>Gebt die Quest Zwei Pfade, zwei Waffen ab
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .accept 40636 >>Akzeptiert die Quest Vorbereiten zum Angriff
    .target Eisenkörper Ponshu
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390110
    .skipgossipid 45061
    .skipgossipid 45063
    .target Eisenkörper Ponshu
step
    .subzoneskip 7902,1
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 40636 >>Gebt die Quest Schlagfertig sein ab
step
    #completewith Taran Zhu
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 709,51.41,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .accept 41003 >>Akzeptiert die Quest Das Geschenk des Kaisers
    .target Eisenkörper Ponshu
step
    #completewith next
    #label MistweaverScenario
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .target Tak-Tak
step
    #completewith MistweaverScenario
    #hidewindow
    .goto 709,50.49,47.67,15,0
    .goto 709,49.36,47.43,15 >>Folgt dem Pfeil
step
    #requires MistweaverScenario
    .goto 709,47.16,47.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tak-Tak|r
    .complete 41003,1 --1/1 Speak with Tak-Tak
    .timer 84.5,RP
    .skipgossipid 45491
    .target Tak-Tak
step
    .isOnQuest 41003
    .countdown 29 >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
step
    #label Taran Zhu
    .isOnQuest 41003
    .goto 728,92.14,55.2
    >>Benutzt |T1360980:0|t[Beleben] on |cRXP_FRIENDLY_Taran Zhu|r.
    .scenario 2091,1
    .timer 26.5,RP
    .target Taran Zhu
    .usespell 116670
step
    .isOnQuest 41003
    #completewith Aspersius
    +Benutzt |T1360980:0|t[Beleben] bei |cRXP_FRIENDLY_Taran Zhu|r und bei dem Team von Euch, um sie am Leben zu halten oder aufzuerwecken.
    *|cRXP_WARN_Es ist wichtig, da ihr nicht fortschreiten könnt, solange er tot ist|r.
    .target Taran Zhu
step
    .isInScenario 1007
    .goto 728,78.47,48.82
    >>Tötet |cRXP_ENEMY_Hellwarden Xaphan|r
    .scenario 2098,4
    .timer 30,RP
    .mob Hellwarden Xaphan
step
    .isInScenario 1007
    .goto 728,59.2,51.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fei Li|r
    .scenario 2100,1
    .skipgossipid 44884
    .target Fei Li
step
    .isInScenario 1007
    .goto 728,58.86,48.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Taoshi|r
    .scenario 2100,3
    .skipgossipid 44888
    .target Taoshi
step
    .isInScenario 1007
    .goto 728,58.97,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hawkmaster Nurong|r
    .scenario 2100,2
    .skipgossipid 44887
    .target Falkenmeister Nurong
step
    .isInScenario 1007
    .goto 728,61.89,48.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Taran Zhu|r
    .scenario 2131,1
    .skipgossipid 45376
    .target Taran Zhu
step
    #label Aspersius
    .isInScenario 1007
    .goto 728,40.25,48.82
    >>Tötet |cRXP_ENEMY_Aspersius|r
    .scenario 2131,2
    .mob Aspersius
step
    #label Artifact Weapon: Mistweaver
    .goto 728,39.21,48.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .complete 41003,2 --1/1 Acquire Sheilun
    .scenario 2157,1
step
    .goto 728,44.12,53.64
    >>|cRXP_WARN_In the "Aktiv Gegenstände" section|r Es gibt ein Makro, spammt es, nachdem ihr mit |cRXP_FRIENDLY_Taran Zhu|r gesprochen habt.
    .complete 41003,3 --1/1 Fly Home with Tak-Tak
    .macro Leave Instance,236367 >> Verlasst Instanz
    .skipgossipid 45497
    .target Tak-Tak
step
    #completewith next
    #label The Emperor's Gift
    #title |cFFFCDC00Spam-Makro|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .turnin 41003 >>Gebt die Quest Das Geschenk des Kaisers ab
    .macro Leave Instance,236367 >> Verlasst Instanz
    .target Eisenkörper Ponshu
step
    #completewith The Emperor's Gift
    .goto 709,49.76,47.48,15 >>Betretet den Tempel
step
    #requires The Emperor's Gift
    .goto 709,51.40,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .turnin 41003 >>Gebt die Quest Das Geschenk des Kaisers ab
    .target Eisenkörper Ponshu
]])
--Windwalker
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#name a) Artefakt Waffe: Windläufer
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#displayname Artefakt Waffe: Windläufer
#next a) Ordenshalle Mönch Part 1
#internal

<< Monk

step
    #completewith Artifact Weapon: Windwalker
    #hidewindow
    +Test
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
    .cast 126892 >>Benutzt |T775462:0|t[Zenpilgerfahrt]
    .usespell 126892
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 44424 >>Akzeptiert die Quest Drei Pfade, drei Waffen
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 43973
    .isQuestAvailable 44424
    .isOnQuest 44424
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 44424 >>Gebt die Quest Drei Pfade, drei Waffen ab
    .target Li Li Stormstout
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 43973 >>Akzeptiert die Quest Zwei Pfade, zwei Waffen
step
    .subzoneskip 7902,1
    .isQuestTurnedIn 40636
    .isQuestAvailable 43973
    .isOnQuest 43973
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 43973 >>Gebt die Quest Zwei Pfade, zwei Waffen ab
step
    .subzoneskip 7902,1
    .isQuestAvailable 40636
    .goto 709,51.41,48.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .accept 40636 >>Akzeptiert die Quest Vorbereiten zum Angriff
    .target Eisenkörper Ponshu
step
    .isQuestAvailable 40636
    .isOnQuest 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .complete 40636,1 --1/1 Choose a artifact to pursue
    .choose 1390111
    .skipgossipid 45061
    .skipgossipid 45063
    .target Eisenkörper Ponshu
step
    .isQuestComplete 40636
    .isQuestAvailable 40636
    .goto 709,51.42,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .turnin 40636 >>Gebt die Quest Vorbereitung zum Stoß ab
step
    #completewith Legend of the Sands
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 709,51.4,48.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .target Eisenkörper Ponshu
    .accept 40569 >>Akzeptiert die Quest Die Legende der Sande
step
    #completewith next
    #label Prepare To Strike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Li Li Sturmbräu|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .target Li Li Stormstout
step
    #completewith Prepare To Strike
    #title |cFFFCDC00Betretet das Haus|r
    .goto 709,51.28,53.77,10,0
    .goto 709,49.91,58.68,10 >>Betretet das Haus
step
    #requires Prepare To Strike
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Li Li Sturmbräu|r
    .complete 40569,1 --1/1 Speak with Li Li Stormstout
    .skipgossipid 44948
    .skipgossipid 45131
    .skipgossipid 45128
    .target Li Li Stormstout
step
    #label Legend of the Sands
    .goto 709,49.12,58.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .turnin 40569 >>Gebt die Quest Die Legende der Sande ab
    .accept 40633 >>Akzeptiert die Quest Auf ins Abenteuer!
    .timer 48,RP
    .target Eisenkörper Ponshu
--rp shenagans possible
step
    .goto 709,50.49,58.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Drachen|r |cRXP_WARN_nach dem Rollenspiel|r.
    .complete 40633,1 --1/1 Ride Li Li's kite to Ramkahen (Optional)
    .timer 15,RP
step
    .goto 249,54.85,32.90
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 40633,2 --1/1 Meet With Li Li in Ramkahen
    .target Li Li Stormstout
step
    .goto 249,54.85,32.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Li Li Sturmbräu|r
    .turnin 40633 >>Gebt die Quest Auf ins Abenteuer! ab
    .target Li Li Stormstout
step
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Phaoris|r
    .accept 40634 >>Akzeptiert die Quest Donner über dem Sand
    .target King Phaoris
step
    #completewith next
    #label Clue Discovered
    >>Tötet |cRXP_ENEMY_Nader|r. Plündert sie für |T348535:0|t[|cRXP_LOOT_Essence of Wirbelwind].
    .complete 40634,1 --1/1 Clue Discovered
    .mob Nader
step
    #completewith Clue Discovered
    #title |cFFFCDC00Leave House|r
    .goto 249,54.92,33.66,15 >>Verlasst das Haus
step
    #requires Clue Discovered
    #title |cFFFCDC00Manuell fliegen|r
    .goto 249,45.65,14.35
    >>Tötet |cRXP_ENEMY_Nader|r. Plündert sie für |T348535:0|t[|cRXP_LOOT_Essence of Wirbelwind].
    .complete 40634,1 --1/1 Clue Discovered
step
    #completewith next
    #label Thunder on the Sands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Phaoris|r
    .turnin 40634 >>Gebt die Quest Donner über dem Sand ab
    .target King Phaoris
    .accept 40570 >>Akzeptiert die Quest Himmelwärts
    .disablecheckbox
step
    #completewith Thunder on the Sands
    .goto 249,54.92,33.81,15 >>Betretet das Gebäude
    #title |cFFFCDC00Enter Bauen|r
step
    #requires Thunder on the Sands
    .goto 249,54.91,32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_King Phaoris|r
    .turnin 40634 >>Gebt die Quest Donner über dem Sand ab
    .target King Phaoris
    .accept 40570 >>Akzeptiert die Quest Himmelwärts
step
    #completewith next
    #label Essence of the Whirlwind
    >>Benutzt |T348535:0|t[Essenz of the Wirbelwind]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
step
    #completewith Essence of the Whirlwind
    #title |cFFFCDC00Leave Bauen|r
    .goto 249,54.93,33.94,13 >>Verlasst das Gebäude
step
    #requires Essence of the Whirlwind
    .goto 249,54.93,33.94
    >>Benutzt |T348535:0|t[Essenz of the Wirbelwind]
    .complete 40570,1 --1/1 Use the Essence of the Whirlwind
    .timer 19,RP
    .use 132745
step
    .isOnQuest 40570
    .goto 716,30.9,45.18
    .enterScenario 983 >>Betretet das |cRXP_PICK_Windläufer|r-Szenario.
step
    .isInScenario 983
    .goto 716,30.9,45.18
    >>Tötet |cRXP_ENEMY_Howling Winde|r und |cRXP_ENEMY_Lesser Sandling|r.
    .scenario 2006,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    #completewith next
    #label Tornadoes
    .isInScenario 983
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Weicht den Tornados aus und betretet die grünen Strudel für einen Geschwindigkeitsschub.
    .scenario 2013,1
step
    #completewith Tornadoes
    .isInScenario 983
    .goto 716,29.91,47.18
    .countdown 21 >>Wartet vor den Tornados.
    .timer 21
step
    #requires Tornadoes
    .isInScenario 983
    .goto 716,29.61,50.7,15,0
    .goto 716,31.34,51.67,15,0
    .goto 716,33.17,50.27,15,0
    .goto 716,30.74,49.37,15,0
    .goto 716,31.03,49.94
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Weicht den Tornados aus und betretet die grünen Wirbel für einen Geschwindigkeitsschub.
    .scenario 2013,1
step
    .isInScenario 983
    .goto 716,32.58,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Stormtouched Kugel|r
    .scenario 2007,1,1
    .mob Lesser Sandling
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,29.3,54.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Sturmberührte Kugel|r
    .scenario 2007,1,2
    .mob Storm Cloud
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,25.49,60.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Stormtouched Kugel|r
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
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2007,2
    .timer 8,RP
step
    #completewith Scion of Typhinius
    .isInScenario 983
    .goto 716,26.75,59.97
    .countdown 34 >>Wartet, bis |cRXP_ENEMY_Nachkomme von Typhinius|r erscheint.
    .mob Scion of Typhinius
step
    #requires Scion of Typhinius
    .isInScenario 983
    .goto 716,28.93,63.06
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Tötet |cRXP_ENEMY_Nachkomme von Typhinius|r
    .scenario 2007,2
    .timer 9,RP
    .mob Scion of Typhinius
step
    .isInScenario 983
    .goto 716,31.6,66.01
    >>Tötet his |cRXP_ENEMY_Minions|r
    .scenario 2008,1,1
    .timer 5,RP
    .mob Kaeled
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>Tötet his |cRXP_ENEMY_Minions|r
    .scenario 2008,1,2
    .timer 7,RP
    .mob Storm Cloud
    .mob Na'ser
    .mob Howling Winds
step
    .isInScenario 983
    .goto 716,31.88,67.53
    >>Tötet his |cRXP_ENEMY_Minions|r
    .scenario 2008,1,3
    .timer 15,RP
    .mob Melezan
    .mob Storm Cloud
step
    .isInScenario 983
    .goto 716,32.16,66.89
    >>Tötet |cRXP_ENEMY_Zaurac|r
    .scenario 2008,1,4
    .timer 3,RP
    .mob Zaurac
step
    .isInScenario 983
    .goto 716,31.26,66.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Zaurac|r
    .scenario 2009,1
    .timer 25,RP
    .target Zaurac
step
    .isInScenario 983
    .goto 716,35.76,82.93
    >>Tötet |cRXP_ENEMY_Typhinius|r
    .scenario 2010,1
    .mob Typhinius
step
    .isInScenario 983
    .goto 716,35.76,82.93
    #label Artifact Weapon: Windwalker
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fäuste|r
    .complete 40570,2 --1/1 Obtain the Fists of the Heavens
    .scenario 2011,1
    .mob Typhinius
step
    #completewith next
    #label Into The Heavens1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Li Li Sturmbräu|r
    .turnin 40570 >>Gebt die Quest Himmelwärts ab
    .target Li Li Stormstout
step
    #completewith Into The Heavens1
    .goto 716,35.65,84.21
    .vehicle >>Klickt auf den Drachen
    .timer 28,RP
step
    #requires Into The Heavens1
    .goto 709,49.11,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Li Li Sturmbräu|r
    .turnin 40570 >>Gebt die Quest Himmelwärts ab
    .target Li Li Stormstout
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
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name z) Artefakt Waffe: Braumeister
#displayname Artefakt Waffe: Braumeister
#next ac) Ordenshalle Mönch Part 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Braumeister
]])
--Mistweaver 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Nebelwirker
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#displayname Artefakt Waffe: Nebelwirker
#next ac) Ordenshalle Mönch Part 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Nebelwirker
]])
--Windwalker 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Windläufer
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#displayname Artefakt Waffe: Windläufer
#next ac) Ordenshalle Mönch Part 2
#internal

<< Monk

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Windläufer
]])

--Monk Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Mönch Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Mönch
#chapter
#internal

<< Monk

step
    #completewith The Fight Begins2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iron-Körper Ponshu|r
    .accept 40636 >>Akzeptiert die Quest Vorbereiten zum Angriff
    .target Eisenkörper Ponshu
step
    .isQuestAvailable 40636
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Windwalker >> Windläufer(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Brewmaster >> Braumeister(Schutz) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Mistweaver >> Nebelwirker(Heilung) Questline
step
    #include ac) Order Hall Monk Part 2@Matter of Planning-The Fight Begins
step << Alliance
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step << Horde
    .goto 709,52.4,57.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 39718,1 --1/1 Travel to Dalaran
    .timer 8,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Initiate Da-Nel|r |cRXP_WARN_neben euch|r
    .accept 42186 >>Akzeptiert die Quest Wachsende Macht
    .target Initiate Da-Nel
]])

-- --------- Paladin ---------

--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Heiligpaladin
#displayname Artefakt Waffe: Heiligschaden
#next a) Ordenshalle Die Bruderschaft der Defias Teil 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Holy Paladin
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44370 >>Akzeptiert die Quest Euer Arsenal vervollständigen
    .skipgossipid 45133
    .choose 1271766
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271766
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44370 >>Gebt die Quest Euer Arsenal vervollständigen ab
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44063 >>Akzeptiert die Quest Verstärkung für Euer Arsenal
    .choose 1271766
    .skipgossipid 45133
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271766
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44063 >>Gebt die Quest Verstärkung für Euer Arsenal ab
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 40408,1 >>Akzeptiert die Quest Legendäre Waffen
    .skipgossipid 45133
    .choose 1271766
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271766
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 40408,1 >>Gebt die Quest Legendäre Waffen ab
    .target Lord Maxwell Tyrosus
step
    #completewith Lanigosa
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 627,74.99,48.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .accept 42231 >>Annehmen Der geheimnisvolle Die Bruderschaft der Defias
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Annehmen Feldherr: Lady Liadrin
    .turnin 42881 >>Abgeben Feldherr: Lady Liadrin
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 42231,1 --1/1 Travel to Dalaran
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 39864,1 --1/1 Travel to Dalaran
step << Alliance
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Gebt die Quest Der geheimnisvolle Die Bruderschaft der Defias ab
    .target Travard
    .accept 42377 >>Akzeptiert die Quest Auf Bruders Fersen
step << Horde
    #completewith next
    #label Mysterious Paladin
    .goto 627,59,21.04,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Abgeben Der geheimnisvolle Die Bruderschaft der Defias
    .target Travard
    .accept 42377 >>Annehmen Auf Bruders Fersen
    .disablecheckbox
step << Horde
    #completewith Mysterious Paladin
    #hidewindow
    .goto 627,72.01,49.34,40 >>Folgt dem Pfeil
step << Horde
    #requires Mysterious Paladin
    .goto 627,72.01,49.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Travard|r
    .turnin 42231 >>Gebt die Quest Der geheimnisvolle Die Bruderschaft der Defias ab
    .target Travard
    .accept 42377 >>Akzeptiert die Quest Auf Bruders Fersen
step
    #completewith next
    #label Wyrmrest Temple
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 42377,1 --1/1 Take the Portal to Wyrmrest Temple (Optional)
step
    #completewith Wyrmrest Temple
    .goto 627,52.75,51.91,20,0
    .goto 627,49,47.36,5 >>Betretet das Zentrum von Dalaran
step
    #requires Wyrmrest Temple
    .goto 629,30.72,84.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
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
    .gossipoption 45405 >>Sprecht mit |cRXP_FRIENDLY_Lanigosa|r
    .target Lanigosa
step
    #requires Lanigosa
    .goto 115,56.48,26.96
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42377,2 --1/1 Speak with Lanigosa
    .skipgossipid 45272
    .target Lanigosa
step
    #completewith next
    #label Galford's location
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Hinweis|r
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    #completewith Galford's location
    .goto 115,56.57,28.64,10 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Broken Statue|r |cRXP_WARN_ihr müsst es möglicherweise zweimal tun|r.
    .timer 51,RP
step
    #requires Galford's location
    .goto 115,60.04,36.19
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>|cRXP_WARN_Vergewissert euch, dass ihr auf die|r Broken Statue|cRXP_PICK_ geklickt habt, bevor ihr fortfahrt|r.
    .complete 42377,3 --1/1 Find clues to Galford's location
step
    .goto 115,61.05,38.05
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42377,4 --1/1 Go to the chasm on the Path of Giants
    .timer 25,RP
step
    .goto 115,61.05,38.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lanigosa|r
    .complete 42377,5 --1/1 Speak with Lanigosa
    .timer 17,RP
    .skipgossipid 45651
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>Tötet |cRXP_ENEMY_Jotun|r
    *|cRXP_WARN_Heilt |cRXP_FRIENDLY_Lanigosa|r falls nötig|r.
    .complete 42377,6 --1/1 Defeat Jotun
    .mob Jotun
    .target Lanigosa
step
    .goto 115,61.16,38.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Funke|r
    .complete 42377,7 --1/1 Take the Spark of Tyr
step
    .goto 115,60.95,38.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Lanigosa|r
    .complete 42377,8 --1/1 Take Lanigosa's ride to Dalaran. (Optional)
    .timer 25
    .target Lanigosa
step
    .goto 627,79.17,46.08
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42377,9 --1/1 Return to Dalaran.
step
    .goto 627,72.03,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Travard|r
    .turnin 42377 >>Abgeben Auf Bruders Fersen
    .target Travard
    .accept 42120 >>Annehmen Die Silberne Hand
step
    #completewith next
    #label in Tirisfal Glades
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
step
    #completewith in Tirisfal Glades
    .cast 311681 >>Benutzt |T254294:0|t[Schriftrolle des Tirisfallagers]
    .use 173523
step
    #requires in Tirisfal Glades
    .isOnQuest 42120
    .goto 18,13.45,56.68
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 42120,2 --1/1 Go to the marked location in Tirisfal Glades
    .target Travard
step
    .isOnQuest 42120
    .goto 18,13.45,56.68,10 >>|cRXP_WARN_Folgt dem Pfeil|r.
    .timer 30,RP
step
    .isInScenario 1092
    .goto 18,14.09,56.5
    .gossipoption 45511 >>Sprecht mit |cRXP_FRIENDLY_Travard.|r
    .target Travard
step
    .goto 20,37.35,12.43,15,0
    .goto 20,35.12,20.33,15,0
    .goto 20,34.78,26.48,15,0
    .goto 20,37.19,43.18
    .isInScenario 1092
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Betretet das Grab, tötet |cRXP_ENEMY_Rasender Gesichtsloser|r und |cRXP_ENEMY_Fleischbrut|r
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
    >>Tötet |cRXP_ENEMY_Rasender Gesichtsloser|r, |cRXP_ENEMY_Fleischbrut|r und |cRXP_ENEMY_G'norz der Wahnsinnige|r
    *|cRXP_WARN_Heilt Euer Team wenn sie verletzt sind, sonst könnt ihr nicht weitermachen|r.
    .scenario 2447,1 --Tyr's Crypt cleared.
    .timer 65,RP
    .mob Masterless Faceless Corrupter
    .mob Flesh Spawn
    .mob G'norz the Crazed
step
    .isInScenario 1092
    .goto 20,37.64,65.74
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r — |cRXP_WARN_Heilt Euer Team wenn sie verletzt sind, sonst könnt ihr nicht weitermachen|r.
    .scenario 2448,1 --Listen to Travard.
step
    .goto 20,38.77,77.48,15,0
    .goto 20,42.9,85.49,20,0
    .goto 20,47.49,75.46,15,0
    .goto 20,52.02,74.87,15,0
    .goto 20,62.67,74.52
    .isInScenario 1092
    >>Begleitet |cRXP_FRIENDLY_Travard|r — |cRXP_WARN_Heilt Euer Team wenn sie verletzt sind, sonst könnt ihr nicht weitermachen|r.
    .scenario 2449,1 --Find the final piece to the ritual.
    .mob Masterless Faceless Corrupter
step
    .isInScenario 1092
    .goto 20,62.67,74.52
    >>Tötet |cRXP_ENEMY_Schreckliche Entartung|r — |cRXP_WARN_Heilt euer Team, wenn sie verletzt sind, sonst könnt ihr nicht weitermachen|r.
    .scenario 2453,1,1
    .timer 30,RP
    .mob Horrific Aberration
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2453,1,2
step
    .isInScenario 1092
    .goto 20,47.33,75.56,20,0
    .goto 20,41.81,82.42
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2454,1
step
    .isInScenario 1092
    .goto 20,42.94,84.92
    >>Läuterung |cRXP_FRIENDLY_Righteous Crusaders|r und heal |cRXP_FRIENDLY_Argent Dawnbringer|r
    *|cRXP_WARN_Es gibt eine zusätzliche Reinigungsfähigkeit in der Szenario-Aufgabe|r.
    .scenario 2455,1
    .scenario 2455,2
    .usespell 19750
    .usespell 4987
    .target Righteous Crusader
    .target Argent Dawnbringer
step
    .isInScenario 1092
    .goto 20,38.63,76.01,20,0
    .goto 20,37.68,63.55
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2456,1
    .timer 180,RP
step
    .isInScenario 1092
    .goto 20,37.61,65.32
    >>Tötet die Wellen der Feinde |cRXP_WARN_und heilt Euer Team|r.
    .scenario 2457,1,100
    .mob Flesh Spawn
    .mob Masterless Faceless Corrupter
    .mob Mordoth the Hunter
step
    .goto 20,37.43,55.14
    .isInScenario 1092
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .scenario 2458,1 --Claim the Silver Hand.
    .complete 42120,3 --1/1 Claim the Silver Hand
step
    .isInScenario 1092
    .zone 627 >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .macro Leave Instance,236367 >> Verlasst Instanz
step
    .isQuestAvailable 44370,44063
    #label Artifact Weapon: Holy Paladin
    .goto 627,71.83,45.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42120 >>Abgeben Die Silberne Hand
    .target Lord Maxwell Tyrosus
    .accept 38576 >>Akzeptiert die Quest Treffen am Hoffnungsvollen Licht
step << Horde
    .isQuestTurnedIn 40408
    .goto 627,58.5,20.55,10,0
    .goto 627,61.89,13.63
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step << Alliance
    .isQuestTurnedIn 40408
    .goto 627,36.64,65.28,15,0
    .goto 627,32.64,69.87
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step
    .isQuestTurnedIn 44370,44063
    .goto 24,49.86,72.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42120 >>Gebt die Quest Die Silberne Hand ab
    .target Lord Maxwell Tyrosus
step << Alliance
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Folgt dem Pfeil
step << Alliance
    #requires Light's Hope Sanctum
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    #completewith next
    #label A United Force
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Gebt die Quest Treffen am Hoffnungsvollen Licht ab
    .target Lord Maxwell Tyrosus
step << Alliance
    #completewith A United Force
    #hidewindow
    .goto 24,63.15,37.22,40 >>Folgt dem Pfeil
step << Alliance
    #requires A United Force
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Gebt die Quest Treffen am Hoffnungsvollen Licht ab
    .target Lord Maxwell Tyrosus
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Die Bruderschaft der Defias Schutz
#displayname Artefakt Waffe: Schutz
#next a) Ordenshalle Die Bruderschaft der Defias Teil 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Paladin Protection
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44370 >>Akzeptiert die Quest Euer Arsenal vervollständigen
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44370 >>Gebt die Quest Euer Arsenal vervollständigen ab
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44063 >>Akzeptiert die Quest Verstärkung für Euer Arsenal
    .choose 1271767
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44063 >>Gebt die Quest Verstärkung für Euer Arsenal ab
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 40408,1 >>Akzeptiert die Quest Legendäre Waffen
    .choose 1271767
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 46573
    .skipgossipid 45133
    .choose 1271767
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 40408,1 >>Gebt die Quest Legendäre Waffen ab
    .target Lord Maxwell Tyrosus
step
    #completewith Orik and Tahu
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isOnQuest 42881
    .goto 24,38.22,64.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lady Liadrin|r
    .accept 42881 >>Akzeptiert die Quest Feldherr: Lady Liadrin
    .turnin 42881 >>Gebt die Quest Feldherr: Lady Liadrin ab
    .target Lady Liadrin
    .complete 42846,1 --1/1 Enlist Lady Liadrin
step
    .zoneskip 24,1
    .goto 24,49.83,72.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 42000 >>Akzeptiert die Quest Suche nach der Wahrheit
    .target Lord Maxwell Tyrosus
step
    .zoneskip 24,1
    .goto 24,37.63,63.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 42000,1,1 --1/1 Travel to Dalaran
step
    .zoneskip 627,1
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 42000 >>Akzeptiert die Quest Suche nach der Wahrheit
    .target Lord Maxwell Tyrosus
step
    #completewith next
    #label Orik and Tahu
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    #completewith Orik and Tahu
    .goto 627,72.69,50.01
    .gossipoption 45806 >>Sprecht mit |cRXP_FRIENDLY_Orik und Tahu|r
    .timer 39,RP
step
    #requires Orik and Tahu
    .goto 627,72.69,50.01
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42000,1 --1/1 Speak with Orik and Tahu.
    .target Orik and Tahu
step
    .goto 627,72.67,49.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 42000 >>Gebt die Quest Suche nach der Wahrheit ab
    .target Orik Trueheart
    .accept 42002 >>Akzeptiert die Quest Nach Nordend
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    #completewith Argent Hippogryph
    .goto 627,72.96,50.08
    .vehicle >>Klickt auf |cRXP_PICK_Argent Hippogryph|r
    .timer 12,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42002,2 --1/1 Find Orik Trueheart at Shield Hill
step
    .goto 117,56.88,78.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orik Trueheart|r
    .turnin 42002 >>Gebt die Quest Nach Nordend ab
    .target Orik Trueheart
    .accept 42005 >>Akzeptiert die Quest Das Ende der Sage
step
    .goto 117,56.88,78.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tahu Sagewind|r
    .complete 42005,1 --1/1 Speak with Tahu Sagewind
    .skipgossipid 45439
    .skipgossipid 45440
    .target Tahu Sagewind
step
    .goto 117,62.27,82.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Grab|r
    .complete 42005,2 --1/1 Find the hero's grave
    .timer 68.5,RP
step
    .goto 117,62.27,82.13
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42005,3 --1/1 Complete the ritual
step
    .cast 441154 >>Benutzen|T134491:0|t[Nostwins Gutschein]
    .itemcount 238727,1
    .use 238727
step
    .goto 627,72.52,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orik Treuherz|r in Dalaran.
    .turnin 42005 >>Gebt die Quest Das Ende der Sage ab
    .target Orik Trueheart
    .accept 42017 >>Akzeptiert die Quest Der Schrein des Wahrheitshüters
step
    .isOnQuest 42017
    .goto 627,72.18,50.45
    .vehicle >>Klickt auf |cRXP_PICK_Argent Hippogryph|r
    .timer 29,RP
step
    .isOnQuest 42017
    .goto 634,85.5,10.65,40 >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .timer 16,RP
step
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 634,83.93,9.52
    .isOnQuest 42017
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2390,1 --Speak with Orik.
    .target Orik
step
    #hidewindow
    #completewith next
    #label Inna the Cryptstalker
    .isInScenario 1082
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2391,1 --Get to the shrine.
step
    #completewith Inna the Cryptstalker
    .isInScenario 1082
    .goto 635,74.6,58.74,25 >>Tötet die |cRXP_ENEMY_Gatekeepers|r
    *Hebt bei Bedarf einen Speer auf und benutzt den ExtraActionButton, um viel Schaden zu verursachen.
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
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 635,62.96,53.11,20,0
    .goto 635,57.63,50.72,20,0
    .goto 635,51.99,49.86,20,0
    .goto 635,52.28,53.36,10  >>Weicht den Tornados aus, indem ihr euch rechts nahe der Wand haltet.
    .timer 35,RP
    *Tötet |cRXP_ENEMY_Drekirjar Schildträger|r und |cRXP_ENEMY_Spectral Windshaper|r
    .mob Drekirjar Shieldbearer
    .mob Spectral Windshaper
step
    #requires Inna the Cryptstalker2
    .isInScenario 1082
    .goto 635,51.52,52.04
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels nahe der Tür|r.
    .scenario 2391,1 --Get to the shrine.
step
    #completewith next
    #label magic and survive
    .isInScenario 1082
    >>Benutzt |T524354:0|t[Gottesschild] oder another strong defensive, und heal yourself if needed.
    *|cRXP_WARN_Schwerer Schaden trifft euch kurz nach dem Klicken auf die Tür.|r
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
    .aura 210223 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Tür|r
    .timer 10,Überlebt
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    #requires magic and survive
    .goto 635,51.03,51.74
    .isInScenario 1082
    #title |cFFFCDC00Großer Defensivcooldown|r
    >>Benutzt |T524354:0|t[Gottesschild] oder another strong defensive, und heal yourself if needed.
    *|cRXP_WARN_Kurz nach dem Klicken auf die Tür erleidet ihr hohen Schaden.|r
    .scenario 2407,1 --Activate the door's magic and survive.
    .usespell 642
    .usespell 471195
    .usespell 1022
    .usespell 86659
    .usespell 31850
step
    .goto 635,27.89,45.25
    .isInScenario 1082
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2392,1 --Investigate the shrine.
step
    #completewith next
    #label Yrgrim the Truthseeker
    .isInScenario 1082
    >>Tötet |cRXP_ENEMY_Yrgrim der Wahrheitssuchende|r |cRXP_WARN_falls er eingefroren ist, tötet |cRXP_ENEMY_Runenformerin Griselda|r|r und wartet dann auf das Ende des Rollenspiels.
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
step
    #completewith Yrgrim the Truthseeker
    .isInScenario 1082
    .goto 635,25.93,44.53
    .gossipoption 45218 >>Sprecht mit |cRXP_FRIENDLY_Yrgrim der Wahrheitssuchende|r
    .timer 4.5,RP
    .target Yrgrim the Truthseeker
step
    #requires Yrgrim the Truthseeker
    .goto 635,25.93,44.53,10,0
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>Tötet |cRXP_ENEMY_Yrgrim der Wahrheitssuchende|r |cRXP_WARN_falls er eingefroren ist, tötet |cRXP_ENEMY_Runenformerin Griselda|r|r
    .scenario 2394,1 --Yrgrim Defeated.
    .mob Yrgrim the Truthseeker
    .mob Runeshaper Griselda
step
    .goto 635,28.05,45.03
    .isInScenario 1082
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .scenario 2395,1 --Take up Truthguard.
    .complete 42017,2 --1/1 Claim the Truthguard
step
    .isOnQuest 42017
    .goto 634,83.95,9.55,10,0
    .goto 634,85.47,10.83
    .vehicle >>Klickt auf |cRXP_PICK_Argent Hippogryph|r
    .target Argent Hippogryph
    .timer 20,RP
step
    .isQuestAvailable 38576
    .isOnQuest 42017
    #label Artifact Weapon: Paladin Protection
    .goto 627,71.74,45.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Ludwig Tyrosus|r |cRXP_WARN_in Dalaran|r.
    .turnin 42017 >>Gebt die Quest Der Schrein des Wahrheitshüters ab
    .target Lord Maxwell Tyrosus
    .accept 38576 >>Akzeptiert die Quest Treffen am Hoffnungsvollen Licht
step
    .isQuestTurnedIn 38576
    .isOnQuest 42017
    #completewith next
    #label Shrine of the Truthguard3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42017 >>Gebt die Quest Der Schrein des Wahrheitshüters ab
    .target Lord Maxwell Tyrosus
step << Alliance
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,34.98,66.58,20,0
    .goto 627,32.65,69.91
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step << Horde
    #completewith Shrine of the Truthguard3
    .isOnQuest 42017
    .isQuestTurnedIn 38576
    .goto 627,58.71,20.66,20,0
    .goto 627,61.93,13.5
    .zone 24 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
step
    #requires Shrine of the Truthguard3
    .isQuestTurnedIn 38576
    .goto 24,49.88,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42017 >>Gebt die Quest Der Schrein des Wahrheitshüters ab
    .target Lord Maxwell Tyrosus
step << Alliance
    .isQuestAvailable 38576
    #completewith next
    #label Light's Hope Sanctum
    .goto 627,34.98,66.58,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Alliance
    .isQuestAvailable 38576
    #completewith Light's Hope Sanctum
    #hidewindow
    .goto 627,32.65,69.91,30 >>Folgt dem Pfeil
step << Alliance
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,32.65,69.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith next
    #label Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,58.71,20.66,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step << Horde
    #completewith Light's Hope Sanctum
    .isQuestAvailable 38576
    #hidewindow
    .goto 627,61.93,13.5,30 >>Folgt dem Pfeil
step << Horde
    #requires Light's Hope Sanctum
    .isQuestAvailable 38576
    .goto 627,61.93,13.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 38576,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label A United Force
    .isQuestAvailable 38576
    .goto 24,47.59,62.28,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Gebt die Quest Treffen am Hoffnungsvollen Licht ab
    .target Lord Maxwell Tyrosus
step
    #completewith A United Force
    #hidewindow
    .isQuestAvailable 38576
    .goto 24,63.15,37.22,40 >>Folgt dem Pfeil
step
    #requires A United Force
    .isQuestAvailable 38576
    .goto 24,63.15,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38576 >>Gebt die Quest Treffen am Hoffnungsvollen Licht ab
    .target Lord Maxwell Tyrosus
]])
--Retribution
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Vergeltung
#displayname Artefakt Waffe: Vergeltung
#next a) Ordenshalle Die Bruderschaft der Defias Teil 1
#internal

<< Paladin

step
    #completewith Artifact Weapon: Retribution
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44370 >>Akzeptiert die Quest Euer Arsenal vervollständigen
    .skipgossipid 45133
    .choose 1271768
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isOnQuest 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44370,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45133
    .choose 1271768
step
    .isQuestTurnedIn 44063
    .isQuestAvailable 44370
    .isQuestComplete 44370
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44370 >>Gebt die Quest Euer Arsenal vervollständigen ab
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 44063 >>Akzeptiert die Quest Verstärkung für Euer Arsenal
    .choose 1271768
    .skipgossipid 45133
    .target Lord Maxwell Tyrosus
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isOnQuest 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .complete 44063,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45133 -- I'm ready to make a decision.
    .choose 1271768
step
    .isQuestTurnedIn 40408
    .isQuestAvailable 44063
    .isQuestComplete 44063
    .goto 24,49.88,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 44063 >>Gebt die Quest Verstärkung für Euer Arsenal ab
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 40408,1 >>Akzeptiert die Quest Legendäre Waffen
    .skipgossipid 45133
    .choose 1271768
    .target Lord Maxwell Tyrosus
step
    .subzoneskip 4564,1
    .isQuestAvailable 40408
    .isOnQuest 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .complete 40408,1 --1/1 Artifact weapon chosen
    .skipgossipid 45133
    .choose 1271768
step
    .subzoneskip 4564,1
    .isQuestComplete 40408
    .isQuestAvailable 40408
    .goto 627,74.88,48.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 40408,1 >>Gebt die Quest Legendäre Waffen ab
    .target Lord Maxwell Tyrosus
step
    #completewith Spirits exorcised
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 627,74.92,48.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .accept 42770 >>Akzeptiert die Quest Suche nach Führung
step
    >>Benutzt |T413582:0|t[Leuchtender Ruhestein]
    .complete 42770,1 --1/1 Hearth to Uther's Tomb
    .use 173537
step
    .goto 22,51.55,79.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42770 >>Gebt die Quest Suche nach Führung ab
    .target Lord Maxwell Tyrosus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_High Priester Thel'danis|r und |cRXP_FRIENDLY_Mehlar Klinge der Dämmerung|r
    .accept 42772 >>Akzeptiert die Quest Heiliger Boden
    .goto 22,51.45,79.02
    .target +High Priest Thel'danis
    .accept 42771 >>Akzeptiert die Quest Frieden wahren
    .goto 22,51.36,79
    .target +Mehlar Dawnblade
step
    #completewith Spirits exorcised
    >>Tötet |cRXP_ENEMY_Anguished Schreckgespenst|r und |cRXP_ENEMY_Disturbed Resident|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    .goto 22,50.34,80.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Grabstein|r
    .complete 42772,1,1 --3/3 Graveyards purified
step
    .goto 22,49.84,77.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Gravestone|r
    .complete 42772,1,2 --3/3 Graveyards purified
step
    #label Spirits exorcised
    .goto 22,51.04,76.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Gravestone|r
    .complete 42772,1,3 --3/3 Graveyards purified
step
    #loop
    .goto 22,53.96,79.94,40,0
    .goto 22,47.73,81.17,40,0
    .goto 22,50.3,75.3,40,0
    >>Tötet |cRXP_ENEMY_Anguished Schreckgespenst|r und |cRXP_ENEMY_Disturbed Resident|r
    .complete 42771,1 --9/9 Spirits exorcised
    .mob Anguished Spectre
    .mob Disturbed Resident
step
    >>Tötet |cRXP_ENEMY_Cannoneer Dargal|r |cRXP_WARN_neben euch|r
    .complete 42771,2 --1/1 Cannoneer Dargal slain
    .mob Cannoneer Dargal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_High Priester Thel'danis|r und |cRXP_FRIENDLY_Mehlar Klinge der Dämmerung|r.
    .turnin 42772 >>Gebt die Quest Heiliger Boden ab
    .goto 22,51.44,79.02
    .target +High Priest Thel'danis
    .turnin 42771 >>Gebt die Quest Frieden wahren ab
    .goto 22,51.35,78.99
    .target +Mehlar Dawnblade
step
    .goto 22,51.62,81.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .accept 42773 >>Akzeptiert die Quest Das Licht offenbart
    .timer 27,RP
    .target Lord Maxwell Tyrosus
step
    .goto 22,52.08,83.26
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42773,1 --1/1 Join Maxwell Tyrosus in the tomb
step
    #completewith next
    #label Commune with Uther
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    #completewith Commune with Uther
    .goto 22,52.08,83.26
    .cast 216268 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Gedenkplakette|r
    .timer 27,RP
step
    #requires Commune with Uther
    .goto 22,52.08,83.26
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42773,2 --1/1 Commune with Uther
step
    .goto 22,52.11,83.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42773 >>Gebt die Quest Das Licht offenbart ab
    .target Lord Maxwell Tyrosus
    .accept 42774 >>Akzeptiert die Quest Die Hoffnung siegt
step
    .isOnQuest 42774
    .goto 22,52.1,83.03
    .cast 311750 >>Benutzt |T132161:0|t[Hippogryph Pfeife] außerhalb.
    .timer 20,Countdown zum Ausloggen
    .use 311750
step
    .isOnQuest 42774
    .logout >>Meldet euch ab und meldet euch wieder an zum Teleportieren
    .timer 20,RP
    .macro Logout,638661 >>Ausloggen
-- step
--     .isOnQuest 42774
--     .countdown 20 >>
step
    .goto 23,74.28,53.25
    *|cRXP_WARN_Wartet bis der Abmeldungs-Timer endet, dann meldet euch wieder an|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42774 >>Gebt die Quest Die Hoffnung siegt ab
    .accept 38376 >>Akzeptiert die Quest Die Suche nach dem Hochlord
    .target Lord Maxwell Tyrosus
step
    #completewith next
    #label Argent Hippogryph
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    #completewith Argent Hippogryph
    .goto 23,74.17,53.07
    .cast 183677 >>Klickt |cRXP_PICK_Argentumhippogryph|r
    .timer 20,RP
    .target Argent Hippogryph
step
    #requires Argent Hippogryph
    .goto 23,70.19,55.87
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 38376,1 --1/1 Fly to the Broken Shore
step
    .goto 676,15.69,51.36
    .isOnQuest 38376
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 1488,1 --Lead the paladins of the Argent Crusade into battle
step
    #loop
    .goto 676,15.21,51.51,20,0
    .goto 676,16.52,51.94,20,0
    .isInScenario 775
    >>Tötet |cRXP_ENEMY_Demons|r
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
    >>Tötet |cRXP_ENEMY_Jailer Zerus|r
    .scenario 1486,1 --Destroy Jailer Zerus
    .mob Jailer Zerus
step
    #title |cFFFCDC00Betretet die Höhle|r
    .isInScenario 775
    .goto 676,22.26,61.13,15 >>BETRETET die Höhle
step
    #requires Ashbringer
    .isInScenario 775
    .goto 676,23.42,62.88,15,0
    .goto 676,23.83,63.9,15,0
    .goto 676,24.23,63.98,15,0
    .goto 676,26.84,61.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Aschenbringer|r
    .scenario 1487,1
    .timer 55,RP
    .complete 38376,2 --1/1 Obtain the Ashbringer
step
    .goto 676,26.87,61.25
    .isInScenario 775
    .countdown 55 >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Benutzt |cRXP_WARN_ExtraActionButton|r
    .scenario 2632,1 --Break free from Balnazzar's control.
    .mob Balnazzar
    .usespell 216693
step
    .goto 676,26.87,61.25
    .isInScenario 775
    >>Tötet |cRXP_ENEMY_Balnazzar|r
    .complete 38376,3 --1/1 Balnazzar slain
    .mob Balnazzar
step
    .isInScenario 775
    .zone 23 >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .macro Leave Instance,236367 >> Verlasst Instanz
step
    .zoneskip 23,1
    .goto 23,74.28,53.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38376 >>Gebt die Quest Die Suche nach dem Highlord ab
    .target Lord Maxwell Tyrosus
    .accept 42811 >>Akzeptiert die Quest Treffen am Hoffnungsvollen Licht
step
    #completewith next
    #label Search for the Highlord
    .goto 23,75.43,52.65,10,0
    .goto 24,41.98,89.52,5,0
    .goto 24,45.4,83.87,5,0
    .goto 24,41.73,72.95,5,0
    .goto 24,44.64,70.09,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38376 >>Gebt die Quest Die Suche nach dem Highlord ab
    .target Lord Maxwell Tyrosus
    .accept 42811 >>Akzeptiert die Quest Treffen am Hoffnungsvollen Licht
step
    #completewith Search for the Highlord
    .goto 24,49.9,72.38,20 >>Betretet die Lichtwinsel und geht durch den Tunnel
step
    #requires Search for the Highlord
    .goto 24,49.9,72.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 38376 >>Gebt die Quest Die Suche nach dem Hochlord ab
    .target Lord Maxwell Tyrosus
    .accept 42811 >>Akzeptiert die Quest Treffen am Hoffnungsvollen Licht
step
    #completewith next
    #hidewindow
    #label Chapel
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith Chapel
    .goto 24,40.06,92.46,10 >>Betretet die Kapelle
step
    #requires Chapel
    #label Artifact Weapon: Retribution
    .goto 24,41.52,90.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Geheime Tür|r
    .complete 42811,2 --1/1 Enter Light's Hope Sanctum
step
    #completewith next
    #label Light's Hope
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42811 >>Gebt die Quest Treffen am Hoffnungsvollen Licht ab
    .target Lord Maxwell Tyrosus
    .disablecheckbox
step
    #completewith Light's Hope
    .goto 24,46.48,82.49,15,0
    .goto 24,41.21,73.21,15,0
    .goto 24,63.20,37.34,40 >>Folgt dem Pfeil
step
    #requires Light's Hope
    .goto 24,63.20,37.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .turnin 42811 >>Gebt die Quest Treffen am Hoffnungsvollen Licht ab
    .target Lord Maxwell Tyrosus
]])
--Holy 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefakt Waffe: Heiligpaladin
#displayname Artefakt Waffe: Heiligschaden
#next ac) Ordenshalle Die Bruderschaft der Defias Teil 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Heiligpaladin
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefakt Waffe: Die Bruderschaft der Defias Schutz
#displayname Artefakt Waffe: Die Bruderschaft der Defias Schutz
#next ac) Ordenshalle Die Bruderschaft der Defias Teil 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Die Bruderschaft der Defias Schutz
]])
--Retribution 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefakt Waffe: Vergeltung
#displayname Artefakt Waffe: Vergeltung
#next ac) Ordenshalle Die Bruderschaft der Defias Teil 2
#internal

<< Paladin

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Vergeltung
]])

--Paladin Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Die Bruderschaft der Defias Teil 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Die Bruderschaft der Defias
#chapter
#internal

<< Paladin

step
    #completewith Order Hall Paladin Part 2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Maxwell Tyrosus|r
    .target Lord Maxwell Tyrosus
    .accept 40408 >>Akzeptiert die Quest Legendäre Waffen
    .isQuestAvailable 40408
step
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Retribution >> Vergeltung(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Paladin Protection >> Schutz(Schutz) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Paladin >> Heiligschaden(Heilung) Questline
step
    #include ac) Order Hall Paladin Part 2@A United Force-Order Hall Paladin Part 2
]])

-- --------- Priest ---------

--Discipline
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Disziplin
#displayname Artefakt Waffe: Disziplin
#next a) Ordenshalle Priester Part 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Akzeptiert die Quest Die dritte Legende
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wird automatisch das Disziplin-Artefakt auswählen|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Gebt die Quest Die dritte Legende ab
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41625
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Akzeptiert die Quest Eine zweite Legende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Das wird automatisch das Disziplin-Artefakt auswählen|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Gebt die Quest Eine zweite Legende ab
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Akzeptiert die Quest Legenden zum Anfassen
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wird automatisch das Disziplin-Artefakt auswählen|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389392
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Gebt die Quest Legenden zum Anfassen ab
    .target Alonsus Faol
step
    #completewith the Azure Dragonshrine
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41625 >>Akzeptiert die Quest Der Zorn des Lichts
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41625 >>Akzeptiert die Quest Der Zorn des Lichts
    .target Alonsus Faol
step
    .isOnQuest 41625
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brother Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    .isOnQuest 41625
    .zoneskip 702,1
    .goto 702,49.79,80.78
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
step
    .goto 627,28.64,49.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Kalec|r.
    .turnin 41625 >>Gebt die Quest Der Zorn des Lichts ab
    .accept 41626 >>Akzeptiert die Quest Eine neue Bedrohung
    .target Erzmagier Kalec
step
    .zoneskip 627,1
    .isOnQuest 41626
    .goto 627,49.25,47.64
    .zone 629 >>Benutzt den Teleporter im Zentrum von Dalaran
step
    .goto 629,30.85,84.43
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal zum Wyrmruhtempel|r.
    *|cRXP_WARN_Hinweis:|r. Falls der Pfeil aus irgendeinem Grund falsch ist, könnt ihr das Portal nach der Nutzung des Teleporters in der Mitte von Dalaran finden.
    .complete 41626,1 --1/1 Take the Dalaran portal to Wyrmrest Temple
step
    #label the Azure Dragonshrine
    .goto 115,55.96,65.01
    >>|cRXP_WARN_Folgt dem Pfeil|r.
    .complete 41626,2 --1/1 Travel to the Azure Dragonshrine
step
    #loop
    .goto 115,55.90,64.90,30,0
    .goto 115,56.26,68.12,30,0
    .goto 115,54.10,66.46,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Void Siphons|r, |cRXP_PICK_Strange Portale|r, und |cRXP_PICK_Void-Besudelt Klingen|r.
    .complete 41626,3 --3/3 Clues Found
step
    .goto 115,56.69,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ethereal Communication Device|r.
    .turnin 41626 >>Gebt die Quest Eine neue Bedrohung ab
    .target Ethereal Communication Device
    .accept 41627 >>Akzeptiert die Quest Ein vergessener Feind
step
    #completewith next
    #hidewindow
    .cast 3365 >>Folgt dem Pfeil
    .timer 37,Nexusprinz Roleplay
step
    .goto 115,56.65,69.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kommunikationsgerät-Schalter|r.
    .complete 41627,1 --1/1 Activate the communication device
step
    .goto 115,56.69,69.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild von Kalec|r.
    .turnin 41627 >>Gebt die Quest Ein vergessener Feind ab
    .accept 41628 >>Akzeptiert die Quest Augen des Drachen
    .target Image of Kalec
step
    #title Benutzt die |T254294:0|t[Teleportschriftrolle zum Nexus]
    .goto 114,29.25,28.57
    >>Benutzt die |T254294:0|t[Teleportschriftrolle zum Nexus]
    .complete 41628,1 --1/1 Nexus spire scouted
    .use 173430
step
    .goto 114,32.19,27.85
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 41628,2 --1/1 Surge Needle scouted
step
    .goto 114,29.66,27.50
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 41628,3 --1/1 Nexus foundation scouted
step
    >>Dies sollte automatisch abgegeben und in euer Questtagebuch übernommen werden. Loggt euch neu ein, falls es nicht funktioniert.
    .turnin 41628 >>Gebt die Quest Augen des Drachen ab
    .accept 41629 >>Akzeptiert die Quest Bändigung des heiligen Feuers
step
    #loop
    .goto 114,27.40,23.82,35,0
    .goto 114,25.85,26.44,35,0
    .goto 114,27.17,29.80,35,0
    .goto 114,29.52,27.00,35,0
    >>Tötet |cRXP_ENEMY_Wrath Funken|r.
    .complete 41629,1 --1/1 Empowered with Unstable Holy Energy
    .mob Wrath Ember
step
    .goto 114,26.60,23.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild von Kalec|r.
    .turnin 41629 >>Gebt die Quest Bändigung des heiligen Feuers ab
    .accept 41630 >>Akzeptiert die Quest Entfesselte Gerechtigkeit
    .target Image of Kalec
step
    .goto 114,27.32,20.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Fokussiert Leere|r.
    .complete 41630,3 --1/1 North Surge Needle destroyed
step
    .goto 114,24.13,29.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fokussierte Leere|r.
    .complete 41630,2 --1/1 West Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Fokussiert Leere|r.
    .complete 41630,1 --1/1 East Surge Needle destroyed
step
    .goto 114,32.66,27.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abbild von Kalec|r.
    .turnin 41630 >>Gebt die Quest Entfesselte Gerechtigkeit ab
    .accept 41631 >>Akzeptiert die Quest Die Nexuskammer
    .target Image of Kalec
step
    .isOnQuest 41631
    .goto 114,27.84,28.37,30,0
    .goto 114,27.51,26.05
    .enterScenario 1065 >>Betretet das Szenario |cRXP_PICK_X|r.
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Tötet |cRXP_ENEMY_Abkömmling des Feuers|r, |cRXP_ENEMY_Abkömmling des Eises|r und |cRXP_ENEMY_Abkömmling der Magie|r.
    .scenario 2275,1 --Azuregos Freed
    .mob Scion of Fire
    .mob Scion of Ice
    .mob Scion of Mage
step
    .isInScenario 1065
    .goto 736,36.20,67.66
    >>Benutzt |T135907:0|t[Blitzheilung] on |cRXP_FRIENDLY_Azuregos|r.
    .scenario 2275,2 --Azuregos healed to full
    .macro Flash Heal,135907 >>Blitzheilung
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
    >>Benutzt |T135928:0|t[Levitieren]. |cRXP_WARN_Weicht den Feuerfontänen aus|r.
    .scenario 2277,1 --Reach the Librarium
    .usespell 1706
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>|cRXP_WARN_Wait for the roleplay.|r
    .scenario 2277,2 --Find a way into the vault
step
    .isInScenario 1065
    .goto 736,27.59,39.89
    >>Tötet die |cRXP_ENEMY_Judgment's Flamme|r.
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
    .vehicle 104546 >>Klickt auf |cRXP_FRIENDLY_Azuregos|r
step
    #requires NexusPrinceBilaalA
    .isInScenario 1065
    .goto 736,59.24,20.32
    >>Tötet |cRXP_ENEMY_Nexus-Prince Bilaal|r.
    .scenario 2279,1 --Nexus-Prince Bilaal Defeated
    .complete 41631,1 --1/1 Nexus-Prince Bilaal slain
    .mob Nexus-Prince Bilaal
step
    #completewith next
    #label SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Light's Zorn|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    #completewith SubdueLightsWrathA
    .goto 736,60.64,20.51
    .subzone 8119 >>Klickt |cRXP_PICK_Portal|r.
    --.subzone 13695
step
    #requires SubdueLightsWrathA
    #completewith next
    #hidewindow
    .cast 207949 >>Folgt dem Pfeil
    .timer 30,Unterwerfen Dauer
step
    #requires SubdueLightsWrathA
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Light's Zorn|r.
    .scenario 2280,1 --Subdue Light's Wrath
step
    .isInScenario 1065
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Light's Zorn|r.
    .scenario 2281,1 --Claim Light's Wrath
    .complete 41631,2 --1/1 Light's Wrath
step
    #completewith next
    #label LeaveTheNexusVaultA
    .isInScenario 1065
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith LeaveTheNexusVaultA
    .subzone 13695 >>Klickt |cRXP_PICK_Portal zum Nexus|r
    .timer 50,Azuregos-Rollenspiel
    *|cRXP_WARN_Note:|r Coordinates nicht work here
step
    #requires LeaveTheNexusVaultA
    .isInScenario 1065
    .goto 736,59.28,20.40
    >>|cRXP_WARN_Wait for the roleplay.|r
    .scenario 2281,2 --Leave the Nexus Vault
step
    #completewith next
    #label TheNexusVaultA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Kalec|r.
    .turnin 41631 >>Gebt die Quest Die Nexuskammer ab
    .accept 41632 >>Akzeptiert die Quest Das Geschenk der Zeit
    .target Erzmagier Kalec
step
    .zoneskip 736,1
    #completewith TheNexusVaultA
    .goto 736,59.28,20.40
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
step
    #requires TheNexusVaultA
    .goto 627,28.64,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Kalec|r.
    .turnin 41631 >>Gebt die Quest Die Nexuskammer ab
    .accept 41632 >>Akzeptiert die Quest Das Geschenk der Zeit
    .target Erzmagier Kalec
step
    .isQuestTurnedIn 40938
    #completewith next
    #label AGiftOfTimeA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 41632 >>Gebt die Quest Das Geschenk der Zeit ab
    .target Alonsus Faol
step
    .isQuestTurnedIn 40938
    #completewith AGiftOfTimeA
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>Klickt auf das |cRXP_PICK_Portal zum Netherlichttempel|r
step
    .isQuestTurnedIn 40938
    #requires AGiftOfTimeA
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 41632 >>Gebt die Quest Das Geschenk der Zeit ab
    .target Alonsus Faol
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prophet Velen|r.
    .turnin 41632 >>Gebt die Quest Das Geschenk der Zeit ab
    .target Prophet Velen
]])
--Holy
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Heiligpriester
#displayname Artefakt Waffe: Heiligschaden
#next a) Ordenshalle Priester Part 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Akzeptiert die Quest Die dritte Legende
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wählt automatisch das heilige Artefakt aus|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45117
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Gebt die Quest Die dritte Legende ab
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 41957
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Akzeptiert die Quest Eine zweite Legende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wählt automatisch das heilige Artefakt aus|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Gebt die Quest Eine zweite Legende ab
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Akzeptiert die Quest Legenden zum Anfassen
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wird automatisch das heilige Artefakt aufsammeln.|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389393
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Gebt die Quest Legenden zum Anfassen ab
    .target Alonsus Faol
step
    #completewith House Call
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41957 >>Akzeptiert die Quest Die Bitte des Verteidigers
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 41957 >>Akzeptiert die Quest Die Bitte des Verteidigers
    .target Alonsus Faol
step
    .isOnQuest 41957
    .zoneskip 18,1
    .goto 18,78.49,41.08
    .zone 627 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brother Larry|r.
    .target Brother Larry
    .skipgossipid 45625
step
    #label House Call
    .goto 627,37.81,36.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vindicator Boros|r.
    .turnin 41957 >>Gebt die Quest Die Bitte des Verteidigers ab
    .accept 41966 >>Akzeptiert die Quest Hausbesuch
    .target Vindicator Boros
step
    .goto 627,36.02,36.61
    >>Benutzt |T135894:0|t[Läutern] auf |cRXP_ENEMY_Beschützer Barrem|r und heilt ihn. Tötet |cRXP_ENEMY_Teufelsverderbtes Blut|r.
    .complete 41966,1 --1/1 Defender Barrem cured
    .usespell 527
    .target Defender Barrem
    .mob Fel Tainted Blood
step
    .goto 627,37.41,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Defender Barrem|r.
    .turnin 41966 >>Gebt die Quest Hausbesuch ab
    .target Defender Barrem
    .accept 41967 >>Akzeptiert die Quest Flucht aus der Dunkelheit
step
    .goto 627,70.80,43.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Lightfeather|r.
    .complete 41967,1 --1/1 Flight to Darkstone Isle secured
    .target Lightfeather
step
    .goto 646,34.08,33.57
    >>Tötet die |cRXP_ENEMY_Niskaran Scharfrichter|r.
    .complete 41967,2 --1/1 Demon Camp cleared
    .mob Niskaran Executioner
step
    #completewith next
    #hidewindow
    .cast 213109 >>Folgt dem Pfeil
    .timer 5,Alora Roleplay
step
    .goto 646,33.99,33.93
    >>Benutzt |T135955:0|t[Auferstehung] on |cRXP_FRIENDLY_Alora|r.
    .complete 41967,3 --1/1 Alora resurrected
    .macro Resurrection,135955 >>Auferstehung
step
    .goto 646,33.99,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alora|r.
    .turnin 41967 >>Gebt die Quest Flucht aus der Dunkelheit ab
    .accept 41993 >>Akzeptiert die Quest Rettung von ganz oben
    .target Alora
step
    .goto 646,33.42,33.18
    >>Tötet |cRXP_ENEMY_Subjugator Valith|r.
    .complete 41993,1 --1/1 Assist Jace Darkweaver
    .mob Subjugator Valith
step
    .goto 646,33.58,33.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jace Darkweaver|r.
    .turnin 41993 >>Gebt die Quest Rettung von ganz oben ab
    .target Jace Düsterweber
    .accept 42074 >>Akzeptiert die Quest Rückkehr des Lichts
step
    #title Geht durch das Portal
    .goto 646,32.04,31.92
    >>|cRXP_WARN_Folgt dem Pfeil und geht durch das Portal.|r
    .complete 42074,1 --1/1 Travel through the Portal on Darkstone Isle
step
    .isOnQuest 42074
    .goto 646,32.04,31.92
    .enterScenario 1085 >>Betretet das |cRXP_PICK_Rückkehr des Lichts|r-Szenario.
step
    .isInScenario 1085
    .goto 714,74.57,82.82
    >>Benutzt |T135907:0|t[Blitzheilung] on |cRXP_FRIENDLY_Vindicator Boros|r.
    .scenario 2406,1 --Heal Vindicator Boros to full health.
    .macro Flash Heal,135907 >>Blitzheilung
    .target Vindicator Boros
step
    .isInScenario 1085
    .goto 714,71.02,72.40
    >>Tötet |cRXP_ENEMY_Commander Xovoth|r.
    .scenario 2421,1 --Assist Jace Darkweaver.
    .mob Commander Xovoth
step
    .isInScenario 1085
    .goto 714,70.66,71.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Ankerkristall|r.
    .scenario 2441,1 --Destroy the Anchoring Crystal
step
    .isInScenario 1085
    .goto 714,71.35,80.38,15,0
    .goto 714,69.37,81.00,10,0
    .goto 714,69.34,78.01
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 2441,2 --Exit the lower levels of the Legion Ship.
step
    .isInScenario 1085
    .goto 714,71.45,73.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Legion-Käfig|r.
    *|cRXP_WARN_Hinweis:|r Falls ihr noch unten seid, geht zuerst hinauf.
    .scenario 2417,1 --Rescue Bo'ja
step
    .isInScenario 1085
    .goto 714,73.07,78.86
    >>Tötet |cRXP_ENEMY_Captain Naranoth|r.
    .scenario 2446,1 --Defeat Captain Naranoth
    .mob Captain Naranoth
step
    .isInScenario 1085
    .goto 714,70.20,70.53,15,0
    .goto 714,62.43,59.71
    >>Tötet |cRXP_ENEMY_Lady Calindris|r.
    .scenario 2425,1 --Defeat Lady Calindris
step
    .isInScenario 1085
    .goto 714,65.35,59.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_T'uure|r.
    .scenario 2426,1 --T'uure obtained.
    .complete 42074,2 --1/1 Obtain T'uure
step
    .isInScenario 1085
    .goto 714,65.51,60.06
    >>|cRXP_WARN_Wartet, bis |cRXP_FRIENDLY_Bo'ja|r hinuntergeht und ein Portal platziert|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Bo'ja's Magierportal|r.
    .scenario 2426,2 --Leave Niskara
step
    .isQuestTurnedIn 40938
    .goto 702,47.75,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prophet Velen|r.
    .turnin 42074 >>Gebt die Quest Rückkehr des Lichts ab
    .target Prophet Velen
step
    #optional
    .goto 627,46.26,20.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Prophet Velen|r.
    .turnin 42074 >>Gebt die Quest Rückkehr des Lichts ab
    .target Prophet Velen
]])
--Shadow
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Schattenschaden
#displayname Artefakt Waffe: Schattenschaden
#next a) Ordenshalle Priester Part 1
#internal

<< Priest

step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 44407 >>Akzeptiert die Quest Die dritte Legende
    .target Alonsus Faol
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wählt automatisch das Schatten-Artefakt aus|r
    .complete 44407,1 --1/1 Artifact chosen (3rd)
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45112
step
    .isQuestTurnedIn 43935
    .isQuestAvailable 44407
    .isOnQuest 44407
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 44407 >>Gebt die Quest Die dritte Legende ab
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isQuestAvailable 40710
    .isNotOnQuest 40710
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 43935 >>Akzeptiert die Quest Eine zweite Legende
    .target Alonsus Faol
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wird automatisch das Schattenartefakt aufsammeln.|r
    .complete 43935,1 --1/1 Artifact chosen (2nd)
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45111
step
    .isQuestTurnedIn 40706
    .isQuestAvailable 43935
    .isOnQuest 43935
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 43935 >>Gebt die Quest Eine zweite Legende ab
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40706 >>Akzeptiert die Quest Legenden zum Anfassen
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    *|cRXP_WARN_Dies wählt automatisch das Schatten-Artefakt aus|r
    .complete 40706,1 --1/1 Artifact chosen
    .choose 1389394
    .target Alonsus Faol
    .skipgossipid 45110
step
    .isQuestAvailable 40706
    .isOnQuest 40706
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .turnin 40706 >>Gebt die Quest Legenden zum Anfassen ab
    .target Alonsus Faol
step
    #completewith Amassing Darkness
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40938
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40710 >>Akzeptiert die Quest Klinge des Schattenhammers
    .target Alonsus Faol
step
    .goto 18,78.96,40.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r.
    .accept 40710 >>Akzeptiert die Quest Klinge des Schattenhammers
    .target Alonsus Faol
step
    .goto 18,13.03,62.46
    >>Benutzt die |T254294:0|t[Schriftrolle des Tirisfallagers].
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 40710,1 --1/1 Go to the marked location in Tirisfal Glades
    .use 173523
step
    .isOnQuest 40710
    .goto 18,13.03,62.46
    .enterScenario 991 >>Betretet das |cRXP_PICK_Klinge im Zwielicht|r-Szenario
step
    .isInScenario 991
    .goto 18,13.47,57.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Slaghammer's Notes|r.
    .scenario 2221,1 --Find the first clue
step
    .isInScenario 991
    .goto 18,13.21,55.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Slaghammer's Notes|r.
    .scenario 2221,2 --Find the second clue
step
    .isInScenario 991
    .goto 18,13.90,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Slaghammer's Notes|r.
    .scenario 2221,3 --Find the third clue
step
    #title |cFFFCDC00Schwimmt hinunter|r
    .isInScenario 991
    .goto 20,37.87,12.57,8,0
    .goto 20,34.13,23.36
    >>|cRXP_WARN_Schwimmt hinunter und in den Gang.|r
    .scenario 2031,1 --Enter the tomb at the bottom of the lake
step
    .isInScenario 991
    .goto 20,37.16,41.44
    >>Tötet die |cRXP_ENEMY_Twilight Klingendreher|r und |cRXP_ENEMY_Twilight Schattenzauberer|r.
    >>|cRXP_WARN_Wait for the roleplay.|r
    .scenario 2032,1 --Defeat the guards at the door to gain access
step
    .isInScenario 991
    .goto 20,37.24,44.71
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 2048,1 --Enter the Tomb of Tyr
step
    .isInScenario 991
    #loop
    .goto 20,40.97,50.29,12,0
    .goto 20,41.22,58.63,12,0
    .goto 20,34.05,59.87,12,0
    .goto 20,33.64,50.57,12,0
    >>Tötet die |cRXP_ENEMY_Twilight Ritualists|r.
    .scenario 2086,1 --Stop the dampening rituals
    .mob Twilight Ritualist
step
    #label Amassing Darkness
    .isInScenario 991
    .goto 20,37.52,55.05
    >>Tötet die |cRXP_ENEMY_Amassing Dunkelheit|r.
    .scenario 2171,1 --Defeat the Amassing Darkness
    .mob Amassing Darkness
step
    .isInScenario 991
    .goto 20,39.37,79.78,15,0
    .goto 20,41.94,84.31,15,0
    .goto 20,47.78,75.83
    >>|cRXP_WARN_Folgt dem Pfeil.|r Benutzt |T135739:0|t[Massenbannung], um |cRXP_ENEMY_Leerententakel|r zu töten
    .scenario 2089,1 --Fight to the prison chamber
    .mob Void Tendril
    .usespell 311663
step
    .isInScenario 991
    .goto 20,58.77,75.20
    >>Tötet die |cRXP_ENEMY_Twilight Deacon Heller|r.
    .scenario 2099,1 --Kill the Twilight Deacon
    .mob Twilight Deacon Farthing
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Blade of the Schwarz Empire|r.
    .scenario 2115,1 --Take the Blade of the Black Empire
step
    .isInScenario 991
    .goto 20,58.66,76.66
    >>Benutzt den |T136201:0|t[|cRXP_WARN_ExtraActionButton|r] (Dunkler Entzug)
    .scenario 2116,1 --Use "Dark Drain" to kill Zakajz forever
    .complete 40710,2 --1/1 Stop the Ritual and acquire the Blade
    .timer 15,Rollenspiel
step
    #completewith next
    #label BladeInTwilightA
    #hidewindow
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    #completewith BladeInTwilightA
    .goto 20,57.38,73.35
    .zone 627 >>Klickt auf Portal nach Dalaran
step
    #requires BladeInTwilightA
    .goto 627,47.32,22.90
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 40710,3 --1/1 Return to Alonsus and Moira
step
    .isQuestTurnedIn 40938
    #completewith next
    #label BladeInTwilightB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Gebt die Quest Klinge des Schattenhammers ab
    .target Moira Thaurissan
step
    .isQuestTurnedIn 40938
    #completewith BladeInTwilightB
    .goto 627,62.99,17.68 << Horde
    .goto 627,39.57,57.30 << Alliance
    .zone 702 >>Klickt auf das |cRXP_PICK_Portal zum Netherlichttempel|r
step
    .isQuestTurnedIn 40938
    #requires BladeInTwilightB
    .goto 702,51.61,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Gebt die Quest Klinge des Schattenhammers ab
    .target Moira Thaurissan
step
    #optional
    .goto 627,46.14,21.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Moira Thaurissan|r.
    .turnin 40710 >>Gebt die Quest Klinge des Schattenhammers ab
    .target Moira Thaurissan
]])
--Discipline 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Disziplin
#displayname Artefakt Waffe: Disziplin
#next ac) Ordenshalle Priester Part 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Disziplin
]])
--Holy 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Heiligpriester
#displayname Artefakt Waffe: Heiligschaden
#next ac) Ordenshalle Priester Part 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Heiligpriester
]])
--Shadow 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Schattenschaden
#displayname Artefakt Waffe: Schattenschaden
#next ac) Ordenshalle Priester Part 2
#internal

<< Priest

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Schattenschaden
]])

--Priest Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Priester Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Priester
#chapter
#internal

<< Priest

step
    #completewith Recruit Ishanah2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alonsus Faol|r
    .accept 40706 >>Akzeptiert die Quest Legenden zum Anfassen
    .target Alonsus Faol
step
    .isQuestAvailable 40706
    .isQuestAvailable account,91955
    .goto 18,78.96,40.99
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_WICHTIG: Wählt denjenigen aus, den ihr bereits habt, um zusätzliche 10% XP zu erhalten (nur einmal)|r
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Shadow >> Schattenschaden(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Holy Priest >> Heiligschaden(Heilung) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Discipline >> Disziplin(Heilung) Questline
step
    #include ac) Order Hall Priest Part 2@The Light and the Void-Recruit Ishanah
step
    .zoneskip 702,1
    .goto 702,49.79,80.59
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
]])

-- --------- Rogue ---------

--Assassination
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Meucheln
#displayname Artefakt Waffe: Meucheln
#next a) Ordenshalle Schurke Part 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Assassination
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Akzeptiert die Quest Die letzte Klinge
    .skipgossipid 45233
    .choose 1389395
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
    .complete 44375,1 --1/1 Choose a third artifact to pursue
    .skipgossipid 45233 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Gebt die Quest Die letzte Klinge ab
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Akzeptiert die Quest Noch eine würdige Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232 -- I'm ready to make a decision.
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Gebt die Quest Noch eine würdige Klinge ab
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Akzeptiert die Quest Eine würdige Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .choose 1389395
    .skipgossipid 45230
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Gebt die Quest Eine würdige Klinge ab
    .target Lord Jorach Rabenholdt
step
    #completewith Felcaller Whitley
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 626,42.37,76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Princess Tess Graumähne|r
    .target Prinzessin Tess Graumähne
    .accept 42501 >>Akzeptiert die Quest Eine unvollendete Aufgabe
    .accept 42502 >>Akzeptiert die Quest Keine Zuflucht
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    *|cRXP_WARN_Loggt euch aus und wieder ein, falls der NPC nicht da ist|r
    .accept 43262 >>Akzeptiert die Quest Feldherr: Garona die Halborcin
    .turnin 43262 >>Gebt die Quest Feldherr: Garona die Halborcin ab
    .target Garona die Halborcin
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Akzeptiert die Quest Feldherr: Vanessa van Cleef
    .turnin 43261 >>Gebt die Quest Feldherr: Vanessa van Cleef ab
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 42502
    .cast 311709 >>Benutzt |T254294:0|t[Schriftrolle des Dämmerwalds]
    .use 173530
step
    #completewith next
    #label Felcaller Whitley
    .goto 47,19.14,56.43,10,0
    .goto 47,19.62,54.83,10,0
    .goto 47,19.55,54.47,5,0
    .goto 47,19.36,54.99,5,0
    >>Tötet |cRXP_ENEMY_Felcaller Whitley|r. Plündert sie für |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    #completewith Felcaller Whitley
    .goto 47,19.06,53.88,20 >>Betretet House und go upstairs
step
    #requires Felcaller Whitley
    .goto 47,19.06,53.88
    >>Tötet |cRXP_ENEMY_Felcaller Whitley|r. Plündert sie für |T134937:0|t[|cRXP_LOOT_Fel Cipher|r].
    .complete 42502,2 --1/1 Felcaller Whitley slain
    .complete 42502,3 --1/1 Information found
    .mob Felcaller Whitley
step
    .goto 47,19.06,53.88
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42502 >>Gebt die Quest Keine Zuflucht ab
step
    >>Benutzt |T254294:0|t[Schriftrolle der Verwüsteten Lande]
    .complete 42501,1 --1/1 Travel to Blasted Lands
    .use 173531
step
    .goto 17,37.03,29.04
    >>Tötet |cRXP_ENEMY_Caden Shadowgaze|r. Plündert sie für |T666475:0|t[|cRXP_LOOT_Coded Message|r].
    .complete 42501,2 --1/1 Caden Shadowgaze slain
    .mob Caden Shadowgaze
step
    .goto 17,37.01,30.04
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42501 >>Gebt die Quest Eine unvollendete Aufgabe ab
    .accept 42503 >>Akzeptiert die Quest Codeknacker
step
    #completewith next
    #label Coded Message
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42503,3 --1/1 Information found
step
    #completewith Coded Message
    .goto 17,37.04,30.41
    .cast 214079 >>Benutzt |T666475:0|t[Verschlüsselte Nachricht]
    .timer 25,RP
    .use 138102
step
    #requires Coded Message
    .goto 17,37.04,30.41
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42503,3 --1/1 Information found
    .use 138102
step
    .goto 17,36.98,29.09
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 42503,1 --1/1 Read the Coded Message
-- step
--     .goto 17,39.52,36.49
--     .zone 617 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 17,37.21,29.05
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42503 >>Gebt die Quest Codeknacker ab
    .accept 42539 >>Akzeptiert die Quest Mantel und Degen
    .target Malton
step
    #completewith next
    #hidewindow
    #label Blood of the Innocent
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith Blood of the Innocent
    .cast 311704 >>Benutzt |T254294:0|t[Schriftrolle des Dämmerwalds]
    .use 173527
step
    #requires Blood of the Innocent
    #completewith next
    #label Blood of the Innocent2
    .goto 47,73.83,46.01,5,0
    .goto 47,73.87,45.53,5,0
    .goto 47,74.27,44.22,5,0
    .goto 47,74.01,44.76,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Schale|r
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #requires Blood of the Innocent
    #completewith Blood of the Innocent2
    #title |cFFFCDC00Betretet das Haus|r
    .goto 47,73.67,44.08,5 >>Betretet das Haus und geht nach oben
step
    #requires Blood of the Innocent2
    .goto 47,73.64,43.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Schale|r oben.
    .complete 42539,2 --1/1 Blood of the Innocent
step
    #completewith next
    #hidewindow
    #label Althea Ebonlocke
    >>Niederlage |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith Althea Ebonlocke
    .goto 47,73.71,44.23,5,0
    .goto 47,74.07,44.69,5,0
    .goto 47,74.29,44.28,5,0
    .goto 47,73.88,45.62,5,0
    .goto 47,73.72,46.12,5 >>Verlasst das Haus
    #title |cFFFCDC00Leave House|r
step
    #requires Althea Ebonlocke
    #completewith next
    #label Althea Ebonlocke2
    >>Niederlage |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #requires Althea Ebonlocke
    #completewith Althea Ebonlocke2
    .goto 47,72.83,46.9,5,0
    .goto 47,72.5,47.26,5,0
    .goto 47,72.34,47.7,5,0
    .goto 47,71.88,46.78,15 >>Betretet das Haus
    #title |cFFFCDC00Betretet das Haus|r
step
    #requires Althea Ebonlocke2
    .goto 47,71.94,46.43
    >>Niederlage |cRXP_ENEMY_Althea Ebonlocke|r
    .complete 42539,3 --1/1 Attempt to kill Althea Ebonlocke
    .mob Althea Ebonlocke
step
    #completewith next
    #label Skull of the Innocent
    .goto 47,72.38,47.75,5,0
    .goto 47,72.55,47.18,5,0
    .goto 47,73.01,46.9,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Schädel|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    #completewith Skull of the Innocent
    .goto 47,73.99,48.27,10 >>Betretet die Schmiede
step
    #requires Skull of the Innocent
    .goto 47,73.85,48.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf den |cRXP_PICK_Schädel|r
    .complete 42539,1 --1/1 Skull of the Innocent
step
    .goto 47,71.91,47.69
    >>Klickt auf das Quest-Abgabefenster in eurem Questtagebuch.
    .turnin 42539 >>Gebt die Quest Mantel und Degen ab
    .accept 42568 >>Akzeptiert die Quest Vorbereitung
    .target Malton
step
    #completewith next
    #label Preparation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42568 >>Gebt die Quest Vorbereitung ab
    .target Garona die Halborcin
    .accept 42504 >>Akzeptiert die Quest Die ungesehene Klinge
    .disablecheckbox
step
    #completewith Preparation
    .cast 311712 >>Benutzt |T254294:0|t[Schriftrolle des Waldes von Elwynn]
    .use 173532
step
    #requires Preparation
    .goto 37,36.79,52.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona die Halborcin|r im Wald von Elwynn
    .turnin 42568 >>Gebt die Quest Vorbereitung ab
    .target Garona die Halborcin
    .accept 42504 >>Akzeptiert die Quest Die ungesehene Klinge
step
    .isOnQuest 42504
    .isQuestNotComplete 42504
    .goto 37,32.05,49.23
    .enterScenario 1123 >>Betretet das Szenario
    *|cRXP_WARN_Ihr könnt in diesem Szenario nur Bodenflugmounts verwenden|r.
--HERE
step
    #completewith next
    #label Confront Mathias Shaw.
    .zoneskip 37,1
    .isInScenario 1123
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    *|cRXP_WARN_Ihr könnt in diesem Szenario nicht reiten|r
    .scenario 2548,1 --Confront Mathias Shaw.
step
    .isInScenario 1123
    .zoneskip 37,1
    #completewith Confront Mathias Shaw.
    .goto 37,32.05,49.23,40 >>Folgt dem Pfeil
    .timer 45,RP
step
    #requires Confront Mathias Shaw.
    .goto 37,31.92,48.99
    .isOnQuest 42504
    .isInScenario 1123
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2548,1 --Confront Mathias Shaw.
step
    #completewith Obtain the Kingslayers
    +Betretet |cRXP_WARN_Verstohlenheit|r und vermeidet die Wachen, besonders die mit Augenmarkierungen, da diese Verstohlenheit besser erkennen.
step
    .isInScenario 1123
    .goto 84,72.35,88.62,15 >>Folgt dem Pfeil
step
    #completewith next
    #label smoke bomb
    .isInScenario 1123
    .goto 84,70.05,83.16,15,0
    .goto 84,69.96,79.58,15,0
    .goto 84,68.03,79.8,15,0
    .goto 84,66.49,76.54,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kiste|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    .isInScenario 1123
    #completewith smoke bomb
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 84,66.07,74.13,10 >>Betretet Sturmwind und das Haus.
step
    #requires smoke bomb
    .isInScenario 1123
    .goto 84,66.81,73.89,8,0
    .goto 84,66.12,74.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kiste|r
    .scenario 2549,1 --Obtain a smoke bomb from Elling Trias.
step
    #completewith next
    #label Trader's Hall
    .goto 84,66.38,73.66,5,0
    .isInScenario 1123
    >>Benutzt die |T458733:0|t[Rauchbombe] im Auktionshaus. |cRXP_WARN_Es gibt einen Button unter dem Questziel|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
step
    .isInScenario 1123
    #completewith Trader's Hall
    #title |cFFFCDC00Leave House|r
    .goto 84,65.6,74.23,5 >>Verlasst das Haus
step
    #requires Trader's Hall
    .goto 84,63.27,73.7,15,0
    .goto 84,61.65,72.46,10,0
    .goto 84,61.65,72.38
    .isInScenario 1123
    >>Benutzt die |T458733:0|t[Rauchbombe] im Auktionshaus. |cRXP_WARN_Es gibt einen Button unter dem Questziel|r.
    .scenario 2550,1 --Use the smoke bomb in the Trader's Hall.
    .usespell 214645
step
    .goto 84,61.76,72.68,5,0
    .goto 84,62.5,72.22,5,0
    .goto 84,62.7,68.93
    .isInScenario 1123
    >>Benutzt |T133644:0|t[Hacken pocket] on |cRXP_ENEMY_Suspicious Hauptstädte Schutz|r
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
    >>Benutzt |T666475:0|t[Verschlüsselte Nachricht]. |cRXP_WARN_Es gibt einen Button unter dem Questziel|r.
    .scenario 2711,2 --Read the Coded Message
step
    #label Garona
    .isInScenario 1123
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2558,1 --Meet Garona at the Pig and Whistle Tavern in Old Town.
step
    .goto 84,75.18,55.28
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Tür|r
    .scenario 2560,1 --Open the tavern door.
step
    .goto 84,75.96,53.37
    .isInScenario 1123
    >>Tötet die Wellen der Feinde
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
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Benutzt |T132307:0|t[Sprinten] um den Wind zu umgehen oder tötet |cRXP_ENEMY_Erschöpfter Ritualist|r
    .scenario 2561,1 --Find the Herald in Stormwind Keep.
    .mob Fatigued Ritualist
step
    .goto 84,82.6,28.2
    .isInScenario 1123
    >>Tötet |cRXP_ENEMY_Melris Malagan|r
    .scenario 2562,1 --Assassinate Melris Malagan
    .timer 29.5,RP
    .mob Melris Malagan
step
    #label Obtain the Kingslayers
    .goto 84,82.83,27.93
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .complete 42504,1 --1/1 Obtain the Kingslayers
    .scenario 2563,1 --Wield the Kingslayers.
step
    .goto 84,86.9,37.2
    .isInScenario 1123
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .scenario 2564,1 --Take the portal to Dalaran.
step
    .achievementComplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    .accept 45727 >>Akzeptiert die Quest Vereinigung der Inseln
    .turnin 45727 >>Gebt die Quest Vereinigung der Inseln ab
    .target Erzmagier Khadgar
step
    .achievementIncomplete 42301,1
    .goto 627,28.48,48.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    *|cRXP_WARN_Benötigt Stufe 30|r.
    .accept 45727 >>Akzeptiert die Quest Vereinigung der Inseln
    .turnin 45727 >>Gebt die Quest Vereinigung der Inseln ab
    .target Erzmagier Khadgar
step
    #completewith next
    #label Hall of Shadows
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42504 >>Gebt die Quest Die ungesehene Klinge ab
    .target Garona die Halborcin
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
    .cast 6477 >>Klickt auf den |cRXP_PICK_Klopfer|r
    .gossipoption 45402 >>Sprecht mit |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires Hall of Shadows
    #completewith next
    #label Hall of Shadows2
    .goto 626,48.79,33.36,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42504 >>Gebt die Quest Die ungesehene Klinge ab
    .target Garona die Halborcin
step
    #requires Hall of Shadows
    #completewith Hall of Shadows2
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 626,43.32,63.3,10 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fackel|r um das Geheimzimmer zu verlassen.
step
    #requires Hall of Shadows2
    .goto 626,42.43,74.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    .turnin 42504 >>Gebt die Quest Die ungesehene Klinge ab
    .target Garona die Halborcin
]])
--Outlaw
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Gesetzlos
#displayname Artefakt Waffe: Gesetzlos
#next a) Ordenshalle Schurke Part 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Outlaw
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Akzeptiert die Quest Die letzte Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Gebt die Quest Die letzte Klinge ab
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Akzeptiert die Quest Noch eine würdige Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
    .complete 44034,1 --1/1 Choose a second artifact to pursue
    .skipgossipid 45232
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Gebt die Quest Noch eine würdige Klinge ab
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Akzeptiert die Quest Eine würdige Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .complete 40840,4 --1/1 Artifact weapon chosen
    .skipgossipid 45230 --1st
    .choose 1389396
step
    .subzoneskip 8012,1
    .isQuestComplete 40840
    .isQuestAvailable 40840
    .goto 626,41.57,77.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Gebt die Quest Eine würdige Klinge ab
    .target Lord Jorach Rabenholdt
step
    #completewith Board the Crimson Veil
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 626,41.28,74.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .accept 40847 >>Akzeptiert die Quest Eine freundliche Abmachung
    .target Flottenadmiral Tethys
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    *|cRXP_WARN_Loggt euch aus und wieder ein, falls der NPC nicht da ist|r
    .accept 43262 >>Akzeptiert die Quest Feldherr: Garona die Halborcin
    .turnin 43262 >>Gebt die Quest Feldherr: Garona die Halborcin ab
    .target Garona die Halborcin
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Akzeptiert die Quest Feldherr: Vanessa van Cleef
    .turnin 43261 >>Gebt die Quest Feldherr: Vanessa van Cleef ab
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    .isOnQuest 40847
    .cast 311705 >>Benutzt |T413582:0|t[Gilded Ruhestein]
    .use 173528
step
    #completewith next
    #label Board the Crimson Veil
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    #completewith Board the Crimson Veil
    .goto 210,40.95,74.28,10 >>Verlasst das Haus
    #title |cFFFCDC00Leave House|r
step
    #requires Board the Crimson Veil
    .goto 210,40.77,69.12
    #title |cFFFCDC00Folgt dem Pfeil|r
    .complete 40847,2 --1/1 Board the Crimson Veil
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40847 >>Gebt die Quest Eine freundliche Abmachung ab
    .target Flottenadmiral Tethys
    .accept 40849 >>Akzeptiert die Quest Die Schreckensklingen
step
    .goto 210,40.77,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .complete 40849,1 --1/1 Set sail (Optional)
    .skipgossipid 44882 -- Set sail for Azsuna!
    .target Flottenadmiral Tethys
step
    #completewith Fly to Dalaran
    +In diesem Szenario könnt ihr nur Bodenmounts benutzen.
step
    #completewith next
    #label the Horizon's Edge
    .isOnQuest 40849
    >>Tötet |cRXP_ENEMY_First Mate DeGauza|r
    .scenario 2101,1 --Commandeer the Horizon's Edge
    .mob First Mate DeGauza
step
    .isOnQuest 40849
    #completewith the Horizon's Edge
    .goto 630,60.73,68.3,20 >>Betretet das Schiff
step
    #requires the Horizon's Edge
    .goto 630,61.13,68.67,10,0
    .goto 630,58.56,67.81
    .isOnQuest 40849
    >>Tötet |cRXP_ENEMY_Erster Maat DeGauza|r, dann folgt dem Pfeil.
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
    #title |cFFFCDC00Folgt dem Pfeil|r
    .scenario 2117,1 --Find the Dread Admiral Eliza
    .timer 28,RP
step
    .goto 630,56.41,67.29
    .isInScenario 1012
    >>Tötet |cRXP_ENEMY_Lord Brinebeard|r
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
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Tötet ALLE |cRXP_ENEMY_Schrecken Schreckensschwallformer|r und vermeidet den |cRXP_WARN_Wasserstrahl|r.
    .scenario 2133,1 --Pursue the Dread Admiral Eliza into the temple depths
    .mob Dread Squallshaper
step
    .goto 630,53.25,72.06
    .isInScenario 1012
    >>Tötet |cRXP_ENEMY_Dread Admiral Eliza|r
    .scenario 2150,1 --Defeat Eliza
    .mob Dread Admiral Eliza
step
    .goto 630,53.5,71.89
    .isInScenario 1012
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .complete 40849,2 --1/1 Dreadblades obtained
    .scenario 2150,2 --Claim the Dreadblades
step
    #completewith next
    #label Fly to Dalaran
    .goto 630,54.17,71.4,10,0
    .goto 630,55.19,71.34,10,0
    .goto 630,56.04,68.68,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Bloodsail Greif|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .target Bloodsail Gryphon
step
    #completewith Fly to Dalaran
    .goto 630,56.25,67.9,35 >>Verlasst den Tempel
step
    #requires Fly to Dalaran
    .goto 630,56.25,67.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Bloodsail Greif|r
    .complete 40849,3 --1/1 Fly to Dalaran
    .timer 12,RP
    .target Bloodsail Gryphon
step
    .achievementComplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    .accept 45727 >>Akzeptiert die Quest Vereinigung der Inseln
    .turnin 45727 >>Gebt die Quest Vereinigung der Inseln ab
    .target Erzmagier Khadgar
step
    .achievementIncomplete 42301,1
    .goto 627,28.71,48.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archmage Khadgar|r
    *|cRXP_WARN_Benötigt Stufe 30|r.
    .accept 45727 >>Akzeptiert die Quest Vereinigung der Inseln
    .turnin 45727 >>Gebt die Quest Vereinigung der Inseln ab
    .target Erzmagier Khadgar
step
    #completewith next
    #hidewindow
    #label The Dreadblades
    .goto 627,52.61,34.02,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40849 >>Gebt die Quest Die Schreckensklingen ab
    .target Flottenadmiral Tethys
step
    #completewith The Dreadblades
    #label Artifact Weapon: Outlaw
    .goto 627,54.51,31.42,5,0
    .goto 627,54.32,32.84,5,0
    -- .gossipoption 45226 >>Talk to |cRXP_FRIENDLY_Ravenholdt Courier|r to open the secret door.
    .cast 6477 >>Klickt auf den |cRXP_PICK_Klopfer|r
    .gossipoption 45402 >>Sprecht mit |cRXP_FRIENDLY_Lucian Trias|r.
    .target Lucian Trias
step
    #requires The Dreadblades
    #completewith next
    #label The Dreadblades2
    .goto 626,48.76,33.81,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40849 >>Gebt die Quest Die Schreckensklingen ab
    .target Flottenadmiral Tethys
step
    #requires The Dreadblades
    #completewith The Dreadblades2
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt die |cRXP_PICK_Fackel|r, um die Tür zum geheimen Raum zu öffnen.
step
    #requires The Dreadblades2
    .goto 626,41.14,74.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r
    .turnin 40849 >>Gebt die Quest Die Schreckensklingen ab
    .target Flottenadmiral Tethys
]])
--Subtlety
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Feingefühl
#displayname Artefakt Waffe: Feingefühl
#next a) Ordenshalle Schurke Part 1
#internal

<< Rogue

step
    #completewith Artifact Weapon: Subtlety
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44375 >>Akzeptiert die Quest Die letzte Klinge
    .skipgossipid 45233
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 44034
    .isQuestAvailable 44375
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44375 >>Gebt die Quest Die letzte Klinge ab
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 44034 >>Akzeptiert die Quest Noch eine würdige Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestTurnedIn 40840
    .isQuestAvailable 44034
    .goto 626,41.48,78.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 44034 >>Gebt die Quest Noch eine würdige Klinge ab
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.45,77.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .accept 40840 >>Akzeptiert die Quest Eine würdige Klinge
    .target Lord Jorach Rabenholdt
step
    .subzoneskip 8012,1
    .isQuestAvailable 40840
    .goto 626,41.37,77.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .turnin 40840 >>Gebt die Quest Eine würdige Klinge ab
    .target Lord Jorach Rabenholdt
step
    #completewith Lucian Trias'
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 626,41.04,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .accept 41919 >>Akzeptiert die Quest Die Schatten erhellen
    .target Valeera Sanguinar
step
    .isOnQuest 42139
    .goto 626,42.30,74.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garona Halforcen|r
    *|cRXP_WARN_Loggt euch aus und wieder ein, falls der NPC nicht da ist|r
    .accept 43262 >>Akzeptiert die Quest Feldherr: Garona die Halborcin
    .turnin 43262 >>Gebt die Quest Feldherr: Garona die Halborcin ab
    .target Garona die Halborcin
    .complete 42139,1 --1/1 Garona Halforcen recruited
step
    .isOnQuest 42139
    .goto 626,42.43,68.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vanessa VanCleef|r
    .accept 43261 >>Akzeptiert die Quest Feldherr: Vanessa van Cleef
    .turnin 43261 >>Gebt die Quest Feldherr: Vanessa van Cleef ab
    .target Vanessa VanCleef
    .complete 42139,2 --1/1 Vanessa VanCleef recruited
step
    #completewith next
    #label Lucian Trias'
    #hidewindow
    .goto 626,45.01,57.61,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #completewith Lucian Trias'
    .goto 626,29.48,22.39
    .cast 6477 >>Klickt auf den |cRXP_PICK_Klopfer|r
step
    #requires Lucian Trias'
    #completewith next
    #label Lucian Trias'2
    .goto 627,45.6,28.53,10,0
    .goto 627,46.84,28.87,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucian Trias|r
    .complete 41919,3 --1/1 Lucian Trias' intel
    .target Lucian Trias
step
    #requires Lucian Trias'
    #completewith Lucian Trias'2
    .goto 627,53.16,33.12,10 >>Folgt dem Pfeil
step
    #requires Lucian Trias'2
    .goto 627,54.39,31.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucian Trias|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Val'zuun|r
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith Val'zuun's intel
    .goto 628,67.4,63.13,15 >>Betretet die Kanalisation
step
    #requires Val'zuun's intel
    .isOnQuest 41919
    .goto 628,67.4,63.13
    .gossipoption 45397 >>Sprecht mit |cRXP_FRIENDLY_Val'zuun|r
    .timer 26,RP
    .target Val'zuun
step
    #completewith next
    #label The Shadows Reveal
    .goto 628,73.57,65.69,5,0
    .goto 628,76.45,67.51,5,0
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    #completewith The Shadows Reveal
    .goto 628,75.2,65.08,5 >>Steht neben dem Kanalausgang |cRXP_WARN_geht nicht zu weit|r
step
    #requires The Shadows Reveal
    .goto 628,74.05,63.8
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 41919,2 --1/1 Val'zuun's intel
    .target Val'zuun
step
    .goto 627,27.36,64.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Desmond Grabesleid|r
    .target Desmond Gravesorrow
    .complete 41919,1 --1/1 Desmond Gravesorrow's intel
    .skipgossipid 45396 -- <Search the body for clues.
step
    #completewith next
    #label The Shadows Reveal2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Gebt die Quest Die Schatten lüften ab
    .target Valeera Sanguinar
    .accept 41920 >>Akzeptiert die Quest Eine Frage der Raffinesse
step
    #completewith The Shadows Reveal2
    #title |cFFFCDC00Betretet das Haus|r
    .goto 627,51.62,68.76,5 >>Betretet das Haus
step
    #requires The Shadows Reveal2
    .goto 627,51.67,70.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41919 >>Gebt die Quest Die Schatten erhellen ab
    .target Valeera Sanguinar
    .accept 41920 >>Akzeptiert die Quest Eine Frage der Raffinesse
step
    #completewith next
    #label Rune of Portals
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    *|cRXP_WARN_Weicht den Arkanen Wächtern und Feuerspirale aus|r.
    .complete 41920,1 --1/1 Rune of Portals
step
    #completewith Rune of Portals
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 627,56.97,46.87
    .cast 1784 >>Benutzt |T132320:0|t[Verstohlenheit] bevor ihr das Haus betretet.
    .usespell 1784
step
    #requires Rune of Portals
    .goto 627,53.60,47.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Kristall|r
    *|cRXP_WARN_Weicht den Arkanen Wächtern und Feuerspirale aus|r.
    .complete 41920,1 --1/1 Rune of Portals
    .target Arcane Sentry
step
    #completewith next
    #label Portals delivered
    .goto 628,74.43,64.05,5,0
    .goto 628,73.03,65.41,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
step
    #completewith Portals delivered
    .goto 628,67.2,63.23,5 >>Betretet die Kanalisation
step
    #requires Portals delivered
    .goto 628,67.2,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Val'zuun|r
    .target Val'zuun
    .complete 41920,2 --1/1 Rune of Portals delivered
    .skipgossipid 45398 -- <Hand the Rune of Portals to Val'zuun.>
step
    .goto 628,67.82,63.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41920 >>Gebt die Quest Eine Frage der Raffinesse ab
    .target Valeera Sanguinar
    .accept 41921 >>Akzeptiert die Quest Auf die Pelle rücken
step
    #completewith next
    #label Akaari confronted
    .goto 628,73.34,65.55,5,0
    .goto 628,76.49,67.38,5,0
    >>Tötet |cRXP_ENEMY_Akaari Shadowgore|r
    .complete 41921,1 --1/1 Akaari confronted
step
    #completewith Akaari confronted
    .goto 627,59.7,48.09,5 >>Verlasst die Kanalisation
step
    #requires Akaari confronted
    .goto 627,49.89,37.93,5,0
    .goto 627,50.69,40.98,5,0
    .goto 627,49.48,41.21,5,0
    .goto 627,47.78,40.7
    >>Betretet das Haus, geht die Treppen hinauf und tötet |cRXP_ENEMY_Akaari Schattenblut|r
    #title |cFFFCDC00Betretet das Haus|r
    .complete 41921,1 --1/1 Akaari confronted
    .mob Akaari Shadowgore
step
    .goto 627,49.48,41.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41921 >>Gebt die Quest Auf die Pelle rücken ab
    .target Valeera Sanguinar
    .accept 41922 >>Akzeptiert die Quest Verräter!
step
    #completewith next
    #label Traitor!
    .goto 627,48.3,40.41,5,0
    .goto 627,48.17,38.22,5,0
    .goto 628,74.48,63.87,5,0
    .goto 628,72.98,65.34,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Gebt die Quest Verräter! ab
    .target Valeera Sanguinar
step
    #completewith Traitor!
    .goto 628,67.53,62.39,5 >>Betretet die Abwasserkanäle
step
    #requires Traitor!
    .goto 628,67.53,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41922 >>Gebt die Quest Verräter ab
    .target Valeera Sanguinar
step
    .goto 628,67.22,62.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Val'zuun|r
    .accept 41924 >>Akzeptiert die Quest Reißzähne des Verschlingers
    .timer 15,RP
    .target Val'zuun
step
    .goto 628,66.73,61.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r
    .complete 41924,1 --1/1 Use the Twisted Gateway
step
    #completewith next
    #label Akaari Shadowgore
    .isOnQuest 41924
    >>Geht zu |cRXP_ENEMY_Akaari Schattenblut|r und weicht den Augen aus, da sie euch aus der Verstohlenheit werfen.
    *Niederlage |cRXP_ENEMY_Akaari Shadowgore|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    #completewith Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    .cast 1784 >>Benutzt |T132320:0|t[Verstohlenheit] und schleicht euch zu |cRXP_ENEMY_Akaari Schattenblut|r.
    .usespell 1784
step
    #requires Akaari Shadowgore
    .isOnQuest 41924
    .goto 740,63.59,52.98
    >>Geht zu |cRXP_ENEMY_Akaari Schattenblut|r und weicht den Augen aus, da sie euch aus der Verstohlenheit werfen.
    *Niederlage |cRXP_ENEMY_Akaari Shadowgore|r
    .scenario 2363,1 --Engage Akaari Shadowgore.
    .timer 5,RP
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    .cast 1784 >>Benutzt |T132320:0|t[Verstohlenheit] und |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Seelenbewahrer|r.
    *|cRXP_WARN_Es gibt einen Knopf unter dem Questziel.|r
    .scenario 2364,1 --Use Pick Pocket on the Soulkeeper.
    .usespell 1784
    .usespell 921
    .mob Soulkeeper
step
    .goto 741,67.4,55.3
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Käfig|r
    .scenario 2473,1 --Escape the Jailer's Prison.
step
    .goto 741,64.5,47.39
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kiste|r
    .scenario 2473,2 --Reclaim your weapons.
step
    .goto 741,59.76,51.71
    .isInScenario 1078
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Tor|r
    .scenario 2473,3 --Open the Holding Cell door.
    .timer 10,RP
step
    .goto 741,51.3,52.8
    .isInScenario 1078
    >>Tötet |cRXP_ENEMY_Xirus|r
    .scenario 2366,1 --Slay Inquisitor Xirus.
    .mob Xirus
step
    .goto 740,52.3,70.38,10,0
    .goto 740,58.4,66.7
    .isInScenario 1078
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 740,58.7,66.87
    .scenario 2367,2 --Find Akaari Shadowgore.
step
    .goto 740,63.61,53.24
    .isInScenario 1078
    >>Tötet |cRXP_ENEMY_Akaari Schattenblut|r |cRXP_WARN_Wenn sie sich klont, tötet die Klone zuerst.|r
    .scenario 2368,1 --Kill Akaari Shadowgore.
    .mob Akaari Shadowgore
step
    .goto 740,63.21,53.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .complete 41924,2 --1/1 Fangs of the Devourer
    .scenario 2369,1 --Wield the Fangs of the Devourer.
step
    #completewith next
    #hidewindow
    #label Fangs of the Devourer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Gebt die Quest Reißzähne des Verschlingers ab
    .target Valeera Sanguinar
step
    #completewith Fangs of the Devourer
    .zoneskip 740,1
    .zone 628 >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .macro Leave Instance,236367 >> Verlasst Instanz
step
    #requires Fangs of the Devourer
    #hidewindow
    #completewith next
    #label Fangs of the Devourer2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Gebt die Quest Reißzähne des Verschlingers ab
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer
    #completewith Fangs of the Devourer2
    .zoneskip 626
    .goto 628,73.27,65.13,5,0
    .goto 628,76.51,67.51,5,0
    .goto 627,59.65,47.69,5 >>Verlasst die Kanalisation
step
    #requires Fangs of the Devourer2
    #hidewindow
    #completewith next
    #label Fangs of the Devourer3
    .goto 627,52.8,33.78,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Gebt die Quest Reißzähne des Verschlingers ab
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer2
    #completewith Fangs of the Devourer3
    #label Artifact Weapon: Subtlety
    .zoneskip 626
    .goto 627,54.5,31.45,5,0
    .goto 627,54.32,32.81
    .cast 6477 >>Klickt auf den |cRXP_PICK_Klopfer|r
    .gossipoption 45402 >>Sprecht mit |cRXP_FRIENDLY_Lucian Trias|r
    .target Lucian Trias
 step
    #requires Fangs of the Devourer3
    #hidewindow
    #completewith next
    #label Fangs of the Devourer4
    .goto 626,49.45,32.64,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Gebt die Quest Reißzähne des Verschlingers ab
    .target Valeera Sanguinar
step
    #requires Fangs of the Devourer3
    #completewith Fangs of the Devourer4
    .goto 626,40.88,75.51,30 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Fackel|r, um die Tür zum geheimen Zimmer zu öffnen.
step
    #requires Fangs of the Devourer4
    .goto 626,40.88,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valeera Sanguinar|r
    .turnin 41924 >>Gebt die Quest Reißzähne des Verschlingers ab
    .target Valeera Sanguinar
]])
--Assassination 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Meucheln
#displayname Artefakt Waffe: Meucheln
#next ac) Ordenshalle Schurke Part 2
#internal

<< Rogue

step
    #include a) Artefakt Waffe: Meucheln
]])
--Outlaw 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Gesetzlos
#displayname Artefakt Waffe: Gesetzlos
#next ac) Ordenshalle Schurke Part 2
#internal

<< Rogue

step
    #include a) Artefakt Waffe: Gesetzlos
]])
--Subtlety 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Feingefühl
#displayname Artefakt Waffe: Feingefühl
#next ac) Ordenshalle Schurke Part 2
#internal

<< Rogue

step
    #include a) Artefakt Waffe: Feingefühl
]])

--Rogue Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Schurke Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Schurke
#chapter
#internal

<< Rogue

step
    #completewith Lethal Efficiency22
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lord Jorach Ravenholdt|r
    .target Lord Jorach Rabenholdt
    .accept 40840 >>Akzeptiert die Quest Eine würdige Klinge
step
    .isOnQuest 40840
    .goto 626,41.7,75.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fleet Admiral Tethys|r, |cRXP_FRIENDLY_Valeera Sanguinar|r,  und  |cRXP_FRIENDLY_Princess Tess Graumähne|r.
    .complete 40840,2 --1/1 Valeera's plan considered
    .complete 40840,1 --1/1 Tethys' plan considered
    .complete 40840,3 --1/1 Tess' plan considered
    .skipgossipid 45256
    .skipgossipid 45235
    .skipgossipid 45103
    .target Flottenadmiral Tethys
    .target Valeera Sanguinar
    .target Prinzessin Tess Graumähne
step
    .isQuestAvailable 40840
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Assassination >> Meucheln(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Outlaw >> Gesetzlos(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Subtlety >> Feingefühl(SPS) Questline
step
    #include ac) Order Hall Rogue Part 2@Honoring Success-Lethal Efficiency2
]])

-- --------- Shaman ---------

--Elemental
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Elementarschaden
#displayname Artefakt Waffe: Elementarschaden
#next a) Ordenshalle Schamane Part 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Akzeptiert die Quest Euer volles Potenzial
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Dies wird automatisch das Elementarartefakt auswählen|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Gebt die Quest Euer volles Potenzial ab
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43334
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Akzeptiert die Quest Expanding Euer Horizont
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Dadurch wird automatisch das Elementar-Artefakt ausgewählt|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389398
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Gebt die Quest Expanding Euer Horizon ab
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Akzeptiert die Quest Der Ruf der Elemente
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Dadurch wird automatisch das Elementar-Artefakt ausgewählt|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389398
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Gebt die Quest Der Ruf der Elemente ab
    .target Thrall
step
    #completewith The Coming Storm
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .zoneskip 726,1
    .goto 726,34.18,77.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rehgar Erdenwut|r
    .accept 43334 >>Akzeptiert die Quest Der aufziehende Sturm
    .target Rehgar Earthfury
step
    .goto 725,34.07,74.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rehgar Erdenwut|r
    .accept 43334 >>Akzeptiert die Quest Der aufziehende Sturm
    .target Rehgar Earthfury
step
    .isOnQuest 43334
    .goto 726,34.18,77.80,-1
    .goto 725,34.07,74.37,-1
    .zone 379 >>Klickt auf |cRXP_FRIENDLY_Graddoc|r
    .target Graddoc
step
    #label The Coming Storm
    .goto 379,66.90,56.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xuen|r
    .turnin 43334 >>Gebt die Quest Der aufziehende Sturm ab
    .accept 43338 >>Akzeptiert die Quest Der Kodex des Ra
    .target Xuen
step
    .goto 390,22.39,26.70
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .complete 43338,1 --1/1 Travel to the Guo-Lai Halls
step
    .zoneskip 395
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,55.19,91.12,12 >>Betretet die Guo-Lai-Hallen
step
    #completewith TheEdictsOfXA
    >>Tötet |cRXP_ENEMY_Mogu-Geister|r in Die Guo-Lai-Hallen
    *|cRXP_WARN_Ausweichen vor |cRXP_ENEMY_Mogu-Statuen|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    #completewith next
    #label TheEdictOfFireA
    >>Tötet |cRXP_ENEMY_Xioliang|r. Plündert sie für |T1017867:0|t[|cRXP_LOOT_Edict of Feuer|r]
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,47.43,81.40,15,0
    .goto 395,52.13,63.98,25,0
    .goto 395,67.44,68.62,25 >>Betretet die Guo-Lai-Ritualkammer
step
    #hidewindow
    #completewith TheEdictOfFireA
    .goto 395,74.25,53.19,50 >>Folgt dem Pfeil
step
    #requires TheEdictOfFireA
    .goto 395,74.83,51.02
    >>Tötet |cRXP_ENEMY_Xioliang|r. Plündert sie für |T1017867:0|t[|cRXP_LOOT_Edict of Feuer|r].
    .complete 43338,2 --1/1 The Edict of Fire
    .mob Xioliang
step
    #completewith next
    #label TheEdictOfStoneA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Statue von Zhu vom Ewigen Stein|r.
    >>Tötet |cRXP_ENEMY_Zhu vom Ewigen Stein|r. Beute ihn für |T442737:0|t[|cRXP_LOOT_Edict of Stein|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Xioliang
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    .goto 395,64.19,66.71,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,33.16,20.93,15,0
    .goto 395,48.87,30.24,15 >>Betretet das Guo-Lai-Gewölbe
step
    #hidewindow
    #completewith TheEdictOfStoneA
    .goto 395,48.87,30.24,50 >>Folgt dem Pfeil
step
    #requires TheEdictOfStoneA
    .goto 395,48.87,30.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Statue of Zhu vom Ewigen Stein|r an.
    >>Tötet |cRXP_ENEMY_Zhu vom Ewigen Stein|r. Beute ihn für den |T442737:0|t[|cRXP_LOOT_Edikt von Stein|r].
    .complete 43338,3 --1/1 The Edict of Stone
    .mob Zhu of the Eternal Stone
step
    #completewith next
    #label TheEdictOfStormA
    >>Tötet |cRXP_ENEMY_Thunder Serpent Nalak'Ra|r. Plündert sie für |T839911:0|t[|cRXP_LOOT_Edict of Sturm|r].
    .complete 43338,4 --1/1 The Edict of Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    .isOnQuest 43338
    .isQuestNotComplete 43338
    #title |cFFFCDC00Überprüft den Hinweis|r
    .goto 395,32.94,21.14,15,0
    .goto 395,27.75,46.45,15,0
    .goto 395,51.81,57.95,33,0
    .goto 395,56.24,48.40,15,0
    .goto 395,64.67,23.05,15,0
    .goto 395,68.78,23.98,15,0
    .goto 395,69.57,15.71,15,0
    .goto 396,66.28,19.96
    .zone 396 >>Betretet die Hall of the Serpent
    *|cRXP_WARN_HINWEIS:|r Die erste Rune in der Mitte ist die sichere, tretet nur auf diese.
step
    #requires TheEdictOfStormA
    .goto 396,57.75,50.75
    >>Tötet |cRXP_ENEMY_Thunder Serpent Nalak'Ra|r. Plündert sie für |T839911:0|t[|cRXP_LOOT_Edict of Sturm|r].
    .complete 43338,4 --1/1 The Edict of the Storm
    .mob Thunder Serpent Nalak'Ra
step
    #completewith next
    #label TheCodexofRaA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rehgar Erdenwut|r
    .turnin 43338 >>Gebt die Quest Der Kodex des Ra ab
    .accept 39771 >>Akzeptiert die Quest Die Stimme des Donners
    .target Rehgar Earthfury
step
    #completewith TheCodexofRaA
    #title |cFFFCDC00Überprüft den Hinweis|r
    .goto 395,67.13,14.55,15,0
    .goto 395,70.22,18.57,15,0
    .goto 395,68.17,24.88,15,0
    .goto 395,63.00,25.50,15 >>Geht wieder nach oben
    *|cRXP_WARN_HINWEIS:|r Die erste Rune in der Mitte ist die sichere, tretet nur auf diese.
step
    #requires TheCodexofRaA
    .goto 395,53.19,61.45
    >>Tötet |cRXP_ENEMY_Mogu-Geister|r in den Guo-Lai-Hallen
    *|cRXP_WARN_Ausweichen vor |cRXP_ENEMY_Mogu-Statuen|r.|r
    .complete 43338,5 --8/8 Mogu Spirits Purged
    .mob Shao-Tien Spirit Warrior
    .mob Shao-Tien Spirit Wraith
step
    .goto 395,47.11,83.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rehgar Erdenwut|r
    .turnin 43338 >>Gebt die Quest Der Kodex des Ra ab
    .accept 39771 >>Akzeptiert die Quest Die Stimme des Donners
    .target Rehgar Earthfury
step
    #completewith next
    #label TheVoiceOfThunderA
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    #completewith TheVoiceOfThunderA
    #title Verlasst die Guo-Lai-Hallen
    .goto 390,22.55,27.08,15 >>|cRXP_WARN_Verlassen der Guo-Lai-Hallen|r
step
    #requires TheVoiceOfThunderA
    .goto 379,68.63,57.01
    >>|cRXP_WARN_Folgt dem Pfeil|r
    .complete 39771,1 --1/1 Travel to the Temple of the White Tiger
step
    .isOnQuest 39771
    .goto 379,68.6,57.0
    .enterScenario 976 >>Betretet das Szenario |cRXP_PICK_Meister der Stürme|r.
step
    .isInScenario 976
    .goto 379,68.6,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xuen|r
    .scenario 1992,1 --Speak with the White Tiger.
    .skipgossipid 45121
    .target Xuen
step
    .isInScenario 976
    #completewith next
    #label DefeatTheGiantslayerA
    >>Besiegt |cRXP_ENEMY_Sigurd der Riesentöter|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .mob Sigurd the Giantslayer
step
    #completewith DefeatTheGiantslayerA
    .goto 379,69.32,52.72
    .gossipoption 45122 >>Sprecht mit |cRXP_FRIENDLY_Xuen|r
    .target Xuen
step
    #requires DefeatTheGiantslayerA
    .isInScenario 976
    .goto 379,69.7,53.0
    >>Besiegt |cRXP_ENEMY_Sigurd der Riesentöter|r
    .scenario 1993,1 --Defeat Sigurd the Giantslayer.
    .timer 53,Xuen Rollenspiel
    .mob Sigurd the Giantslayer
step
    .isInScenario 976
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xuen|r
    .goto 379,66.7,51.2
    .scenario 1999,1 --Speak with Xuen to Begin
    .target Xuen
    .skipgossipid 45039
step
    .isInScenario 976
    .goto 379,66.7,51.2
    >>Niederlage |cRXP_ENEMY_Chen Sturmbräu|r und |cRXP_ENEMY_Li Li Sturmbräu|r
    .scenario 1999,2 --Chen Stormstout Defeated
    .scenario 1999,3 --Li Li Stormstout Defeated
    .mob Chen Sturmbräu
    .mob Li Li Stormstout
step
    #completewith next
    #label WeaponsOfStormA
    .isInScenario 976
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fist of Ra-den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
step
    #completewith WeaponsOfStormA
    #title Betretet den Tempel
    .goto 379,68.60,45.89,15 >>Betretet den Tempel des Weißen Tigers
step
    #requires WeaponsOfStormA
    .isInScenario 976
    .goto 379,68.79,43.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Fist of Ra-den|r
    .scenario 2078,1 --Equip the Weapons of the Storm
    .timer 25,Rollenspiel-Dauer
step
    .isInScenario 976
    .goto 379,68.8,43.7
    >>Tötet |cRXP_ENEMY_Lord Kra'vos|r.
    .scenario 2079,1 --Defeat Lord Kra'vos
    .timer 27,Rollenspiel-Dauer
    .mob Low Inquisitor
    .mob Lord Kra'vos
step
    .goto 379,68.79,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Astral Tor to the Mahlstrom|r an
    .complete 39771,3 --1/1 Return to the Maelstrom
step
    #optional
    .isQuestTurnedIn 41510
    .goto 726,34.15,77.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rehgar Erdenwut|r
    .turnin 39771 >>Gebt die Quest Die Stimme des Donners ab
    .target Rehgar Earthfury
step
    .goto 726,33.48,74.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rehgar Erdenwut|r
    .turnin 39771 >>Gebt die Quest Die Stimme des Donners ab
    .target Rehgar Earthfury
]])
--Enhancement
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Verstärkung
#displayname Artefakt Waffe: Verstärkung
#next a) Ordenshalle Schamane Part 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Akzeptiert die Quest Euer volles Potenzial
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Das wird automatisch das Verstärkungs-Artefakt aufheben|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Gebt die Quest Euer volles Potenzial ab
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 42931
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Akzeptiert die Quest Expanding Euer Horizont
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Dies wird automatisch das Verstärkungs-Artefakt auswählen|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389399
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Gebt die Quest Expanding Euer Horizon ab
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Akzeptiert die Quest Der Ruf der Elemente
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Dies wird automatisch das Verstärkungs-Artefakt auswählen|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389399
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Gebt die Quest Der Ruf der Elemente ab
    .target Thrall
step
    #completewith Where the Hammer Falls
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .zoneskip 726,1
    .goto 726,34.51,76.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stormcaller Mylra|r.
    .accept 42931 >>Akzeptiert die Quest Wo der Hammer fällt
    .target Stormcaller Mylra
step
    .goto 725,35.76,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stormcaller Mylra|r.
    .accept 42931 >>Akzeptiert die Quest Wo der Hammer fällt
    .target Stormcaller Mylra
step
    #optional
    .zoneskip 726,1
    .goto 726,60.13,66.90
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Stormbeak|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Stormbeak
step
    .goto 725,35.48,77.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Stormbeak|r
    .complete 42931,1 --1/1 Use Stormbeak to Fly Into the Maelstrom
    .target Stormbeak
step
    #label Where the Hammer Falls
    .goto 207,47.10,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .turnin 42931 >>Gebt die Quest Wo der Hammer fällt ab
    .target Thrall
    .accept 42932 >>Akzeptiert die Quest Das Wissen der Steinmutter
step
    .goto 207,56.35,12.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therazane|r.
    .turnin 42932 >>Gebt die Quest Das Wissen der Steinmutter ab
    .target Therazane
    .accept 42933 >>Akzeptiert die Quest Zum Teufel mit den Troggs
    .accept 42935 >>Akzeptiert die Quest Die Rettung der Steindrachen
    .accept 42936 >>Akzeptiert die Quest Geliebtes Gelege
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
    >>Tötet |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #completewith StoneDrakesRescuedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Disassembled Opalescent Wächter|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label StoneDrakesRescuedA
    >>Tötet die |cRXP_ENEMY_Felrock-Troggs|r um die |cRXP_FRIENDLY_Stein-Drachen|r herum.
    .complete 42935,1 --6/6 Stone Drakes Rescued
    .target Stone Drake
step
    #completewith OpalescentGuardiansRebuiltA
    >>Tötet |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    #label OpalescentGuardiansRebuiltA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Disassembled Opalescent Wächter|r
    .complete 42936,1 --5/5 Opalescent Guardians Rebuilt
    .target Disassembled Opalescent Guardian
step
    #label FelrockTroggsSlainA
    >>Tötet |cRXP_ENEMY_Felrock Troggs|r.
    .complete 42933,1 --25/25 Felrock Troggs Slain
    .mob Felrock Mystic
    .mob Felrock Beast Tamer
    .mob Felrock Rager
step
    .goto 207,31.22,20.94
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 42936,2 --5/5 Guardians Escorted to Aeosera
step
    .goto 207,56.35,12.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therazane|r.
    .turnin 42933 >>Gebt die Quest Zum Teufel mit den Troggs ab
    .turnin 42935 >>Gebt die Quest Die Rettung der Steindrachen ab
    .turnin 42936 >>Gebt die Quest Geliebtes Gelege ab
    .accept 42937 >>Akzeptiert die Quest Schlägerei am Nadelfels
    .target Therazane
step
    .goto 207,56.73,12.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Aeosera|r
    .complete 42937,1 --1/1 Fly Aeosera to Needlerock
    .timer 60,Flug Dauer
step
    .goto 207,31.71,31.29
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 42937,2 --1/1 Assault Needlerock with Aeosera
step
    .goto 207,25.24,30.33
    >>Timer 60
step
    .goto 207,24.21,29.70
    >>Tötet |cRXP_ENEMY_Borlock aus den Tiefen|r.
    .complete 42937,3 --1/1 Borlock of the Deeps slain
    .mob Borlock of the Deeps
step
    .goto 207,56.36,12.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therazane|r.
    .turnin 42937 >>Gebt die Quest Schlägerei am Nadelfels ab
    .target Therazane
step
    .goto 207,56.54,12.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .accept 40224 >>Akzeptiert die Quest Der Hammer in der Tiefe
    .target Thrall
step
    .goto 207,56.39,12.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf das |cRXP_PICK_Portal zu den Bruchtiefen|r
    .complete 40224,1 --1/1 Enter the Crumbling Depths
step
    .isOnQuest 40224
    .goto 207,56.39,12.78
    .enterScenario 950 >>Betretet das Szenario |cRXP_PICK_Läutern die Tiefe|r.
step
    .isInScenario 950
    .goto 729,33.08,72.98,35,0
    .goto 729,37.17,72.79
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 1902,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    #loop
    .goto 729,42.73,72.45,30,0
    .goto 729,39.10,83.23,30,0
    >>Tötet die |cRXP_ENEMY_Devouring Imps|r.
    .scenario 1905,1 --Defeat all the Devouring Imps.
    .mob Devouring Imp
step
    .isInScenario 950
    .goto 729,48.80,78.32,35,0
    .goto 729,54.62,79.55,35,0
    .goto 729,59.60,82.33
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 1906,1 --Follow Geth'xun's trail of fel blood.
step
    .isInScenario 950
    .goto 729,62.77,79.31
    >>>Tötet den |cRXP_ENEMY_Verderbten Gyreworm|r.
    .scenario 1907,1 --Slay the Corrupted Gyreworm.
    .mob COrrupted Gyreworm
step
    .isInScenario 950
    .goto 729,62.71,67.05,35,0
    .goto 729,59.56,65.26
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 1908,1 --Follow the trail to find Geth'xun.
step
    .goto 729,54.30,54.58
    .isInScenario 950
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die Steine um das |cRXP_PICK_Schicksalshammer|r herum.
    .scenario 1909,1 --Acquire the Doomhammer.
    .complete 40224,2 --Acquire the Doomhammer
step
    .isInScenario 950
    .goto 729,52.96,53.11
    >>Tötet |cRXP_ENEMY_Geth'xun|r.
    .scenario 1910,1 --Slay Geth'xun.
    .mob Geth'xun
step
    .isInScenario 950
    .goto 729,52.72,53.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Stormcaller Mylra|r.
    .scenario 1911,1 --Help Stormcaller Mylra.
    .target Stormcaller Mylra
step
    .zoneskip 729,1
    #completewith next
    #label ReturnToTheMaelstromA
    #hidewindow
    .complete 40224,3 --1/1 Return to the Maelstrom
step
    #completewith ReturnToTheMaelstromA
    .goto 729,53.13,55.80
    .zone 207 >>Klickt auf |cRXP_FRIENDLY_Stormbeak|r.
step
    #requires ReturnToTheMaelstromA
    .goto 207,56.39,12.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Stormbeak|r.
    .complete 40224,3 --1/1 Return to the Maelstrom
    .target Stormbeak
step
    .goto 726,34.52,76.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stormcaller Mylra|r.
    .turnin 40224 >>Gebt die Quest Der Hammer in der Tiefe ab
    .target Stormcaller Mylra
]])
--Restoration
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Wiederherstellungsschamane
#displayname Artefakt Waffe: Wiederherstellung
#next a) Ordenshalle Schamane Part 1
#internal

<< Shaman

step
    .isQuestTurnedIn 43945
    .isQuestAvailable 44006
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .accept 44006 >>Akzeptiert die Quest Euer volles Potenzial
    .target Aggramar
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 44006,1 --1/1 Chose a Third Artifact to Pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45112
step
    .isQuestAvailable 44006
    .isOnQuest 44006
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .turnin 44006 >>Gebt die Quest Euer volles Potenzial ab
    .target Aggramar
step
    .isQuestTurnedIn 41335
    .isQuestAvailable 43945
    .isQuestAvailable 43644
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .accept 43945 >>Akzeptiert die Quest Expanding Euer Horizont
    .target Aggramar
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 43945,1 --1/1 Choose a second artifact to pursue
    .choose 1389400
    .target Aggramar
    .skipgossipid 45111
step
    .isQuestAvailable 43945
    .isOnQuest 43945
    .goto 726,36.16,80.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aggramar|r.
    .turnin 43945 >>Gebt die Quest Expanding Euer Horizon ab
    .target Aggramar
step
    .isQuestAvailable 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .accept 41335 >>Akzeptiert die Quest Der Ruf der Elemente
    .target Thrall
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    *|cRXP_WARN_Dies wird automatisch das Wiederherstellungs-Artefakt auswählen|r
    .complete 41335,1 --1/1 Artifact chosen
    .choose 1389400
    .target Thrall
    .skipgossipid 45219
step
    .isQuestAvailable 41335
    .isOnQuest 41335
    .goto 725,36.23,74.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thrall|r.
    .turnin 41335 >>Gebt die Quest Der Ruf der Elemente ab
    .target Thrall
step
    #completewith ThirdClueA
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 726,33.80,79.21,-1
    .goto 725,31.97,74.72,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erunak Stonespeaker|r.
    .accept 43644 >>Akzeptiert die Quest In die Tiefen
    .target Erunak Stonespeaker
step
    .goto 726,33.69,78.65,-1
    .goto 725,33.81,75.85,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Blase von Vashj'ir|r.
    .complete 43644,1 --1/1 Travel to Vashj'ir with Erunak
    .target Bubble of Vashj'ir
step
    .goto 205,43.62,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erunak Stonespeaker|r.
    .turnin 43644 >>Gebt die Quest In die Tiefen ab
    .target Erunak Stonespeaker
    .accept 43645 >>Akzeptiert die Quest Die Spur der Wellensprecherin
step
    .goto 205,40.50,74.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Adelee's Stab|r.
    .complete 43645,1 --1/1 First Clue Found
step
    #completewith next
    #label ThirdClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Adelee's Tagebuch|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #title |cFFFCDC00Betretet den Raum|r
    #completewith ThirdClueA
    .goto 205,33.10,68.76,10 >>|cRXP_WARN_Betretet den Raum.|r
step
    #requires ThirdClueA
    .goto 205,33.08,67.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Adelee's Tagebuch|r.
    .complete 43645,3 --1/1 Third Clue Found
step
    #completewith next
    #label SecondClueA
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    #title |cFFFCDC00Verlaßt den Raum|r
    #completewith SecondClueA
    .goto 205,33.11,69.01,10 >>|cRXP_WARN_Verlasst den Raum.|r
step
    #requires SecondClueA
    .goto 205,37.31,69.81,35,0
    .goto 205,39.15,56.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Ancient Wavestone|r
    .complete 43645,2 --1/1 Second Clue Found
step
    .goto 205,43.60,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erunak Stonespeaker|r.
    .turnin 43645 >>Gebt die Quest Die Spur der Wellensprecherin ab
    .target Erunak Stonespeaker
    .accept 40341 >>Akzeptiert die Quest Thron der Gezeiten: Die Macht Azsharas
    .goto 204,70.71,29.33,35,0
step
    .goto 204,70.91,29.74
    >>|cRXP_WARN_Ihr könnt use an underwater mount like |T133936:0|t[Meeresschildkröte].
    .complete 40341,1 --1/1 Travel to the Abyssal Maw
step
    .goto 204,69.18,25.52
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 40341,2 --1/1 Enter the Throne of Tides
step
    .isOnQuest 40341
    .goto 204,69.18,25.52
    .enterScenario 1066 >>Betretet das |cRXP_PICK_Die Dunkle Königin und das Meer|r Szenario.
step
    .isInScenario 1066
    .goto 742,50.09,82.31
    >>Benutzt die |T136044:0|t[Heilende Woge] auf den |cRXP_FRIENDLY_Meeresriese|r
    .scenario 2282,1 --Heal the Sea Giant.
    .target Grash
    .usespell 8004
step
    .isInScenario 1066
    .goto 742,49.93,82.67
    >>Tötet die |cRXP_ENEMY_Naga Brutes|r.
    .scenario 2282,2 --Kill the Naga Brutes.
step
    .isInScenario 1066
    .goto 742,50.04,82.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grash|r.
    .scenario 2282,3 --Recruit the Sea Giant.
    .target Grash
    .skipgossipid 45587
    .skipgossipid 45621
step
    .isInScenario 1066
    .goto 742,49.91,55.50
    >>Tötet den |cRXP_ENEMY_Rasend Tiefensee-Makrura|r, die |cRXP_ENEMY_Gezeitenruferin der Zithreenai|r, und die |cRXP_ENEMY_
    .scenario 2283,1 --Defeat Adelee's Guards.
step
    .isInScenario 1066
    .goto 742,50.05,51.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Wavespeaker Adelee|r.
    .scenario 2283,2 --Rescue Adelee.
    .target Wavespeaker Adelee
step
    .isInScenario 1066
    .goto 742,49.88,54.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grash|r.
    .scenario 2284,1 --Ask Grash to Smash the Ice Wall
    .target Grash
    .skipgossipid 45543
step
    .isInScenario 1066
    .goto 742,49.94,42.15
    >>Tötet |cRXP_ENEMY_Kra'liss|r.
    .scenario 2284,2 --Defeat Kra'liss
    .mob Kra'liss
step
    .isInScenario 1066
    .goto 742,49.92,30.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Bubble Up|r.
    .scenario 2286,1 --Use Erunak's spell to ascend the riptide.
step
    #title |cFFFCDC00Weicht den Wellen aus|r
    .isInScenario 1066
    .goto 743,50.48,56.05
    >>|cRXP_WARN_Weicht den Wellen aus und folgt dem Pfeil.|r
    .scenario 2286,2 --Run through the wave gauntlet.
step
    .isInScenario 1066
    .goto 743,50.64,57.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grash|r.
    .scenario 2287,1 --Ask Grash to destroy the ice wall.
    .target Grash
    .skipgossipid 45472
step
    .goto 743,50.53,42.91
    .isInScenario 1066
    >>Tötet |cRXP_ENEMY_Lady Zithreen|r.
    .scenario 2287,2 --Slay Lady Zithreen.
    .mob Lady Zithreen
step
    .isInScenario 1066
    .goto 743,50.56,43.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Sharas'dal|r.
    .scenario 2288,1 --Pick up Sharas'dal.
    .complete 40341,3 --1/1 Acquire Sharas'dal
    .timer 35,Rollenspiel-Dauer
step
    .goto 743,50.57,42.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf die |cRXP_PICK_Blase|r zum Mahlstrom.
    .complete 40341,4 --1/1 Return to the Maelstrom
step
    .goto 726,34.53,76.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stormcaller Mylra|r.
    .turnin 40341 >>Gebt die Quest Thron der Gezeiten: Die Macht Azsharas ab
    .target Stormcaller Mylra
]])
--Elemental 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Elementarschaden
#displayname Artefakt Waffe: Elementarschaden
#next ac) Ordenshalle Schamane Part 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Elementarschaden
]])
--Enhancement 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Verstärkung
#displayname Artefakt Waffe: Verstärkung
#next ac) Ordenshalle Schamane Part 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Verstärkung
]])
--Restoration 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Wiederherstellungsschamane
#displayname Artefakt Waffe: Wiederherstellung
#next ac) Ordenshalle Schamane Part 2
#internal

<< Shaman

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Wiederherstellungsschamane
]])

--Shaman Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Schamane Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Schamane
#chapter
#internal

<< Shaman

step
    #completewith Azeroth Needs You2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 41335 >>Akzeptiert die Quest Der Ruf der Elemente
    .target Thrall
step
    .isQuestAvailable 41335
    .isQuestAvailable account,91955
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_WICHTIG: Wählt denjenigen aus, den ihr bereits habt, um zusätzliche 10% XP zu erhalten (nur einmal)|r
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Elemental >> Elementarschaden(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Enhancement >> Verstärkung(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Restoration Shaman >> Wiederherstellung(Heilung) Questline
step
    #include ac) Order Hall Shaman Part 2@A Ring Reforged-Azeroth Needs You
step
    .zoneskip 726,1
    .goto 726,29.81,52.02
    .zone 627 >>Klickt |cRXP_PICK_Portal nach Dalaran|r.
]])

-- --------- Warlock ---------

--Affliction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Gebrechen
#displayname Artefakt Waffe: Gebrechen
#next a) Ordenshalle Hexenmeister Part 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_in eurer Klassenhalle|r.
    .accept 44089 >>Akzeptiert die Quest Ein größeres Arsenal
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Das wird automatisch das Gebrechen-Artefakt auswählen|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389401
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Gebt die Quest Euer volles Potenzial ab
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 40495
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_in eurer Klassenhalle|r.
    .accept 43984 >>Akzeptiert die Quest Der Foliant öffnet sich wieder
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Das wird automatisch das Gebrechen-Artefakt auswählen|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389401
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Gebt die Quest Der Foliant öffnet sich wieder ab
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Akzeptiert die Quest Der Foliant der verseuchten Instrumente
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Affliction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389401
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Gebt die Quest Der Foliant der verseuchten Instrumente ab
    .target Calydus
step
    #completewith Following the Curse
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Akzeptiert die Quest Ulthalesh, Sense der Totenwinde
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 40495 >>Akzeptiert die Quest Ulthalesh, Sense der Totenwinde
    .target Calydus
step
    .isOnQuest 40495
    .zone 47 >>Benutzt die |T254294:0|t[Schriftrolle des Dämmerwalds]
    .use 173527
step
    .goto 47,77.45,35.87
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .complete 40495,1 --1/1 Investigate Manor Mistmantle in Duskwood
step
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r und defeat him
    .complete 40495,2 --1/1 Convince Revil to help.
    .timer 6,Revil Rollenspiel
    .target Revil Kost
    .skipgossipid 44918
step
    #label Following the Curse
    .goto 47,77.43,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40495 >>Gebt die Quest Ulthalesh, Sense der Totenwinde ab
    .accept 40588 >>Akzeptiert die Quest Auf den Spuren des Fluchs
    .target Revil Kost
step
    .isOnQuest 40588
    #title |cFFFCDC00Bleibt neben Ariden|r
    .goto 47,77.37,35.12
    .countdown 25 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleibt neben Ariden|r
    .isOnQuest 40588
    .goto 47,80.86,33.00,25,0
    .goto 47,84.33,36.29,20,0
    .goto 47,83.83,40.27,15,0
    .goto 47,85.55,40.69,15 >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40588
    .goto 47,85.55,40.69
    .countdown 20 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title |cFFFCDC00Bleiben in der Nähe von Ariden|r
    .isOnQuest 40588
    .goto 42,36.64,35.55,25,0
    .goto 42,39.13,33.72,25,0
    .goto 42,44.37,34.56,15 >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
step
    .isOnQuest 40588
    .goto 42,44.33,34.54
    .countdown 20 >>Tötet die |cRXP_ENEMY_Dark Riders|r
step
    #title Bleibt neben Ariden
    .goto 42,47.92,33.92,20,0
    .goto 42,48.80,38.69,20,0
    .goto 42,50.70,40.81
    >>Begleitet |cRXP_FRIENDLY_Revil Kost|r
    .complete 40588,1 --1/1 Follow Revil to Ariden's Camp
step
    .goto 42,52.41,34.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r
    .turnin 40588 >>Gebt die Quest Auf den Spuren des Fluchs ab
    .accept 40604 >>Akzeptiert die Quest "Unberührte Zeugen"
    .target Revil Kost
step
    .goto 42,52.31,33.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Battered Tagebuch|r.
    .complete 40604,1 --1/1 Ariden's Camp investigated
step
    .goto 42,52.32,33.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Battered Tagebuch|r
    .turnin 40604 >>Gebt die Quest "Unberührte Zeugen" ab
    .accept 40606 >>Akzeptiert die Quest Wegweiser
    .target Battered Journal
step
    .goto 42,52.13,34.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Kompass|r.
    .complete 40606,1 --1/1 Ariden's Compass
step
    .goto 42,52.42,34.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40606 >>Gebt die Quest Wegweiser ab
    .accept 40611 >>Akzeptiert die Quest Das Schicksal der Totenwinde
    .target Revil Kost
step
    #completewith next
    #hidewindow
    .cast 198335 >>Folgt dem Pfeil
    .timer 20,Rollenspiel
step
    .goto 42,35.57,35.52
    >>Benutzt |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Den Kompass ausrichten).
    .complete 40611,1 --1/1 Attuned at Deadman's Crossing
step
    #completewith next
    #hidewindow
    .cast 198335 >>Folgt dem Pfeil
    .timer 15,Rollenspiel
step
    .goto 42,46.99,62.32
    >>Benutzt |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Den Kompass ausrichten).
    .complete 40611,3 --1/1 Attuned at the bridge
step
    #completewith next
    #label TheFateOfDeadwindA
    >>Benutzt |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Den Kompass ausrichten).
    .complete 40611,2 --1/1 Attuned at the church
step
    #title |cFFFCDC00BETRETET die Kirche|r
    #completewith TheFateOfDeadwindA
    .goto 42,40.66,77.80,6 >>|cRXP_WARN_Folgt dem Pfeil in die Kirche.|r
step
    #requires TheFateOfDeadwindA
    #completewith next
    #hidewindow
    .cast 198335 >>Folgt dem Pfeil
    .timer 13,Rollenspiel
step
    #requires TheFateOfDeadwindA
    .goto 42,40.82,78.50
    >>Benutzt |T338784:0|t[|cRXP_WARN_ExtraActionButton|r] (Den Kompass ausrichten).
    .complete 40611,2 --1/1 Attuned at the church
step
    .goto 42,49.46,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .turnin 40611 >>Gebt die Quest Das Schicksal der Totenwinde ab
    .accept 41155 >>Akzeptiert die Quest Die Dunklen Reiter
    .target Revil Kost
step
    .isOnQuest 41155
    .goto 42,46.28,69.07
    .enterScenario 988 >>|cRXP_WARN_Betretet das |cRXP_PICK_The Dunkel Riders|r-Szenario|r
step
    #completewith next
    #label KarazhanCatacombsA
    .isInScenario 988
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    #completewith KarazhanCatacombsA
    .goto 46,71.72,83.73
    .zone 46 >>Springen down
step
    #requires KarazhanCatacombsA
    .isInScenario 988
    .goto 46,72.09,74.41
    >>|cRXP_WARN_Betretet die Katakomben|r
    .scenario 2021,1 --Karazhan Catacombs infiltrated
step
    .isInScenario 988
    #title Benutzt |T607512:0|t[Dämonisches Tor]
    .goto 46,55.90,69.19
    >>Benutzt |T607512:0|t[Dämonisches Tor] auf |cRXP_ENEMY_Ariden|r |cRXP_WARN_aus eurem Questtagebuch|r.
    .scenario 2022,1 --Spirit Barrier crossed
    .mob Ariden
    .usespell 111771
step
    .isInScenario 988
    .goto 46,56.36,69.25
    >>Tötet |cRXP_ENEMY_The Conservator|r.
    .scenario 2023,1 --Conservator Defeated
    .mob The Conservator
step
    #completewith next
    #hidewindow
    .cast 3365 >>Folgt dem Pfeil
    .timer 25,Rollenspiel
step
    .isInScenario 988
    .goto 46,43.63,67.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Ulthalesh|r. |cRXP_WARN_Wartet auf das Rollenspiel|r.
    .scenario 2024,1 --Ulthalesh found
step
    .isInScenario 988
    .goto 46,58.06,64.22,15,0
    .goto 46,55.33,49.51,10,0
    .goto 46,67.81,44.27,10,0
    .goto 46,68.49,37.77
    >>|cRXP_WARN_Folgen dem Pfeil die Treppe hinauf zu |cRXP_ENEMY_Ariden|r.
    .scenario 2025,1 --Ariden followed
    .timer 17,Ariden Rollenspiel
step
    .isInScenario 988
    .goto 46,68.36,24.43
    >>Tötet |cRXP_ENEMY_Ariden|r.
    .scenario 2026,1 --Ariden defeated
    .timer 33,Ariden Rollenspiel
    .mob Ariden
step
    .goto 46,68.23,24.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Apocalypse|r.
    .complete 41155,1 --1/1 Complete the Dark Riders scenario
    .complete 41155,2 --1/1 Ulthalesh claimed
step
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    *|cRXP_WARN_Hinweis:|r Falls er noch kämpft, tötet die Gegner, gegen die er im Kampf ist.
    .turnin 41155 >>Gebt die Quest Die Dunklen Reiter ab
    .target Revil Kost
step
    .isQuestAvailable 40823
    .goto 46,68.22,27.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Revil Kost|r.
    .accept 41156 >>Akzeptiert die Quest Die einstige Macht
    .target Revil Kost
step
    .zoneskip 46,1
    .cooldown item,250411,>0,1
    .zone 627 >>Benutzt den |T134419:0|t[Ruhestein des Zeitläufers], um nach Dalaran zu gelangen
    .use 250411
step
    .isOnQuest 41156
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 41156 >>Gebt die Quest Die einstige Macht ab
    .target Calydus
]])
--Demonology
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Dämonologie
#displayname Artefakt Waffe: Dämonologie
#next a) Ordenshalle Hexenmeister Part 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_in eurer Klassenhalle|r.
    .accept 44089 >>Akzeptiert die Quest Ein größeres Arsenal
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Dies wählt automatisch das Dämonologie-Artefakt|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389402
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Gebt die Quest Euer volles Potenzial ab
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 42128
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_in eurer Klassenhalle|r.
    .accept 43984 >>Akzeptiert die Quest Der Foliant öffnet sich wieder
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Das Dämonologie-Artefakt wird automatisch gewählt|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389402
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Gebt die Quest Der Foliant öffnet sich wieder ab
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Akzeptiert die Quest Der Foliant der verseuchten Instrumente
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Demonology artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389402
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Gebt die Quest Der Foliant der verseuchten Instrumente ab
    .target Calydus
step
    #completewith Grave Dust
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Akzeptiert die Quest Reagenzien des Rituals
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 42128 >>Akzeptiert die Quest Reagenzien des Rituals
    .target Calydus
step
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    #optional
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Geht durch das Portal nach Dalaran.|r
step
    #optional
    .isOnQuest 42128
    .isQuestTurnedIn 40823
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Folgen dem Weg aus dem Kanal.|r
step
    .isOnQuest 42128
    .zoneskip 628,1
    .goto 628,65.60,56.81,12,0
    .goto 628,77.31,68.50,10,0
    .goto 627,59.67,47.69
    .zone 627 >>|cRXP_WARN_Folgen dem Weg aus dem Kanal.|r
step
    #label Grave Dust
    .goto 627,33.41,39.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Frisch ausgehobenes Grab|r.
    .complete 42128,1 --1/1 Grave Dust
step
    .goto 627,38.65,24.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Dose mit überhitztem Öl|r.
    .complete 42128,2 --1/1 Can of Overheated Oil
step
    .goto 627,48.51,38.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Gealterter Snowplum-Brandy|r.
    .complete 42128,3 --1/1 Aged Snowplum Brandy
step
    .goto 627,60.04,38.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sanftmütiger Hirsch|r.
    .complete 42128,4 --1/1 Stag Blood Sample
    .skipgossipid 45158
step
    #completewith next
    #label RitualReagentsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Gebt die Quest Reagenzien des Rituals ab
    .accept 42168 >>Akzeptiert die Quest Blick in die Finsternis
    .target Calydus
step
    #title |cFFFCDC00BETRETET den Raum|r
    #completewith RitualReagentsA
    .goto 627,56.84,46.85,8 >>|cRXP_WARN_Folgen dem Pfeil in den Raum.|r
step
    #requires RitualReagentsA
    .goto 627,54.39,46.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 42128 >>Gebt die Quest Reagenzien des Rituals ab
    .accept 42168 >>Akzeptiert die Quest Blick in die Finsternis
    .target Calydus
step
    .goto 627,53.73,47.31
    >>Benutzt den |T1020342:0|t[|cRXP_WARN_ExtraActionButton|r] (Dunkle Kommunion)
    .complete 42168,1 --1/1 Scrying Ritual Perfomed
step
    .goto 627,53.50,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thal'kiel|r.
    .complete 42168,2 --1/1 Skull of the Man'ari's location discovered
    .target Thal'kiel
    .skipgossipid 45512
    .skipgossipid 45513
    .skipgossipid 45546
step
    .goto 627,54.37,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 42168 >>Gebt die Quest Blick in die Finsternis ab
    .accept 42125 >>Akzeptiert die Quest Dunkles Geflüster
    .timer 9,Portal erscheint in Kürze
    .target Calydus
step
    .goto 627,53.74,47.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Calydus's Dämonisches Portal|r.
    .complete 42125,1 --1/1 Enter Calydus's Demonic Portal
step
    .isOnQuest 42125
    .goto 627,53.74,47.26
    .enterScenario 1097 >>Betretet das Szenario |cRXP_PICK_Dunkel Geflüster|r.
step
    .isInScenario 1097
    .goto 680,25.64,61.87,20,0
    .goto 680,27.53,64.61
    >>Tötet die |cRXP_ENEMY_Eredar Doomweavers|r
    .scenario 2443,1 --Locate the Skull of the Man'ari
    .mob Eredar Doomweaver
step
    .isInScenario 1097
    .goto 680,27.50,64.74
    >>Tötet die |cRXP_ENEMY_Felborn Oberdämon|r.
    .scenario 2475,1 --Defeat the Felborn Overfiend
    .mob Felborn Overfiend
step
    .isInScenario 1097
    .goto 680,28.71,61.97,10,0
    .goto 680,29.16,61.32
    >>Benutzt das |T607512:0|t[Dämonisches Tor] über die Barriere hinweg
    .scenario 2476,1 --Mephistroth's Barrier crossed
    .usespell 111771
step
    .isInScenario 1097
    .goto 680,30.27,60.56
    >>Tötet |cRXP_ENEMY_Dämon-Truppen|r, |cRXP_ENEMY_Schmerzmeisterin Nikta|r und |cRXP_ENEMY_Herrin Tyrana|r am Ende.
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
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 2478,1 --Interrupted Mephistroth's ritual
step
    .isInScenario 1097
    .goto 680,31.11,65.96
    >>Tötet |cRXP_ENEMY_Mephistroth|r.
    .scenario 2478,2 --Mephistroth Defeated
    .mob Mephistroth
step
    .goto 680,31.08,65.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Schädel von Man'ari|r.
    .complete 42125,2 --1/1 Obtain the Skull of the Man'ari
step
    .goto 680,31.36,65.90
    .isInScenario 1097
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Portal|r.
    .scenario 2502,1 --Portal of Thal'kiel used
step
    #optional
    .isQuestTurnedIn 40823
    .isOnQuest 42125
    .goto 627,34.87,45.45,10,0
    .goto 628,21.20,55.73,10,0
    .goto 628,29.53,51.96,10,0
    .goto 628,28.55,44.40
    .zone 717 >>Betretet die Kanalisation von Dalaran und klickt |cRXP_PICK_Portal nach Die Schreckensnarbe|r
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,55.83,49.89,20,0
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Gebt die Quest Dunkles Geflüster ab
    .target Calydus
step
    .goto 627,60.17,48.28,8,0
    .goto 628,74.22,66.56,8,0
    .goto 628,64.44,58.55,8,0
    .goto 628,55.83,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 42125 >>Gebt die Quest Dunkles Geflüster ab
    .target Calydus
]])
--Destruction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Zerstörung
#displayname Artefakt Waffe: Zerstörung
#next a) Ordenshalle Hexenmeister Part 1
#internal

<< Warlock

step
    .isQuestTurnedIn 43984
    .isQuestAvailable 44089
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r |cRXP_WARN_in eurer Klassenhalle|r.
    .accept 44089 >>Akzeptiert die Quest Ein größeres Arsenal
    .target Calydus
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Dies wird automatisch das Zerstörung-Artefakt auswählen|r
    .complete 44089,1 --1/1 Artifact Chosen (3rd)
    .choose 1389403
    .target Calydus
    .skipgossipid 45164
step
    .isQuestAvailable 44089
    .isOnQuest 44089
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 44089 >>Gebt die Quest Euer volles Potenzial ab
    .target Calydus
step
    .isQuestTurnedIn 40684
    .isQuestAvailable 43984
    .isQuestAvailable 43100
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 43984 >>Akzeptiert die Quest Der Foliant öffnet sich wieder
    .target Calydus
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    *|cRXP_WARN_Dies wird automatisch das Zerstörung-Artefakt auswählen|r
    .complete 43984,1 --1/1 Choose a second artifact to pursue
    .choose 1389403
    .target Calydus
    .skipgossipid 45163
step
    .isQuestAvailable 43984
    .isOnQuest 43984
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 43984 >>Gebt die Quest Der Foliant öffnet sich wieder ab
    .target Calydus
step
    .isQuestAvailable 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Akzeptiert die Quest Der Foliant der verseuchten Instrumente
    .target Calydus
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    --*|cRXP_WARN_This will automatically pick the Destruction artifact|r
    .complete 40684,1 --1/1 Artifact chosen
    --.choose 1389403
    .target Calydus
    .skipgossipid 45162
step
    .isQuestAvailable 40684
    .isOnQuest 40684
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 40684 >>Gebt die Quest Der Foliant der verseuchten Instrumente ab
    .target Calydus
step
    #completewith Caer Darrow
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .isQuestTurnedIn 40823
    #optional
    .goto 717,37.63,31.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Akzeptiert die Quest Suche nach dem Szepter
    .target Calydus
step
    .goto 628,55.75,65.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 43100 >>Akzeptiert die Quest Suche nach dem Szepter
    .target Calydus
step
    #label Caer Darrow
    .goto 22,66.83,75.18
    >>Benutzt die |T254294:0|t[Schriftrolle von Darrowehr]
    .complete 43100,2 --1/1 Go to Caer Darrow
    .use 173526
step
    #title Findet Informationen (1/3)
    .goto 22,69.03,77.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Logbuch von Ur'dan|r.
    *|cRXP_WARN_HINWEIS:|r Diese Quest ist fest vorgegeben, was bedeutet, dass ihr sie in genau dieser Reihenfolge erledigen müsst, sonst ist der Pfeil falsch.
    .complete 43100,3,1 --1/3 Find information on the Shadow Council
step
    #title Findet Informationen (2/3)
    .goto 22,69.40,77.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Vergessener Brief|r.
    *|cRXP_WARN_HINWEIS:|r Diese Quest ist fest vorgegeben, was bedeutet, dass ihr sie in genau dieser Reihenfolge erledigen müsst, sonst ist der Pfeil falsch.
    .complete 43100,3,2 --2/3 Find information on the Shadow Council
step
    #title Findet Informationen (3/3)
    .goto 22,69.14,79.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Bekanntmachung des Rates|r.
    *|cRXP_WARN_HINWEIS:|r Diese Quest ist fest vorgegeben, das bedeutet, dass ihr sie in genau dieser Reihenfolge machen müsst, sonst ist der Pfeil falsch.
    .complete 43100,3 --3/3 Find information on the Shadow Council
step
    .goto 22,69.94,74.01
    >>Tötet |cRXP_ENEMY_Jergosh der Herbeirufer|r. Plündert ihn für das |T133738:0|t[|cRXP_LOOT_Buch von Medivh|r].
    .complete 43100,4 --1/1 Take the Book of Medivh from Jergosh
    .mob Jergosh the Invoker
step
    #completewith next
    #hidewindow
    .gossipoption 45857 >>Folgt dem Pfeil
    .timer 25,Calydus Roleplay
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r
    .complete 43100,5 --1/1 Speak with Calydus
    .target Calydus
    .skipgossipid 45857
step
    .goto 22,69.16,79.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r
    .turnin 43100 >>Gebt die Quest Suche nach dem Szepter ab
    .accept 43153 >>Akzeptiert die Quest Auge um Szepter
    .target Calydus
step
    .goto 22,69.26,79.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Portal to Tol Barad|r.
    .complete 43153,1 --1/1 Take the Portal to Tol Barad
step
    .isOnQuest 43153
    .goto 22,69.26,79.21
    .enterScenario 1155 >>Betretet das Szenario |cRXP_PICK_Auge um Szepter|r
step
    .isInScenario 1155
    .goto 773,42.70,40.04
    >>|cRXP_WARN_Folgt dem Pfeil.|r
    .scenario 2700,1 --Find the Shadow Council group.
step
    #completewith next
    #label SpeakWithAllarisAndNagazA
    .isInScenario 1155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allaris und Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    #title |cFFFCDC00Betretet das Gefängnis|r
    #completewith SpeakWithAllarisAndNagazA
    .goto 773,42.70,38.47,8 >>|cRXP_WARN_Folgt den Pfeil ins Gefängnis.|r
step
    #requires SpeakWithAllarisAndNagazA
    .isInScenario 1155
    .goto 773,42.64,35.61,8,0
    .goto 773,43.72,35.65,8,0
    .goto 773,43.76,34.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allaris und Nagaz.|r
    .scenario 2715,1 --Speak with Allaris and Nagaz.
    .target Allaris and Nagaz.
step
    .isInScenario 1155
    .goto 773,44.99,30.60,15,0
    .goto 773,48.64,31.16
    >>|cRXP_WARN_Folgt dem Pfeil. Wartet auf das Rollenspiel.|r
    .scenario 2716,1 --Find Tyranis in D-Block
step
    .isInScenario 1155
    .goto 773,48.63,31.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Tyranis Malem|r.
    .scenario 2717,1 --Break Tyranis' chain or leave him
    .target Tyranis Malem
step
    .isInScenario 1155
    .goto 773,45.07,30.73
    >>|cRXP_WARN_Folgt dem Pfeil. Wartet auf das Rollenspiel.|r
    .scenario 2718,1 --Continue searching the rest of the cell block.
step
    .goto 773,43.05,26.14
    .isInScenario 1155
    >>Tötet |cRXP_ENEMY_Nagaz|r.
    .scenario 2719,1 --Follow then kill Nagaz.
    .mob Nagaz
step
    .isInScenario 1155
    .goto 773,43.89,26.61,12,0
    .goto 773,42.68,30.57
    >>|cRXP_WARN_Folgt dem Pfeil. Wartet auf das Rollenspiel.|r
    .scenario 2720,1 --Continue searching D-Block.
step
    .goto 773,39.53,30.76,15,0
    .goto 773,38.99,32.85
    .isInScenario 1155
    >>|cRXP_WARN_Folgt dem Pfeil. Wartet auf das Rollenspiel.|r
    .scenario 2724,1 --Find the prison manifest.
step
    #completewith EnterBaradinHoldC
    #label EnterBaradinHoldA
    #hidewindow
    .isInScenario 1155
    .scenario 2725,1 --Enter Baradin Hold
step
    #title |cFFFCDC00Verlasst das Gefängnis|r
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldB
    .goto 773,40.19,30.27,10,0
    .goto 773,43.79,31.78,10,0
    .goto 773,43.64,35.79,8,0
    .goto 773,42.73,35.83,8,0
    .goto 773,42.68,39.66,10 >>|cRXP_WARN_Folgt den Pfeil aus dem Gefängnis.|r
step
    #title |cFFFCDC00Betretet Baradinfestung|r
    #requires EnterBaradinHoldB
    #completewith EnterBaradinHoldA
    #label EnterBaradinHoldC
    .goto 773,46.29,47.92,8,0
    .goto 773,47.59,48.18,8,0
    .goto 773,47.63,50.13,8 >>|cRXP_WARN_Folgt den Pfeil nach Baradinfestung.|r
step
    #requires EnterBaradinHoldA
    .isInScenario 1155
    .goto 773,47.66,52.69
    .scenario 2725,1 --Enter Baradin Hold
step
    .isInScenario 1155
    .goto 774,48.26,14.85
    >>Tötet |cRXP_ENEMY_Occul'tharon|r. |cRXP_WARN_Wartet auf das Rollenspiel.|r
    .scenario 2726,1 --Kill Occul'tharon and find the Eye of Dalaran.
    .complete 43153,2 --1/1 Find the Eye of Dalaran
    .mob Occul'tharon
step
    .goto 774,48.10,28.74,-1
    .goto 619,46.84,64.48,-1
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Dämonisches Portal|r.
    .complete 43153,3 --1/1 Return to Calydus in Dalaran
step
    .goto 627,74.09,42.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r
    .turnin 43153 >>Gebt die Quest Auge um Szepter ab
    .target Calydus
    .accept 43254 >>Akzeptiert die Quest Ritual der Vernichtung
step
    #completewith next
    #label RitualRuinationA
    #hidewindow
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith RitualRuinationA
    .goto 627,74.70,42.78
    .vehicle 110480 >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Teufelsfledermaus|r.
    .target Fel Bat
step
    #requires RitualRuinationA
    .goto 619,55.32,63.94
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_FRIENDLY_Teufelsfledermaus|r.
    .complete 43254,1 --1/1 Take the Fel Bat to the Broken Shore
step
    #completewith next
    #hidewindow
    .goto 646,60.40,25.22,10 >>Folgt dem Pfeil
    .timer 60,Gul'dan Rollenspiel
step
    .goto 646,55.79,63.01
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 43254,2 --1/1 Listen to Gul'dan
step
    .goto 646,55.91,62.89
    >>Tötet |cRXP_ENEMY_Allaris Narassin|r.
    .complete 43254,3 --1/1 Slay Allaris Narassin
    .mob Allaris Narassin
step
    .goto 646,60.17,25.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Szepter des Sargeras|r.
    .complete 43254,4 --1/1 Take the Scepter of Sargeras
step
    .goto 619,55.74,63.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Legion Altar|r.
    .complete 43254,5 --1/1 Ruin the ritual
step
    .goto 619,55.50,63.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Dämonisches Portal|r.
    .complete 43254,6 --1/1 Escape to Dalaran and meet Calydus
step
    #optional
    .isQuestTurnedIn 40823
    .goto 717,37.66,31.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Gebt die Quest Ritual der Vernichtung ab
    .target Calydus
step
    .goto 628,55.86,65.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .turnin 43254 >>Gebt die Quest Das ruinierte Ritual ab
    .target Calydus
]])
--Affliction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Gebrechen
#displayname Artefakt Waffe: Gebrechen
#next ac) Ordenshalle Hexenmeister Part 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Gebrechen
]])
--Demonology 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Dämonologie
#displayname Artefakt Waffe: Dämonologie
#next ac) Ordenshalle Hexenmeister Part 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Dämonologie
]])
--Destruction 2
RXPGuides.RegisterGuide([[}
#retail
#chapter
#version 1
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Zerstörung
#displayname Artefakt Waffe: Zerstörung
#next ac) Ordenshalle Hexenmeister Part 2
#internal

<< Warlock

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Zerstörung
]])

--Warlock Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Hexenmeister Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Hexenmeister
#chapter
#internal

<< Warlock

step
    #completewith Ritssyn Flamescowl2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calydus|r.
    .accept 40684 >>Akzeptiert die Quest Der Foliant der verseuchten Instrumente
    .target Calydus
step
    .isQuestAvailable 40684
    .isQuestAvailable account,91955
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_WICHTIG: Wählt denjenigen aus, den ihr bereits habt, um zusätzliche 10% XP zu erhalten (nur einmal)|r
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Affliction >> Gebrechen(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Demonology >> Dämonologie(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Destruction >> Zerstörung(SPS) Questline
step
    #include ac) Order Hall Warlock Part 2@Dreadscar-Ritssyn Flamescowl
step
    .zoneskip 717,1
    .goto 717,74.71,38.14
    .zone 628 >>|cRXP_WARN_Geht durch das Portal nach Dalaran.|r
step
    .zoneskip 628,1
    .goto 628,28.84,53.19,12,0
    .goto 628,19.50,57.61,10,0
    .goto 627,35.02,45.56
    .zone 627 >>|cRXP_WARN_Folgen dem Weg aus dem Kanal.|r
]])

-- --------- Warrior ---------

--Arms
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Waffen
#displayname Artefakt Waffe: Waffen
#next a) Einführung in die Ordenshalle-Kampagne
#internal

<< Warrior

step
    #completewith Artifact Weapon: Arms
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Akzeptiert die Quest Noch eine Legende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Gebt die Quest Noch eine Legende ab
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Akzeptiert die Quest Mehr legendäre Waffen
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Gebt die Quest Mehr legendäre Waffen ab
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Akzeptiert die Quest Legendäre Waffen
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389404
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Gebt die Quest Legendäre Waffen ab
    .target Odyn
step
    #completewith Tirisfal Glades
    +|cRXP_WARN_Stellt sicher, dass ihr eine benutzbare Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erhaltet, oder wechselt zu einer Spezialisierung, die ihr Artefakt bereits hat|r.
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 41105 >>Akzeptiert die Quest Das Schwert der Könige
    .target Odyn
step
    #completewith next
    #label Tirisfal Glades
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    #completewith Tirisfal Glades
    .goto 695,58.37,25
    .gossipoption 44742 >>Sprecht mit |cRXP_FRIENDLY_Aerylia|r
    .timer 11,RP
    .target Aerylia
step
    #requires Tirisfal Glades
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 41105,1 --1/1 Speak with Aerylia to go to Tirisfal Glades (Optional)
step
    .isOnQuest 41105
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 18,13.5,56.65,100 >>Folgt dem Pfeil
    *|cRXP_WARN_Falls ihr stecken bleibt; loggt euch aus und wieder ein|r
step
    .isOnQuest 41105
    #title |cFFFCDC00Folgt dem Pfeil|r
    .goto 18,13.5,56.65
    .scenario 2237,1 --Investigate the camp.
step
    .isInScenario 1037
    .goto 18,13.5,56.65
    .isOnQuest 41105
    >>Tötet |cRXP_ENEMY_Twilight Ritualist|r
    .scenario 2203,1 --Slay the ritualists torturing Thoradin.
    .mob Twilight Ritualist
    .timer 62,RP
step
    .goto 18,15.3,56.11
    .isInScenario 1037
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 2204,1 --Follow and listen to Thoradin.
step
    .goto 20,37.46,13.1,10,0
    .goto 20,37.29,13.18,15,0
    .goto 20,35.33,20.04,15,0
    .goto 20,34.6,25.07,15,0
    .goto 20,37.1,45.3
    .isInScenario 1037
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Betretet das Grabmal
    .scenario 2210,1 --Enter the Tomb of Tyr.
step
    #loop
    .goto 20,39.88,52.69,15,0
    .goto 20,39.29,58.06,15,0
    .goto 20,34.81,57.54,15,0
    .goto 20,35.1,51.59,15,0
    .isInScenario 1037
    >>Unterbrecht und betäubt |cRXP_ENEMY_Leerententakel|r, dann tötet sie.
    .scenario 2211,1 --Void Tendrils killed
    .usespell 107570
    .usespell 6552
    .timer 8,RP
    .mob Void Tendril
step
    .goto 20,37.51,54.88
    .isInScenario 1037
    >>Tötet |cRXP_ENEMY_Soth'ozz der Wächter|r und |cRXP_ENEMY_Fleischbrut|r
    .scenario 2212,1 --Kill Soth'ozz
    .mob Soth'ozz the Guardian
    .mob Flesh Spawn
step
    .goto 20,37.61,67.86,15,0
    .goto 20,41.57,82.39,15,0
    .goto 20,44.23,89.03,15,0
    .goto 20,47.55,76.18
    .isInScenario 1037
    #title |cFFFCDC00Folgt dem Pfeil|r
    >>Tötet die |cRXP_ENEMY_Faceless Illusionist|r
    .scenario 2213,1 --Reach the prison chamber.
    .mob Faceless Illusionist
step
    .goto 20,61.31,74.33
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Zakajz den Verderber|r
    .scenario 2214,1 --Take the sword
    .timer 15,RP
    .mob Zakajz the Corruptor
step
    .goto 20,62.54,74.72
    .isInScenario 1037
    >>Tötet |cRXP_ENEMY_Zakajz den Verderber|r |cRXP_ENEMY_und wartet auf das Rollenspiel|r.
    .scenario 2215,1 --Defeat Zakajz
    .mob Zakajz the Corruptor
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Waffe|r in der Leiche.
    .scenario 2216,1 --Take Strom'kar, the Warbreaker.
step
    .goto 20,61.49,73.48
    .isInScenario 1037
    >>Benutzt |cRXP_WARN_ExtraActionButton|r
    .scenario 2216,2 --Zakajz killed permanently.
    .usespell 206455
step
    .goto 20,58.01,74.18
    .isInScenario 1037
    #label Artifact Weapon: Arms
    >>Betretet das Licht und benutzt |cRXP_WARN_ExtraActionButton|r
    .complete 41105,5 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.36,84.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 41105 >>Gebt die Quest Das Schwert der Könige ab
    .target Odyn
]])
--Fury
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Furor
#displayname Artefakt Waffe: Furor
#next a) Einführung in die Ordenshalle-Kampagne
#internal

<< Warrior

step
    #completewith Artifact Weapon: Fury
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Akzeptiert die Quest Noch eine Legende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Gebt die Quest Noch eine Legende ab
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Akzeptiert die Quest Mehr legendäre Waffen
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Gebt die Quest Mehr legendäre Waffen ab
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Akzeptiert die Quest Legendäre Waffen
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45055
    .skipgossipid 45058
    .choose 1389405
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Gebt die Quest Legendäre Waffen ab
    .target Odyn
step
    #completewith Aerylia
    +|cRXP_WARN_Stellt sicher, dass ihr eine einsatzbereite Waffe ausgerüstet habt. Falls nicht, rüstet eine aus, bis ihr euer Artefakt erlangt oder zu einer Spezialisierung wechselt, für die ihr bereits ein Artefakt habt.|r
step
    .goto 695,58.35,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 40043 >>Akzeptiert die Quest Der Heldenjäger
    .target Odyn
step
    #completewith next
    #label Aerylia
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .skipgossipid 44731
step
    #completewith Aerylia
    .goto 695,58.37,24.95
    .gossipoption 44731 >>Sprecht mit |cRXP_FRIENDLY_Aerylia|r
    .timer 30,RP
    .target Aerylia
step
    #requires Aerylia
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .complete 40043,1 --1/1 Speak with Aerylia to go to Tideskorn Harbor
    .timer 10,RP
step
    .isOnQuest 40043
    .countdown 10 >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
step
    .goto 634,61.34,45.87
    .isOnQuest 40043
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Freudenfeuer|r
    .scenario 1888,1 --Light the bonfire.
step
    #loop
    .goto 634,61.67,46.62,20,0
    .goto 634,61.1,45.11,20,0
    .isInScenario 944
    >>Tötet die Wellen von Feinden.
    .scenario 1889,2,1 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
step
    .goto 634,60.86,45.42
    .isInScenario 944
    >>Tötet die Wellen von Feinden.
    .scenario 1889,2,2 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    #loop
    .goto 634,60.95,46.73,25,0
    .goto 634,60.9,45.2,25,0
    .isInScenario 944
    >>Tötet die Wellen der Feinde.
    .scenario 1889,2,3 --Kill the leader of the attackers
    .mob Mist Watchhound
    .mob Veteran Harpooner
    .mob Elder Runecarver
step
    .goto 634,61.4,47.17
    .isInScenario 944
    >>Tötet |cRXP_ENEMY_Aspiring Helarjar|r
    .scenario 1889,1,1 --Kill the leader of the attackers
    .mob Aspiring Helarjar
step
    .isInScenario 944
    .goto 634,61.35,48.52
    >>Tötet |cRXP_ENEMY_Necromantic Mystic|r
    .scenario 1943,1,1 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,60.03,47.45
    >>Tötet |cRXP_ENEMY_Necromantic Mystic|r
    .scenario 1943,1,2 --Kill the mystics and reach the docks
    .mob Necromantic Mystic
step
    .isInScenario 944
    .goto 634,59.37,46.7,15,0
    .goto 634,58.9,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Rune|r an
    .scenario 1891,1,1 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,58.61,46.15,15,0
    .goto 634,58.63,45.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Rune|r an
    .scenario 1891,1,2 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59,44.47,15,0
    .goto 634,58.62,43.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Rune|r an
    .scenario 1891,1,3 --Destroy the Prison Runestones
step
    .isInScenario 944
    .goto 634,59.37,43.61,15,0
    .goto 634,60.03,43.23,15,0
    .goto 634,60.13,42.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt |cRXP_PICK_Rune|r an
    .scenario 1891,1,4 --Destroy the Prison Runestones
step
    .goto 634,59.54,43.82
    .isInScenario 944
    >>Niederlage |cRXP_ENEMY_Vigfus Klingenwind|r |cRXP_WARN_nicht oneshot him|r.
    *|cRXP_WARN_Falls die NPCs stecken bleiben; loggt euch aus und wieder ein|r
    .scenario 1912,1 --Defeat Vigfus Bladewind
    .mob Vigfus Bladewind
step
    .isInScenario 944
    .goto 694/1220,1705.2569,3440.3982
    .goto 694/1511,1705.2569,3440.3982,20 >>Niederlage |cRXP_ENEMY_Vigfus Klingenwind|r |cRXP_WARN_again|r.
step
    .isInScenario 944
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    >>|cRXP_WARN_Wartet aufs Rollenspiel|r
    >>Tötet |cRXP_ENEMY_Vigfus Klingenwind|r.
    .scenario 1913,1 --Chase and kill Vigfus
    .mob Vigfus Bladewinds
step
    .goto 694/1220,1799.2506,3515.4520
    .goto 694/1511,1799.2506,3515.4520
    .isInScenario 944
    #label Artifact Weapon: Fury
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .scenario 1914,1 --Take the Warswords
    .complete 40043,2 --1/1 Deal with Vigfus Bladewind and his warband
step
    >>Verlasst die Instanz (Rechtsklick auf euren Spieler-Rahmen) oder klickt das Makro.
    .complete 40043,3 --1/1 Return to Skyhold
    .macro Leave Instance,236367 >> Verlasst Instanz
step
    .goto 695,58.35,84.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 40043 >>Gebt die Quest Der Heldenjäger ab
    .target Odyn
]])
--Protection
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Artefakt Waffe: Krieger Schutz
#displayname Artefakt Waffe: Schutz
#next a) Ordenshallen-Kampagneneinführung
#internal

<< Warrior

step
    #completewith Artifact Weapon: Warrior Protection
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 44417 >>Akzeptiert die Quest Noch eine Legende
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 43949
    .isQuestAvailable 44417
    .isOnQuest 44417
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 44417 >>Gebt die Quest Noch eine Legende ab
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 43949 >>Akzeptiert die Quest Mehr legendäre Waffen
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestTurnedIn 40579
    .isQuestAvailable 43949
    .isOnQuest 43949
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 43949 >>Gebt die Quest Mehr legendäre Waffen ab
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 40579,1 >>Akzeptiert die Quest Legendäre Waffen
    .target Odyn
step
    .subzoneskip 13637,1
    .isQuestAvailable 40579
    .isOnQuest 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .complete 40579,1 --1/1 Artifact weapon chosen
    .skipgossipid 45058
    .skipgossipid 45058
    .choose 1389406
step
    .subzoneskip 13637,1
    .isQuestComplete 40579
    .isQuestAvailable 40579
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 40579,1 >>Gebt die Quest Legendäre Waffen ab
    .target Odyn
step
    #completewith Axe and You Shall Receive
    +|cRXP_WARN_Überprüft, dass ihr eine einsatzbereite Waffe ausgerüstet habt; falls nicht, rüstet eine aus, bis ihr euer Artefakt erlangt oder zu einer Spezialisierung wechselt, von der ihr bereits ein Artefakt erhalten habt|r.
step
    .goto 695,58.36,85.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 39191 >>Akzeptiert die Quest Das Vermächtnis des Eisbrechers
    .target Odyn
step
    .isOnQuest 39191
    .goto 695,59.35,26.3
    .gossipoption 44315 >>Sprecht mit |cRXP_FRIENDLY_Hruthnir|r
    .timer 20,RP
step
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Durnolf|r
    .accept 44255 >>Akzeptiert die Quest Die Axt im Haus
    .target Quartermaster Durnolf
step
    #label Axe and You Shall Receive
    .goto 695,56.06,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Quartermaster Durnolf|r
    .turnin 44255 >>Gebt die Quest Die Axt im Haus ab
    .target Quartermaster Durnolf
step
    .goto 695,59.36,25.30
    >>|cRXP_WARN_Wartet auf das Rollenspiel|r
    .complete 39191,1,1 --1/1 Speak with Hruthnir
    .skipgossipid 44315
    .target Hruthnir
step
    #completewith Pillik
    .isOnQuest 39191
    +|cRXP_WARN_Ihr könnt skyride here|r.
step
    .goto 634,84.34,9.52
    .isOnQuest 39191
    >>Tötet |cRXP_ENEMY_Pillik|r
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
    >>Tötet |cRXP_ENEMY_Wirbelnde Stürme|r auf der Tür.
    .scenario 1829,1 --Find Magnar
    .mob Swirling Storms
step
    #completewith Find Magnar
    *|cRXP_WARN_Wartet, bis die Tür öffnet|r.
    .goto 635,64.31,55.79,10,0
    .goto 635,53.54,56.17,15 >>Tötet |cRXP_ENEMY_Spektraler Windformer|r um die Winde zu vertreiben.
    .usespell 57755
    .mob Spectral Windshaper
step
    #requires Find Magnar
    .goto 635,52.31,63.89
    .isInScenario 909
    >>Tötet |cRXP_ENEMY_Wirbelnde Stürme|r auf der Tür.
    .scenario 1829,1 --Find Magnar
    .timer 30,RP
step
    #completewith next
    #label Hruthnir
    .isInScenario 909
    >>Tötet |cRXP_ENEMY_Magnar Eisbrecher|r und die Wellen von Feinden.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    #completewith Hruthnir
    .goto 635,51.4,71.07
    .gossipoption 44546 >>Sprecht mit |cRXP_FRIENDLY_Hruthnir|r
    .timer 85,RP
    .target Hruthnir
step
    #requires Hruthnir
    .goto 635,50.59,87.12
    .isInScenario 909
    >>Besiegt |cRXP_ENEMY_Magnar Eisbrecher|r und die Wellen von Feinden.
    *Tötet |cRXP_ENEMY_Spektraler Windformer|r um die Winde zu vertreiben.
    .scenario 1830,1 --Defend Hruthnir
    .mob Magnar Icebreaker
    .mob Icebreaker Champion
    .mob Icebreaker Tombguard
    .mob Spectral Windshaper
step
    .isInScenario 909
    .goto 635,50.12,82.45
    >>|cRXP_WARN_Wartet auf das Ende des Rollenspiels|r.
    .scenario 1869,1
    .mob Magnar Icebreaker
    .mob Spectral Windshaper
step
    .goto 635,49.95,82.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tKlickt auf |cRXP_PICK_Waffe|r
    .complete 39191,2 --1/1 Deal with Magnar Icebreaker
    -- .scenario 1833,1
step
    #label Artifact Weapon: Warrior Protection
    .goto 635,49.95,82.61
    >>Benutzt |cRXP_WARN_ExtraActionButton|r
    .complete 39191,3 --1/1 Take Odyn's portal back to Skyhold
    .usespell 192085
step
    .goto 695,58.35,84.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .turnin 39191 >>Gebt die Quest Das Vermächtnis des Eisbrechers ab
    .target Odyn
]])
--Arms 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#chapter
#group RestedXP Legion Remix
#name z) Artefakt Waffe: Waffen
#displayname Artefakt Waffe: Waffen
#next ac) Ordenshalle Krieger Part 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Waffen
]])
--Fury 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefakt Waffe: Furor
#displayname Artefakt Waffe: Furor
#next ac) Ordenshalle Krieger Part 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Furor
]])
--Protection 2
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#chapter
#name z) Artefakt Waffe: Krieger Schutz
#displayname Artefakt Waffe: Schutz
#next ac) Ordenshalle Krieger Part 2
#internal

<< Warrior

step
    #include RestedXP Legion Remix\a) Artefakt Waffe: Krieger Schutz
]])

--Warrior Order Hall Campaign Part 1
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Legion Remix
#subgroup |cFFFCDC00(10-80+)|r Ordenshalle
#name a) Ordenshalle Krieger Part 1
#displayname |cFF00CCFF1|r - Einführung zur Ordenshalle|r
#next ac) Ordenshalle Krieger
#chapter
#internal

<< Warrior

step
    #completewith Accept The Eye of Odyn2
    #hidewindow
    +Test
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Odyn|r
    .accept 40579 >>Akzeptiert die Quest Legendäre Waffen
    .target Odyn
step
    .isQuestAvailable 40579
    +Wählt einen der folgenden Guides aus:
    *|cRXP_WARN_Ihr könnt die anderen Questreihen später machen|r
    *|cFFFF0000Ihr könnt nicht vorankommen, wenn ihr keinen auswählt|r.
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Arms >> Waffen(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Fury >> Furor(SPS) Questline
    .clicknext RestedXP Legion Remix\a) Artifact Weapon: Warrior Protection >> Schutz(Schutz) Questline
step
    #include ac) Order Hall Warrior Part 2@OrderHallPart2Start1-Accept The Eye of Odyn
]])
